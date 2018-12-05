///////////////////////////////////////////////////////////////////////////////////
////  NCO QUAD SIGNAL GENERATE
////					    NCO FUN
////         					ZHAOCHAO
////									 20180416
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_NCO(
	CLK, nRST,
	
	isConfig,
	Data_Config_In,

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
	
	parameter CONFIT_WIDTH  		= 32;
	
	parameter FRE_MOD_WIDTH			= 32;
	parameter PHA_MOD_WIDTH    		= 32;
	parameter CONFIT_CTL_WIDTH 		= 4;
	parameter OUTPUT_WIDTH     		= 16;

	
	parameter ACCUMULATE_WIDTH = 32;
	parameter ROM_ADDR_WIDTH   = 16;
	parameter ROM_DATA_WIDTH   = 16;
	
	parameter DEFAULT_INC_PHA_MOD = 214748364;		// 5MHz
	// parameter DEFAULT_INC_PHA_MOD = 42949672; 	// 1MHz
	// parameter DEFAULT_INC_PHA_MOD = 429496; 		// 10KHz

	
	input  CLK;
	input  nRST;
	
	input   [FRE_MOD_WIDTH-1:0] configFreqMod;
	input   [PHA_MOD_WIDTH-1:0] configPhasMod;
	
// configCtl[0]: update freqMod, 		 configCtl[1]: update phaMod with inc, 
// configCtl[2]: update phaMod refresh,  configCtl[3]: get current pha inc,  
	input  [CONFIT_CTL_WIDTH-1:0] configCtl;
	input  dataOutEnable;
	
	output signed [OUTPUT_WIDTH-1:0]	 sin_out;
	output signed [OUTPUT_WIDTH-1:0]	 cos_out;
	output [ACCUMULATE_WIDTH-1:0] 		 configCurPhaInc;
	
	input  isConfig;
	input  [CONFIT_WIDTH-1:0] Data_Config_In;
	output isConfigACK;
	output isConfigDone;
	
	wire [3:0] wconfigCtl_fun; // init mod freq and pha;
	wire [1:0] wconfigCtl_ctl; // init mod freq and pha;
	wire  [FRE_MOD_WIDTH-1:0]  wconfigFreqMod_fun;
	wire  [PHA_MOD_WIDTH-1:0]  wconfigPhasMod_fun;
	wire  [FRE_MOD_WIDTH-1:0]  wconfigFreqMod_ctl;
	wire  [PHA_MOD_WIDTH-1:0]  wconfigPhasMod_ctl;
	
	wire wisConfigACK_fun;
	wire wisConfigDone_fun;
	wire wisConfigACK_ctl;
	wire wisConfigDone_ctl;
	
	reg isInitConfig;
	reg [1:0] idx_state_reg;
	
	always @(posedge CLK or negedge nRST)
		if(!nRST)
			begin
				isInitConfig <= 1'b0;
				idx_state_reg <= 2'd0;
			end
		else
			case(idx_state_reg)
				2'd0:
					if (isConfig)
						idx_state_reg <= 2'd1;
				2'd1:
					if (isConfigDone)
						idx_state_reg <= 2'd0;
				default:
					idx_state_reg <= 2'd0;
			endcase

	
	NCO_FUN #(
			.FRE_MOD_WIDTH(FRE_MOD_WIDTH),
			.PHA_MOD_WIDTH(PHA_MOD_WIDTH),
			.CONFIT_CTL_WIDTH(CONFIT_CTL_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.ACCUMULATE_WIDTH(ACCUMULATE_WIDTH),
			.ROM_ADDR_WIDTH(ROM_ADDR_WIDTH),
			.ROM_DATA_WIDTH(ROM_DATA_WIDTH),
			.DEFAULT_INC_PHA_MOD(DEFAULT_INC_PHA_MOD)
		) noc_fun_inst(
		// parameter FRE_MOD_WIDTH			= 32;
		// parameter PHA_MOD_WIDTH    		= 32;
		// parameter CONFIT_CTL_WIDTH 		= 4;
		// parameter OUTPUT_WIDTH     		= 16;
		// parameter ACCUMULATE_WIDTH = 32;
		// parameter ROM_ADDR_WIDTH   = 16;
		// parameter ROM_DATA_WIDTH   = 16;
		// parameter DEFAULT_INC_PHA_MOD = 42949672; 		// 1MHz
		.CLK(CLK), .nRST(nRST),
		
		.configFreqMod(wconfigFreqMod_fun),
		.configPhasMod(wconfigPhasMod_fun),
		.configCtl(wconfigCtl_fun),
		.isConfigACK(wisConfigACK_fun),
		.isConfigDone(wisConfigDone_fun),
		
		.configCurPhaInc(configCurPhaInc),
		.dataOutEnable(dataOutEnable),
		.sin_out(sin_out),
		.cos_out(cos_out)
	);

	NCO_INIT_CONFIG #(
			.CONFIT_WIDTH(CONFIT_WIDTH),
			.FRE_MOD_WIDTH(FRE_MOD_WIDTH),
			.PHA_MOD_WIDTH(PHA_MOD_WIDTH),
			.CONFIT_CTL_WIDTH(CONFIT_CTL_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH)
		) nco_init_config_inst (
		// parameter CONFIT_WIDTH  		= 32;
		// parameter FRE_MOD_WIDTH			= 32;
		// parameter PHA_MOD_WIDTH    		= 32;
		// parameter CONFIT_CTL_WIDTH 		= 4;
		// parameter OUTPUT_WIDTH     		= 16;
		.CLK(CLK), .nRST(nRST),
		
		.isConfig(isConfig),
		.isConfigACK(wisConfigACK_ctl),
		.isConfigDone(wisConfigDone_ctl),
		.Data_Config_In(Data_Config_In),
		
		.configFreqMod(wconfigFreqMod_ctl),
		.configPhasMod(wconfigPhasMod_ctl),
		.configCtl_ctl(wconfigCtl_ctl),
		.isConfigACK_ctl(wisConfigACK_fun),
		.isConfigDone_ctl(wisConfigDone_fun)
	);
	
	assign wconfigCtl_fun = ((idx_state_reg) ? {{1'b0},{wconfigCtl_ctl[1]},{1'b0},{wconfigCtl_ctl[0]}} : configCtl);
	assign wconfigFreqMod_fun = ((idx_state_reg) ? wconfigFreqMod_ctl : configFreqMod);
	assign wconfigPhasMod_fun = ((idx_state_reg) ? wconfigPhasMod_ctl : configPhasMod);
	assign isConfigACK  = ((idx_state_reg) ? wisConfigACK_ctl  : wisConfigACK_fun); 
	assign isConfigDone = ((idx_state_reg) ? wisConfigDone_ctl : wisConfigDone_fun);

endmodule
