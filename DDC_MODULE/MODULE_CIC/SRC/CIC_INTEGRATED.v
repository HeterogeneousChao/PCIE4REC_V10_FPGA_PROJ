///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER 
////				CIC INTEGRATED
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180501
///////////////////////////////////////////////////////////////////////////////////////////
////
module CIC_INTEGRATED (
	CLK, nRST,
	
	isConfig,
	isConfigDone,
	Data_Config_In,
	
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);


	parameter INPUT_WIDTH   =  16;
	parameter MIDDLE_WIDTH  =  37;
	

	parameter CIC_MAX_NUMSECS	=  16;
	parameter CIC_MAX_CHANNELS	=  16;
	
	parameter CIC_CONFIG_DATA_WIDTH = 16;
	parameter CIC_INTEGRATED_DATA_OUT_VALID_SHIFT = 5;
	
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigDone;
	input  [CIC_CONFIG_DATA_WIDTH-1:0] Data_Config_In;
	
	input  signed [INPUT_WIDTH-1:0]  Data_In;
	output signed [MIDDLE_WIDTH-1:0] Data_Out;

	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;

	
	
	reg   signed [MIDDLE_WIDTH-1:0] Delay_reg[CIC_MAX_CHANNELS-1:0];
	reg   signed [MIDDLE_WIDTH-1:0] rAdd_reg;
	reg   signed [MIDDLE_WIDTH-1:0] Add_reg[CIC_MAX_CHANNELS-1:0];
	
	wire  signed [MIDDLE_WIDTH-1:0] wAdd_reg[CIC_MAX_NUMSECS-1:0];
	
	wire  [3:0] wChannelIdx[CIC_MAX_NUMSECS-1:0];
		
	reg    risConfigDone;
	reg   [2:0]state_idx_reg;
	
	reg  [CIC_CONFIG_DATA_WIDTH-1:0]CIC_NUMSECS_reg;  // initial value : 0x00...00111;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 3'd0;
				risConfigDone <= 1'b0;
				CIC_NUMSECS_reg <= {{(CIC_CONFIG_DATA_WIDTH-3){1'b0}}, {3{1'b1}}};			
			end
		else
			case (state_idx_reg)
				3'd0: 	// rst
					if (isConfig)
						state_idx_reg <= state_idx_reg + 1;
				3'd1:   // config-ing;
					begin
						CIC_NUMSECS_reg <= Data_Config_In | {{(CIC_CONFIG_DATA_WIDTH-3){1'b0}}, {3{1'b1}}}; //make sure config value lowest bit is 1;
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
						if (isConfig)
							state_idx_reg <= 3'd1;
					end
				default:
					//NULL;
					state_idx_reg <= 3'd0;
					
			endcase
				
	assign isConfigDone = risConfigDone;
		

	reg signed [MIDDLE_WIDTH-1:0] rData_Out;
	reg [3:0]rData_Out_ChIdx;
	reg [1:0]state_reg;
	
	reg [3:0]curInChannelIdx_reg;
	
	// 1st order
	// negedge Data_In_Valid, get data;
		always @(negedge nRST or negedge Data_In_Valid)
		if (!nRST)
			begin
				rAdd_reg <= {MIDDLE_WIDTH{1'b0}};
				curInChannelIdx_reg <= 4'd0;
				state_reg <= 2'd0;
			end
		else
			case (state_reg)
				2'd0:
					if (state_idx_reg == 3'd3)
						begin
							rAdd_reg <= {MIDDLE_WIDTH{1'b0}};
							curInChannelIdx_reg <= 4'd0;
							state_reg <= state_reg + 1;
						end
					else
						begin
							rAdd_reg <= {MIDDLE_WIDTH{1'b0}};
						end
				2'd1:
					begin
						rAdd_reg <= (Delay_reg[Data_In_ChIdx] + {{(MIDDLE_WIDTH-INPUT_WIDTH){Data_In[INPUT_WIDTH-1]}}, Data_In});
						curInChannelIdx_reg <= Data_In_ChIdx;
					end
				default:
					begin
						state_reg <= 2'd0;
					end
			endcase
			
		reg [4:0]idx_i;
		// posedge  Data_In_Valid, calculate data;
		always @( negedge nRST or posedge Data_In_Valid)
		if (!nRST)
			begin
				rData_Out <= {MIDDLE_WIDTH{1'b0}};
				rData_Out_ChIdx <= 4'd0;
				for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
					begin
						Delay_reg[idx_i]  <= {MIDDLE_WIDTH{1'b0}};
						Add_reg[idx_i]    <= {MIDDLE_WIDTH{1'b0}};
					end
			end
		else
			case (state_reg)
				2'd0:
					begin
						for (idx_i = 0; idx_i < CIC_MAX_CHANNELS; idx_i = idx_i + 1)
							begin
								Delay_reg[idx_i]  <= {MIDDLE_WIDTH{1'b0}};
								Add_reg[idx_i]    <= {MIDDLE_WIDTH{1'b0}};
							end
						rData_Out  <= {MIDDLE_WIDTH{1'b0}};
						rData_Out_ChIdx <= 4'd0;
					end
				2'd1:
					begin
						Add_reg[curInChannelIdx_reg]   <= rAdd_reg;
						Delay_reg[curInChannelIdx_reg] <= rAdd_reg;
						rData_Out 		 <= wAdd_reg[CIC_MAX_NUMSECS-1];
						rData_Out_ChIdx  <= wChannelIdx[CIC_MAX_NUMSECS-1];
					end
				default:
					begin
						// NULL
					end
			endcase
			
	assign wAdd_reg[0]    = Add_reg[curInChannelIdx_reg];
	assign wChannelIdx[0] = curInChannelIdx_reg;
			
	// 2ed ~ CIC_MAX_NUMSECS order
	genvar gidx_cic_numsecs;

	generate 
		for(gidx_cic_numsecs = 1; gidx_cic_numsecs < CIC_MAX_NUMSECS; gidx_cic_numsecs = gidx_cic_numsecs + 1)
			begin : gen_cic_numsecs_inst
				CIC_INTEGRATED_SUB #(
					.MIDDLE_WIDTH(MIDDLE_WIDTH),
					.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS),
					.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
				) cic_integrated_sub_inst(
					// parameter MIDDLE_WIDTH  =  37;
					// parameter CIC_MAX_CHANNELS	=  16;
					// parameter CIC_CONFIG_DATA_WIDTH = 16;
					.CLK(CLK), .nRST(nRST),
					.idx(gidx_cic_numsecs[3:0]),
					.state_idx_reg(state_idx_reg),
					.CIC_NUMSECS_reg(CIC_NUMSECS_reg),
					.Data_In(wAdd_reg[gidx_cic_numsecs-1]),
					.Data_In_Valid(Data_In_Valid),
					.Data_In_ChIdx(wChannelIdx[gidx_cic_numsecs-1]),
					.Data_Out(wAdd_reg[gidx_cic_numsecs]),
					.Data_Out_ChIdx(wChannelIdx[gidx_cic_numsecs])
				);
			end

	endgenerate
	
	reg [3:0]idx_doutV_cnt;
	
	always @(posedge Data_In_Valid or negedge nRST)
		if (!nRST)
			begin
				idx_doutV_cnt <= 4'd0;
			end
		else
			begin
				if (idx_doutV_cnt == CIC_INTEGRATED_DATA_OUT_VALID_SHIFT) 
					begin
						//NULL;
					end
				else
					begin
						idx_doutV_cnt <= idx_doutV_cnt + 1;
					end
			end
				
	 
	assign Data_Out = rData_Out;
	assign Data_Out_ChIdx = rData_Out_ChIdx;
	assign Data_Out_Valid = ((idx_doutV_cnt == CIC_INTEGRATED_DATA_OUT_VALID_SHIFT) ? Data_In_Valid : {1'b0});

endmodule

	
	