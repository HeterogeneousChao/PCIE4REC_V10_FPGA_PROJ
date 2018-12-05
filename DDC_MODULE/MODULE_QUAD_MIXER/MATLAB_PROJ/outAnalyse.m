%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% simMixer.m
%%%%        test simulate with quartusII
%%%%        spectrum analyse the output file 
%%%%                                ZHAOCHAO
%%%%                                2018-03-26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

clc; clear; close all;
fs = 100e6;
L  = 4096;

isEnableShift = 0;

fid = fopen('./simDataOut_I.txt');
[fpgaOutI, countI] = fscanf(fid, '%d', inf);
fclose(fid);

fid = fopen('./simDataOut_Q.txt');
[fpgaOutQ, countQ] = fscanf(fid, '%d', inf);
fclose(fid);

L = min(countI, countQ);

fid = fopen('./simDataOutNCO_I.txt');
[fpgaOutNCOI, countI] = fscanf(fid, '%d', inf);
fclose(fid);

fid = fopen('./simDataOutNCO_Q.txt');
[fpgaOutNCOQ, countQ] = fscanf(fid, '%d', inf);
fclose(fid);

LNCO = min(countI, countQ);

L    = min(L, LNCO);

fpgaOutI  = fpgaOutI(1:L);
fpgaOutQ  = fpgaOutQ(1:L);

fpgaOutNCOI  = fpgaOutNCOI(1:L);
fpgaOutNCOQ  = fpgaOutNCOQ(1:L);

fft_out_i  = fft(fpgaOutI/max(abs(fpgaOutI)));
fft_out_q  = fft(fpgaOutQ/max(abs(fpgaOutQ)));

fft_out_nco_i  = fft(fpgaOutI/max(abs(fpgaOutNCOI)));
fft_out_nco_q  = fft(fpgaOutQ/max(abs(fpgaOutNCOQ)));

if (isEnableShift)
   fft_out_i  = fftshift(fft_out_i);
   fft_out_q  = fftshift(fft_out_q);
   
   fft_out_nco_i  = fftshift(fft_out_nco_i);
   fft_out_nco_q  = fftshift(fft_out_nco_q);
end

fft_out_i  = fft_out_i / max(fft_out_i);
fft_out_q  = fft_out_q  / max(fft_out_q);

fft_out_nco_i  = fft_out_nco_i  / max(fft_out_nco_i);
fft_out_nco_q  = fft_out_nco_q  / max(fft_out_nco_q);

fft_out_i_mag  = abs(fft_out_i);
fft_out_q_mag  = abs(fft_out_q);

fft_out_nco_i_mag  = abs(fft_out_nco_i);
fft_out_nco_q_mag  = abs(fft_out_nco_q);

fft_out_i_ang  = angle(fft_out_i);
fft_out_q_ang  = angle(fft_out_q);

fft_out_nco_i_ang  = angle(fft_out_nco_i);
fft_out_nco_q_ang  = angle(fft_out_nco_q);

fft_out_i_mag  = 20*log(fft_out_i_mag/max(fft_out_i_mag));
fft_out_q_mag  = 20*log(fft_out_q_mag/max(fft_out_q_mag));

fft_out_nco_i_mag  = 20*log(fft_out_nco_i_mag/max(fft_out_nco_i_mag));
fft_out_nco_q_mag  = 20*log(fft_out_nco_q_mag/max(fft_out_nco_q_mag));

t = [0 : 1 : L-1];        
t = t * (1/fs); % * (1e-6);     % (us)

f = [0 : 1 : L-1];
f = f * (fs/L) * (1e-6);     % (MHz)
if (isEnableShift)
    f = [f(L/2:L-1), f(1:((L/2)-1))];
end

figure;
subplot(3,1,1);
plot(t, fpgaOutI, 'k');
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title(' I out');

subplot(3,1,2);
plot(f, fft_out_i_mag, 'k');
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title(' I out spectrum'); 

subplot(3, 1, 3);
plot(f, pi*(fft_out_i_ang/180), 'k');
xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
title(' I out');

figure;
subplot(3, 1, 1);
plot(t, fpgaOutQ, 'k');
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title(' Q out');

subplot(3,1,2);
plot(f, fft_out_q_mag, 'k');
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title(' Q out spectrum');

subplot(3, 1, 3);
plot(f, pi*(fft_out_q_ang/180), 'k');
xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
title(' Q out');

% % % figure;
% % % subplot(3, 1, 1);
% % % plot(t, fpgaOutNCOI, 'k');
% % % xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
% % % grid on; title('NCO I out');
% % % 
% % % subplot(3,1,2);
% % % plot(f, fft_out_nco_i_mag, 'k');
% % % xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
% % % grid on; title('NCO I out spectrum');
% % % 
% % % subplot(3, 1, 3);
% % % plot(f, pi*(fft_out_nco_i_ang/180), 'k');
% % % xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
% % % title('NCO I out');
% % % 
% % % figure;
% % % subplot(3, 1, 1);
% % % plot(t, fpgaOutNCOQ, 'k');
% % % xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
% % % grid on; title('NCO Q out');
% % % 
% % % subplot(3,1,2);
% % % plot(f, fft_out_nco_q_mag, 'k');
% % % xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
% % % grid on; title('NCO Q out spectrum');
% % % 
% % % subplot(3, 1, 3);
% % % plot(f, pi*(fft_out_nco_q_ang/180), 'k');
% % % xlabel('frequency (*fs Hz)'); ylabel('Angle (pi)'); grid on; 
% % % title('NCO Q out');






