///////////////////////////////////////////////////////////////////////////////////
////  DFIR FILTER 
////				FIR DECIMATE
////         					ZHAOCHAO
////									 20180514
///////////////////////////////////////////////////////////////////////////////////////////
////

module DFIR_DECIMATE (
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

	parameter DATA_WIDTH  						= 24;
	parameter DFIR_MAX_CHANNELS					= 2;
	parameter DFIR_MAX_DCEF      				= 5;
	parameter DFIR_CONFIG_DATA_WIDTH  			= 24;
	parameter DFIR_DECEF_DATA_OUT_VALID_SHIFT 	= 2;
	
	parameter DFIR_DIFF_DEFAULT  				= DFIR_MAX_DCEF;
	

	
		
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigDone;
	input  [DFIR_CONFIG_DATA_WIDTH-1:0] Data_Config_In;

	input  Data_In_Valid;
	output Data_Out_Valid;

	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	input  [DATA_WIDTH-1:0] Data_In;
	output [DATA_WIDTH-1:0] Data_Out;
	
	//reg rData_Out_Valid;
	reg [7:0] delay_cnt_reg[DFIR_MAX_CHANNELS-1:0];
	reg signed [DATA_WIDTH-1:0] rData_Out;
	
	reg  risConfigDone;
	reg  [2:0] state_idx_reg;
	reg  [DFIR_CONFIG_DATA_WIDTH-1:0] DFIR_DCEF_reg; 

	reg [3:0]rData_Out_ChIdx;	
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg <= 3'd0;
				risConfigDone <= 1'd0;
				DFIR_DCEF_reg  <= DFIR_DIFF_DEFAULT;			
			end
		else
			case (state_idx_reg)
				3'd0: 	// rst
					if (isConfig)
						state_idx_reg <= state_idx_reg + 1;
				3'd1:   // config-ing;
					begin
						DFIR_DCEF_reg <= Data_Config_In; //make sure config value lowedt bit is 1;
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
					//NULL
					state_idx_reg <= 3'd0;
			endcase
				
	assign isConfigDone = risConfigDone;
	

	reg [4:0] idx_i;
			
	reg isDecf_reg;
	// negedge Data_In_Valid, decef the data;
	always @( negedge nRST or negedge Data_In_Valid)
		if (!nRST)
			begin
				for (idx_i = 0; idx_i < DFIR_MAX_CHANNELS; idx_i = idx_i + 1)
					begin
						delay_cnt_reg[idx_i] <= 8'd0;
					end
				isDecf_reg = 1'b0;
				rData_Out <= {DATA_WIDTH{1'b0}};
				rData_Out_ChIdx <= 4'd0;
			end
		else	
			begin
				if (delay_cnt_reg[Data_In_ChIdx] == DFIR_DCEF_reg-1)	
					begin
						rData_Out_ChIdx <= Data_In_ChIdx;
						rData_Out  <= Data_In;
						delay_cnt_reg[Data_In_ChIdx] = 8'd0;
						
						isDecf_reg <= ~isDecf_reg;
					end
				else
					begin
						delay_cnt_reg[Data_In_ChIdx] <= delay_cnt_reg[Data_In_ChIdx] + 1;
					end
			end
			
			
	reg posclk_reg;
			
	always @(posedge CLK or negedge nRST)
		if(!nRST)
			begin
				posclk_reg <= 1'b1;
			end
		else
			begin
				if (posclk_reg == isDecf_reg)
					begin
						posclk_reg = ~posclk_reg;
					end
			end
	
	
	reg [3:0]idx_doutV_cnt;
	
	always @(posedge Data_In_Valid or negedge nRST)
		if (!nRST)
			begin
				idx_doutV_cnt <= 4'd0;
			end
		else
			begin
				if (idx_doutV_cnt == DFIR_DCEF_reg) 
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
	assign Data_Out_Valid = ((idx_doutV_cnt == DFIR_DCEF_reg) ? 
									 ((posclk_reg == isDecf_reg) ? 1'b1 : {1'b0}) 
									    : {1'b0});
	
endmodule

			
	