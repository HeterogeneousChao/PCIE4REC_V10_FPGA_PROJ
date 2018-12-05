%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% filterDesignMain.m
%%%%            filter design, generate filer coee and test signal in file
%%%%            that can be called by quartus.
%%%%                                            ZHAOCHAO
%%%%                                            2018-03-19
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

clc; clear; close all; format long;

fs   = 10e6;                 %sample frequency;
%fc   = [0.3e6 0.4e6];       %transition band;
fc  = [0.3e6 0.4e6 0.6e6 0.7e6];       %transition band;
mag  = [0 1 1 0];     

dev  = [1e-5, 1e-5];        %passband ripple -60dB, stopband attenuation -60dB;

signalN = 8000;


isEnableWindwsCompare = 0;
isFFTShift = 0;

%%%%% IF signal generation %%%%%%%%%%

f1   =  0.5e6;       %信号1频率为200Hz
f2   =  0.2e6;        %信号2频率为800Hz
f3   =  1e6;        %信号2频率为800Hz
Fs   =  10e6;          %采样频率为2KHz
Qbit =  24;           %量化位数
MAQbit = 54;
N    =  128;
          
    

% test IF signal select
% IFSingalSel:
%        0:  sin(),[fc,fsignal];  1: sin(),[fc,(fsignal+-5KHz)];  
%        2:  LPM(),               3: sinc(t),[fc, fband];  
%  default: sin(),[fc,fsignal];
% IFSingalSel = 3;



% [n, wn, beta, ftype] = kaiserord(fc, mag, dev, fs)  %获取凯塞窗参数

%% isEnableWindwsCompare
if (isEnableWindwsCompare) 
    N = n;
    
    % generate every windows function; 
    w_rect = rectwin(N)';
    w_hann = hann(N)';
    w_hamm = hamming(N)';
    w_blac = blackman(N)';
    w_kais = kaiser(N,7.856)';

    %fir1
    b_rect = fir1(N-1, fc(1)*2/fs, w_rect);
    b_hann = fir1(N-1, fc(1)*2/fs, w_hann);
    b_hamm = fir1(N-1, fc(1)*2/fs, w_hamm);
    b_blac = fir1(N-1, fc(1)*2/fs, w_blac);
    b_kais = fir1(N-1, fc(1)*2/fs, w_kais);
    
    m_rect = 20 * log(abs(fft(b_rect, 1024)))/log(10);
    m_hann = 20 * log(abs(fft(b_hann, 1024)))/log(10);
    m_hamm = 20 * log(abs(fft(b_hamm, 1024)))/log(10);
    m_blac = 20 * log(abs(fft(b_blac, 1024)))/log(10);
    m_kais = 20 * log(abs(fft(b_kais, 1024)))/log(10);

    x_f = [0 : (fs/length(m_rect)) : fs/2];

    m_rect = m_rect(1 : length(x_f));
    m_hann = m_hann(1 : length(x_f));
    m_hamm = m_hamm(1 : length(x_f));
    m_blac = m_blac(1 : length(x_f));
    m_kais = m_kais(1 : length(x_f));

    %绘制幅频响应曲线
    figure;
    plot(x_f, m_rect, '-', x_f, m_hann, '*', x_f, m_hamm, '+', x_f, m_blac, '--', x_f, m_kais, '-.', 'LineWidth', 2);
    xlabel('频率(Hz)'); ylabel('幅度(dB)'); legend('矩形窗','汉宁窗','海明窗','布拉克曼窗','凯塞窗'); grid on;
    title('windows function compare');

