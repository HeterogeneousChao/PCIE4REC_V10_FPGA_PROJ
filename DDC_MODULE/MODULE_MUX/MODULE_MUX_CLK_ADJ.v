///////////////////////////////////////////////////////////////////////////////////
////  MODULE MUX CLK ADJUEST AFTER DECF
////						MODULE_MUX_CLK_ADJ
////         									ZHAOCHAO
////									 			20180507
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_MUX_CLK_ADJ(
	CLK, nRST,

	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);
	
	parameter INPUT_WIDTH   = 24;
	parameter OUTPUT_WIDTH  = 24;
	
	parameter CLK_DELAY_PERIOD = 28;
	
	
	input  CLK;
	input  nRST;
	
	input  Data_In_Valid;
	input  [3:0]Data_In_ChIdx;
	input  signed [INPUT_WIDTH-1:0]  Data_In;

	
	output Data_Out_Valid;
	output [3:0]Data_Out_ChIdx;
	output signed [OUTPUT_WIDTH-1:0] Data_Out;
	
	
///////////////////////////////////////////////////////////////////////////////////////////
//// 

	reg  [3:0]rData_Out_ChIdx_reg;
	reg  signed [INPUT_WIDTH-1:0]  rData_Out_reg;
	
	reg  output_clk_reg;
	reg  delay_flag_reg;

	
	// negedge Data_In_Valid, capture the data;
	always @(negedge nRST or negedge Data_In_Valid)
		if(!nRST)
			begin
				delay_flag_reg <= 1'b0;
				rData_Out_reg  <= {INPUT_WIDTH{1'b0}};
				rData_Out_ChIdx_reg <= 4'd0;
			end
		else
			begin
				delay_flag_reg <= ~delay_flag_reg;
				rData_Out_ChIdx_reg <= Data_In_ChIdx;
				rData_Out_reg  <= Data_In;
			end
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				output_clk_reg <= 1'b1;
			end
		else
			begin
				if (output_clk_reg == delay_flag_reg)
					begin
						output_clk_reg = ~output_clk_reg;
					end
			end			

///////////////////////////////////////////////////////////////////////////
//// output align 
	reg [2:0] align_state_idx_reg;
	reg rData_Out_Valid;
	reg [3:0]rData_Out_ChIdx; // default(InValid): 0, I channle: 1,  Q channel 2;
	reg signed [OUTPUT_WIDTH-1:0] rData_Out;
	
	reg [7:0] idx_delay_cnt_reg;
	
	always @(negedge CLK or negedge nRST)
		if (!nRST)
			begin
				align_state_idx_reg <= 3'd0;
				idx_delay_cnt_reg   <= 8'd0;
			end
		else
			case(align_state_idx_reg)
				3'd0:
					begin
						align_state_idx_reg <= 3'd1;
					end
				3'd1:
					begin
						if (output_clk_reg == delay_flag_reg)
							begin
								if (delay_flag_reg)
									begin
										align_state_idx_reg <= 3'd2;
									end
								else
									begin
										align_state_idx_reg <= 3'd3;
									end
							end
					end
				3'd2:
					begin
						align_state_idx_reg <= 3'd5; 
					end
				3'd3:
					begin
						if (idx_delay_cnt_reg == CLK_DELAY_PERIOD)
							begin
								idx_delay_cnt_reg   <= 8'd0;
								align_state_idx_reg <= 3'd4;
							end
						else
							begin
								idx_delay_cnt_reg <= idx_delay_cnt_reg + 1; 
							end
					end
				3'd4:
					begin
						align_state_idx_reg <= 3'd5;
					end
				3'd5:
					begin
						align_state_idx_reg <= 3'd0; 
					end
				default:
					begin
						align_state_idx_reg <= 3'd0;
					end
			endcase
			
	
	always @( posedge CLK or negedge nRST)
		if (!nRST)
			begin
				rData_Out_Valid <= 1'b0;
				rData_Out_ChIdx <= 4'd0;
				rData_Out <= {OUTPUT_WIDTH{1'b0}};
			end
		else
			case(align_state_idx_reg)
				3'd2, 3'd4:
					begin
						rData_Out_Valid <= 1'b1;
						rData_Out <= rData_Out_reg;
						rData_Out_ChIdx <= rData_Out_ChIdx_reg;
					end
				3'd5:
					begin
						rData_Out_Valid <= 1'b0;
					end
				default:
					begin
						// null;
					end
					
					
			endcase
					

	assign Data_Out = ((CLK_DELAY_PERIOD) ? rData_Out : Data_In);
	assign Data_Out_Valid = ((CLK_DELAY_PERIOD) ? rData_Out_Valid : Data_In_Valid);
	assign Data_Out_ChIdx = ((CLK_DELAY_PERIOD) ? rData_Out_ChIdx : Data_In_ChIdx);


endmodule
