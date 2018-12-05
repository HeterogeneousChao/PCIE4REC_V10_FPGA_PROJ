///////////////////////////////////////////////////////////////////////////////////
////  HBF FIR FILTER PARALLEL
////         					ZHAOCHAO
////									 20180408
///////////////////////////////////////////////////////////////////////////////////////////
////
module MMBM_CTL (
	CLK, 
	nRST,
	isConfig_In,
	isConfigACK_In,
	isConfigDone_In,
	Data_Config_In,
	
	isConfig_Out,
	isConfigACK_Out,
	isConfigDone_Out,
	Data_Config_Out,
	MHBF_CTL_Out
);
	parameter NMHBF_MAX   = 5;
	parameter COEFF_WIDTH = 24;
	parameter FILTER_MAX_ORDER   =  32;
	
	parameter DATA_CONFIG_LENGTH = 1 + ((FILTER_MAX_ORDER+3) * NMHBF_MAX);
	
	input  CLK;
	input  nRST;

	input  isConfig_In;
	input  [COEFF_WIDTH-1:0] Data_Config_In;
	
	input  [NMHBF_MAX-1:0] isConfigACK_Out;
	input  [NMHBF_MAX-1:0] isConfigDone_Out;
	output [NMHBF_MAX-1:0] isConfig_Out;
	output [((COEFF_WIDTH)*NMHBF_MAX-1):0] Data_Config_Out;
	
	output [NMHBF_MAX-1:0] MHBF_CTL_Out;
	
	output isConfigACK_In;
	output isConfigDone_In;
	
	reg signed [(COEFF_WIDTH-1):0] Data_Config_reg[DATA_CONFIG_LENGTH:0];
	
	reg [COEFF_WIDTH-1:0] rMHBF_CTL_Out;
	reg risConfigACK_In;
	reg risConfigDone_In;
	reg [NMHBF_MAX-1:0] risConfig_Out;
	reg signed [(COEFF_WIDTH*NMHBF_MAX-1):0] rData_Config_Out;
	
	reg [2:0]state_idx_reg;
	reg [7:0]ridx_i;
	reg [9:0]idx_config_cnt_reg;
	
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 3'd0;
				idx_config_cnt_reg <= 10'd0;
				for (ridx_i = 0; ridx_i < (DATA_CONFIG_LENGTH+1); ridx_i = ridx_i + 1)
					begin
						Data_Config_reg[ridx_i] <= {COEFF_WIDTH{1'b0}};
					end
					
				risConfig_Out 	  <= {NMHBF_MAX{1'b0}};
				risConfigACK_In   <= 1'b0;
				risConfigDone_In  <= 1'b0;
				rMHBF_CTL_Out 	  <= {COEFF_WIDTH{1'b0}};
				rData_Config_Out  <= {(COEFF_WIDTH*NMHBF_MAX){1'b0}};
			end
		else
			case (state_idx_reg)
				3'd0:
					begin
						if (isConfig_In)
							begin
								state_idx_reg 	 <= state_idx_reg + 1;
								risConfigACK_In  <= 1'b1;
							end
					end
				3'd1:
					if (idx_config_cnt_reg == DATA_CONFIG_LENGTH)
						begin
							idx_config_cnt_reg <= 10'd0;
							state_idx_reg <= state_idx_reg + 1;
						end
					else
						begin
							Data_Config_reg[idx_config_cnt_reg] <= Data_Config_In;
							idx_config_cnt_reg <= idx_config_cnt_reg + 1;
						end
				3'd2:
					begin
						risConfigACK_In  <= 1'b0;
						state_idx_reg <= state_idx_reg + 1;
					end
				3'd3:
					begin
						rMHBF_CTL_Out = Data_Config_reg[0];
						risConfig_Out = {NMHBF_MAX{1'b1}};
						state_idx_reg <= state_idx_reg + 1;
					end
				3'd4:
					if (idx_config_cnt_reg == (FILTER_MAX_ORDER+3))
						begin
							idx_config_cnt_reg <= 10'd0;
							state_idx_reg <= state_idx_reg + 1;
						end
					else
						begin
							risConfig_Out = {NMHBF_MAX{1'b0}};
							rData_Config_Out = {
								{Data_Config_reg[(4*(FILTER_MAX_ORDER+3)) + idx_config_cnt_reg+1]},
								{Data_Config_reg[(3*(FILTER_MAX_ORDER+3)) + idx_config_cnt_reg+1]},
								{Data_Config_reg[(2*(FILTER_MAX_ORDER+3)) + idx_config_cnt_reg+1]},
								{Data_Config_reg[(FILTER_MAX_ORDER+3) + idx_config_cnt_reg+1]},
								{Data_Config_reg[idx_config_cnt_reg+1]}};
							idx_config_cnt_reg <= idx_config_cnt_reg + 1;
						end
				3'd5:
					if (isConfigDone_Out == {NMHBF_MAX{1'b1}})
						begin
							risConfigDone_In <= 1'b1;
							state_idx_reg <= state_idx_reg + 1;
						end
				3'd6:
					begin
						risConfigDone_In <= 1'b0;
						state_idx_reg <= state_idx_reg + 1;
					end
			
				3'd7:   // normal work state
					begin
						if (isConfig_In)
							begin
								state_idx_reg <= 3'd1;
								risConfigACK_In  <= 1'b1;
							end
					end
				default:
					state_idx_reg <= 3'd0;
			endcase

			
	assign Data_Config_Out  = rData_Config_Out;
	assign isConfig_Out     = risConfig_Out;
	assign isConfigACK_In   = risConfigACK_In;
	assign isConfigDone_In  = risConfigDone_In;
	assign MHBF_CTL_Out		= rMHBF_CTL_Out[NMHBF_MAX-1:0];
	

endmodule
