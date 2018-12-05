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
F_CLK    = 100e6;
F_OUT   = 32e6;

FRE_MOD_WIDTH    = 32;
PHA_MOD_WIDTH    = 32;
ACCUMULATE_WIDTH = 32;
ROM_ADDR_WIDTH   = 16;
ROM_DATA_WIDTH   = 16;
OUTPUT_WIDTH     = 16;

INIT_PHASE = 0;
ACC_LENGTH = 2^ACCUMULATE_WIDTH;  % accumulator length
ROM_LENGTH = 2^ROM_ADDR_WIDTH;    % ROM lenth
scale_vec  = 2^0;   %


cycles = 10000;
cycle  = 10000;  
CYCLES = cycles;

phase_inc  = round(ACC_LENGTH * F_OUT/F_CLK);
freq_mod   = phase_inc;

% ACC_LENGTH = 24576; % accumulator length
% ROM_LENGTH = 6144;  % ROM lenth
% scale_vec  = 65536;  %


INIT_PHASE = round(sin(INIT_PHASE)*scale_vec);

%acc step
% NCO_FTW       = round(ACC_LENGTH * F_OUT/F_CLK);
% lenth         = round(ACC_LENGTH/NCO_FTW);
% cycle_samples = CYCLES*lenth;

%generate LUT for sin and cos
i = (0 : ROM_LENGTH-1) * 2 * pi/((ROM_LENGTH-1));
sin_rom = sin(i);
cos_rom = cos(i);

sin_rom_q_data = round(sin_rom * (2^(ROM_DATA_WIDTH-1)-1)); 

%生成mif文件
fid = fopen('sin_rom_65536x16.mif','w+');
fprintf(fid,'WIDTH=16;\n');
fprintf(fid,'DEPTH=65536;\n\n');
fprintf(fid,'ADDRESS_RADIX=UNS;\n');
fprintf(fid,'DATA_RADIX=DEC;\n\n'); 
fprintf(fid,'CONTENT BEGIN\n');
for idx = 1 : ROM_LENGTH
    fprintf(fid,'   %d:%d;\n', (idx-1), sin_rom_q_data(idx)); %单个地址不加[],matlab中的数组是从1开始的
end 
fprintf(fid,'END;\n');
fclose(fid);


% sin_rom = floor(sin_rom.*scale_vec);
% cos_rom = floor(cos_rom.*scale_vec);

for i = 1 : ROM_LENGTH
    if INIT_PHASE - sin_rom(i) <= 1
        INIT_PHASE_ACC = i;
        break;
    end
end

sin_out = zeros(1,lenth*cycle_samples);
cos_out = zeros(1,lenth*cycle_samples);

% NCO realization
NUM = 1;
num_cycle = 1;
phase_acc = INIT_PHASE_ACC;
while(1)
    if num_cycle == cycle_samples;
        break;
    else
            if phase_acc <= ROM_LENGTH 
                sin_out(NUM) = sin_rom(phase_acc);
                cos_out(NUM) = cos_rom(phase_acc);
            elseif phase_acc <= 2* ROM_LENGTH
                sin_out(NUM) = sin_rom(2*ROM_LENGTH - phase_acc + 1);
                cos_out(NUM) = -cos_rom(2*ROM_LENGTH - phase_acc + 1);
            elseif phase_acc <= 3* ROM_LENGTH
                sin_out(NUM) = -sin_rom(phase_acc - 2*ROM_LENGTH);
                cos_out(NUM) = -cos_rom(phase_acc - 2*ROM_LENGTH);
            else
                sin_out(NUM) = -sin_rom(4*ROM_LENGTH - phase_acc + 1);
                cos_out(NUM) = cos_rom(4*ROM_LENGTH - phase_acc + 1);
            end
            NUM = NUM + 1;
            num_cycle = num_cycle + 1;
            phase_acc = phase_acc + NCO_FTW;
            if phase_acc >= ACC_LENGTH
               phase_acc = phase_acc -  ACC_LENGTH + 1;
            end
    end
end
%sin_out = round(sin_out.*scale_vec);
%cos_out = round(cos_out.*scale_vec);

phase_inc = round(ACC_LENGTH_T * F_OUT/F_IN);

% plot result

x = linspace(0,cycle*floor(1e9/F_OUT),cycle*floor(ACC_LENGTH_T/phase_inc));
figure(1);
subplot(2,1,1); 
%plot(x,cos_lut(1:cycle*floor(ACC_LENGTH_T/phase_inc)),'r.-');
%hold on;
plot(x,cos_out(1:cycle*floor(ACC_LENGTH_T/phase_inc)),'b.--');
xlabel('ns');
ylabel('cos(\Theta)');
title('cos results');
subplot(2,1,2);
%plot(x,sin_lut(1:cycle*floor(ACC_LENGTH_T/phase_inc)),'r.-');
%hold on;
plot(x,sin_out(1:cycle*floor(ACC_LENGTH_T/phase_inc)),'b.--');
xlabel('ns');
ylabel('sin(\Theta)');
title('sin results');

SCALE = 1;
L = cycle*floor(ACC_LENGTH_T/phase_inc);
NFFT = 2^nextpow2(L);
sample_max = NFFT/2+1;
Y1 = fft(sin_out/SCALE,NFFT)/L;
Y2 = fft(cos_out/SCALE,NFFT)/L;
f = F_IN/2*linspace(0,1,sample_max);

 %Plot single-sided amplitude spectrum.
figure(2);
subplot(2,1,1);
plot(f,abs(Y2(1:sample_max)),'r.-');
title('Spectrum of cos_out)');
xlabel('Frequency (Hz)');
ylabel('|Y2(f)|');

subplot(2,1,2);
plot(f,abs(Y1(1:sample_max)),'r.-');
title('Spectrum of sin_out)');
xlabel('Frequency (Hz)');
ylabel('|Y1(f)|');
