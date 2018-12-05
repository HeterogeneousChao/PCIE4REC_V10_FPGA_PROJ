///////////////////////////////////////////////////////////////////////////////////
////  NCO QUAD SIGNAL GENERATE
////					    NCO FUN
////         					ZHAOCHAO
////									 20180416
///////////////////////////////////////////////////////////////////////////////////////////
////

module NCO_FUN(
	CLK, nRST,
	
	configFreqMod,
	configPhasMod,
	configCtl,
	isConfigACK,
	isConfigDone,
	
	configCurPhaInc,
	dataOutEnable,
	sin_out,
	cos_out
);

	parameter FRE_MOD_WIDTH		= 32;
	parameter PHA_MOD_WIDTH    	= 32;
	parameter CONFIT_CTL_WIDTH 	= 4;
	parameter OUTPUT_WIDTH     	= 16;

	
	parameter ACCUMULATE_WIDTH = 32;
	parameter ROM_ADDR_WIDTH   = 16;
	parameter ROM_DATA_WIDTH   = 16;
	
	parameter DEFAULT_INC_PHA_MOD = 42949672; 		// 1MHz
	//parameter DEFAULT_INC_PHA_MOD = 429496; 		// 10KHz


	//parameter ACC_LENGTH = 4294967295;  // 2^ACCUMULATE_WIDTH;  // accumulator length
	parameter ROM_LENGTH = 65536; 	      // 2^ROM_ADDR_WIDTH;    // ROM lenth
	parameter COS_INIT_PHA = (ROM_LENGTH / 4);
	
	input  CLK;
	input  nRST;

	input   [FRE_MOD_WIDTH-1:0]  configFreqMod;
	input   [PHA_MOD_WIDTH-1:0]	 configPhasMod;
