%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% DDCDesignMain.m
%%%%            filter design, generate filer coee and test signal in file
%%%%            that can be called by quartus.
%%%%        MRI Digital Receiver DDC simulate;
%%%%        rec structure:
%%%%               ->cos(fc)->CIC1->CIC1_comp->
%%%%              |     |                      |                                                                
%%%%      signal -|    NCO                      ->CIC2->CIC2_comp->CIC2->MHBF->FIR -> CORDIC(f,p)
%%%%  (fband, fc) |     |                      |
%%%%               ->sin(fc)->CIC1->CIC1_comp
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                                               
%%%%                                                                                ZHAOCHAO
%%%%                                                                                     2018-04-18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

clc; clear; close all; format long;

%% %%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Tp     = 10e-5;
fs     = 10e6;                                 
Qbit   = 24;
MAQbit = 54;

% fc  = [0.3e6 0.4e6 0.6e6 0.7e6];       %transition band;
mag  = [0 1 1 0];     
dev  = [1e-8, 1e-8];                   %passband ripple -160dB, stopband attenuation -160dB;
fc      = 5e6;                                  
fband   =  30e3;
fsignal =  30e3;
fsignal1 = 30e3;
fsignal2 = 4.97e6;

nco_f   = 10e6;

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
%        6:  sin(f1) + f(f2);
%        7:  gauss white noise;
%  default: sin(),[fc,fsignal];
IFSingalSel = 6;
% isPlot:
%        0: plot null;
%        1: plot bf signal;
%        2: plot if signal;
%        3: plot both;
isPlot = 2;
[bf_signal, bf_signal_q, if_signal, if_signal_q, bf_fft, if_fft,  t, f, n, N] = subf_ifSignalGenerate( ...
                                                fs, Tp, Qbit, fc, fband, fsignal1, fsignal2, IFSingalSel, isPlot, isFFTShift);

                                            
 %% %%%%%%%%%%%%%% Config data file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    configFileInt = fopen('./configFileInt.txt', 'w+');
    configFileBin = fopen('./configFileBin.txt', 'w+');                                          
                                            
%% %%%%%%%%%%%%%%%% CIC1  &  CIC1 compentsate filter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CIC1 parameters
isEnableCIC1     = 1;  
cic_decf         = 3;      
cic_diffd        = 1;  
cic_numsecs      = 6;    
cic_middle_width = 37;
cic_in_wl        = 16;
cic_out_wl       = 24;
cic_config_wl    = 32;
%%%% CIC compentsate parameters
isEnableCICComp  = 1;
cic_comp_L       = 256;
cic_wlps         = 1;
  
