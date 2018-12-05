function [bf_signal, bf_signal_q, if_signal, if_signal_q, bf_fft, if_fft,  t, f, n, N] = subf_ifSignalGenerate( fs, Tp, Qbit, fc, fband, fsignal1, fsignal2, IFSingalSel, isPlot, isFFTShift)
% input IF signal select
% IFSingalSel:
%        0:  sin(),[fc,fsignal];  1: sin(),[fc,(fsignal+-5KHz)];  
%        2:  LPM(),               3: sinc(t),[fc, fband]; 
%        4:  sin(f1) + f(f2), [fc, f1+f2];
%        5:  sin(),[fsignal];
%        6:  sin(f1) + f(f2);
%        7:  gauss white noise;
%  default: sin(),[fc,fsignal];
% isPlot:
%        0: plot null;
%        1: plot bf signal;
%        2: plot if signal;
%        3: plot both;
% % % %%% Default_parameters;
% % % Tp     = 10e-4;
% % % fs     = 10e6;                                 
% % % Qbit   = 24;
% % % MAQbit = 54;
% % % 
% % % fc  = [0.3e6 0.4e6 0.6e6 0.7e6];       %transition band;
% % % mag  = [0 1 1 0];     
% % % 
% % % dev  = [1e-8, 1e-8];                   %passband ripple -160dB, stopband attenuation -160dB;
% % % 
% % % signalN = 8000;
% % % 
% % % fc      = 5e6;                                  
% % % 
% % % fband   =  30e3;
% % % fsignal =  30e3;
% % % fsignal1 = 30e3;
% % % fsignal2 = 4.97e6;

    % Dcef
    Dcef = fs/(2*fband); display(Dcef);  disp('Hz');

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
    
    disp('N; ');
    display(N);  
    

    %% %%%%%%%%%%%%%%%% BF signal generation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % QBit    = 7;
    isLPM = 0;

    switch (IFSingalSel) 
        case 0
            bf_signal = cos(2*pi * fsignal * t);  

        case 1
            bf_signal1 = cos(2*pi * (fsignal-5e3) * t);               
            bf_signal2 = cos(2*pi * (fsignal+5e3) * t);  
            bf_signal = bf_signal1 + bf_signal2;

        case 2
            u   = fband/Tp;                             %u为带宽除以时宽
            t   = -Tp/2 : Tp/N : Tp/2 - Tp/N;
            bf_signal = cos(2*pi*(fc*t+0.5*u*t.^2));         %信号表达式
            isLPM = 1;

        case 3
            bf_signal = sin(2*pi*(fband/fs)*((n - (N-1)/2))) ./ (pi*((n - (N-1)/2))); 

        case 4
            bf_signal1 = cos(2*pi * (fsignal1) * t);               
            bf_signal2 = cos(2*pi * (fsignal2) * t);  
            bf_signal = bf_signal1 + bf_signal2;
        case 5
            bf_signal = cos(2*pi * fsignal * t);
            isLPM = 1;
        case 6
            bf_signal1 = cos(2*pi * (fsignal1) * t);               
            bf_signal2 = cos(2*pi * (fsignal2) * t);  
            bf_signal = bf_signal1 + bf_signal2;
            isLPM = 1;
        case 7 
            noise_power = 10*log10(0.09);
            bf_signal = WGN(N, 1, noise_power); 
            isLPM = 1;
        otherwise
            bf_signal = cos(2*pi * fsignal1 * t); 
    end
    
    bf_signal   = bf_signal / max(abs(bf_signal));
    bf_signal_q = round(bf_signal * (2^(Qbit-1)-1)); 
    
    % 生成窗
    w = hann(floor(N), 'symmetric');   %symmetric  periodic  
    % w = ones(floor(N), 1);            % rectangle windows

    % 加窗
    bf_fft = fft(bf_signal_q .* w'); 
    
    if((isPlot == 1) || (isPlot == 3))
        if (isFFTShift )
            bf_fft = fftshift(bf_fft);
        end
        x_in_mag = abs(bf_fft);
        x_in_ang = angle(bf_fft);

        %plot；
    %     fvtool(x_in .* w'); title('x_in .* w'');

        figure;
        subplot(3,1,1);

        plot(t, bf_signal_q, 'k');    
        grid on; xlabel('时间t/s'); ylabel('Magnitude');
        title('BF');

        subplot(3,1,2);
        plot(f, 20*log10(x_in_mag/max(x_in_mag)), 'k');
        axis auto;
        %axis([0 1 -inf inf]);
        xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on;grid on;grid on;
        title('BF');

        subplot(3, 1, 3);
        plot(f, pi*(x_in_ang/180), 'k');
        xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
        title('BF');
    end
    
    %% %%%%%%%%%%%%%%%% IF signal generation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    f_carry   = cos(2*pi*fc*t);                               
 %   f_carry_q = round(f_carry / max(abs(f_carry)) * (2^Qbit-1));  

    if (isLPM) 
        if_signal = bf_signal;
    else
        if_signal = bf_signal .* f_carry;                            
    end

    %FM_out_noise = awgn(FM_out,20);                           

    if_signal   =  if_signal / max(abs(if_signal));                        
    if_signal_q =  round(if_signal * (2^(Qbit-1)-1));                   

    % 加汉宁窗的傅里叶变换；
    if_fft = fft(if_signal_q .* w');  
    
    if ((isPlot == 2) || (isPlot == 3))
        if (isFFTShift )
            if_fft = fftshift(if_fft);
        end
        if_signal_mag = abs(if_fft);
        if_signal_ang = angle(if_fft);
        %     fvtool(FM_out); title('FM_out');
        figure;
        subplot(3,1,1);
        plot(t, if_signal_q, 'k');
        xlabel('time(s)'); ylabel('Magnitude'); grid on; 
        title('IF');
        subplot(3,1,2);
        plot(f, 20*log10(if_signal_mag/max(if_signal_mag)), 'k');
        % axis([27.8 29.2 -inf 0]);
        axis auto;
        xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on;
        title('IF');
        subplot(3, 1, 3);
        plot(f, pi*(if_signal_ang/180), 'k');
        xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
        title('IF');
    end
    
%% %%%%%%%%%%%%%%%% Generate Modelsim simlulate file %%%%%%%%%%%%%%%%%
%% dec
    fid = fopen('./signalInt.txt','w');
    for i = 1 : 1: length(if_signal_q)
        fprintf(fid, '[%4d] %8d;\r\n', i, if_signal_q(i));
    end
    fclose(fid);
    
%% bin
    fid = fopen('./signalBin.txt','w');
    for i = 1 : length(if_signal_q)
        Bh_pm = dec2bin(if_signal_q(i) + ((if_signal_q(i)<0) * 2^Qbit), Qbit);
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
%     fprintf(fid, ';'); 
    fclose(fid);
end