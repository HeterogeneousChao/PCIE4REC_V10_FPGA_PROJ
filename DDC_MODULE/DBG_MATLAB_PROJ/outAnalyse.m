%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% simMixer.m
%%%%        test simulate with quartusII
%%%%        spectrum analyse the output file 
%%%%                                ZHAOCHAO
%%%%                                2018-03-26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
clc; clear; format long;
fs = 100e6;
L  = 768;

isEnableShift = 0;
isSelDoubleSin = 1;

if (isSelDoubleSin)
    fid_out   = fopen('./simDataOut.txt');
    fid_in    = fopen('./simDataOut.txt');
    fid_ideal = fopen('./simDataOut.txt');
else
    fid_out = fopen('./simDataOut_N.txt');
    fid_in    = fopen('./filtereddata_N.txt');
    fid_ideal = fopen('./Int_noise.txt');
end


[fpgaOut, countO] = fscanf(fid_out, '%d', inf);
fclose(fid_out);

[IdelaFiltered, countF] = fscanf(fid_ideal, '%d', inf);
fclose(fid_ideal);

[fpgaIn, countI] = fscanf(fid_in, '%d', inf);
fclose(fid_in);

L = min(min(countO, countI), countF);

fpgaOut = fpgaOut(1:L);
fpgaIn  = fpgaIn(1:L);
idealOut = IdelaFiltered(1:L);

fft_out = fft(fpgaOut/max(abs(fpgaOut)));
fft_in  = fft(fpgaIn/max(abs(fpgaIn)));
fft_idealOut  = fft(idealOut/max(abs(idealOut)));

if (isEnableShift)
    fft_out   = fftshift(fft_out);
    fft_in    = fftshift(fft_in);
    fft_idealOut  = fftshift(fft_idealOut);
end

fft_out   = fft_out / max(fft_out);
fft_in    = fft_in  / max(fft_in);
fft_idealOut  = fft_idealOut  / max(fft_idealOut);

fft_out_mag   = 20 * log(abs(fft_out)/log(10));
fft_in_mag    = 20 * log(abs(fft_in)/log(10));
fft_idealOut  = 20 * log(abs(fft_idealOut)/log(10));

fft_out_mag   = fft_out_mag - max(fft_out_mag);
fft_in_mag    = fft_in_mag  - max(fft_in_mag);
fft_idealOut  = fft_idealOut  - max(fft_idealOut);


t = [0 : 1 : L-1];        
t = t * (1/fs) * (1e-6);     % (us)

f = [0 : 1 : L-1];
f = f * (fs/L) * (1e-6);     % (MHz)
if (isEnableShift)
    f = [f(L/2:L-1), f(1:((L/2)-1))];
end

figure;
subplot(2,1,1);
plot(t, fpgaOut, 'k');
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('fpga out');

subplot(2,1,2);
plot(f, fft_out_mag, 'k');
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('fpga out spectrum'); 

figure;
subplot(2, 1, 1);
plot(t, fpgaIn, 'k');
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('input signal out');

subplot(2,1,2);
plot(f, fft_in_mag, 'k');
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('input signal spectrum');

figure;
subplot(2, 1, 1);
plot(t, idealOut, 'k');
xlabel('time(us)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('ideal output out');

subplot(2,1,2);
plot(f, fft_idealOut, 'k');
xlabel('frequency(MHz)', 'fontsize', 8); ylabel('mag', 'fontsize', 8);
grid on; title('ideal output spectrum');

figure;
plot(f, fft_in_mag, '-', f, fft_out_mag, '-.' ,f, fft_idealOut, '--', 'LineWidth', 2);
xlabel('ÆµÂÊ(Hz)'); ylabel('·ù¶È(dB)'); grid on;
legend('fpga in', 'fpga out', 'matlab out');





