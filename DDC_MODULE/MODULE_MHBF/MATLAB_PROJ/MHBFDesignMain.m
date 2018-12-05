
clc; clear; close all; format long;

%% %%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

Tp     = 10e-4;
fs     = 10e6;                                 
Qbit   = 24;
MAQbit = 54;

fc  = [0.3e6 0.4e6 0.6e6 0.7e6];       %transition band;
mag  = [0 1 1 0];     

dev  = [1e-8, 1e-8];                   %passband ripple -160dB, stopband attenuation -160dB;

signalN = 8000;

fc      = 5e6;                                  

fband   =  30e3;
fsignal =  30e3;
fsignal1 = 30e3;
fsignal2 = 4.97e6;

nco_f   = 10e6;

% Dcef
Dcef = fs/(2*fband); display(Dcef);  disp('Hz');


%%%% CIC 1
isEnableCIC1     = 0;
cic1_decf        = 6;      
cic1_diffd       = 1;  
%%%% CIC 2
isEnableCIC2     = 0;
cic2_decf        = 4;    
cic2_diffd       = 1;  

%%%% MHBF
isEnableMultiHBF     = 1;
isEnableMHBFaliasing = 0;
NMHBF           = 5;
HBF_MAX_ORDER   = 32;
fMHBFpass       = fband;             % Passband Frequency
fMHBFstop       = fband + fband/10;
DMHBFstop       = 1e-8;              % Stopband Attenuation  -140dB
DMHBFpass       = 1e-8;              % Passband Ripple
%%%% FIR


isFFTShift        = 0;
isEnableQuantCoef = 1;

% input IF signal select
% IFSingalSel:
%        0:  sin(),[fc,fsignal];  1: sin(),[fc,(fsignal+-5KHz)];  
%        2:  LPM(),               3: sinc(t),[fc, fband]; 
%        4:  sin(f1) + f(f2), [fc, f1+f2];
%        5:  sin(),[fsignal];
%        6:  sin(f1) + f(f2),
%  default: sin(),[fc,fsignal];
IFSingalSel = 6;

%% %%%%%%%%%%%%%%%% t & f & n %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N  = Tp * fs;
t  = 0 : Tp/N : Tp - Tp/N;
% t  = -Tp/2 : Tp/N : Tp/2 - Tp/N;

n = [0 : N-1];

f = 0 : fs/N : fs - fs/N;
% f = f / fs;

if (isFFTShift )
    f = -fs/2 : fs/N : fs/2 - fs/N;
%     f = f / fs;
end

% 频率分辨率；
fd = fs/N;                                                   
display(fd);  
disp('Hz');

%% %%%%%%%%%%%%%%%% IF signal generation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% QBit    = 7;
isLPM = 0;

switch (IFSingalSel) 
    case 0
        x_in = cos(2*pi * fsignal * t);  
    
    case 1
        x_in1 = cos(2*pi * (fsignal-5e3) * t);               
        x_in2 = cos(2*pi * (fsignal+5e3) * t);  
        x_in = x_in1 + x_in2;
        
    case 2
        u   = fband/Tp;                             %u为带宽除以时宽
        t   = -Tp/2 : Tp/N : Tp/2 - Tp/N;
        x_in = cos(2*pi*(fc*t+0.5*u*t.^2));         %信号表达式
        isLPM = 1;
         
    case 3
        x_in = sin(2*pi*(fband/fs)*((n - (N-1)/2))) ./ (pi*((n - (N-1)/2))); 

    case 4
        x_in1 = cos(2*pi * (fsignal1) * t);               
        x_in2 = cos(2*pi * (fsignal2) * t);  
        x_in = x_in1 + x_in2;
    case 5
        x_in = cos(2*pi * fsignal * t);
        isLPM = 1;
    case 6
        x_in1 = cos(2*pi * (fsignal1) * t);               
        x_in2 = cos(2*pi * (fsignal2) * t);  
        x_in = x_in1 + x_in2;
        isLPM = 1;
    otherwise
        x_in = cos(2*pi * fsignal * t); 
end

% x_in_q = round(x_in*2^31)/2^31;
% %x_in_q = round(x_in * 2^QBit) / 2^QBit;

% 生成窗
w = hann(floor(N), 'symmetric');   %symmetric  periodic  
% w = ones(floor(N), 1);            % rectangle windows

