%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  function DDCDesignMain.m
%%%%                                                                  ZHAOCHAO
%%%%                                                                      2018-04-18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ t_cic, f_cic, N_CIC, cic_out_q] = subf_cic_cicc_design( ...
                     singnal, cic_decf, cic_diffd, cic_numsecs, cic_config_wl, cic_middle_width, cic_in_wl, ...
                           cic_out_wl, cic_comp_L,  t, Tp, f, fs, n, N, isPlot, isFFTShift, isGenConfigFile)
    
    %%%% int
    cic_a = [1, -1*cic_diffd];
    for idx = 1 : (cic_numsecs)
        if (idx == 1)
            str_tmp = sprintf('cic_int_in%d = filter(1, cic_a, singnal);', idx);
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
    
    str_tmp = sprintf('CICFValSel(%d) = ((cic_middle_width-1) - round(size(dec2bin(max(abs(cic_out))),2)));', 1);
    eval(str_tmp);
            
    str_tmp = sprintf('cic_out_q = (cic_out*(2^(17-CICFValSel(%d))));', 1);
    eval(str_tmp);
    
    N_CIC = ceil(N / (cic_decf*cic_diffd));                                   
    t_cic = 0 : Tp/N_CIC : Tp - Tp/N_CIC;

    f_cic = 0 : fs/N_CIC : fs - fs/N_CIC;
    %f_cic = f_cic / (fs);

    if (isFFTShift )
        f_cic = -fs/2 : fs/N_CIC : fs/2 - fs/N_CIC;
        %f_cic = f_cic / (fs);
    end
    
   %% generate filtered data used for output data analyse;
    fid = fopen('./filtereddata_S.txt','w');
    for idxi = 1 : length(cic_out_q)
        fprintf(fid, '%d ', cic_out_q(idxi)); 
    end
    fclose(fid);
    
 %% %%%%%%%%%%%%%%%% plot %%%%%%%%%%%%%%%%% 
 
    if ((isPlot == 1) || (isPlot == 3))
        % 生成窗
        %w = hann(length(cic_out_q), 'symmetric');       %symmetric  periodic  
         w = ones(length(cic_out_q), 1);                 % rectangle window

        % 加窗
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
    
    %%%% generate fpga config file
    if ( isGenConfigFile )
        Qbit = cic_config_wl;
            
        configFileInt = fopen('./configFileInt.txt', 'a');
        configFileBin = fopen('./configFileBin.txt', 'a');
    
% % %         idx_coef = 0;
% % %         fprintf(configFileBin, 'assign coef[%d] = 32''b', idx_coef);
        idx_m = 0;
        for j = 1 : Qbit
            if (idx_m > (16-cic_numsecs-1))
                   fprintf(configFileBin, '1'); 
                   idx_m = idx_m + 1;
            else
                   fprintf(configFileBin, '0');  
                   idx_m = idx_m + 1;
            end
        end
        fprintf(configFileBin, ';\r\n');
        
        
        Bh_pm = dec2bin(cic_decf + (cic_decf<0) * 2^Qbit, Qbit);
% % %         idx_coef = 1;
% % %         str_tmp = sprintf('fprintf(configFileBin, ''assign coef[%d] = 32''''b'');', idx_coef);
        eval(str_tmp);
        for j = 1 : Qbit
           if Bh_pm(j) == '1'
               tb = 1;
           else
               tb = 0;
           end
           fprintf(configFileBin, '%d', tb);  
        end
        fprintf(configFileBin, ';\r\n');

        Bh_pm = dec2bin(CICFValSel + (CICFValSel<0) * 2^Qbit, Qbit);
% % %         idx_coef = 2;
% % %         str_tmp = sprintf('fprintf(configFileBin, ''assign coef[%d] = 32''''b'');', idx_coef);
        eval(str_tmp);
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
    end
end