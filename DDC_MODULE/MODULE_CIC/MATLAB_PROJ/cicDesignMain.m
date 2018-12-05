%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% filterDesignMain.m
%%%%            CIC filter design, generate filer coee and test signal in file
%%%%            that can be called by quartus.
%%%%                                            ZHAOCHAO
%%%%                                            2018-04-06
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

clc; clear; close all; format long;

%% %%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

fs      = 1e6;                                 
Tp      = 50e-3;
fc      = 10e3;   
Qbit    = 16;

fband    = 100e3;
fsignal  = 1e3;
fsignal1 = 3e3;
fsignal2 = 98e3;

% Dcef
Dcef = fs/(2*fband); display(Dcef);  disp('Hz');

isEnableCarrierMod  = 0;
isFFTShift          = 0;
isEnableQuantCoef   = 1;

% input IF signal select
% IFSingalSel:
%        0:  sin(),[fc,fsignal];  1: sin(),[fc,(fsignal+-5KHz)];  
%        2:  LPM(),               3: sinc(t),[fc, fband]; 
%        4:  sin(f1)  + f(f2), [fc, f1+f2];
%  default: sin(),[fc,fsignal];
IFSingalSel = 4;

%%%% CIC parameters
cic_decf         = 10;      
cic_diffd        = 1;  
cic_numsecs      = 5;    
cic_middle_width = 37;
cic_in_wl        = 16;
cic_out_wl       = 24;
%%%% CIC compentsate parameters
% isEnableCICComp = 1;
% cic_comp_L     = 4095;
% cic_wlps       = 1;

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
        
    otherwise
        x_in = cos(2*pi * fsignal * t);            
end


if (isEnableCarrierMod)
    f_carry   = cos(2*pi*fc*t);                               % 载波频率 f=72Mhz
    %f_carry_q = round(f_carry*2^7)/2^7;                       % 载频8位量化（最高位为符号位）round 为取最近的整数
    if (isLPM == 0) 
        x_in = x_in .* f_carry;                                % 基频1KHz+1.5KHz+5KHz，载频1M，噪声Vppn = 10； 
    end
end

x_in = x_in / max(x_in);

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
figure;
subplot(3,1,1);

plot(t, x_in, 'k', 'linewidth', 2);    
grid on; xlabel('时间t/s'); ylabel('Magnitude');
title('IF');

