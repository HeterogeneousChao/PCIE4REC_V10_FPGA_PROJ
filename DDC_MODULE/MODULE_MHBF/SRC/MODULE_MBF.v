///////////////////////////////////////////////////////////////////////////////////
////  FIR FILTER PARALLEL
////         					ZHAOCHAO
////									 20180409
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180506
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_MBF(
	CLK, 
	nRST,
	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config_In,
	
	MHBF_CTL,
	MHBF_CTL_idx,

	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);

	parameter NMHBF_MAX   	      =  5;
	parameter COEFF_WIDTH   	  =  24;
	parameter INPUT_WIDTH   	  =  24;
	parameter OUTPUT_WIDTH  	  =  24;
	parameter DATA_WIDTH   	      =  24;
	parameter MULT_OUTPUT_WIDTH   =  49;
	parameter ADDER_OUTPUT_WIDTH  =  54;
	parameter FILTER_MULTER_NUM   =  2;
	parameter FILTER_MAX_ORDER    =  32;
	parameter MBF_MAX_CHANNELS	  =  2;
	parameter MULT_ITERATION_NUM  =  4;
	
	parameter MBF_DECEF_DATA_OUT_VALID_SHIFT = 2;
	parameter FIR_SCALE_DATA_OUT_VALID_SHIFT = 3;

	
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	input  [COEFF_WIDTH-1:0] Data_Config_In;
	output isConfigACK;
	output isConfigDone;
	
	input  [NMHBF_MAX-1:0] MHBF_CTL;	
	input  [3:0] MHBF_CTL_idx;
	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	input  [DATA_WIDTH-1:0] Data_In;
	output [DATA_WIDTH-1:0] Data_Out;
	
	wire  [3:0]wData_FIROut_ChIdx;
	wire  wFIR_Data_Valid_out;
	wire  [ADDER_OUTPUT_WIDTH-1:0] wFIR_Data_Out;
	
	wire  [3:0]wData_SCALEOut_ChIdx;
	wire  wSCALE_Data_Valid_out;
	wire  [DATA_WIDTH-1:0] wSCALE_Data_Out;
	
	wire  [3:0]wData_ChIdx_Out;
	wire  wData_Valid_Out;
	wire  [DATA_WIDTH-1:0] wData_Out;

	
	wire  wisConfigFIR_Out; 			
	wire  wisConfigDoneFIR_Out;	
	wire  wisConfigACKFIR_Out;	
	
	wire  wisConfigOUTSC_Out; 			
	wire  wisConfigDoneOUTSC_Out;	
	wire  wisConfigACKOUTSC_Out;
	
	wire  wisConfigDCEF_Out; 			
	wire  wisConfigDoneDECF_Out;	
	//wire  wisConfigACKDCEF_Out;

	wire signed [COEFF_WIDTH-1:0] wData_ConfigFIR_Out; 	 // [0-FIR_ORDER]:coef, [FIR_ORDER+2]:isCoefSym;
	wire signed [COEFF_WIDTH-1:0] wData_ConfigOUTSC_Out;  // [FIR_ORDER+1]:out scale value;
	wire signed [COEFF_WIDTH-1:0] wData_ConfigDCEF_Out;   // [FIR_ORDER+2]:dcef value, default 2;

	
	MBF_FIR #(
			.COEFF_WIDTH(COEFF_WIDTH),
			.INPUT_WIDTH(INPUT_WIDTH),
			.MULT_OUTPUT_WIDTH(MULT_OUTPUT_WIDTH),
			.ADDER_OUTPUT_WIDTH(ADDER_OUTPUT_WIDTH),
			.FILTER_MAX_ORDER(FILTER_MAX_ORDER),
			.FILTER_MULTER_NUM(FILTER_MULTER_NUM),
			.MULT_ITERATION_NUM(MULT_ITERATION_NUM),
			.MBF_MAX_CHANNELS(MBF_MAX_CHANNELS)
		) mbf_fir_inst (
		// parameter ISCOEFSYM     	 	=  0;
		// parameter COEFF_WIDTH   		=  24;
		// parameter INPUT_WIDTH   	 	=  24;
		// parameter MULT_OUTPUT_WIDTH  =  49;
		// parameter ADDER_OUTPUT_WIDTH =  54;
		// parameter FILTER_MAX_ORDER   =  32;
		// parameter FILTER_MULTER_NUM  =  2;
		// parameter MBF_MAX_CHANNELS	=  16;
		// parameter MULT_ITERATION_NUM =  4;
		.CLK(CLK), 
		.nRST(nRST),
		.isConfig(wisConfigFIR_Out),
		.isConfigACK(wisConfigACKFIR_Out),
		.isConfigDone(wisConfigDoneFIR_Out),
		.Data_Config_In(wData_ConfigFIR_Out),
		
		.Data_In(Data_In),
		.Data_In_Valid(Data_In_Valid),
		.Data_In_ChIdx(Data_In_ChIdx),
		.Data_Out(wFIR_Data_Out),
		.Data_Out_Valid(wFIR_Data_Valid_out),
		.Data_Out_ChIdx(wData_FIROut_ChIdx)
	);
	
	
	MBF_FIR_OUT_SCALE # (
			.MIDDLE_WIDTH(ADDER_OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.FIR_CONFIG_DATA_WIDTH(COEFF_WIDTH),
			.FIR_SCALE_DATA_OUT_VALID_SHIFT(FIR_SCALE_DATA_OUT_VALID_SHIFT)
		) mbf_fir_out_scale_inst (
		// parameter MIDDLE_WIDTH  =  64;
		// parameter OUTPUT_WIDTH  =  24;
		// parameter FIR_CONFIG_DATA_WIDTH = 24;
		// parameter FIR_SCALE_DATA_OUT_VALID_SHIFT = 3;
		.CLK(CLK), 
		.nRST(nRST),
		
		.isConfig(wisConfigOUTSC_Out),
		.isConfigDone(wisConfigDoneOUTSC_Out),
		.isCOnfigACK(wisConfigACKOUTSC_Out),
		.Data_Config_In(wData_ConfigOUTSC_Out),
		
		.Data_In(wFIR_Data_Out),
		.Data_In_Valid(wFIR_Data_Valid_out),
		.Data_In_ChIdx(wData_FIROut_ChIdx),
		.Data_Out(wSCALE_Data_Out),
		.Data_Out_Valid(wSCALE_Data_Valid_out),
		.Data_Out_ChIdx(wData_SCALEOut_ChIdx)
	);
	
	
	MBF_DECIMATE #(
			.DATA_WIDTH(DATA_WIDTH),
			.MBF_MAX_CHANNELS(MBF_MAX_CHANNELS),
			.MBF_CONFIG_DATA_WIDTH(COEFF_WIDTH),
			.MBF_DECEF_DATA_OUT_VALID_SHIFT(MBF_DECEF_DATA_OUT_VALID_SHIFT),
			.MBF_DCEF_DEFAULT(2)
		) hbf_decimate_inst (
		// parameter DATA_WIDTH    					=  24;	
		// parameter MBF_MAX_CHANNELS				=  16;
		// parameter MBF_DCEF_DEFAULT  				=  2;
		// parameter MBF_CONFIG_DATA_WIDTH 			= 16;
		// parameter MBF_DECEF_DATA_OUT_VALID_SHIFT = 2;
			
		.CLK(CLK), 
		.nRST(nRST), 
		
		.isConfig(wisConfigDCEF_Out),
		.isConfigDone(wisConfigDoneDECF_Out),
		.Data_Config_In(wData_ConfigDCEF_Out),
		
		.Data_In(wSCALE_Data_Out),
		.Data_In_Valid(wSCALE_Data_Valid_out),
		.Data_In_ChIdx(wData_SCALEOut_ChIdx),
		.Data_Out(wData_Out),
		.Data_Out_Valid(wData_Valid_out),
		.Data_Out_ChIdx(wData_ChIdx_Out)
	);

	
	MBF_CTL #(
		.FIR_CONFIG_DATA_WIDTH(COEFF_WIDTH),
		.FILTER_MAX_ORDER(FILTER_MAX_ORDER)
		) mbf_ctl_inst (
		// parameter FIR_CONFIG_DATA_WIDTH =  16;
		// parameter FILTER_MAX_ORDER 	    =  256;
		.CLK(CLK), 
		.nRST(nRST),
		
		.isConfig(isConfig),
		.isConfigACK(isConfigACK),
		.isConfigDone(isConfigDone),
		.Data_Config_In(Data_Config_In),
		
		.isConfigFIR_Out(wisConfigFIR_Out),
		.isConfigDoneFIR_Out(wisConfigDoneFIR_Out),
		.isConfigACKFIR_Out(wisConfigACKFIR_Out),
		.Data_ConfigFIR_Out(wData_ConfigFIR_Out),
		
		.isConfigOUTSC_Out(wisConfigOUTSC_Out),
		.isConfigDoneOUTSC_Out(wisConfigDoneOUTSC_Out),
		.isConfigACKOUTSC_Out(wisConfigACKOUTSC_Out),
		.Data_ConfigOUTSC_Out(wData_ConfigOUTSC_Out),
		
		.isConfigDECF_Out(wisConfigDCEF_Out),
		.isConfigDoneDECF_Out(wisConfigDoneDCEF_Out),
		//.isConfigACKDCEF_Out(),
		.Data_ConfigDECF_Out(wData_ConfigDCEF_Out)
	);
	
	
	assign Data_Out 	  = (((MHBF_CTL >> MHBF_CTL_idx)&{{(NMHBF_MAX-1){1'b0}},{1'b1}}) ? 
							   wData_Out : Data_In);
	assign Data_Out_Valid = (((MHBF_CTL >> MHBF_CTL_idx)&{{(NMHBF_MAX-1){1'b0}},{1'b1}}) ? 
							   wData_Valid_out : Data_In_Valid);

	assign Data_Out_ChIdx = (((MHBF_CTL >> MHBF_CTL_idx)&{{(NMHBF_MAX-1){1'b0}},{1'b1}}) ? 
							   wData_ChIdx_Out : Data_In_ChIdx);
							   
endmodule