end
%%
    fpm   = [0 fc(1)*2/fs fc(2)*2/fs fc(3)*2/fs fc(4)*2/fs 1];   %firpm函数的频段向量
  %  fpm   = [0 fc(1)*2/fs fc(2)*2/fs 1];   %firpm函数的频段向量
    magpm = [0 0 1 1 0 0];                   %firpm函数的幅值向量
    
    filter_order = N;
    %设计最优滤波器
    %h_pm = firpm(n, fpm, magpm);
    h_pm = firpm(filter_order, fpm, magpm);

    %滤波系数进行量化
    h_pm12 = round(h_pm / max(abs(h_pm)) * (2^11-1)); %12bit量化
    h_pm16 = round(h_pm / max(abs(h_pm)) * (2^15-1)); %16bit量化
    h_pm24 = round(h_pm / max(abs(h_pm)) * (2^23-1)); %24bit

    %转换进制
    % q12_bin_pm=dec2bin(h_pm12+2^12*(h_pm12<0),12);
    % q14_bin_pm=dec2bin(h_pm14+2^14*(h_pm14<0),14);
    % q12_hex_pm=dec2hex(h_pm12+2^12*(h_pm12<0));

    q16_hex_pm = dec2hex(h_pm16 + 2^16 * (h_pm16<0));
    q24_hex_pm = dec2hex(h_pm16 + 2^24 * (h_pm24<0));

    % 求滤波器的幅频响应

%% generate coef data used for Xilinx without debug
%
%     fid = fopen('./hfcoefdata_16bit.txt','w');
% 
%     % fprintf(fid,'radix = 10;\r\n');
%     % fprintf(fid,'coefdata=\r\n');
% 
%     % fprintf(fid, '%12d\r\n', h_pm); 
%     fprintf(fid, '%16d\r\n', h_pm); 
%     fprintf(fid, ';');
% 
%     fclose(fid);
%     

%     q_h_pm = round(h_pm * (2^(N-1)-1));
    % h_pm16 = round(h_pm * (2^15-1));           %16bit量化
%
%% generate coef data used for Altera
    fid_int = fopen('./hfcoefdata.txt','w');
    for i = 1 : length(h_pm24)
        fprintf(fid_int, '[%d] %d \r\n',i,  h_pm24(i)); 
    end
   % fclose(fid_int);
    
%% binary
    fid_bin = fopen('./hfcoefdata_bin.txt','w');
    for i = 1 : (length(h_pm24))
        Bh_pm = dec2bin(h_pm24(i) + (h_pm24(i)<0) * 2^Qbit, Qbit);
%         fprintf(fid_bin, 'assign coef2[%d] = 24''b', (i-1));
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(fid_bin, '%d', tb);  
        end
%         fprintf(fid_bin, ';\r\n');
        fprintf(fid_bin, '\r\n');
    end
    %fprintf(fid, ';'); 
    %fclose(fid);


%%%%% plot 

    m_pm   = 20 * log(abs(fft(h_pm, 1024))) / log(10);   m_pm   = m_pm-max(m_pm);
    m_pm12 = 20 * log(abs(fft(h_pm12, 1024))) / log(10); m_pm12 = m_pm12-max(m_pm12);
    m_pm16 = 20 * log(abs(fft(h_pm16, 1024))) / log(10); m_pm16 = m_pm16-max(m_pm16);
    m_pm24 = 20 * log(abs(fft(h_pm24, 1024))) / log(10); m_pm24 = m_pm24-max(m_pm24);


    x_f = [0 : (fs/length(m_pm)) : fs/2];

    mf_pm   = m_pm(1 : length(x_f));
    mf_pm12 = m_pm12(1 : length(x_f));
    mf_pm16 = m_pm16(1 : length(x_f));
    mf_pm24 = m_pm24(1 : length(x_f));
    
    figure;
    plot(x_f, mf_pm, '-', x_f, mf_pm12, '-.' ,x_f, mf_pm24, '--', 'LineWidth', 2);
    xlabel('频率(Hz)'); ylabel('幅度(dB)'); grid on;
    legend('unQuant', '12bit quant', '24bit quant');
    
    
    
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% generate test signal
%     f1 = 900;        %信号1频率为200Hz
%     f2 = 1.2e3;      %信号2频率为800Hz
%     Fs = 10e3;       %采样频率为2KHz
%     N  = 16;         %量化位数
%% %%%%%%%%%%% t & f & n %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% N  = Tp * fs;
% t  = 0 : Tp/N : Tp - Tp/N;
% % t  = -Tp/2 : Tp/N : Tp/2 - Tp/N;
% 
% n = [0 : N-1];
% 
% f = 0 : fs/N : fs - fs/N;
% f = f / fs;
% 
% if (isFFTShift )
%     f = -fs/2 : fs/N : fs/2 - fs/N;
%     f = f / fs;
% end
% 
%% %%%%%%%%%%% IF signal generation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% isLPM = 0;
% 
% switch (IFSingalSel) 
%     case 0
%         x_in = cos(2*pi * fsignal * t);  
%     
%     case 1
%         x_in1 = cos(2*pi * (fsignal-5e3) * t);               
%         x_in2 = cos(2*pi * (fsignal+5e3) * t);  
%         x_in = x_in1 + x_in2;
%         
%     case 2
%         u   = fband/Tp;                             %u为带宽除以时宽
%         t   = -Tp/2 : Tp/N : Tp/2 - Tp/N;
%         x_in = cos(2*pi*(fc*t+0.5*u*t.^2));         %信号表达式
%         isLPM = 1;
%          
%     case 3
%         x_in = sin(2*pi*(fband/fs)*((n - (N-1)/2))) ./ (pi*((n - (N-1)/2)));    
%         
%     otherwise
%         x_in = cos(2*pi * fsignal * t);            
% end