// configCtl[0]: update freqMod, 		 configCtl[1]: update phaMod with inc, 
// configCtl[2]: update phaMod refresh,  configCtl[3]: get current pha inc,  
	input   [CONFIT_CTL_WIDTH-1:0] configCtl;
	
	output isConfigACK;
	output isConfigDone;
	
	input  dataOutEnable;
	
	output signed [OUTPUT_WIDTH-1:0]	 sin_out;
	output signed [OUTPUT_WIDTH-1:0]	 cos_out;
	output [ACCUMULATE_WIDTH-1:0] 		 configCurPhaInc;

	
	reg [FRE_MOD_WIDTH-1:0]    inc_pha_mod;
	reg [ACCUMULATE_WIDTH-1:0] pha_inc_reg_shadow;
	reg [ACCUMULATE_WIDTH-1:0] pha_inc_reg;
	
	reg [ROM_ADDR_WIDTH-1:0]   addr_sin_reg;
	reg [ROM_ADDR_WIDTH-1:0]   addr_cos_reg;
	
	reg risConfigACK;
	reg risConfigDone;
	
	wire signed [ROM_DATA_WIDTH-1:0]	wsin_out;
	wire signed [ROM_DATA_WIDTH-1:0]	wcos_out;
	// reg  signed [ROM_DATA_WIDTH-1:0]	rsin_out;
	// reg  signed [ROM_DATA_WIDTH-1:0]	rcos_out;
	
	reg [ACCUMULATE_WIDTH-1:0] 	rconfigCurPhaInc;

	reg rdataOutValid;
	reg [2:0] idx_state_reg;
	
	/// CTL
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				rdataOutValid = 1'b0;
				idx_state_reg = 3'd0;
				risConfigACK  = 1'b0;
				risConfigDone = 1'b0;
			end
		else
			case (idx_state_reg)
				3'd0:  // Normal work state
					begin
						rdataOutValid <= 1'b1;
						if (configCtl[0])
							begin
								idx_state_reg <= 3'd1;
								risConfigACK  <= 1'b1;
								rdataOutValid <= 1'b0;
							end
						else if (configCtl[1])
							begin
								idx_state_reg <= 3'd2;
								risConfigACK  <= 1'b1;
								rdataOutValid <= 1'b0;
							end
						else if (configCtl[2])
							begin
								idx_state_reg <= 3'd3;
								risConfigACK  <= 1'b1;
								rdataOutValid <= 1'b0;
							end
						else if (configCtl[3])
							begin
								idx_state_reg <= 3'd4;
								risConfigACK  <= 1'b1;
								rdataOutValid <= 1'b0;
							end
					end
				3'd1:  // Config freqMod;
					begin
						//inc_pha_mod[FRE_MOD_WIDTH-1:0] <= configFreqMod;
						idx_state_reg <= 3'd5;
						risConfigDone <= 1'b1;
					end
				3'd2:  // Config phaMod with inc;
					begin
						//pha_inc_reg <= pha_inc_reg + configPhasMod;
						idx_state_reg <= 3'd5;
						risConfigDone <= 1'b1;
					end
				3'd3:  // Config phaMod with refresh;
					begin
						//pha_inc_reg <= configPhasMod;
						idx_state_reg <= 3'd5;
						risConfigDone <= 1'b1;
					end
				3'd4:  // return current pha inc;
					begin
						//rconfigCurPhaInc <= pha_inc_reg;
						idx_state_reg <= 3'd5;
						risConfigDone <= 1'b1;
					end
				3'd5:
					begin
						risConfigACK  <= 1'b0;
						risConfigDone <= 1'b0;
						idx_state_reg <= 3'd0;
					end
				default:
					begin
						risConfigACK  <= 1'b0;
						risConfigDone <= 1'b0;
						idx_state_reg <= 3'd0;
					end
			endcase
			
	reg isPha_inc_reg_Mod;
			
	/// phase inc
	always @( posedge dataOutEnable or negedge nRST )
		if (!nRST)
			begin
				pha_inc_reg     = {(ACCUMULATE_WIDTH){1'b0}};
				addr_sin_reg    = {ROM_ADDR_WIDTH{1'b0}};
				addr_cos_reg 	= {ROM_ADDR_WIDTH{1'b0}};
			end
		else
			begin
				case (idx_state_reg)
					3'd0:
						begin
							if ( isPha_inc_reg_Mod )
								begin
									pha_inc_reg <= pha_inc_reg_shadow;
								end
		
							pha_inc_reg  <= pha_inc_reg + inc_pha_mod;
							addr_sin_reg <= pha_inc_reg[(ACCUMULATE_WIDTH-1):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH)];
							addr_cos_reg <= COS_INIT_PHA + pha_inc_reg[(ACCUMULATE_WIDTH-1):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH)];						
						end	
					
				endcase
			end
		
	always @( posedge CLK or negedge nRST )
		if (!nRST)
			begin
				isPha_inc_reg_Mod  <= 1'b0;
				inc_pha_mod        = DEFAULT_INC_PHA_MOD;
				pha_inc_reg_shadow = {(ACCUMULATE_WIDTH){1'b0}};
				
			end
		else
			begin
				if ( pha_inc_reg_shadow == pha_inc_reg) 
					begin
						isPha_inc_reg_Mod <= 1'b0;
					end
				case (idx_state_reg)
				
					3'd1:
						begin
							inc_pha_mod[FRE_MOD_WIDTH-1:0] <= configFreqMod;
						end
					3'd2:
						begin
							pha_inc_reg_shadow[PHA_MOD_WIDTH-1:0] <= pha_inc_reg_shadow + configPhasMod;
							isPha_inc_reg_Mod <= 1'b1;
						end
					3'd3:
						begin
							pha_inc_reg_shadow[PHA_MOD_WIDTH-1:0] <= configPhasMod;
							isPha_inc_reg_Mod <= 1'b1; 
						end
					3'd4:
						begin
							rconfigCurPhaInc <= pha_inc_reg;
						end
					default:
						begin
							//NULL
						end
					
				endcase
			end
		
	
	// /// phase inc  with [ 0 - pi/2] rom
	// always @(posedge CLK or negedge nRST)
		// if (!nRST)
			// begin
				// pha_inc_reg 	= {(ACCUMULATE_WIDTH){1'b0}};
				
				// rsin_out 		= {ROM_DATA_WIDTH{1'b0}};
				// addr_sin_reg    = {ROM_ADDR_WIDTH{1'b0}};
				// rcos_out 		= {ROM_DATA_WIDTH{1'b0}};
				// addr_cos_reg 	= {ROM_ADDR_WIDTH{1'b0}};
			// end
		// else
			// if (!idx_state_reg)
				// begin
					// case (pha_inc_reg[ACCUMULATE_WIDTH-1:ACCUMULATE_WIDTH-2])
						// 2'b00:
							// begin
								// pha_inc_reg <= pha_inc_reg + inc_pha_mod;
								// addr_sin_reg <= pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								// addr_cos_reg <= ROM_LENGTH - pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								
								// rsin_out <= wsin_out;
								// rcos_out <= wcos_out;
							// end
						// 2'b01:
							// begin
								// pha_inc_reg <= pha_inc_reg + inc_pha_mod;
								// addr_sin_reg <= ROM_LENGTH - pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								// addr_cos_reg <= pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								
								// rsin_out <= wsin_out;
								// rcos_out <= wcos_out | {{1'b1}, {(ROM_DATA_WIDTH-1){1'b0}}}; // * -1;
							// end
						// 2'b10:
							// begin
								// pha_inc_reg <= pha_inc_reg + inc_pha_mod;
								// addr_sin_reg <= pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								// addr_cos_reg <= ROM_LENGTH - pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								
								// rsin_out <= wsin_out | {{1'b1}, {(ROM_DATA_WIDTH-1){1'b0}}};
								// rsin_out <= wsin_out | {{1'b1}, {(ROM_DATA_WIDTH-1){1'b0}}};
							// end
						// 2'b11:
							// begin
								// pha_inc_reg <= pha_inc_reg + inc_pha_mod;
								// addr_sin_reg <= ROM_LENGTH - pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								// addr_cos_reg <= pha_inc_reg[(ACCUMULATE_WIDTH-3):(ACCUMULATE_WIDTH-ROM_ADDR_WIDTH-2)];
								
								// rsin_out <= wsin_out | {{1'b1}, {(ROM_DATA_WIDTH-1){1'b0}}};
								// rsin_out <= wsin_out;
							// end
						// default:
							// // ERROR;
							// begin
								// pha_inc_reg 	= {(ACCUMULATE_WIDTH){1'b0}};
								
								// rsin_out 		= {ROM_DATA_WIDTH{1'b0}};
								// addr_sin_reg    = {ROM_ADDR_WIDTH{1'b0}};
								// rcos_out 		= {ROM_DATA_WIDTH{1'b0}};
								// addr_cos_reg 	= {ROM_ADDR_WIDTH{1'b0}};
							// end
					// endcase
				// end
				
				
	NCO_SIN_ROM_2P_IP	nco_sin_rom_2p_inst (
		.clock ( CLK ),
		
		.address_a ( addr_sin_reg ),
		.q_a ( wsin_out ),
		.address_b ( addr_cos_reg ),
		.q_b ( wcos_out )
	);

	assign isConfigACK  = risConfigACK;
	assign isConfigDone = risConfigDone;
	assign configCurPhaInc = rconfigCurPhaInc;
	
	assign sin_out = wsin_out[(ROM_DATA_WIDTH-1):(ROM_DATA_WIDTH-OUTPUT_WIDTH)];
	assign cos_out = wcos_out[(ROM_DATA_WIDTH-1):(ROM_DATA_WIDTH-OUTPUT_WIDTH)];
	
endmodule
