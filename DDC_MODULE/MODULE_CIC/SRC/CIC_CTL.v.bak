///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER 
////				CIC FILTER
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////

module CIC_CTL(
	CLK, nRST,
	
	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config_In,
	
	isConfig_Out,
	isConfigDone_Out,
	isConfigACK_Out,
	Data_Config_Out
);

///////////////////////////////////////////////////////////////////////
//// CIC Config Parameters 
	
	parameter CIC_CONFIG_DATA_WIDTH = 16;
///////////////////////////////////////////////////////////////////////
	
	input  CLK;
	input  nRST;

	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
	output isConfig_Out; 			// [0]:INTE, [1]:DECI, [2]:COMB;
	input  [3:0] isConfigDone_Out;	// [0]:INTE, [1]:DECI, [2]:COMB;
	input  [3:0] isConfigACK_Out;	// [0]:INTE, [1]:DECI, [2]:COMB;
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	input  signed [CIC_CONFIG_DATA_WIDTH-1:0] Data_Config_In; 
	output signed [((CIC_CONFIG_DATA_WIDTH*3)-1):0] Data_Config_Out; // [0]:INTE, COMB, [1]:DECI, [2]:SCALE;
	
	reg    risConfigACK;

	reg    [CIC_CONFIG_DATA_WIDTH-1:0]  CIC_Config_Data[2:0]; 
	
	reg    risConfig_Out; 		// [0]:INTE, [1]:DECI, [2]:COMB;
	reg    [((CIC_CONFIG_DATA_WIDTH*3)-1):0] rData_Config_Out; // [0]:INTE, COMB, [1]:DECI;
	
	reg [3:0] state_idx_reg;
	reg [2:0] config_idx_reg;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg  <= 4'd0;
				
				config_idx_reg <= 3'd0;
				risConfigACK   <= 1'b0;

				risConfig_Out <= 1'b0;
				rData_Config_Out <= {CIC_CONFIG_DATA_WIDTH*3{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfigACK <= 1'b1;
							state_idx_reg <= 4'd1;
						end
				4'd1:
					if (config_idx_reg == 3'd3)
						begin
							config_idx_reg <= 3'd0;
							risConfig_Out <= 1'b1;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							CIC_Config_Data[config_idx_reg] <= Data_Config_In;
							config_idx_reg <= config_idx_reg + 1;
						end
				4'd2:
					begin
						risConfig_Out <= 1'b0;
						rData_Config_Out <= {{CIC_Config_Data[0]},{CIC_Config_Data[1]},{CIC_Config_Data[2]}};
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd3:
					begin
						risConfigACK <= 1'b0;
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
			
	assign isConfig_Out = risConfig_Out;
	assign Data_Config_Out = rData_Config_Out;
	assign isConfigACK   = risConfigACK;		
	assign isConfigDone  = isConfigDone_Out[0] && isConfigDone_Out[1] && isConfigDone_Out[2] && isConfigDone_Out[3];
	
endmodule
	
	