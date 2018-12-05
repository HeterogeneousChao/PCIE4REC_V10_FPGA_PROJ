////  CIC FILTER PARALLEL
////				CIC COMB SUB
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180501
///////////////////////////////////////////////////////////////////////////////////////////
////

module CIC_COMB_SUB (
	CLK, nRST,
	idx,
	state_idx_reg,
	CIC_NUMSECS_reg,
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);

	parameter MIDDLE_WIDTH  		=  37;
	parameter CIC_CONFIG_DATA_WIDTH =  16;
	parameter CIC_MAX_CHANNELS		=  16;

	
	input  CLK;
	input  nRST;
	
	input  [3:0] idx;
	input  [2:0] state_idx_reg;
	input  [CIC_CONFIG_DATA_WIDTH-1:0] CIC_NUMSECS_reg;
	input  Data_In_Valid;
	output Data_Out_Valid;
	input  signed [MIDDLE_WIDTH-1:0] Data_In;
	output signed [MIDDLE_WIDTH-1:0] Data_Out;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	reg  signed [MIDDLE_WIDTH-1:0] Delay_reg[CIC_MAX_CHANNELS-1:0];
	reg  signed [MIDDLE_WIDTH-1:0] Adder_reg[CIC_MAX_CHANNELS-1:0];
	reg  signed [MIDDLE_WIDTH-1:0] rData_Out;
	
	
	reg [3:0]rData_Out_ChIdx;
	reg [3:0]curInChannelIdx_reg;
		
		
	reg [3:0]state_reg;
	reg rData_Out_Valid;
	// posedge Data_In_Valid, calculate data;
	always @( negedge nRST or posedge Data_In_Valid )
		if (!nRST)
			begin
				state_reg <= 4'd0;
				rData_Out_ChIdx <= 4'd0;
				rData_Out <= {MIDDLE_WIDTH{1'b0}};
			end
		else
			case (state_reg)
				4'd0:
					if (((CIC_NUMSECS_reg>>>idx) & {{(CIC_CONFIG_DATA_WIDTH-1){1'b0}}, {1'b1}}))
						begin
							state_reg <= 4'd1;
						end
				4'd1:
					if (state_idx_reg == 3'd3)
						begin
							rData_Out_ChIdx <= 4'd0;
							state_reg <= 4'd2;
						end
				4'd2:
					begin
						rData_Out_ChIdx <= curInChannelIdx_reg;
						rData_Out <= Adder_reg[curInChannelIdx_reg];
						if ( state_idx_reg != 3'd3)
							begin
								state_reg <= 4'd0;
							end
					end
				default:
					begin
						state_reg <= 4'd0;
					end
			endcase
			
	reg [4:0]idx_i;
	// negedge Data_In_Valid, get and calculate data;
	always @( negedge nRST or negedge Data_In_Valid )
		if (!nRST)
			begin
				for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
					begin
						Delay_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
						Adder_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
					end
				curInChannelIdx_reg <= 4'd0;
			end
		else
			case (state_reg)
				4'd2:
					begin
						curInChannelIdx_reg <= Data_In_ChIdx;
						Delay_reg[Data_In_ChIdx] <= Data_In;
						Adder_reg[Data_In_ChIdx] <= Data_In - Delay_reg[Data_In_ChIdx];
					end
				default:
					begin
						//NULL;
					end
			endcase
		
		
	assign Data_Out = ((!state_reg) ? Data_In : rData_Out);
	assign Data_Out_ChIdx = ((!state_reg) ? Data_In_ChIdx : rData_Out_ChIdx);
	assign Data_Out_Valid = ((!state_reg) ? Data_In_Valid : Data_In_Valid);

endmodule