subplot(3,1,2);
x_in_mag = 20*log10(x_in_mag)/log(10); 
x_in_mag = x_in_mag - max(x_in_mag);
plot(f, x_in_mag, 'k', 'linewidth', 2);
axis auto;
%axis([0 1 -inf inf]);
xlabel('frequency (Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
title('IF');

subplot(3, 1, 3);
plot(f, pi*(x_in_ang/180), 'k', 'linewidth', 2);
xlabel('frequency (Hz)'); ylabel('Angle (pi)'); grid on; 
title('IF');

%% %%%%%%%%%%%%%%%% Generate Modelsim simlulate file %%%%%%%%%%%%%%%%%
Q_Signal = round(x_in * (2^(Qbit-1)-1)); 

fid = fopen('./S_bin.txt', 'w');
disp('N:');
length(Q_Signal)
for idxi = 1 : length(Q_Signal)
    B_si = dec2bin(Q_Signal(idxi)+(Q_Signal(idxi) < 0) * 2^Qbit, Qbit);
    for idxj = 1 : Qbit
       if B_si(idxj) == '1'
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

fid = fopen('./S_int.txt', 'w');
for idxi = 1 : length(Q_Signal)
    fprintf(fid, '%d ', Q_Signal(idxi)); 
end
fclose(fid);






%% %%%%%%%%%%%%%%%% CIC Filter %%%%%%%%%%%%%%%%%
    
    cic_a = [1, -1*cic_diffd];
    for idx = 1 : (cic_numsecs)
        if (idx == 1)
            str_tmp = sprintf('cic_int_in%d = filter(1, cic_a, Q_Signal);', idx);
            eval(str_tmp);
        else
            str_tmp = sprintf('cic_int_in%d = filter(1, cic_a, cic_int_in%d);', idx, idx-1);
            eval(str_tmp);
        end
    end
    
    str_tmp = sprintf('cic_comb_in1 = cic_int_in%d;', cic_numsecs);
    eval(str_tmp);
    
    %%%% debug 
%     figure;
%     plot(cic_comb_in1, 'k');    
%     grid on; xlabel('时间t/s'); ylabel('Magnitude');
%     title('CIC');
    
    cic_comb_in1 = cic_comb_in1(1 : cic_decf : length(cic_comb_in1));
    
    cic_b = [1, -1*cic_diffd];
    for idx = 1 : (cic_numsecs)
        if (idx == 1)
            str_tmp = sprintf('cic_comb_in%d = filter(cic_b, 1, cic_comb_in1);', idx);
            eval(str_tmp);
        else
            str_tmp = sprintf('cic_comb_in%d = filter(cic_b, 1, cic_comb_in%d);', idx, idx-1);
            eval(str_tmp);
        end
%         str_tmp = sprintf('figure;');
%         eval(str_tmp);
%         str_tmp = sprintf('plot(cic_comb_in%d);', idx);
%         eval(str_tmp);
    end
    
    str_tmp = sprintf('cic_out = cic_comb_in%d;', cic_numsecs);
    eval(str_tmp);
    
    idx = 1;
    str_tmp = sprintf('CICFValSel(%d) = ((cic_middle_width-1) - round(size(dec2bin(max(abs(cic_out))),2)));', idx);
    eval(str_tmp);
            
    str_tmp = sprintf('cic_out_q = (cic_out*(2^(17-CICFValSel(%d))));', idx);
    eval(str_tmp);
            
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%% generate fpga config file
    fid_int = fopen('./hfcoefdata_int.txt', 'w+');
    fid_bin = fopen('./hfcoefdata_bin.txt', 'w+');
    idx_coef = 0;
%     fprintf(fid_bin, 'assign coef[%d] = 16''b', idx_coef);
    idx_m = 0;
    for j = 1 : 16
        if (idx_m > (16-cic_numsecs-1))
               fprintf(fid_bin, '1'); 
               idx_m = idx_m + 1;
        else
               fprintf(fid_bin, '0');  
               idx_m = idx_m + 1;
        end
    end
    fprintf(fid_bin, '\r\n');
    
    Bh_pm = dec2bin(cic_decf + (cic_decf<0) * 2^Qbit, Qbit);
    idx_coef = 1;
%     str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 16''''b'');', idx_coef);
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
   
    Bh_pm = dec2bin(CICFValSel + (CICFValSel<0) * 2^Qbit, Qbit);
    idx_coef = 2;
%     str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 16''''b'');', idx_coef);
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
   
    fclose(fid_bin);
    
    fprintf(fid_int, 'cic_numsecs: %d;\r\n', cic_numsecs);
    fprintf(fid_int, 'cic_decf:    %d;\r\n', cic_decf);
    fprintf(fid_int, 'CICFValSel:  %d;\r\n', CICFValSel);
    fclose(fid_int);

 %% %%%%%%%%%%%%%%%% plot %%%%%%%%%%%%%%%%% 
 
    delta  = [1, zeros(1,1023)];
    cic_pb = ones(1,(cic_decf*cic_diffd));

    cic_spec = filter(cic_pb, 1, delta);
    if ((cic_decf*cic_diffd) > 1)
        for idx = 1 : (cic_numsecs) - 1
            cic_spec = filter(cic_spec, 1, cic_spec);
        end
    end
    
    % 生成窗
    %w = hann(1024, 'symmetric');   %symmetric  periodic  
     w = ones(1024, 1);                 % rectangle window

    % 加窗
    cic_spec_fft = fft(cic_spec .* w'); 
    if (isFFTShift )
        cic_spec_fft = fftshift(cic_spec_fft);
    end
    cic_spec_mag = abs(cic_spec_fft);
    cic_spec_ang = angle(cic_spec_fft);
    
    cic_n = [1 : 1 : 1024];
    cic_f = linspace(0, 1, 1024);
    figure;
    subplot(3,1,1);

    plot(cic_n, cic_spec, 'k', 'linewidth', 2);    
    grid on; xlabel('时间t/s'); ylabel('Magnitude');
    title('CIC');

    subplot(3,1,2);
    cic_spec_mag = 20*log10(cic_spec_mag)/log(10);
    cic_spec_mag = cic_spec_mag - max(cic_spec_mag);
    plot(cic_f, cic_spec_mag, 'k', 'linewidth', 2);
    axis auto;
    %axis([0 1 -inf inf]);
    xlabel('frequency (*fs) Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
    title('CIC');

    subplot(3, 1, 3);
    plot(cic_f, pi*(cic_spec_ang/180), 'k', 'linewidth', 2);
    xlabel('frequency (*fs) Hz)'); ylabel('Angle (pi)'); grid on; 
    title('CIC');

    
    % MHBF抽取后点数
    N_CIC = ceil(N / (cic_decf*cic_diffd));                                   
    t_cic = 0 : Tp/N_CIC : Tp - Tp/N_CIC;

    
    f_cic = 0 : fs/N_CIC : (fs - fs/N_CIC);
    f_cic = f_cic / (fs);
    f_cic = f_cic * (fs/(cic_decf*cic_diffd));

    if (isFFTShift )
        f_cic = -fs/2 : fs/N_CIC : fs/2 - fs/N_CIC;
        f_cic = f_cic / (fs);
        f_cic = f_cic * (fs/(cic_decf*cic_diffd));
    end
  
%     cic_out = cic_out / max(cic_out);

% 生成窗
%w = hann(floor(N_CIC), 'symmetric');   %symmetric  periodic  
 w = ones(floor(N_CIC), 1);                 % rectangle windows

% 加窗
cic_out_fft = fft(cic_out .* w'); 
if (isFFTShift )
    cic_out_fft = fftshift(cic_out_fft);
end
cic_out_mag = abs(cic_out_fft);
cic_out_ang = angle(cic_out_fft);

%结果显示；
%     fvtool(x_in .* w'); title('x_in .* w'');
figure;
subplot(3,1,1);

plot(t_cic, cic_out, 'k', 'linewidth', 2);    
grid on; xlabel('时间t/s'); ylabel('Magnitude');
title('After CIC filter');

subplot(3,1,2);
cic_out_mag = 20*log10(cic_out_mag)/log(10);
cic_out_mag = cic_out_mag - max(cic_out_mag);
plot(f_cic, cic_out_mag, 'k', 'linewidth', 2);
axis auto;
%axis([0 1 -inf inf]);
xlabel('frequency ( Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
title('After CIC filter');

subplot(3, 1, 3);
plot(f_cic, pi*(cic_out_ang/180), 'k', 'linewidth', 2);
xlabel('frequency ( Hz)'); ylabel('Angle (pi)'); grid on; 
title('After CIC filter');

%% generate filtered data used for output data analyse;
    fid = fopen('./filtereddata_S.txt','w');
    for idxi = 1 : length(cic_out)
        fprintf(fid, '%d ', cic_out(idxi)); 
    end
    fclose(fid);
    

    
    
    