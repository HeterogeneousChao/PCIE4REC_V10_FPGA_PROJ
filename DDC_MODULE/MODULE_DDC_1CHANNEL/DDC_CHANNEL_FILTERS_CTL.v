///////////////////////////////////////////////////////////////////////////////////
////  DDC SINGLE CHANNEL FILTERS CONFIG
////					DDC_CHANNEL_FILTERS_CTL
////         										ZHAOCHAO
////									 				20180418
///////////////////////////////////////////////////////////////////////////////////////////
////

module DDC_CHANNEL_FILTERS_CTL(
	CLK, nRST,
	
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	isConfig_CIC_CICC,
	Data_Config_Out_CIC_CICC,
	isConfigACK_CIC_CICC,
	isConfigDone_CIC_CICC,
	
	isConfig_MUXF,
	Data_Config_Out_MUXF,
	isConfigACK_MUXF,
	isConfigDone_MUFX
);

	parameter CONFIG_WIDTH 		      = 32;	
	parameter CIC1_CONFIG_DATA_NUM 	  = 3;
	parameter CICC1_CONFIG_DATA_NUM   = 259;
	parameter CIC2_CONFIG_DATA_NUM 	  = 3;
	parameter CICC2_CONFIG_DATA_NUM   = 259;
	parameter MHBF_CONFIG_DATA_NUM 	  = 176; // 1 + 5*(33 + 2);
	parameter DFIR_CONFIG_DATA_NUM 	  = 516; // 1 + 513 + 2;
	
	parameter CIC_CICC1_CONFIG_DATA_NUM = CIC1_CONFIG_DATA_NUM+CICC1_CONFIG_DATA_NUM;
	parameter CIC_CICC2_CONFIG_DATA_NUM = CIC2_CONFIG_DATA_NUM+CICC2_CONFIG_DATA_NUM;
	
	parameter MUX_FILTERS_CONFIG_NUM = CIC_CICC2_CONFIG_DATA_NUM+MHBF_CONFIG_DATA_NUM+DFIR_CONFIG_DATA_NUM;

	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
//// CIC CICC 1 
	//Data_Config_In[0]: CIC1_NUMSECS, 
	//Data_Config_In[1]: CIC1_DCEF, 
	//Data_Config_In[2]: CIC_1SCALE;
	//Data_Config_In[3-FILTER_ORDER+3]: cicc1 coef, 
	//Data_Config_In[FILTER_ORDER+4]:   cicc1 ScalVal, 
	//Data_Config_In[FILTER_ORDER+5]:   cicc1 isCoefSym;
/////////// MUX FILTERS
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
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	
	input  isConfigACK_CIC_CICC;
	input  isConfigDone_CIC_CICC;
	output isConfig_CIC_CICC;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_CIC_CICC;
	
	input  isConfigACK_MUXF;
	input  isConfigDone_MUFX;
	output isConfig_MUXF;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_MUXF;
	
	
	
	reg    risConfigACK;
	reg    risConfigDone;
	
	reg	 risConfig_CIC_CICC;
	reg	 [CONFIG_WIDTH-1:0] rData_Config_Out_CIC_CICC;
	
	reg  risConfig_MUXF;
	reg  [CONFIG_WIDTH-1:0] rData_Config_Out_MUXF;

	reg [3:0] state_idx_reg;
	reg [9:0] muxf_config_idx_reg;
	reg [9:0] cic_cicc_config_idx_reg;

	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 4'd0;
				muxf_config_idx_reg     <= 10'd0;
				cic_cicc_config_idx_reg <= 10'd0;

				risConfigACK  <= 1'b0;
				risConfigDone <= 1'b0;
				
				risConfig_MUXF  	<= 1'b0;
				risConfig_CIC_CICC  <= 1'b0;
				
				rData_Config_Out_MUXF     <= {CONFIG_WIDTH{1'b0}};
				rData_Config_Out_CIC_CICC <= {CONFIG_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfig_CIC_CICC 	 <= 1'b1;
							risConfigACK  <= 1'b1;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
				4'd1:
					if (cic_cicc_config_idx_reg == CIC_CICC1_CONFIG_DATA_NUM-1)
						begin
							risConfig_MUXF  		<= 1'b1;
							cic_cicc_config_idx_reg <= 10'd0;
							rData_Config_Out_CIC_CICC <= Data_Config_In;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_CIC_CICC    	  <= 1'b0;
							rData_Config_Out_CIC_CICC <= Data_Config_In;
							cic_cicc_config_idx_reg   <= cic_cicc_config_idx_reg + 1;
						end
				4'd2:
					if (muxf_config_idx_reg == MUX_FILTERS_CONFIG_NUM)
						begin
							risConfigDone 			<= 1'b1;
							muxf_config_idx_reg		<= 10'd0;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_MUXF    	  <= 1'b0;
							rData_Config_Out_MUXF <= Data_Config_In;
							muxf_config_idx_reg   <= muxf_config_idx_reg + 1;
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
								risConfigACK  	   <= 1'b1;
								state_idx_reg 	   <= 4'd1;
								risConfig_CIC_CICC <= 1'b1;
							end
					end	
					
				default:
					// NULL
					state_idx_reg <= 4'd0;
			endcase
			
	
	assign isConfigACK  = risConfigACK;
	assign isConfigDone = risConfigDone;
	
	assign isConfig_CIC_CICC = risConfig_CIC_CICC;
	assign isConfig_MUXF  	 = risConfig_MUXF;
	
	assign Data_Config_Out_CIC_CICC = rData_Config_Out_CIC_CICC;
	assign Data_Config_Out_MUXF 	= rData_Config_Out_MUXF;

endmodule