%%
    %Pn    = Pn0 * Fs/2; %噪声信号功率
    %width = 0.5;   %函数SAWTOOTH()的尺度参数为0.5
    %duty  = 50;     %函数SQUQRE()的尺度参数为50
    %产生信号
    t  = 0 : 1/Fs : 1;
    c1 = 2*pi * f1 * t;
    c2 = 2*pi * f2 * t;
    c3 = 2*pi * f3 * t;
    
    %sq=square(c,duty);%产生方波
    %tr=sawtooth(c,width);%产生三角波
    s1 = sin(c1);%产生正弦波
    s2 = sin(c2);%产生正弦波
    s3 = sin(c3);%产生正弦波
    s  = s1 + s2 + s3;   %产生两个单载波合成后的信号
    
    noise = randn(1, length(t));%产生高斯白噪声序列
    
    s     = s(1 : signalN);
    noise = noise(1 : signalN);

    %归一化
    noise = noise/max(abs(noise));
    s     = s / max(abs(s));

    %quant
    Q_noise = round(noise * (2^(Qbit-1)-1));
    Q_s     = round(s * (2^(Qbit-1)-1));
    
    
    if (length(h_pm24) <= 256)
        fprintf(fid_int, '[%d] %d  \r\n',258, 0); 
        %fprintf(fid_bin, 'assign coef2[%d] = 24''b', (i));
        for j = 1 : Qbit
           fprintf(fid_bin, '%d', 1);  
        end
%         fprintf(fid_bin, ';\r\n');
        fprintf(fid_bin, '\r\n');
    else
        fprintf(fid_int, '[%d] %d  \r\n',258, 1); 
%         fprintf(fid_bin, 'assign coef2[%d] = 24''b', (i));
        for j = 1 : Qbit
           fprintf(fid_bin, '%d', 0);  
        end
    end


%     hn = mf_pm16;
%     hn = mf_pm12;
    hn = h_pm;

    Filter_noise = filter(h_pm24, 1,Q_noise);
    Filter_s     = filter(h_pm24, 1,Q_s);
    
    ValSel =(MAQbit-1) - round(size(dec2bin(max(abs(Filter_s))),2));
    
    fprintf(fid_int, '[%d] %d \r\n',257, ValSel); 
    
    Bh_pm = dec2bin(ValSel + (ValSel<0) * 2^Qbit, Qbit);
%     fprintf(fid_bin, 'assign coef2[%d] = 24''b', (i-1));
    for j = 1 : Qbit
       if Bh_pm(j) == '1'
           tb = 1;
       else
           tb = 0;
       end
       fprintf(fid_bin, '%d', tb);  
    end
%     fprintf(fid_bin, ';\r\n');
    fprintf(fid_bin, '\r\n');

    

        
     fclose(fid_int);
     fclose(fid_bin);
