///////////////////////////////////////////////////////////////////////////////////
////  MBF FILTER CONTROL
////				FIR FILTER CTL
////         					ZHAOCHAO
////									 20180424
///////////////////////////////////////////////////////////////////////////////////////////
////

module MBF_CTL(
	CLK, nRST,
	
	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config_In,
	
	isConfigFIR_Out,
	isConfigDoneFIR_Out,
	isConfigACKFIR_Out,
	Data_ConfigFIR_Out,
	
	isConfigOUTSC_Out,
	isConfigDoneOUTSC_Out,
	isConfigACKOUTSC_Out,
	Data_ConfigOUTSC_Out,
	
	isConfigDECF_Out,
	isConfigDoneDECF_Out,
	//isConfigACKDCEF_Out,
	Data_ConfigDECF_Out
);

///////////////////////////////////////////////////////////////////////
//// FIR Config Parameters 
	
	parameter FIR_CONFIG_DATA_WIDTH =  24;
	parameter FILTER_MAX_ORDER 	    =  32;
///////////////////////////////////////////////////////////////////////
	
	input  CLK;
	input  nRST;

	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
	output isConfigFIR_Out; 			
	input  isConfigDoneFIR_Out;	
	input  isConfigACKFIR_Out;	
	
	output isConfigOUTSC_Out; 			
	input  isConfigDoneOUTSC_Out;	
	input  isConfigACKOUTSC_Out;
	
	output isConfigDECF_Out; 			
	input  isConfigDoneDECF_Out;	
	//input  isConfigACKDCEF_Out;

	// [0-FIR_ORDER]:coef,  [FIR_ORDER+1]:isCoefSym, [FIR_ORDER+2]:out scale value; 
	input  signed [FIR_CONFIG_DATA_WIDTH-1:0] Data_Config_In; 
	output signed [FIR_CONFIG_DATA_WIDTH-1:0] Data_ConfigFIR_Out; 	 // [0-FIR_ORDER]:coef, [FIR_ORDER+2]:isCoefSym;
	output signed [FIR_CONFIG_DATA_WIDTH-1:0] Data_ConfigOUTSC_Out;  // [FIR_ORDER+1]:out scale value;
	output signed [FIR_CONFIG_DATA_WIDTH-1:0] Data_ConfigDECF_Out;   // [FIR_ORDER+2]:dcef value, default 2;

	reg    risConfigDone;
	reg    risConfigACK;	
	reg    risConfigFIR_Out;
	reg    risConfigOUTSC_Out;
	reg    risConfigDECF_Out;
	
	reg    [FIR_CONFIG_DATA_WIDTH-1:0] rData_ConfigFIR_Out; 	// [0-FIR_ORDER]:coef, [FIR_ORDER+2]:isCoefSym;
	reg    [FIR_CONFIG_DATA_WIDTH-1:0] rData_ConfigOUTSC_Out;   // [FIR_ORDER+1]:out scale value;
	reg    [FIR_CONFIG_DATA_WIDTH-1:0] rData_ConfigDECF_Out;   // [FIR_ORDER+1]:out scale value;

	reg [3:0] state_idx_reg;
	reg [9:0] config_idx_reg;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg  <= 4'd0;
				
				config_idx_reg <= 10'd0;
				risConfigACK   <= 1'b0;
				risConfigDone  <= 1'b0;
				
				risConfigFIR_Out   <= 1'b0;
				risConfigOUTSC_Out <= 1'b0;
				risConfigDECF_Out  <= 1'b0;
				
				rData_ConfigFIR_Out   <= {FIR_CONFIG_DATA_WIDTH{1'b0}};
				rData_ConfigOUTSC_Out <= {FIR_CONFIG_DATA_WIDTH{1'b0}};
				rData_ConfigDECF_Out  <= {FIR_CONFIG_DATA_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							config_idx_reg     <= 10'd0;
							risConfigFIR_Out   <= 1'b1;
							risConfigACK  	   <= 1'b1;
							state_idx_reg      <= 4'd1;
						end
				4'd1:
					if (config_idx_reg == FILTER_MAX_ORDER+1)
						begin
							config_idx_reg <= 10'd0;
							risConfigOUTSC_Out <= 1'b1;
							rData_ConfigFIR_Out <= Data_Config_In;
							state_idx_reg <= state_idx_reg + 4'd1;
						end
					else
						begin
							risConfigFIR_Out    <= 1'b0;
							rData_ConfigFIR_Out <= Data_Config_In;
							config_idx_reg <= config_idx_reg + 1;
						end
				4'd2:
					begin
						risConfigOUTSC_Out <= 1'b0;
						risConfigDECF_Out  <= 1'b1;
						rData_ConfigOUTSC_Out <= Data_Config_In;
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd3:
					begin
						risConfigDECF_Out 	 <= 1'b0;
						rData_ConfigDECF_Out <= 2;
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd4:
					begin
						rData_ConfigDECF_Out <= 0;
						risConfigDone <= 1'b1;
						risConfigACK  <= 1'b0;
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd5:		// Normal Work state
					begin
						risConfigDone <= 1'b0;
						if (isConfig)
							begin
								config_idx_reg     <= 10'd0;
								risConfigFIR_Out   <= 1'b1;
								risConfigACK  	   <= 1'b1;
								state_idx_reg  	   <= 4'd1;
							end
					end	
				default:
					begin
						state_idx_reg <= 4'd0;
					end
			endcase
	
	
	assign isConfigFIR_Out    = risConfigFIR_Out;
	assign Data_ConfigFIR_Out = rData_ConfigFIR_Out;
	
	assign isConfigOUTSC_Out    = risConfigOUTSC_Out;
	assign Data_ConfigOUTSC_Out = rData_ConfigOUTSC_Out;
	
	assign isConfigDECF_Out    = risConfigDECF_Out;
	assign Data_ConfigDECF_Out = rData_ConfigDECF_Out;
	
	assign isConfigACK   = risConfigACK;		
	assign isConfigDone  = risConfigDone;
	
endmodule
	
	