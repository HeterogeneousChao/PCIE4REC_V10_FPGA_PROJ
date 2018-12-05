///////////////////////////////////////////////////////////////////////////////////
////  MODULE MUX SERIAL -> PARALLEL
////				MODULE_MUX_SP
////         							ZHAOCHAO
////									 			20180507
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_MUX_SP(
	CLK, nRST,

	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	
	Data_Out_I,
	Data_Out_I_Valid,
	Data_Out_Q,
	Data_Out_Q_Valid
);
	
	parameter INPUT_WIDTH   = 24;
	parameter OUTPUT_WIDTH  = 24;
	parameter DATA_REG_NUM  = 2;
	
	parameter DATA_OUT_CLK_NUM = 4;
	parameter SP_DATA_OUT_CLK_NUM = (DATA_OUT_CLK_NUM * 2);
	
	input  CLK;
	input  nRST;
	
	input  Data_In_Valid;
	input  [3:0]Data_In_ChIdx;
	input  signed [INPUT_WIDTH-1:0] Data_In;
	
	output  Data_Out_I_Valid;
	output  Data_Out_Q_Valid;

	output  signed [OUTPUT_WIDTH-1:0] Data_Out_I;
	output  signed [OUTPUT_WIDTH-1:0] Data_Out_Q;
	
	
	
	reg  rFIFOI_wreq;
	reg  rFIFOQ_wreq;
	
	wire  wFIFOI_full;
	wire  wFIFOQ_full;
	
	
	reg  signed [INPUT_WIDTH-1:0] Data_I_reg[DATA_REG_NUM-1:0];
	reg  signed [INPUT_WIDTH-1:0] Data_Q_reg[DATA_REG_NUM-1:0];
	
///////////////////////////////////////////////////////////////////////////////////////////
	integer cnt_reg_I;
	integer cnt_reg_Q;
	
	// negedge Data_In_Valid, capture the data;
	always @(negedge nRST or negedge Data_In_Valid)
		if(!nRST)
			begin
				cnt_reg_I <= 0;
				cnt_reg_Q <= 0;
			end
		else
			begin
				if (Data_In_ChIdx == 4'd0)
					begin
						Data_I_reg[cnt_reg_I] <= Data_In;
						cnt_reg_I <= cnt_reg_I + 1;
					end
				else
					begin
						Data_Q_reg[cnt_reg_Q] <= Data_In;
						cnt_reg_Q <= cnt_reg_Q + 1;
					end
			end
			
	
///////////////////////////////////////////////////////////////////////////
//// output align 

	reg clk_dv;
	
	reg signed [OUTPUT_WIDTH-1:0] Data_Out_I_reg;
	reg signed [OUTPUT_WIDTH-1:0] Data_Out_Q_reg;
	
	always @( posedge Data_In_Valid or negedge nRST)
		if (!nRST)
			begin
				clk_dv <= 1'b0;
				Data_Out_I_reg <= {OUTPUT_WIDTH{1'b0}};
				Data_Out_Q_reg <= {OUTPUT_WIDTH{1'b0}};
			end
		else
			begin				
				if ((cnt_reg_I > 0) & (cnt_reg_Q > 0))  
					begin
						clk_dv <= ~clk_dv;
						Data_Out_I_reg <= Data_I_reg[cnt_reg_I-1];
						Data_Out_Q_reg <= Data_Q_reg[cnt_reg_Q-1];
						cnt_reg_I <= cnt_reg_I - 1;
						cnt_reg_Q <= cnt_reg_Q - 1;
					end
				else
					begin
						// NULL;
					end
			end
			
///////////////////////////////////////////////////////////////////////////
//// output clk align 
	reg clk_out;
	
	reg [2:0] align_state_idx_reg;
	
	reg rData_Out_I_Valid;
	reg rData_Out_Q_Valid;
	reg signed [OUTPUT_WIDTH-1:0] rData_Out_I;
	reg signed [OUTPUT_WIDTH-1:0] rData_Out_Q;
	
	always @( posedge CLK or negedge nRST)
		if (!nRST)
			begin
				clk_out <= 1'b1;
				rData_Out_I_Valid <= 1'b0;
				rData_Out_Q_Valid <= 1'b0;
				rData_Out_I <= {OUTPUT_WIDTH{1'b0}};
				rData_Out_Q <= {OUTPUT_WIDTH{1'b0}};
				align_state_idx_reg <= 3'd0;
			end
		else
			case(align_state_idx_reg)
				3'd0:
					begin
						rData_Out_I_Valid <= 1'b0;
						rData_Out_Q_Valid <= 1'b0;
						
						if (clk_out == clk_dv)  
							begin
								clk_out <= ~clk_out;
								align_state_idx_reg <= 3'd1;
							end
						else
							begin
								align_state_idx_reg <= 3'd0;
							end
					end
				3'd1: 
					begin
						rData_Out_I_Valid <= 1'b1;
						rData_Out_Q_Valid <= 1'b1;
						rData_Out_I <= Data_Out_I_reg;
						rData_Out_Q <= Data_Out_Q_reg;
						
 						align_state_idx_reg <= 3'd0; 
					end
				default:
					begin
						align_state_idx_reg <= 3'd0;
					end
			endcase

	assign Data_Out_I = rData_Out_I;
	assign Data_Out_Q = rData_Out_Q;
	assign Data_Out_I_Valid = rData_Out_I_Valid;
	assign Data_Out_Q_Valid = rData_Out_Q_Valid;

endmodule

