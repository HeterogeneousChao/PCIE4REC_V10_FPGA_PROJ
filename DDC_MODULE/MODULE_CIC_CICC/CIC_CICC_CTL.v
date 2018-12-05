///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER AND CIC COMPENSATE FILTER
////								MODULE_CIC_CICC_CTL
////         									ZHAOCHAO
////											 			20180418
///////////////////////////////////////////////////////////////////////////////////////////
////

module CIC_CICC_CTL(
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	isConfigACK_CIC,
	isConfigDone_CIC,
	isConfig_CIC,
	Data_Config_Out_CIC,
	
	isConfigACK_CICC,
	isConfigDone_CICC,
	isConfig_CICC,
	Data_Config_Out_CICC
);

	parameter CONFIG_WIDTH 			= 32;
	parameter CIC_CONFIG_DATA_WIDTH = 16;
	parameter CICC_COEFF_WIDTH   	= 24;
	parameter CIC_CONFIG_DATA_NUM 	= 3;
	parameter CICC_CONFIG_DATA_NUM 	= 259;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3-FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[FILTER_ORDER+5]:   isCoefSym;
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	
	input  isConfigACK_CIC;
	input  isConfigDone_CIC;
	output isConfig_CIC;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_CIC;
	
	input  isConfigACK_CICC;
	input  isConfigDone_CICC;
	output isConfig_CICC;
	output [CONFIG_WIDTH-1:0] Data_Config_Out_CICC;
	
	reg    risConfigACK;
	reg    risConfigDone;

	reg    risConfig_Out_CIC; 		// [0]:INTE, [1]:DECI, [2]:COMB;
	reg    [CIC_CONFIG_DATA_WIDTH-1:0] rData_Config_Out_CIC; // [0]:INTE, COMB, [1]:DECI;

	reg	   risConfig_Out_CICC;
	reg	   [CICC_COEFF_WIDTH-1:0] rData_Config_Out_CICC;
	
	reg [3:0] state_idx_reg;
	reg [2:0] cic_config_idx_reg;
	reg [9:0] cicc_config_idx_reg;

	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 4'd0;

				risConfigACK  <= 1'b0;
				risConfigDone <= 1'b0;
				risConfig_Out_CIC  <= 1'b0;
				risConfig_Out_CICC <= 1'b0;
				cic_config_idx_reg  <= 3'd0;
				cicc_config_idx_reg <= 10'd0;
				rData_Config_Out_CIC  <= {CIC_CONFIG_DATA_WIDTH{1'b0}};
				rData_Config_Out_CICC <= {CICC_COEFF_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfig_Out_CIC <= 1'b1;
							risConfigACK <= 1'b1;
							state_idx_reg <= 4'd1;
						end
				4'd1:
					if (cic_config_idx_reg == CIC_CONFIG_DATA_NUM-1)
						begin
							cic_config_idx_reg <= 3'd0;
							risConfig_Out_CICC <= 1'b1;
							rData_Config_Out_CIC <= Data_Config_In[CIC_CONFIG_DATA_WIDTH-1:0];
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_Out_CIC   <= 1'b0;
							rData_Config_Out_CIC <= Data_Config_In[(CIC_CONFIG_DATA_WIDTH-1):0];
							cic_config_idx_reg <= cic_config_idx_reg + 1;
						end
				4'd2:
					if (cicc_config_idx_reg == (CICC_CONFIG_DATA_NUM))
						begin
							risConfigDone <= 1'b1;
							cicc_config_idx_reg <= 10'd0;
							risConfig_Out_CICC <= 1'b0;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfig_Out_CICC    <= 1'b0;
							rData_Config_Out_CICC <= Data_Config_In[CICC_COEFF_WIDTH-1:0];
							cicc_config_idx_reg <= cicc_config_idx_reg + 1;
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
	
	assign isConfig_CIC  = risConfig_Out_CIC;	
	assign isConfig_CICC = risConfig_Out_CICC;
	assign Data_Config_Out_CIC = rData_Config_Out_CIC;
	assign Data_Config_Out_CICC = rData_Config_Out_CICC;
	
endmodule
