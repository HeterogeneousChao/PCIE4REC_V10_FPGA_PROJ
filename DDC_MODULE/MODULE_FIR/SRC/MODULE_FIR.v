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
module MODULE_FIR(  
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


	parameter COEFF_WIDTH   	   =  24;
	parameter INPUT_WIDTH   	   =  24;
	parameter OUTPUT_WIDTH  	   =  24;
	parameter MULT_OUTPUT_WIDTH    =  49;
	parameter ADDER_OUTPUT_WIDTH   =  64;
	parameter FILTER_MULTER_NUM    =  8;
	parameter MULT_ITERATION_NUM   =  4;
	parameter FIR_MAX_CHANNELS	   =  2;
	parameter FILTER_MAX_ORDER     =  64;


	input  CLK; 				  // >= 23 * signal rate
	input  nRST;

	input  isConfig;
	//Data_Config_In[0-FILTER_ORDER]: filter coef, 
	//Data_Config_In[FILTER_ORDER+1]: ScalVal, 
	//Data_Config_In[FILTER_ORDER+2]: CIC_SCALE;
	input  [COEFF_WIDTH-1:0] Data_Config_In;
	output isConfigACK;
	output isConfigDone;

	input  Data_In_Valid;
	output Data_Out_Valid;
	input  signed [INPUT_WIDTH-1:0]  Data_In; 
	output signed [OUTPUT_WIDTH-1:0] Data_Out;

	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	wire wFunData_Out_Valid;
	wire signed [ADDER_OUTPUT_WIDTH-1:0] wFunData_Out;
	
	wire  wisConfigFIR; 			
	wire  wisConfigDoneFIR;	
	wire  wisConfigACKFIR;	
	
	wire  wisConfigOUTSC; 			
	wire  wisConfigDoneOUTSC;	
	wire  wisConfigACKOUTSC;

	wire [3:0] wData_FUN_OUT_ChIdx; 
	
	// [0-FIR_ORDER]:coef,  [FIR_ORDER+1]:isCoefSym, [FIR_ORDER+2]:out scale value;
	wire signed [COEFF_WIDTH-1:0] wData_ConfigFIR; 	 // [0-FIR_ORDER]:coef, [FIR_ORDER+2]:isCoefSym;
	wire signed [COEFF_WIDTH-1:0] wData_ConfigOUTSC;  // [FIR_ORDER+1]:out scale value;
	
	
	
	FIR_FUN #(
			.COEFF_WIDTH(COEFF_WIDTH),
			.INPUT_WIDTH(INPUT_WIDTH),
			.OUTPUT_WIDTH(ADDER_OUTPUT_WIDTH),
			.MULT_OUTPUT_WIDTH(MULT_OUTPUT_WIDTH),
			.ADDER_OUTPUT_WIDTH(ADDER_OUTPUT_WIDTH),
			.FILTER_MULTER_NUM(FILTER_MULTER_NUM),
			.MULT_ITERATION_NUM(MULT_ITERATION_NUM),
			.FIR_MAX_CHANNELS(FIR_MAX_CHANNELS),
			.FILTER_MAX_ORDER(FILTER_MAX_ORDER)
		)fir_fun_inst(
		// parameter COEFF_WIDTH   	 =  24;
		// parameter INPUT_WIDTH   	 =  24;
		// parameter OUTPUT_WIDTH  	 =  24;
		// parameter MULT_OUTPUT_WIDTH  =  49;
		// parameter ADDER_OUTPUT_WIDTH =  54;
		// parameter FILTER_MULTER_NUM  =  24;
		// parameter MULT_ITERATION_NUM =  5;
		// parameter FIR_MAX_CHANNELS	=  16;
		// parameter FILTER_MAX_ORDER   =  256;
		.CLK(CLK), 
		.nRST(nRST),
		.isConfig(wisConfigFIR),
		.isConfigACK(wisConfigACKFIR),
		.isConfigDone(wisConfigDoneFIR),
		.Data_Config_In(wData_ConfigFIR),
		
		.Data_In(Data_In),
		.Data_In_Valid(Data_In_Valid),
		.Data_In_ChIdx(Data_In_ChIdx),
		.Data_Out(wFunData_Out),
		.Data_Out_Valid(wFunData_Out_Valid),
		.Data_Out_ChIdx(wData_FUN_OUT_ChIdx)
	);
	
	
	FIR_OUT_SCALE #(
			.MIDDLE_WIDTH(ADDER_OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.FIR_CONFIG_DATA_WIDTH(COEFF_WIDTH)
		) fir_out_scale_inst(
		// parameter MIDDLE_WIDTH  =  37;
		// parameter OUTPUT_WIDTH  =  24;
		// parameter FIR_CONFIG_DATA_WIDTH = 16;
		.CLK(CLK), .nRST(nRST),
		
		.isConfig(wisConfigOUTSC),
		.isConfigDone(wisConfigDoneOUTSC),
		.isCOnfigACK(wisConfigACKOUTSC),
		.Data_Config_In(wData_ConfigOUTSC),
		
		.Data_In(wFunData_Out),
		.Data_In_Valid(wFunData_Out_Valid),
		.Data_In_ChIdx(wData_FUN_OUT_ChIdx),
		.Data_Out(Data_Out),
		.Data_Out_Valid(Data_Out_Valid),
		.Data_Out_ChIdx(Data_Out_ChIdx)
	);
	
	FIR_CTL #( 
			.FIR_CONFIG_DATA_WIDTH(COEFF_WIDTH),
			.FILTER_MAX_ORDER(FILTER_MAX_ORDER)
		) fir_ctl_inst (
		// parameter FIR_CONFIG_DATA_WIDTH =  16;
		// parameter FILTER_MAX_ORDER 	    =  256;
		.CLK(CLK), .nRST(nRST),
		
		.isConfig(isConfig),
		.isConfigACK(isConfigACK),
		.isConfigDone(isConfigDone),
		.Data_Config_In(Data_Config_In),
		
		.isConfigFIR_Out(wisConfigFIR),
		.isConfigDoneFIR_Out(wisConfigDoneFIR),
		.isConfigACKFIR_Out(wisConfigACKFIR),
		.Data_ConfigFIR_Out(wData_ConfigFIR),
		
		.isConfigOUTSC_Out(wisConfigOUTSC),
		.isConfigDoneOUTSC_Out(wisConfigDoneOUTSC),
		.isConfigACKOUTSC_Out(wisConfigACKOUTSC),
		.Data_ConfigOUTSC_Out(wData_ConfigOUTSC)
	);
	
endmodule 