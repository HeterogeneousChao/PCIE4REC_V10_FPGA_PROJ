%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% simMixer.m
%%%%        test simulate with quartusII
%%%%        spectrum analyse the output file 
%%%%                                ZHAOCHAO
%%%%                                2018-03-26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
clc; clear; format long;
fs = 100e3;

isEnableShift = 0;
isSelDoubleSin = 1;

if (isSelDoubleSin)
    fid_out   = fopen('./cicSimDataOut_I.txt');
    fid_ideal = fopen('./filtereddata_S_1e6_3K_98K_INT.txt');
else
%     fid_out = fopen('./simDataOut_N.txt');
%     fid_in    = fopen('./filtereddata_N.txt');
%     fid_ideal = fopen('./Int_noise.txt');
end


[fpgaOut, countO] = fscanf(fid_out, '%d', inf);
fclose(fid_out);

[IdelaFiltered, countF] = fscanf(fid_ideal, '%d', inf);
fclose(fid_ideal);

L = min(countO, countF);

fpgaOut = fpgaOut(1:L);
idealOut = IdelaFiltered(1:L);

fft_out = fft(fpgaOut/max(abs(fpgaOut)));
fft_idealOut  = fft(idealOut/max(abs(idealOut)));

if (isEnableShift)
    fft_out   = fftshift(fft_out);
    fft_idealOut  = fftshift(fft_idealOut);
end

fft_out   = fft_out / max(fft_out);
fft_idealOut  = fft_idealOut  / max(fft_idealOut);

fft_out_mag   = 20 * log(abs(fft_out)/log(10));
fft_idealOut  = 20 * log(abs(fft_idealOut)/log(10));

fft_out_mag   = fft_out_mag - max(fft_out_mag);
fft_idealOut  = fft_idealOut  - max(fft_idealOut);


t = [0 : 1 : L-1];        
t = t * (1/fs) * (1e-6);     % (us)

f = [0 : 1 : L-1];
f = f * (fs/L);
% f = f * (fs/L) * (1e-6);     % (MHz)
if (isEnableShift)
    f = [f(L/2:L-1), f(1:((L/2)-1))];
end

figure;
subplot(2,1,1);
plot(t, fpgaOut, 'k', 'LineWidth', 2);
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('fpga out');

subplot(2,1,2);
plot(f, fft_out_mag, 'k', 'LineWidth', 2);
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('fpga out spectrum'); 


figure;
subplot(2, 1, 1);
plot(t, idealOut, 'k', 'LineWidth', 2);
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('ideal output out');

subplot(2,1,2);
plot(f, fft_idealOut, 'k', 'LineWidth', 2);
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('ideal output spectrum');

figure;
plot(f, fft_out_mag, '-.' ,f, fft_idealOut, '--', 'LineWidth', 2);
xlabel('ÆµÂÊ(Hz)'); ylabel('·ù¶È(dB)'); grid on;
legend( 'fpga out', 'matlab out');