%     N = 40;
%     Q_Filter_noise = round(Filter_noise * (2^(N-1)-1));
%     Q_Filter_s     = round(Filter_s * (2^(N-1)-1));
    
   %% generate filtered data used for Altera
    fid = fopen('./filtereddata_S.txt','w');
    for i = 1 : length(Filter_s)
        fprintf(fid, '%d ', Filter_s(i)); 
    end
    fclose(fid);
    
    fid = fopen('./filtereddata_N.txt','w');
    for i = 1 : length(Filter_noise)
        fprintf(fid, '%d ', Filter_noise(i)); 
    end
    fclose(fid);
    
    

    m_noise  = 20*log(abs(fft(Q_noise, 1024)))/log(10);     m_noise = m_noise - max(m_noise);
    m_s      = 20*log(abs(fft(Q_s, 1024)))/log(10);         m_s     = m_s - max(m_s);
    
    Fm_noise = 20*log(abs(fft(Filter_noise,1024)))/log(10); Fm_noise = Fm_noise - max(Fm_noise);
    Fm_s     = 20*log(abs(fft(Filter_s,1024)))/log(10);     Fm_s     = Fm_s - max(Fm_s);
    
    m_hn     = 20*log(abs(fft(hn,1024)))/log(10);           m_hn = m_hn-max(m_hn);

  
    
    
    x_f = [0 : (Fs/length(m_s)) : Fs/2];
    
    mf_noise  = m_noise(1 : length(x_f));
    mf_s      = m_s(1 : length(x_f));
    
    Fmf_noise = Fm_noise(1 : length(x_f));
    Fmf_s     = Fm_s(1 : length(x_f));
    
    Fm_hn     = m_hn(1 : length(x_f));

    f_noise   = Filter_noise;
    f_s       = Filter_s;
    
    t  = t(1 : signalN);

    figure;
    subplot(2, 1, 1);
    plot(x_f, mf_noise, '-.', x_f, Fmf_noise, '-', x_f, Fm_hn, '--', 'LineWidth', 2); 
    xlabel('频率(Hz)'); ylabel('幅度(dB)'); title('Matlab: 白噪声');
    legend('输入信号频谱','输出信号频谱','滤波器响应'); grid on;

    subplot(2, 1, 2);
    plot(x_f, mf_s, '-.', x_f, Fmf_s, '-', x_f, Fm_hn, '--', 'LineWidth', 2);
    xlabel('频率(Hz)'); ylabel('幅度(dB)'); title('Matlab: Multi Sin(t)');
    legend('输入信号频谱','输出信号频谱','滤波器响应'); grid on; 
    
    figure;
    subplot(2, 1, 1); 
    plot(t, s, 'k', 'lineWidth', 2); grid on;
    xlabel('time(s)'); ylabel('Mag'); title('Matlab: multi sin before filer');
    subplot(2, 1, 2); 
    plot(t, f_s, 'k', 'lineWidth', 2); grid on;
    xlabel('time(s)'); ylabel('Mag'); title('Matlab: multi sin after filer');
    
%     figure;
%     subplot(2, 1, 1); 
%     plot(t, noise, 'k', 'lineWidth', 2); grid on;
%     xlabel('time(s)'); ylabel('Mag'); title('Matlab: gauss white noise before filer');
%     subplot(2, 1, 2); 
%     plot(t, f_noise, 'k', 'lineWidth', 2); grid on;
%     xlabel('time(s)'); ylabel('Mag'); title('Matlab: gauss white noise after filer');

    
    fid = fopen('./Int_noise.txt', 'w');
    fprintf(fid, '%8d\r\n', Q_noise);
    fprintf(fid, ';'); 
    fclose(fid);

    fid = fopen('./Int_S.txt','w');
    fprintf(fid, '%8d\r\n', Q_s);
    fprintf(fid, ';'); 
    fclose(fid);

    %Binary
    fid = fopen('./Bin_noise.txt', 'w');
    for i = 1 : length(Q_noise)
        B_noise = dec2bin(Q_noise(i) + (Q_noise(i)<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if B_noise(j) == '1'
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


    fid = fopen('./Bin_S.txt','w');
    for i = 1 : length(Q_s)
        B_s = dec2bin(Q_s(i) + (Q_s(i)<0) * 2^Qbit, Qbit);
        for j = 1 : Qbit
           if B_s(j) == '1'
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




