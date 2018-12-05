///////////////////////////////////////////////////////////////////////////////////
////  FIR FILTER PARALLEL
////				FIR OUT SACLE
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180502
///////////////////////////////////////////////////////////////////////////////////////////
////

module MBF_FIR_OUT_SCALE (
	CLK, nRST,
	
	isConfig,
	isConfigDone,
	isCOnfigACK,
	Data_Config_In,
	
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);

	parameter MIDDLE_WIDTH  =  54;
	parameter OUTPUT_WIDTH  =  24;

	parameter FIR_CONFIG_DATA_WIDTH = 24;
	parameter FIR_SCALE_DATA_OUT_VALID_SHIFT = 3;

	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isCOnfigACK;
	output isConfigDone;
	input  [(FIR_CONFIG_DATA_WIDTH-1):0] Data_Config_In;
	
	input  signed [MIDDLE_WIDTH-1:0]  Data_In;
	output signed [OUTPUT_WIDTH-1:0]  Data_Out;

	input  Data_In_Valid;
	output Data_Out_Valid;

	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	reg   risConfigDone;
	reg   risCOnfigACK;
	reg   [2:0] state_idx_reg;
	
	reg  [FIR_CONFIG_DATA_WIDTH-1:0]FIR_Config_reg;  // initial value : 0x00...00111;
	
	reg  rData_Out_Valid;
	reg  signed [MIDDLE_WIDTH-1:0] rData_Out;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg  <= 3'd0;
				risConfigDone  <= 1'b0;
				risCOnfigACK   <= 1'b0;	
				FIR_Config_reg <= {FIR_CONFIG_DATA_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				3'd0: 	// rst
					if (isConfig)
						begin
							state_idx_reg  <= state_idx_reg + 1;
							risCOnfigACK   <= 1'b1;
							FIR_Config_reg <= {FIR_CONFIG_DATA_WIDTH{1'b0}};
						end
				3'd1:   // config-ing;
					begin
						FIR_Config_reg <= Data_Config_In; 
						state_idx_reg <= state_idx_reg + 1;
					end
				3'd2:	// config done;
					begin
						risConfigDone <= 1'b1;
						state_idx_reg <= state_idx_reg + 1;
					end
				3'd3: 	// normal work;
					begin
						risConfigDone <= 1'b0;
						risCOnfigACK  <= 1'b0;
						if (isConfig)
							state_idx_reg <= 3'd1;
					end
				default:
						// NULL;
						state_idx_reg <= 3'd0;
			endcase
				
	assign isConfigDone = risConfigDone;
	assign isCOnfigACK  = risCOnfigACK;
	
	reg [3:0]rData_Out_ChIdx;
	reg [3:0]curInChannelIdx_reg;
	
	reg [2:0] out_idx_reg;
	reg  signed [MIDDLE_WIDTH-1:0] data_reg;
	
	// negedge Data_In_Valid, get the data;
	always @(negedge nRST or negedge Data_In_Valid)
		if(!nRST)
			begin
				curInChannelIdx_reg <= 4'd0;
				data_reg  <= {MIDDLE_WIDTH{1'b0}};
				out_idx_reg <= 3'd0;
			end
		else
			case(out_idx_reg)
				3'd0:
					begin
						if (state_idx_reg == 3'd3)
							begin
								curInChannelIdx_reg <= 4'd0;
								out_idx_reg <= 3'd1;
							end
					end
				3'd1:
					begin
						data_reg   <= Data_In;
						curInChannelIdx_reg <= Data_In_ChIdx;
						if (state_idx_reg != 3'd3)
							begin
								out_idx_reg <= 3'd0;
							end
					end
				default:
					out_idx_reg <= 3'd0;
				
			endcase
			
	// posedge Data_In_Valid, calculate the data;
	always @( negedge nRST or posedge Data_In_Valid )
		if(!nRST)
			begin
				rData_Out_ChIdx <= 4'd0;
				rData_Out <= {MIDDLE_WIDTH{1'b0}};
			end
		else
			case(out_idx_reg)
				3'd1:
					begin
						rData_Out_ChIdx <= curInChannelIdx_reg;
						rData_Out <= data_reg <<< (FIR_Config_reg);
					end
				default:
					begin
						//NULL;
					end
				
			endcase
	
	reg [3:0]idx_doutV_cnt;
	
	always @(posedge Data_In_Valid or negedge nRST)
		if (!nRST)
			begin
				idx_doutV_cnt <= 4'd0;
			end
		else
			begin
				if (idx_doutV_cnt == FIR_SCALE_DATA_OUT_VALID_SHIFT) 
					begin
						//NULL;
					end
				else
					begin
						idx_doutV_cnt <= idx_doutV_cnt + 1;
					end
			end
			
			
	assign Data_Out_Valid = ((idx_doutV_cnt == FIR_SCALE_DATA_OUT_VALID_SHIFT) ? 
								Data_In_Valid : {1'b0});
	// assign Data_Out_Valid = rData_Out_Valid;
	assign Data_Out = rData_Out[MIDDLE_WIDTH-1:(MIDDLE_WIDTH-OUTPUT_WIDTH)];
	assign Data_Out_ChIdx = rData_Out_ChIdx;

endmodule