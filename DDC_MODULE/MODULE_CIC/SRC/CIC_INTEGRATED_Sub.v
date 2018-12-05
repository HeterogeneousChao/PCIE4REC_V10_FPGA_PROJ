////  CIC FILTER 
////				CIC INTEGRATED SUB
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180501
///////////////////////////////////////////////////////////////////////////////////////////
////
module CIC_INTEGRATED_SUB (
	CLK, nRST,
	idx,
	state_idx_reg,
	CIC_NUMSECS_reg,
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_ChIdx
);

	parameter MIDDLE_WIDTH  =  37;
	parameter CIC_MAX_CHANNELS	=  16;
	parameter CIC_CONFIG_DATA_WIDTH = 16;
	
	
	input  CLK;
	input  nRST;
	
	input  [3:0] idx;
	input  [2:0] state_idx_reg;
	input  [CIC_CONFIG_DATA_WIDTH-1:0] CIC_NUMSECS_reg;
	
	input  Data_In_Valid;
	input  signed [MIDDLE_WIDTH-1:0] Data_In;
	output signed [MIDDLE_WIDTH-1:0] Data_Out;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	reg signed [MIDDLE_WIDTH-1:0] Delay_reg[CIC_MAX_CHANNELS-1:0];
	reg signed [MIDDLE_WIDTH-1:0] Data_Out_reg;
	reg signed [MIDDLE_WIDTH-1:0] rData_Out;
	
	
	reg [3:0]curInChannelIdx_reg;
	reg [3:0]rData_Out_ChIdx;
	
	reg [1:0]state_reg;
	// negedge Data_In_Valid, get data;
	always @(negedge nRST or negedge Data_In_Valid)
		if (!nRST)
			begin
				Data_Out_reg <= {MIDDLE_WIDTH{1'b0}};
				state_reg <= 2'd0;
				curInChannelIdx_reg <= 4'd0;
			end
		else
			case (state_reg)
				2'd0:
					if (((CIC_NUMSECS_reg>>>idx) & {{(CIC_CONFIG_DATA_WIDTH-1){1'b0}}, {1'b1}}))
						begin
							state_reg <= 2'd1;
						end
				2'd1:
					if (state_idx_reg == 3'd3)
						begin
							Data_Out_reg <= {MIDDLE_WIDTH{1'b0}};
							curInChannelIdx_reg <= 4'd0;
							state_reg <= 2'd2;
						end
				2'd2:
					begin
						Data_Out_reg <= (Delay_reg[Data_In_ChIdx] + Data_In);
						curInChannelIdx_reg <= Data_In_ChIdx;
						if ( state_idx_reg != 3'd3)
							begin
								state_reg <= 2'd1;
							end
					end
				default:
					begin
						state_reg <= 2'd0;
					end
			endcase
			
		reg [4:0]idx_i;
		// posedge  Data_In_Valid, calculate data;
		always @(negedge nRST or posedge Data_In_Valid)
		if (!nRST)
			begin
				rData_Out_ChIdx <= 4'd0;
				for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
					begin
						Delay_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
					end
				rData_Out <= {MIDDLE_WIDTH{1'b0}};
			end
		else
			case (state_reg)
				2'd1:
					if (state_idx_reg == 3'd3)
						begin
							for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
								begin
									Delay_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
								end
							rData_Out <= {MIDDLE_WIDTH{1'b0}};
							rData_Out_ChIdx <= 4'd0;
						end
				2'd2:
					begin
						Delay_reg[curInChannelIdx_reg] <= Data_Out_reg;
						rData_Out <= Data_Out_reg;
						rData_Out_ChIdx <= curInChannelIdx_reg;
					end
				default:
					begin
						// NULL
					end
			endcase
				
	assign Data_Out = ((!state_reg) ? Data_In : rData_Out);
	assign Data_Out_ChIdx = ((!state_reg) ? Data_In_ChIdx : rData_Out_ChIdx);


endmodule


