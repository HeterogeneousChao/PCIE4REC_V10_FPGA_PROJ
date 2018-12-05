///////////////////////////////////////////////////////////////////////////////////
////  DCEF FIR FILTER CONFIT MODULE
////								DFIR_CTL
////         									ZHAOCHAO
////											 			20180514S
///////////////////////////////////////////////////////////////////////////////////////////
////

module DFIR_CTL(
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	isConfigACK_FIR,
	isConfigDone_FIR,
	isConfig_FIR,
	Data_Config_Out_FIR,
	
	isConfigACK_DCEF,
	isConfigDone_DCEF,
	isConfig_DCEF,
	Data_Config_Out_DCEF
);
	
	parameter FIR_MAX_ORDER 		 = 256;
	parameter CONFIG_WIDTH 			 = 32;
	parameter DCEF_CONFIG_DATA_WIDTH = 24;
	parameter FIR_COEFF_WIDTH   	 = 24;
	parameter DCEF_CONFIG_DATA_NUM 	 = 1;
	
	parameter FIR_CONFIG_DATA_NUM 	 = FIR_MAX_ORDER + 3;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	//Data_Config_In[0]: DFIR DCEF, 
	//Data_Config_In[1-FILTER_ORDER+1]: fir coefs,  
	//Data_Config_In[FILTER_ORDER+2]:   fir isCoefSym;
	//Data_Config_In[FILTER_ORDER+3]:   fir ScalVal,
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	
	input  isConfigACK_FIR;
	input  isConfigDone_FIR;
	output isConfig_FIR;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_FIR;
	
	input  isConfigACK_DCEF;
	input  isConfigDone_DCEF;
	output isConfig_DCEF;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_DCEF;
	
	reg    risConfigACK;
	reg    risConfigDone;

	reg    risConfig_Out_FIR; 		
	reg    [FIR_COEFF_WIDTH-1:0] rData_Config_Out_FIR; // [0-FILTER_ORDER]:FIR COEF, [FILTER_ORDER+1]:isSym, [FILTER_ORDER+2]:ScalVal；

	reg	   risConfig_Out_DCEF;
	reg	   [DCEF_CONFIG_DATA_WIDTH-1:0] rData_Config_Out_DCEF; // [0]:DFIR DCEF;
	
	reg [3:0] state_idx_reg;
	reg [2:0] dcef_config_idx_reg;
	reg [9:0] fir_config_idx_reg;

	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 4'd0;

				risConfigACK  <= 1'b0;
				risConfigDone <= 1'b0;
				risConfig_Out_FIR  <= 1'b0;
				risConfig_Out_DCEF <= 1'b0;
				dcef_config_idx_reg <= 3'd0;
				fir_config_idx_reg  <= 10'd0;
				rData_Config_Out_FIR  <= {FIR_COEFF_WIDTH{1'b0}};
				rData_Config_Out_DCEF <= {DCEF_CONFIG_DATA_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfig_Out_DCEF <= 1'b1;
							risConfigACK <= 1'b1;
							state_idx_reg <= 4'd1;
						end
				4'd1:
					if (dcef_config_idx_reg == DCEF_CONFIG_DATA_NUM-1)
						begin
							risConfig_Out_DCEF   <= 1'b0;
							dcef_config_idx_reg  <= 3'd0;
							risConfig_Out_FIR    <= 1'b1;
							rData_Config_Out_DCEF <= Data_Config_In[(DCEF_CONFIG_DATA_WIDTH-1):0];
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_Out_DCEF    <= 1'b0;
							rData_Config_Out_DCEF <= Data_Config_In[(DCEF_CONFIG_DATA_WIDTH-1):0];
							dcef_config_idx_reg  <= dcef_config_idx_reg + 1;
						end
				4'd2:
					if (fir_config_idx_reg == (FIR_CONFIG_DATA_NUM))
						begin
							risConfigDone <= 1'b1;
							fir_config_idx_reg <= 10'd0;
							risConfig_Out_FIR  <= 1'b0;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_Out_FIR    <= 1'b0;
							rData_Config_Out_FIR <= Data_Config_In[FIR_COEFF_WIDTH-1:0];
							fir_config_idx_reg 	 <= fir_config_idx_reg + 1;
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
								risConfig_Out_DCEF  <= 1'b1;
								risConfigACK 		<= 1'b1;
								state_idx_reg 		<= 4'd1;
							end
					end	
					
				default:
					// NULL
					state_idx_reg <= 4'd0;
			endcase
			
	
	assign isConfigACK  = risConfigACK;
	assign isConfigDone = risConfigDone;
	
	assign isConfig_FIR  = risConfig_Out_FIR;	
	assign isConfig_DCEF = risConfig_Out_DCEF;
	assign Data_Config_Out_FIR  = rData_Config_Out_FIR;
	assign Data_Config_Out_DCEF = rData_Config_Out_DCEF;
	
endmodule
