
clc; clear; close all; format long;

%% %%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

Tp     = 10e-5;
fs     = 100e6;                                 
Qbit   = 16;

% N_sim_signal = 2048;

fc      = 10e6;                                  

fband   =  1e6;
fsignal =  5e6;
fsignal1 = 1e6;
fsignal2 = 3e6;

nco_f   = 10e6;

% Dcef
Dcef = fs/(2*fband); display(Dcef);  disp('Hz');


isFFTShift        = 0;
isEnableQuantCoef = 1;

% input IF signal select
% IFSingalSel:
%        0:  sin(),[fc,fsignal];  1: sin(),[fc,(fsignal+-5KHz)];  
%        2:  LPM(),               3: sinc(t),[fc, fband]; 
%        4:  sin(f1) + f(f2), [fc, f1+f2];
%        5: sin(),[fsignal];
%  default: sin(),[fc,fsignal];
IFSingalSel = 5;

%% %%%%%%%%%%%%%%%% t & f & n %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N  = Tp * fs;
t  = 0 : Tp/N : Tp - Tp/N;
% t  = -Tp/2 : Tp/N : Tp/2 - Tp/N;

n = [0 : N-1];

f = 0 : fs/N : fs - fs/N;
f = f / fs;

if (isFFTShift )
    f = -fs/2 : fs/N : fs/2 - fs/N;
    f = f / fs;
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



%% %%%%%%%%%%%%%%%% NCO & MIXER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  NCO

FM_out_q   = floor(FM_out*2^7)/2^7;       % 输入(调制后的信号)7位量化  

% w_phase    = 0.28;%floor(f*2^7/fs)/2^7;   % 相位控制字8位量化
% w_phase_q  = floor(w_phase*n*2^7)/2^7;    %（floor向比原数小的数取整） cordic算法相位29位有效输入 

nco_i = cos(2*pi * nco_f * t);
nco_q = sin(2*pi * nco_f * t);

nco_out_i = nco_i .* FM_out;
nco_out_q = nco_q .* FM_out;

% nco_out    = FM_out .* cos(2*pi*w_phase_q); 
% nco_out_q  = floor(nco_out*2^15)/2^15;    % 输出16位量化（符号位1位）                

% 加窗FFT；
nco_out_i_fft = fft(nco_out_i .* w');
if (isFFTShift )
    nco_out_i_fft = fftshift(nco_out_i_fft);
end
nco_out_i_ang = angle(nco_out_i_fft);
nco_out_i_mag = abs(nco_out_i_fft);

nco_out_q_fft = fft(nco_out_q .* w'); 
if (isFFTShift )
    nco_out_q_fft = fftshift(nco_out_q_fft);
end
nco_out_q_ang = angle(nco_out_q_fft);
nco_out_q_mag = abs(nco_out_q_fft);


%     fvtool(nco_out_q); title('nco-out-q');
%     fvtool(nco_out_i); title('nco-out-i');

figure;
subplot(3, 1, 1);
plot(t, nco_out_i, 'k');
xlabel('time(s)'); ylabel('Magnitude'); grid on; 
title('NCO-I');

subplot(3, 1, 2);
plot(f, 20*log10(nco_out_i_mag / max(nco_out_i_mag)), 'k');
% axis([0 0.02 -inf 0]);
axis auto;
xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on; 
title('NCO-I');

subplot(3, 1, 3);
plot(f, pi*(nco_out_i_ang/180), 'k');
xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
title('NCO-I');

figure;
subplot(3, 1, 1);
plot(t, nco_out_q, 'k'); 
xlabel('time(s)'); ylabel('Magnitude'); grid on;
title('NCO-Q');

subplot(3, 1, 2);
plot(f, 20*log10(nco_out_q_mag / max(nco_out_q_mag)), 'k');
% axis([0 0.02 -inf 0]);
axis auto;
xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on; 
title('NCO-Q');

subplot(3, 1, 3);
plot(f, pi*(nco_out_q_ang/180), 'k');
xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on;
title('NCO-Q');


%% generate filtered data used for Altera
fid = fopen('./filtereddata_I.txt','w');
for i = 1 : length(nco_out_i)
    fprintf(fid, '%d ', nco_out_i(i)); 
end
fclose(fid);

fid = fopen('./filtereddata_Q.txt','w');
for i = 1 : length(nco_out_q)
    fprintf(fid, '%d ', nco_out_q(i)); 
end
fclose(fid);
    


% %%%% NCO Complex output
% u = nco_out_i + j*nco_out_q;
% u_mag = abs(u);
% u_fft = fft(u);
% if (isFFTShift )
%     u_fft = fftshift(u_fft);
% end
% u_fft_mag = abs(u_fft);
% u_fft_ang = angle(u_fft);
% 
% figure;
% subplot(3,1,1);
% plot(t, u_mag, 'k');
% xlabel('time(s)'); ylabel('Magnitude'); grid on; title('NCO（I+JQ)');
% 
% subplot(3,1,2);
% plot(f, 20*log10(u_fft_mag / max(u_fft_mag)), 'k');
% axis auto;
% xlabel('frequency (*fs Hz)'); ylabel('Magnitude (dB)'); grid on; title('NCO（I+JQ)');
% 
% subplot(3,1,3);
% plot(f, pi*(u_fft_ang/180), 'k');
% xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; title('NCO（I+JQ)'); 
