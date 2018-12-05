///////////////////////////////////////////////////////////////////////////////////
////  NCO QUAD SIGNAL GENERATE
////					DDC_1CHANNEL_FUN
////         					ZHAOCHAO
////									 20180418
///////////////////////////////////////////////////////////////////////////////////////////
////

module DDC_CHANNEL_CTL(
	CLK, nRST,
	
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	isConfigACK_MIXER,
	isConfigDone_MIXER,
	isConfig_MIXER,
	Data_Config_Out_MIXER,
	
	isConfig_DDCF,
	Data_Config_Out_DDCF,
	isConfigACK_DDCF,
	isConfigDone_DDCF
);

	parameter CONFIG_WIDTH 		      = 32;	
	parameter QMIXER_CONFIG_DATA_NUM  = 2;
	parameter CIC1_CONFIG_DATA_NUM 	  = 3;
	parameter CICC1_CONFIG_DATA_NUM   = 259;
	parameter CIC2_CONFIG_DATA_NUM 	  = 3;
	parameter CICC2_CONFIG_DATA_NUM   = 259;
	parameter MHBF_CONFIG_DATA_NUM 	  = 176; // 1 + 5*(33 + 2);
	parameter DFIR_CONFIG_DATA_NUM 	  = 516; // 1 + 513 + 2;
	
	parameter CIC_CICC1_CONFIG_DATA_NUM = CIC1_CONFIG_DATA_NUM+CICC1_CONFIG_DATA_NUM;
	parameter CIC_CICC2_CONFIG_DATA_NUM = CIC2_CONFIG_DATA_NUM+CICC2_CONFIG_DATA_NUM;
	
	parameter CH_FILTERS_CONFIG_DATA_CNT  = CIC_CICC1_CONFIG_DATA_NUM+CIC_CICC2_CONFIG_DATA_NUM+MHBF_CONFIG_DATA_NUM+DFIR_CONFIG_DATA_NUM;     
	
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
////// MIXER
	//Data_Config_In[0]: configFreqMod,
	//Data_Config_In[1]: configPhasMod;
////// CIC CICC 1
	//Data_Config_In[2]: CIC_NUMSECS, 
	//Data_Config_In[3]: CIC_DCEF, 
	//Data_Config_In[4]: CIC_SCALE;
	//Data_Config_In[5-FILTER_ORDER+5]: cicc coef, 
	//Data_Config_In[FILTER_ORDER+6]:   cicc ScalVal, 
	//Data_Config_In[FILTER_ORDER+7]:   isCoefSym;
////// CIC CICC 2	
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3 - CICC_FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[CICC_FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[CICC_FILTER_ORDER+5]:   isCoefSym;
////// MHBF
	//Data_Config_In[CICC_FILTER_ORDER+6]:   mhbf_ctl, 
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5]: hbf coefs, 
////// DFIR
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5 + 1]: dfir dcef, 
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+1]: dfir coefs,  
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+2 - (*+DFIR_ORDER)]: dfir isCoefSym;
	//Data_Config_In[*+1]:   fir ScalVal;
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	input  isConfigACK_MIXER;
	input  isConfigDone_MIXER;
	output isConfig_MIXER;
	output signed [CONFIG_WIDTH-1:0] Data_Config_Out_MIXER;
	
	output isConfig_DDCF;
	output signed [CONFIG_WIDTH-1:0] Data_Config_Out_DDCF;
	input  isConfigACK_DDCF;
	input  isConfigDone_DDCF;

	
	reg    risConfigACK;
	reg    risConfigDone;
	
	reg    risConfig_MIXER; 		
	reg    signed [CONFIG_WIDTH-1:0] rData_Config_Out_MIXER; 

	reg	 risConfig_DDCF;
	reg	 signed [CONFIG_WIDTH-1:0] rData_Config_Out_DDCF;

	reg [3:0] state_idx_reg;
	reg [2:0] mixer_config_idx_reg;
	reg [11:0] ddcf_config_idx_reg;

	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 4'd0;
				mixer_config_idx_reg <= 3'd0;
				ddcf_config_idx_reg  <= 12'd0;

				risConfigACK  <= 1'b0;
				risConfigDone <= 1'b0;
				
				risConfig_MIXER <= 1'b0;
				risConfig_DDCF  <= 1'b0;
				
				rData_Config_Out_MIXER <= {CONFIG_WIDTH{1'b0}};
				rData_Config_Out_DDCF  <= {CONFIG_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfig_MIXER <= 1'b1;
							risConfigACK <= 1'b1;
							state_idx_reg <= 4'd1;
						end
				4'd1:
					if (mixer_config_idx_reg == QMIXER_CONFIG_DATA_NUM-1)
						begin
							mixer_config_idx_reg <= 3'd0;
							risConfig_DDCF <= 1'b1;
							rData_Config_Out_MIXER <= Data_Config_In;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_MIXER   <= 1'b0;
							rData_Config_Out_MIXER <= Data_Config_In;
							mixer_config_idx_reg   <= mixer_config_idx_reg + 1;
						end
				4'd2:
					if (ddcf_config_idx_reg == CH_FILTERS_CONFIG_DATA_CNT)
						begin
							risConfigDone 		<= 1'b1;
							ddcf_config_idx_reg <= 12'd0;
							risConfig_DDCF		<= 1'b0;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_DDCF    	  <= 1'b0;
							rData_Config_Out_DDCF <= Data_Config_In;
							ddcf_config_idx_reg   <= ddcf_config_idx_reg + 1;
						end
				4'd3:
					begin
						risConfigDone <= 1'b0;
						risConfigACK  <= 1'b0;
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd4:		// Normal Work state
					begin
						if (isConfig)
							begin
								state_idx_reg  <= 4'd1;
							end
					end	
					
				default:
					// NULL
					state_idx_reg <= 4'd0;
			endcase
			
	
	assign isConfigACK  = risConfigACK;
	assign isConfigDone = risConfigDone;
	
	assign isConfig_MIXER = risConfig_MIXER;	
	assign isConfig_DDCF  = risConfig_DDCF;
	assign Data_Config_Out_MIXER = rData_Config_Out_MIXER;
	assign Data_Config_Out_DDCF  = rData_Config_Out_DDCF;

endmodule
