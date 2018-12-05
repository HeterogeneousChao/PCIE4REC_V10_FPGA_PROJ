///////////////////////////////////////////////////////////////////////////////////
////  MODULE_CIC 
////				CIC FILTER SIM
////         					ZHAOCHAO
////									 201804014
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180502
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_CIC (
	CLK, nRST,
	
	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config_In,
	
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);
	parameter INPUT_WIDTH   		=  16;
	parameter MIDDLE_WIDTH 			=  37;
	parameter OUTPUT_WIDTH  		=  24;
	parameter CIC_MAX_CHANNELS		=  2;
	parameter CIC_CONFIG_DATA_WIDTH =  16;
	
	parameter CIC_MAX_DCEF 		=  16;
	parameter CIC_MAX_DIFFD  	=  1;
	parameter CIC_MAX_NUMSECS	=  16;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	//Data_Config_In[0]: CIC_NUMSECS, Data_Config_In[1]: CIC_DCEF, Data_Config_In[2]: CIC_SCALE;
	input  [CIC_CONFIG_DATA_WIDTH-1:0] Data_Config_In; 
	
	input  [INPUT_WIDTH-1:0]  Data_In;
	output [OUTPUT_WIDTH-1:0] Data_Out;
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	wire wInt_Data_Out_Valid;
	wire wDec_Data_Out_Valid;
	wire wCom_Data_Out_Valid;
	
	wire [3:0] wInt_Data_Out_ChIdx;
	wire [3:0] wDec_Data_Out_ChIdx;
	wire [3:0] wCom_Data_Out_ChIdx;
	
	wire signed [MIDDLE_WIDTH-1:0] wInt_Data_Out;
	wire signed [MIDDLE_WIDTH-1:0] wDec_Data_Out;
	wire signed [MIDDLE_WIDTH-1:0] wCom_Data_Out;
	
	wire  wisConfig; 		// [0]:INTE, [1]:DECI, [2]:COMB;
	wire  [3:0] wisConfigDone;	// [0]:INTE, [1]:DECI, [2]:COMB;
	wire  [3:0] wisCOnfigACK;	// [0]:INTE, [1]:DECI, [2]:COMB;
	wire  [CIC_CONFIG_DATA_WIDTH*3-1:0] wData_Config_OUT; // [0]:INTE, COMB, [1]:DECI, [2]:SCALE;
	
	
	CIC_CTL #(
			.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
		) cic_ctl_inst(
			// parameter CIC_CONFIG_DATA_WIDTH = 16;
		.CLK(CLK), 
		.nRST(nRST),
		.isConfig(isConfig),
		.isConfigACK(isConfigACK),
		.isConfigDone(isConfigDone),
		.Data_Config_In(Data_Config_In),
		
		.isConfig_Out(wisConfig),
		.isConfigACK_Out(wisCOnfigACK),
		.isConfigDone_Out(wisConfigDone),
		.Data_Config_Out(wData_Config_OUT)
	);
	
	
	CIC_INTEGRATED #(
			.INPUT_WIDTH(INPUT_WIDTH),
			.MIDDLE_WIDTH(MIDDLE_WIDTH),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS),
			.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
		)cic_integrated_inst (
		// parameter INPUT_WIDTH   =  16;
		// parameter MIDDLE_WIDTH  =  37;
		// parameter CIC_MAX_CHANNELS   =  16;
		// parameter CIC_MAX_NUMSECS	=  8;
		// parameter CIC_CONFIG_DATA_WIDTH = 16;
		.CLK(CLK),
		.nRST(nRST),
		
		.isConfig(wisConfig),
		.isConfigDone(wisConfigDone[0]),
		.Data_Config_In(wData_Config_OUT[((3*CIC_CONFIG_DATA_WIDTH)-1):(2*CIC_CONFIG_DATA_WIDTH)]),
		
		.Data_In(Data_In),
		.Data_In_Valid(Data_In_Valid),
		.Data_In_ChIdx(Data_In_ChIdx),
		.Data_Out(wInt_Data_Out),
		.Data_Out_Valid(wInt_Data_Out_Valid),
		.Data_Out_ChIdx(wInt_Data_Out_ChIdx)
	);
	
	CIC_DECIMATE #(
			.MIDDLE_WIDTH(MIDDLE_WIDTH),
			.CIC_MAX_DCEF(CIC_MAX_DCEF),
			.CIC_MAX_DIFFD(CIC_MAX_DIFFD),
			.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS),
			.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
		)cic_decimate_inst (
		// parameter MIDDLE_WIDTH  		=  37;
		// parameter CIC_MAX_DCEF 		=  5;
		// parameter CIC_MAX_DIFFD  	=  1;
		// parameter CIC_MAX_CHANNELS   =  16;
		// parameter CIC_CONFIG_DATA_WIDTH = 16;
		.CLK(CLK),
		.nRST(nRST),
		.isConfig(wisConfig),
		.isConfigDone(wisConfigDone[1]),
		.Data_Config_In(wData_Config_OUT[((2*CIC_CONFIG_DATA_WIDTH)-1):(CIC_CONFIG_DATA_WIDTH)]),
		
		.Data_In(wInt_Data_Out),
		.Data_In_Valid(wInt_Data_Out_Valid),
		.Data_In_ChIdx(wInt_Data_Out_ChIdx),
		.Data_Out(wDec_Data_Out),
		.Data_Out_Valid(wDec_Data_Out_Valid),
		.Data_Out_ChIdx(wDec_Data_Out_ChIdx)
	);
	
	wire wisCOnfigACK_comb;
	
	CIC_COMB #(
			.MIDDLE_WIDTH(MIDDLE_WIDTH),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS),
			.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
		)cic_comb_inst (
		// parameter MIDDLE_WIDTH  =  37;
		// parameter OUTPUT_WIDTH  =  24;
		// parameter CIC_MAX_CHANNELS   =  16;
		// parameter CIC_MAX_NUMSECS	=  8;  // > 2;
		// parameter CIC_CONFIG_DATA_WIDTH = 16;

		.CLK(CLK),
		.nRST(nRST),
		.isConfig(wisConfig),
		.isCOnfigACK(wisCOnfigACK_comb),
		.isConfigDone(wisConfigDone[2]),
		.Data_Config_In(wData_Config_OUT[((3*CIC_CONFIG_DATA_WIDTH)-1):(2*CIC_CONFIG_DATA_WIDTH)]),
		
		.Data_In(wDec_Data_Out),
		.Data_In_Valid(wDec_Data_Out_Valid),
		.Data_In_ChIdx(wDec_Data_Out_ChIdx),
		.Data_Out(wCom_Data_Out),
		.Data_Out_Valid(wCom_Data_Out_Valid),
		.Data_Out_ChIdx(wCom_Data_Out_ChIdx)
	);
	
	CIC_OUT_SCALE #(
			.MIDDLE_WIDTH(MIDDLE_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS),
			.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH)
		)cic_out_scale_inst(
		// parameter MIDDLE_WIDTH  =  37;
		// parameter OUTPUT_WIDTH  =  24;
		// parameter CIC_MAX_CHANNELS   =  16;
		// parameter CIC_CONFIG_DATA_WIDTH = 16;
		.CLK(CLK), 
		.nRST(nRST),
		
		.isConfig(wisConfig),
		.isConfigDone(wisConfigDone[3]),
		.isCOnfigACK(wisCOnfigACK[3]),
		.Data_Config_In(wData_Config_OUT[(CIC_CONFIG_DATA_WIDTH-1):0]),
		
		.Data_In(wCom_Data_Out),
		.Data_In_Valid(wCom_Data_Out_Valid),
		.Data_In_ChIdx(wCom_Data_Out_ChIdx),
		.Data_Out(Data_Out),
		.Data_Out_Valid(Data_Out_Valid),
		.Data_Out_ChIdx(Data_Out_ChIdx)
	);
	
	
endmodule
	