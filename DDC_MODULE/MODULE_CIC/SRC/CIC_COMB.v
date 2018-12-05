///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER PARALLEL
////				CIC COMB
////         					ZHAOCHAO
////									 20180406
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180501
///////////////////////////////////////////////////////////////////////////////////////////
////

module CIC_COMB (
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

	parameter MIDDLE_WIDTH  =  37;
	
	parameter CIC_MAX_NUMSECS	=  16;  // > 2;
	parameter CIC_MAX_CHANNELS	=  16;

	parameter CIC_CONFIG_DATA_WIDTH = 16;
	parameter CIC_COMB_DATA_OUT_VALID_SHIFT = 5;

	input  CLK;
	input  nRST;
	

	input  isConfig;
	output isCOnfigACK;
	output isConfigDone;
	input  signed [(CIC_CONFIG_DATA_WIDTH-1):0] Data_Config_In;
	
	
	input  signed [MIDDLE_WIDTH-1:0]  Data_In;
	output signed [MIDDLE_WIDTH-1:0]  Data_Out;

	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	wire signed [MIDDLE_WIDTH-1:0] wAdder[CIC_MAX_NUMSECS:0];
	
	wire  [3:0] wChannelIdx[CIC_MAX_NUMSECS-1:0];
	
	reg   risConfigDone;
	reg   risCOnfigACK;
	reg   [2:0] state_idx_reg;
	
	reg  [CIC_CONFIG_DATA_WIDTH-1:0]CIC_NUMSECS_reg;  // initial value : 0x00...00111;
	
	// wire signed [MIDDLE_WIDTH-1:0] rData_Out;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 3'd0;
				risConfigDone <= 1'b0;
				risCOnfigACK  <= 1'b0;
				CIC_NUMSECS_reg <= {{(CIC_CONFIG_DATA_WIDTH-3){1'b0}}, {3{1'b1}}};			
			end
		else
			case (state_idx_reg)
				3'd0: 	// rst
					if (isConfig)
						begin
							state_idx_reg <= state_idx_reg + 1;
							risCOnfigACK  <= 1'b1;
						end
				3'd1:   // config-ing;
					begin
						CIC_NUMSECS_reg <= Data_Config_In | {{(CIC_MAX_NUMSECS-3){1'b0}}, {3{1'b1}}}; //make sure config value lowedt bit is 1;
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
					begin
						state_idx_reg <= 3'd0;
					end
			endcase
				
	assign isConfigDone = risConfigDone;
	assign isCOnfigACK  = risCOnfigACK;
	
	wire wData_Valid[CIC_MAX_NUMSECS:0];
	wire [3:0]wData_ChIdx[CIC_MAX_NUMSECS-1:0];
	
	
	genvar gidx_cic_numsecs;

	generate 
		for(gidx_cic_numsecs = 0; gidx_cic_numsecs < (CIC_MAX_NUMSECS); gidx_cic_numsecs = gidx_cic_numsecs + 1)
			begin : gen_cic_numsecs_inst	
					if (gidx_cic_numsecs == 0)
						CIC_COMB_SUB #(
								.MIDDLE_WIDTH(MIDDLE_WIDTH),
								.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH),
								.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS)
							)cic_comb_sub_inst(
							// parameter MIDDLE_WIDTH  		   =  37;
							// parameter CIC_CONFIG_DATA_WIDTH =  16;
							// parameter CIC_MAX_CHANNELS		=  16;
							.CLK(CLK), .nRST(nRST),
							.idx(gidx_cic_numsecs),
							.state_idx_reg(state_idx_reg),
							.CIC_NUMSECS_reg(CIC_NUMSECS_reg),
							.Data_In(Data_In),
							.Data_In_Valid(Data_In_Valid),
							.Data_In_ChIdx(Data_In_ChIdx),
							.Data_Out(wAdder[gidx_cic_numsecs]),
							.Data_Out_Valid(wData_Valid[gidx_cic_numsecs]),
							.Data_Out_ChIdx(wData_ChIdx[gidx_cic_numsecs])
						);
					else
						CIC_COMB_SUB #(
								.MIDDLE_WIDTH(MIDDLE_WIDTH),
								.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH),
								.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS)
							)cic_comb_sub_inst(
							// parameter MIDDLE_WIDTH  		   =  37;
							// parameter CIC_CONFIG_DATA_WIDTH =  16;
							// parameter CIC_MAX_CHANNELS		=  16;
							.CLK(CLK), .nRST(nRST),
							.idx(gidx_cic_numsecs[3:0]),
							.state_idx_reg(state_idx_reg),
							.CIC_NUMSECS_reg(CIC_NUMSECS_reg),
							.Data_In_Valid(wData_Valid[gidx_cic_numsecs-1]),
							.Data_In_ChIdx(wData_ChIdx[gidx_cic_numsecs-1]),
							.Data_In(wAdder[gidx_cic_numsecs-1]),
							.Data_Out_Valid(wData_Valid[gidx_cic_numsecs]),
							.Data_Out(wAdder[gidx_cic_numsecs]),
							.Data_Out_ChIdx(wData_ChIdx[gidx_cic_numsecs])
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
				if (idx_doutV_cnt == CIC_COMB_DATA_OUT_VALID_SHIFT) 
					begin
						//NULL;
					end
				else
					begin
						idx_doutV_cnt <= idx_doutV_cnt + 1;
					end
			end

			
	assign Data_Out = ((!nRST) ? {MIDDLE_WIDTH{1'b0}} : wAdder[CIC_MAX_NUMSECS-1]);
	assign Data_Out_Valid = ((idx_doutV_cnt == CIC_COMB_DATA_OUT_VALID_SHIFT) ? 
												wData_Valid[CIC_MAX_NUMSECS-1] : 
												 {1'b0});
	assign Data_Out_ChIdx = wData_ChIdx[CIC_MAX_NUMSECS-1];
	
endmodule

	