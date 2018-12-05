///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER PARALLEL
////				CIC COMB
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180502
///////////////////////////////////////////////////////////////////////////////////////////
////
module CIC_OUT_SCALE (
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

	parameter MIDDLE_WIDTH  		=  37;
	parameter OUTPUT_WIDTH  	 	=  24;
	parameter CIC_MAX_CHANNELS		=  16;

	parameter CIC_CONFIG_DATA_WIDTH = 16;
	
	parameter CIC_SCAL_DATA_OUT_VALID_SHIFT = 3;

	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isCOnfigACK;
	output isConfigDone;
	input  [(CIC_CONFIG_DATA_WIDTH-1):0] Data_Config_In;
	
	input  signed [MIDDLE_WIDTH-1:0]  Data_In;
	output signed [OUTPUT_WIDTH-1:0]  Data_Out;

	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	reg   risConfigDone;
	reg   risCOnfigACK;
	reg   [2:0] state_idx_reg;
	
	reg  [CIC_CONFIG_DATA_WIDTH-1:0]CIC_Config_reg; 
	
	reg  rData_Out_Valid;
	reg  signed [MIDDLE_WIDTH-1:0] rData_Out;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg  <= 3'd0;
				risConfigDone  <= 1'b0;
				risCOnfigACK   <= 1'b0;	
				CIC_Config_reg <= {CIC_CONFIG_DATA_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				3'd0: 	// rst
					if (isConfig)
						begin
							state_idx_reg  <= state_idx_reg + 1;
							risCOnfigACK   <= 1'b1;
							CIC_Config_reg <= {CIC_CONFIG_DATA_WIDTH{1'b0}};
						end
				3'd1:   // config-ing;
					begin
						CIC_Config_reg <= Data_Config_In; 
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
	reg  signed [MIDDLE_WIDTH-1:0] data_reg[CIC_MAX_CHANNELS-1:0];
	
	reg [4:0]idx_i;
	// negedge Data_In_Valid, get the data;
	always @(negedge nRST or negedge Data_In_Valid)
		if(!nRST)
			begin
				curInChannelIdx_reg <= 4'd0;
				for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
					begin
						data_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
					end
				out_idx_reg <= 3'd0;
			end
		else
			case(out_idx_reg)
				3'd0:
					begin
						if (state_idx_reg == 3'd3)
							begin
								curInChannelIdx_reg <= 4'd0;
								for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
									begin
										data_reg[idx_i] <= {MIDDLE_WIDTH{1'b0}};
									end
								out_idx_reg <= 3'd1;
							end
					end
				3'd1:
					begin
						data_reg[Data_In_ChIdx] <= Data_In;
						curInChannelIdx_reg 	<= Data_In_ChIdx;
						if (state_idx_reg != 3'd3)
							begin
								out_idx_reg <= 3'd0;
							end
					end
				default:
					begin
						out_idx_reg <= 3'd0;
					end
				
			endcase
	// posedge Data_In_Valid, calculate the data;
	always @(negedge nRST or posedge Data_In_Valid)
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
						rData_Out <= data_reg[curInChannelIdx_reg] <<< (CIC_Config_reg);
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
				if (idx_doutV_cnt == CIC_SCAL_DATA_OUT_VALID_SHIFT) 
					begin
						//NULL;
					end
				else
					begin
						idx_doutV_cnt <= idx_doutV_cnt + 1;
					end
			end
	
	
	assign Data_Out_Valid = ((idx_doutV_cnt == CIC_SCAL_DATA_OUT_VALID_SHIFT) ? 
								Data_In_Valid : {1'b0});
								
	assign Data_Out = rData_Out[MIDDLE_WIDTH-1:(MIDDLE_WIDTH-OUTPUT_WIDTH)];
	assign Data_Out_ChIdx = rData_Out_ChIdx;
	

endmodule