isPlot = 1;           

    if_signal_q = round((if_signal_q / max(abs(if_signal_q)))*(2^(cic_in_wl-1)));
    
    %%%% int
    cic_a = [1, -1*cic_diffd];
    for idx = 1 : (cic_numsecs)
        if (idx == 1)
            str_tmp = sprintf('cic_int_in%d = filter(1, cic_a, if_signal_q);', idx);
            eval(str_tmp);
        else
            str_tmp = sprintf('cic_int_in%d = filter(1, cic_a, cic_int_in%d);', idx, idx-1);
            eval(str_tmp);
        end
    end
    
    str_tmp = sprintf('cic_comb_in = cic_int_in%d;', cic_numsecs);
    eval(str_tmp);
    
    cic_comb_in = cic_comb_in(1 : cic_decf : length(cic_comb_in));
    
    cic_b = [1, -1*cic_diffd];
    for idx = 1 : (cic_numsecs)
        if (idx == 1)
            str_tmp = sprintf('cic_comb_in%d = filter(cic_b, 1, cic_comb_in);', idx);
            eval(str_tmp);
        else
            str_tmp = sprintf('cic_comb_in%d = filter(cic_b, 1, cic_comb_in%d);', idx, idx-1);
            eval(str_tmp);
        end
    end
    
    str_tmp = sprintf('cic_out = cic_comb_in%d;', cic_numsecs);
    eval(str_tmp);
    
    CICFValSel = ((cic_middle_width-1) - round(size(dec2bin(max(abs(cic_out))),2)));
    cic_out_q = cic_out * (2^CICFValSel);
    cic_out_q = cic_out_q / (2^((cic_middle_width-1)-(cic_out_wl-1)));

    fs_cic = fs / (cic_decf*cic_diffd);
    N_CIC = ceil(N / (cic_decf*cic_diffd));                                   
    t_cic = 0 : Tp/N_CIC : Tp - Tp/N_CIC;
    f_cic = 0 : fs_cic/N_CIC : fs_cic - fs_cic/N_CIC;

    if (isFFTShift )
        f_cic = -fs/2 : fs/N_CIC : fs/2 - fs/N_CIC;
    end
    
   %% generate filtered data used for output data analyse;
    fid = fopen('./filtereddata_S.txt','w');
    for idxi = 1 : length(cic_out_q)
        fprintf(fid, '%d ', cic_out_q(idxi)); 
    end
    fclose(fid);
    
 %% %%%%%%%%%%%%%%%% plot %%%%%%%%%%%%%%%%% 
 
    if (isPlot)
        %w = hann(length(cic_out_q), 'symmetric');       %symmetric  periodic  
         w = ones(length(cic_out_q), 1);                 % rectangle window
         
        cic_spec_fft = fft(cic_out_q .* w'); 
        if (isFFTShift )
            cic_spec_fft = fftshift(cic_spec_fft);
        end
        cic_spec_mag = abs(cic_spec_fft);
        cic_spec_ang = angle(cic_spec_fft);

        figure;
        subplot(3,1,1);

        plot(t_cic, cic_out_q, 'k');    
        grid on; xlabel('时间t/s'); ylabel('Magnitude');
        title('CIC');

        subplot(3,1,2);
        cic_spec_mag = 20*log10(cic_spec_mag)/log(10);
        cic_spec_mag = cic_spec_mag - max(cic_spec_mag);
        plot(f_cic, cic_spec_mag, 'k');
        axis auto;
        %axis([0 1 -inf inf]);
        xlabel('frequency (*fs) Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
        title('CIC');

        subplot(3, 1, 3);
        plot(f_cic, pi*(cic_spec_ang/180), 'k');
        xlabel('frequency (*fs) Hz)'); ylabel('Angle (pi)'); grid on; 
        title('CIC');
    end
    
        Qbit = cic_config_wl;            
        idx_m = 0;
        for j = 1 : Qbit
            if (idx_m > (cic_config_wl-cic_numsecs-1))
                   fprintf(configFileBin, '1'); 
                   idx_m = idx_m + 1;
            else
                   fprintf(configFileBin, '0');  
                   idx_m = idx_m + 1;
            end
        end
        fprintf(configFileBin, '\r\n');
  
        Bh_pm = dec2bin(cic_decf + (cic_decf<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(configFileBin, '%d', tb);  
        end
        fprintf(configFileBin, '\r\n');

        Bh_pm = dec2bin(CICFValSel + (CICFValSel<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(configFileBin, '%d', tb);  
        end
        fprintf(configFileBin, ';\r\n');

        fprintf(configFileInt, 'cic_numsecs: %d;\r\n', cic_numsecs);
        fprintf(configFileInt, 'cic_decf:    %d;\r\n', cic_decf);
        fprintf(configFileInt, 'CICFValSel:  %d;\r\n', CICFValSel);
        
        fclose(configFileBin);
        fclose(configFileInt);
        
%% %%%%%%%%%%%%%%%% CIC1 compentsate filter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 % CIC
    hm_cic1 = mfilt.cicdecim(cic_decf, cic_diffd, cic_numsecs, cic_in_wl, cic_out_wl);  
    % fvtool(hm_cic);
    % title('CIC1');
    %%%% CIC1 compensation
    %    L      - FIR filter length (= number of taps = number of coefficients)
    %    Fs     - FIR filter sample rate in Hz before decimation
    %    Fc     - FIR filter cutoff frequency in Hz
    %    plot   - True or false to draw filter responses graphically
    %    is_fxp - Indicating if the coefficients should be saved as fixed point or floating point numbers
    %    B      - Number of bits to represent the coefficients if is_fxp is true
    %    [h, hcomp, hcic] = cic_five_fir_comp_coeff(L, Fs, Fc, plot, is_fxp, B, decf, diffd, numsecs)
    
    L  = cic_comp_L;
    
    fp = fband + fband/10;
    [hcic_comp1, hcomp1, hcic1] = cic_fir_comp_coeff(L, fs, fp, true, false, 0, cic1_decf, cic1_diffd, cic1_numsecs);
    
    fvtool(hcic1); title('CIC1');
    fvtool(hcomp1); title('CIC1 compensation');
    fvtool(hcic_comp1); title('CIC1 after compensation');

    % CIC滤波输出； 
    cic1_out_i = filter(hm_cic1, nco_out_i);  %y=filter(p,d,x)实现差分方程仿真，y=conv(x,h)计算卷积 y=impz(p,d,N)求系统的冲激响应
    cic1_out_q = filter(hm_cic1, nco_out_q);
    
    cic1_comp_out_i = filter(hcomp1, 1, double(cic1_out_i)); 
    cic1_comp_out_q = filter(hcomp1, 1, double(cic1_out_q));
             
    cic1_out_i = double(cic1_out_i);                      
    cic1_out_q = double(cic1_out_q); 
    
    cic1_comp_out_i = double(cic1_comp_out_i);
    cic1_comp_out_q = double(cic1_comp_out_q);

    % temp = 1.5 * log2(cic1_decf);
    % cic1_scal = 10^temp;
    % cic1_out_i = cic1_out_i / cic1_scal;     
    % cic1_out_q = cic1_out_q / cic1_scal; 

    % CIC抽取后点数；
    N_cic1 = ceil(N / cic1_decf);                                   
    t_cic1 = 0 : Tp/N_cic1 : Tp - Tp/N_cic1;

    f_cic1 = 0 : fs/N_cic1 : fs - fs/N_cic1;
    f_cic1 = f_cic1 / (fs);

    if (isFFTShift )
        f_cic1 = -fs/2 : fs/N_cic1 : fs/2 - fs/N_cic1;
        f_cic1 = f_cic1 / (fs);
    end

    % n_cic1 = int16([ 1 : cic1_decf : N]);
    % 
    % cic1_out_i = cic1_out_i(n_cic1);
    % cic1_out_q = cic1_out_q(n_cic1);

    % cic1 window function
    % w = hann(N_cic1, 'periodic'); 
    w = ones(floor(N_cic1), 1);            % rectangle windows





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
                str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 24''''b'');', idx_coef);
                eval(str_tmp);
                for j = 1 : Qbit
                   if Bh_pm(j) == '1'
                       tb = 1;
                   else
                       tb = 0;
                   end
                   fprintf(fid_bin, '%d', tb);  
                end
                fprintf(fid_bin, ';\r\n');
            end
            for i = 1 : (length(hbf_q))
                Bh_pm = dec2bin(hbf_q(i) + (hbf_q(i)<0) * 2^Qbit, Qbit);
                idx_coef = (i-1)+((idx-1)*(HBF_MAX_ORDER+2));
                str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%d] = 24''''b'');', idx_coef);
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
                fprintf(fid_bin, ';\r\n');
            end
            if (length(hbf_q) < (HBF_MAX_ORDER+1))
                for i = (length(hbf_q)+1) : 1 : 33
                    str_tmp = sprintf('fprintf(fid_bin, ''assign coef[%%d] = 24''''b'', (i-1)+((%d-1)*(HBF_MAX_ORDER+1)));', idx);
                    eval(str_tmp);
%                 fprintf(fid, 'assign coef[%d] = 24''b', (i-1));
                    for j = 1 : Qbit
                        fprintf(fid_bin, '0');  
                    end
                    fprintf(fid_bin, ';\r\n');
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
    
        fprintf(fid_bin, 'assign coef[%d] = 24''b', NMHBF*(HBF_MAX_ORDER+2)-1);
        Bh_pm = dec2bin(MHBFValSel(NMHBF) + (MHBFValSel(NMHBF)<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(fid_bin, '%d', tb);  
        end
        fprintf(fid_bin, ';\r\n');

        fprintf(fid_bin, 'assign coef[%d] = 24''b', NMHBF*(HBF_MAX_ORDER+2));
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
        fprintf(fid_bin, ';\r\n');
        
        fprintf(fid_int, '%d;\r\n', NMHBF);
        
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