% 加窗
x_in_fft = fft(x_in .* w'); 
if (isFFTShift )
    x_in_fft = fftshift(x_in_fft);
end
x_in_mag = abs(x_in_fft);
x_in_ang = angle(x_in_fft);


%结果显示；
%     fvtool(x_in .* w'); title('x_in .* w'');
% 
% figure;
% subplot(3,1,1);
% 
% plot(t, x_in, 'k');    
% grid on; xlabel('时间t/s'); ylabel('Magnitude');
% title('BF');
% 
% subplot(3,1,2);
% plot(f, 20*log10(x_in_mag/max(x_in_mag)), 'k');
% axis auto;
% %axis([0 1 -inf inf]);
% xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
% title('BF');
% 
% subplot(3, 1, 3);
% plot(f, pi*(x_in_ang/180), 'k');
% xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
% title('BF');

%%%%%%%%%%%%%%%%%%%%%%%%%

% FM_out  = 0.2685*x_in.*cos(2*pi*f*n/fs)+1.6*noise;      % 基频1KHz+1.5KHz+5KHz，载频1M，噪声Vppn = 10；
f_carry   = cos(2*pi*fc*t);                               % 载波频率 f=72Mhz                 
f_carry_q = round(f_carry / max(abs(f_carry)) * (2^Qbit-1));  % 载频Q_bit位量化（最高位为符号位）round 为取最近的整数

if (isLPM) 
    FM_out = x_in;
else
    FM_out = x_in .* f_carry;                             % 基频1KHz+1.5KHz+5KHz，载频1M，噪声Vppn = 10； 
end

FM_out_noise = awgn(FM_out,20);                           %y = awgn(x,snr) x信号，snr是信噪比

FM_out   = FM_out/max(abs(FM_out));                            % 归一化，满刻度量化
FM_out_q =  round(FM_out * (2^(Qbit-1)-1));                   

% 加汉宁窗的傅里叶变换；
FM_out_fft = fft(FM_out_q .* w');  
if (isFFTShift )
    FM_out_fft = fftshift(FM_out_fft);
end
FM_out_mag = abs(FM_out_fft);

    

%     fvtool(FM_out); title('FM_out');

figure;
subplot(3,1,1);
plot(t, FM_out, 'k');
xlabel('time(s)'); ylabel('Magnitude'); grid on; 
title('IF');

subplot(3,1,2);
plot(f, 20*log10(FM_out_mag/max(FM_out_mag)), 'k');
% axis([27.8 29.2 -inf 0]);
axis auto;
xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on;
title('IF');

subplot(3, 1, 3);
plot(f, pi*(x_in_ang/180), 'k');
xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
title('IF');


%% %%%%%%%%%%%%%%%% Generate Modelsim simlulate file %%%%%%%%%%%%%%%%%
% 生成Modelsim仿真输入数据；

%     Q_FM_out = round(FM_out / max(abs(FM_out)) * (2^Q_bit-1));  % quant;


    fid = fopen('./S_int.txt','w');
    fprintf(fid, '%8d\r\n', FM_out_q);
    fprintf(fid, ';'); 
    fclose(fid);
    
%% binary
    fid = fopen('./S_bin.txt','w');
    for i = 1 : length(FM_out_q)
        Bh_pm = dec2bin(FM_out_q(i) + ((FM_out_q(i)<0) * 2^Qbit), Qbit);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(fid, '%d', tb);  
        end
        fprintf(fid, '\r\n');
    end
    fprintf(fid, ';'); 
    fclose(fid);

% fMHBFpass  = fbaud;               % Passband Frequency
% fMHBFstop  = fbaud + fbaud/10;
% Dstop      = 1e-4;                % Stopband Attenuation(dB)
% Dpass      = 1e-4;                % Passband Ripple(dB)
    
    preDecf = 1;

    if (isEnableCIC1) 
       preDecf = preDecf * cic1_decf * cic1_diffd;
    end

    if (isEnableCIC2)
        preDecf = preDecf * cic2_decf * cic2_diffd;
    end

    % MHBF抽取后点数
    N_MHBF = ceil(N / (preDecf*(2^NMHBF)));                                   
    t_mhbf = 0 : Tp/N_MHBF : Tp - Tp/N_MHBF;

    fs_MHBF = fs / (preDecf*(2^NMHBF));
    f_mhbf = 0 : fs_MHBF/N_MHBF : fs_MHBF - fs_MHBF/N_MHBF;
%     f_mhbf = f_mhbf / (fs_MHBF);

    if (isFFTShift )
        f_mhbf = -fs_MHBF/2 : fs_MHBF/N_MHBF : fs_MHBF/2 - fs/N_MHBF;
%         f_mhbf = f_mhbf / (fs_MHBF);
    end

    % cic1 window function
    % w = hann(N_MHBF, 'periodic'); 
    w = ones(floor(N_MHBF), 1);            % rectangle windows

    fMHBFVect = zeros(1, NMHBF);
    
    MHBFValSel = zeros(1, NMHBF);
    
    DHBFpass = DMHBFstop / NMHBF;

%     mhbf_in_q = FM_out_q / max(max(FM_out_q));
    mhbf_in_q = FM_out_q;
    
% %     str_tmp = sprintf('fid = fopen(''./hfcoefdata%d.txt'',''w+'');', idx);
% %     eval(str_tmp);
% %     % %% binary
% %     str_tmp = sprintf('fid = fopen(''./hfcoefdata_bin.txt'',''w+'');', idx);
% %     eval(str_tmp);

    fid_int = fopen('./hfcoefdata_int.txt', 'w+');
    fid_bin = fopen('./hfcoefdata_bin.txt', 'w+');
    
    for idx = 1 : (NMHBF)
        if (isEnableMHBFaliasing)
            fMHBFVect(1, idx) = (fMHBFpass * preDecf * 2^idx) / fs;
        else
            fMHBFVect(1, idx) = (fMHBFstop * preDecf * 2^idx) / fs;
        end

%         str_tmp = sprintf('hbf%d = firhalfband(''minord'', fMHBFVect(1,%d), DHBFpass);', idx, idx);
%         eval(str_tmp);
        
        str_tmp = sprintf('hbf%d = firhalfband(%d, fMHBFVect(1,%d));', idx, HBF_MAX_ORDER, idx);
        eval(str_tmp);
        
        str_tmp = sprintf('hbf%d_q = round(hbf%d/max(abs(hbf%d))*(2^(Qbit-1)-1));', idx, idx, idx);     %Qbit
        eval(str_tmp);
            
        str_tmp = sprintf('hbf_q = hbf%d_q;',idx);     %Qbit
        eval(str_tmp);
        
        
%             %% generate coef data used for Altera
%             str_tmp = sprintf('fid = fopen(''./hfcoefdata%d.txt'',''w+'');', idx);
%             eval(str_tmp);
            
            for i = 1 : length(hbf_q)
                fprintf(fid_int, '%d ', hbf_q(i)); 
            end
            
            if (length(hbf_q) < HBF_MAX_ORDER+1)
                for i = length(hbf_q) : 1 : 33
                     fprintf(fid_int, '0 '); 
                end
            end
%             fclose(fid);
            
%         % %% binary
%             str_tmp = sprintf('fid = fopen(''./hfcoefdata_bin.txt'',''w+'');', idx);
%             eval(str_tmp);
            if (idx ~= 1)
                Bh_pm = dec2bin(MHBFValSel(idx-1) + (MHBFValSel(idx-1)<0) * 2^Qbit, Qbit);
                idx_coef = ((idx-1)*(HBF_MAX_ORDER+2)-1);
%                 str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 24''''b'');', idx_coef);
                eval(str_tmp);
                for j = 1 : Qbit
                   if Bh_pm(j) == '1'
                       tb = 1;
                   else
                       tb = 0;
                   end
                   fprintf(fid_bin, '%d', tb);  
                end
                fprintf(fid_bin, '\r\n');
            end
            for i = 1 : (length(hbf_q))
                Bh_pm = dec2bin(hbf_q(i) + (hbf_q(i)<0) * 2^Qbit, Qbit);
                idx_coef = (i-1)+((idx-1)*(HBF_MAX_ORDER+2));
%                 str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 24''''b'');', idx_coef);
                eval(str_tmp);
%                 fprintf(fid, 'assign coef[%d] = 24''b', (i-1));
                for j = 1 : Qbit
                   if Bh_pm(j) == '1'
                       tb = 1;
                   else
                       tb = 0;
                   end
                   fprintf(fid_bin, '%d', tb);  
                end
                fprintf(fid_bin, '\r\n');
            end
            if (length(hbf_q) < (HBF_MAX_ORDER+1))
                for i = (length(hbf_q)+1) : 1 : 33
%                     str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%%d] = 24''''b'', (i-1)+((%d-1)*(HBF_MAX_ORDER+1)));', idx);
                    eval(str_tmp);
%                 fprintf(fid, 'assign coef[%d] = 24''b', (i-1));
                    for j = 1 : Qbit
                        fprintf(fid_bin, '0');  
                    end
                    fprintf(fid_bin, '\r\n');
                end
            end
            %fprintf(fid, ';'); 
%             fclose(fid);
    
        if (idx == 1)
            str_tmp = sprintf('mhbf_in_q%d = filter(hbf%d_q, 1, double(mhbf_in_q));', idx, idx);
            eval(str_tmp);
            
%             str_tmp = sprintf('MHBFValSel(%d) = round(((2^(MAQbit-1)-1)/max(abs(mhbf_in_q%d)))*(2^(Qbit-1)-1));', idx, idx);
            str_tmp = sprintf('MHBFValSel(%d) = ((MAQbit-1) - round(size(dec2bin(max(abs(mhbf_in_q%d))),2)));', idx, idx);
            eval(str_tmp);
            
            str_tmp = sprintf('mhbf_in_q%d = mhbf_in_q%d(1:2:size(mhbf_in_q%d,2));', idx, idx, idx);
            eval(str_tmp);
            
            
        else
            
            str_tmp = sprintf('mhbf_in_q%d = (mhbf_in_q%d/(2^(30-MHBFValSel(%d))));', idx, idx-1, idx-1);
%             str_tmp = sprintf('mhbf_in_q%d = (mhbf_in_q%d * MHBFScaleVal(%d));', idx, idx-1, idx-1);
            %str_tmp = sprintf('mhbf_in_q%d = mhbf_in_q%d / max(mhbf_in_q%d);', idx, idx-1, idx-1);
            eval(str_tmp);
%             str_tmp = sprintf('mhbf_in_q%d = mhbf_in_q%d / max(mhbf_in_q%d);', idx, idx-1, idx-1);
%             eval(str_tmp);
            
            str_tmp = sprintf('mhbf_in_q%d = filter(hbf%d_q, 1, double(mhbf_in_q%d));', idx, idx, idx);
            eval(str_tmp);
            
            %str_tmp = sprintf('MHBFScaleVal(%d) = round(((2^(Qbit-1)-1)/max(abs(mhbf_in_q%d)))*(2^(Qbit-1)-1));', idx, idx);
           str_tmp = sprintf('MHBFValSel(%d) = ((MAQbit-1) - round(size(dec2bin(max(abs(mhbf_in_q%d))),2)));', idx, idx);
            eval(str_tmp);
            
            str_tmp = sprintf('mhbf_in_q%d = mhbf_in_q%d(1:2:size(mhbf_in_q%d,2));', idx, idx, idx);
            eval(str_tmp);
        end

        str_tmp = sprintf('fvtool(hbf%d); title(''HBF%d'');', idx, idx);
        eval(str_tmp);
    end
    
%         fprintf(fid_bin, 'assign coef[%d] = 24''b', NMHBF*(HBF_MAX_ORDER+2)-1);
        Bh_pm = dec2bin(MHBFValSel(NMHBF) + (MHBFValSel(NMHBF)<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(fid_bin, '%d', tb);  
        end
        fprintf(fid_bin, '\r\n');

%         fprintf(fid_bin, 'assign coef[%d] = 24''b', NMHBF*(HBF_MAX_ORDER+2));
        idx_m = 0;
        for j = 1 : 24
            if (idx_m > (24-NMHBF-1))
                   fprintf(fid_bin, '1'); 
                   idx_m = idx_m + 1;
            else
                   fprintf(fid_bin, '0');  
                   idx_m = idx_m + 1;
            end
        end
        fprintf(fid_bin, '\r\n');
        
        fprintf(fid_int, '%d\r\n', NMHBF);
        
    fclose(fid_int);
    fclose(fid_bin);
%     fvtool(hbf1); title('Half Band Filter');

    str_tmp = sprintf('mhbf_out_q = mhbf_in_q%d;', NMHBF);
    eval(str_tmp);
    
    mhbf_out_q = mhbf_out_q / max(abs(mhbf_out_q));
    
    %% generate filtered data used for Altera
    fid = fopen('./filtereddata_S.txt','w');
    for i = 1 : length(mhbf_out_q)
        fprintf(fid, '%d ', mhbf_out_q(i)); 
    end
    fclose(fid);
        
    mhbf_out_q = double(mhbf_out_q);
    
    mhbf_out_q_fft = fft(mhbf_out_q .* w');  
    if (isFFTShift )
        mhbf_out_q_fft = fftshift(mhbf_out_q_fft);
    end
    mhbf_out_q_mag = abs(mhbf_out_q_fft); 
    mhbf_out_q_ang = angle(mhbf_out_q_fft);
    
    
    figure;
    subplot(3,1,1);
    plot(t_mhbf, mhbf_out_q, 'k');
    xlabel('time(s)'); ylabel('Magnitude'); grid on; title('MHBF-Q');

    subplot(3,1,2);
    plot(f_mhbf, 20*log10(mhbf_out_q_mag / max(mhbf_out_q_mag)), 'k');
    % axis([0 0.02 -inf 0]);
    axis auto;
    xlabel('frequency (*fs/(cic1-decf*cic2-decf) Hz)'); ylabel('Magnitude (dB)'); grid on; title('MHBF-Q');

    subplot(3,1,3);
    plot(f_mhbf, pi*(mhbf_out_q_ang/180), 'k');
    xlabel('frequency (*fs/(cic1-decf*cic2-decf) Hz)'); ylabel('Angle (pi)'); grid on; title('MHBF-Q');

