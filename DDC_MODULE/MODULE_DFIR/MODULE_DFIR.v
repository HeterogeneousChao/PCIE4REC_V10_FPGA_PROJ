///////////////////////////////////////////////////////////////////////////////////
////  CIC FILTER AND CIC COMPENSATE FILTER
////					MODULE_CIC_CICC
////         						ZHAOCHAO
////									 20180418
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180507
///////////////////////////////////////////////////////////////////////////////////////////
////
module MODULE_DFIR(
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);
	
	parameter INPUT_WIDTH   	=  24;
	parameter OUTPUT_WIDTH  	=  24;
	parameter CONFIG_WIDTH 		=  32;
	parameter FIR_FILTER_MAX_ORDER   = 512;
	parameter DFIR_MAX_DCEF      	 = 5;
	parameter DCEF_CONFIG_DATA_WIDTH = 24;
	parameter FIR_COEFF_WIDTH   	 = 24;
	parameter DFIR_MAX_CHANNELS	  	 = 2;

	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
	//Data_Config_In[0]: DFIR DCEF, 
	//Data_Config_In[1-FILTER_ORDER+1]: fir coefs,  
	//Data_Config_In[FILTER_ORDER+2]:   fir isCoefSym;
	//Data_Config_In[FILTER_ORDER+3]:   fir ScalVal,
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out;
		

	///////////////////////////////////////////////////////////////////////////
	//// CIC1 compensate
		//parameter FIR_COEFF_WIDTH   	   =  24;
		//parameter FIR_MULT_OUTPUT_WIDTH  =  49;
		//parameter FIR_ADDER_OUTPUT_WIDTH =  54;
		parameter FIR_FILTER_MULTER_NUM  =  8;
		parameter FIR_MULT_ITERATION_NUM =  32;

		
		wire wisConfig_FIR;
		wire wisConfigACK_FIR;
		wire wisConfigDone_FIR;
		wire [FIR_COEFF_WIDTH-1:0] wData_Config_In_FIR;
	
		wire wData_FIROutValid;
		wire [3:0] wData_FIROut_ChIdx;
		wire [OUTPUT_WIDTH-1:0] wData_FIROut;
		
		
		MODULE_FIR #(
			//.COEFF_WIDTH(),
			.INPUT_WIDTH(OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			//.MULT_OUTPUT_WIDTH(),
			//.ADDER_OUTPUT_WIDTH(),
			.FILTER_MULTER_NUM(FIR_FILTER_MULTER_NUM),
			.MULT_ITERATION_NUM(FIR_MULT_ITERATION_NUM),
			.FILTER_MAX_ORDER(FIR_FILTER_MAX_ORDER),
			.FIR_MAX_CHANNELS(DFIR_MAX_CHANNELS)
		) module_fir_inst(  
		// parameter COEFF_WIDTH   	  =  24;
		// parameter INPUT_WIDTH   	  =  24;
		// parameter OUTPUT_WIDTH  	  =  24;
		// parameter MULT_OUTPUT_WIDTH  =  49;
		// parameter ADDER_OUTPUT_WIDTH =  54;
		// parameter FILTER_MULTER_NUM  =  24;
		// parameter MULT_ITERATION_NUM =  5;
		// parameter FILTER_MAX_ORDER   =  256;
		// parameter FIR_MAX_CHANNELS	  =  2;
			.CLK(CLK), .nRST(nRST),
			.isConfig(wisConfig_FIR),
			.isConfigACK(wisConfigACK_FIR),
			.isConfigDone(wisConfigDone_FIR),
			.Data_Config_In(wData_Config_In_FIR),
			
			.Data_In(Data_In),
			.Data_In_Valid(Data_In_Valid),
			.Data_In_ChIdx(Data_In_ChIdx),
			.Data_Out(wData_FIROut),
			.Data_Out_Valid(wData_FIROutValid),
			.Data_Out_ChIdx(wData_FIROut_ChIdx)
		); 
		
	////////////////////////////////////////////////////////////////
	//// DFIR_DECIMATE		

		wire wisConfig_DCEF;
		// wire wisConfigACK_DCEF;
		wire wisConfigDone_DCEF;
		wire [DCEF_CONFIG_DATA_WIDTH-1:0] wData_Config_In_DCEF;
		
		DFIR_DECIMATE #( 
			.DATA_WIDTH(OUTPUT_WIDTH),
			.DFIR_MAX_CHANNELS(DFIR_MAX_CHANNELS),
			.DFIR_MAX_DCEF(DFIR_MAX_DCEF),
			.DFIR_CONFIG_DATA_WIDTH(DCEF_CONFIG_DATA_WIDTH)
		) dfir_decimate_inst (
			// parameter DATA_WIDTH  						= 24;
			// parameter DFIR_MAX_CHANNELS					= 2;
			// parameter DFIR_MAX_DCEF      				= 5;
			// parameter DFIR_CONFIG_DATA_WIDTH  			= 24;
			// parameter DFIR_DECEF_DATA_OUT_VALID_SHIFT 	= 2;
			.CLK(CLK), .nRST(nRST), 
			.isConfig(wisConfig_DCEF),
			.isConfigDone(wisConfigDone_DCEF),
			.Data_Config_In(wData_Config_In_DCEF),

			.Data_In(wData_FIROut),
			.Data_In_Valid(wData_FIROutValid),
			.Data_In_ChIdx(wData_FIROut_ChIdx),
			.Data_Out(Data_Out),
			.Data_Out_Valid(Data_Out_Valid),
			.Data_Out_ChIdx(Data_Out_ChIdx)
		);


	////////////////////////////////////////////////////////////////
	//// DFIR_CTL
		parameter DCEF_CONFIG_DATA_NUM 	 = 1;
	
		DFIR_CTL #(
				.CONFIG_WIDTH(CONFIG_WIDTH),
				.DCEF_CONFIG_DATA_WIDTH(DCEF_CONFIG_DATA_WIDTH),
				.FIR_COEFF_WIDTH(FIR_COEFF_WIDTH),
				.FIR_MAX_ORDER(FIR_FILTER_MAX_ORDER),
				.DCEF_CONFIG_DATA_NUM(DCEF_CONFIG_DATA_NUM)
			) dfir_ctl_inst(
			// parameter FIR_MAX_ORDER 		 = 256;
			// parameter CONFIG_WIDTH 			 = 32;
			// parameter DCEF_CONFIG_DATA_WIDTH = 24;
			// parameter FIR_COEFF_WIDTH   	 = 24;
			// parameter DCEF_CONFIG_DATA_NUM 	 = 1;
				.CLK(CLK), .nRST(nRST),
				.isConfig(isConfig),
				.Data_Config_In(Data_Config_In),
				.isConfigACK(isConfigACK),
				.isConfigDone(isConfigDone),
				
				.isConfigACK_FIR(wisConfigACK_FIR),
				.isConfigDone_FIR(wisConfigDone_FIR),
				.isConfig_FIR(wisConfig_FIR),
				.Data_Config_Out_FIR(wData_Config_In_FIR),
				
				.isConfigACK_DCEF(0),
				.isConfigDone_DCEF(wisConfigDone_DCEF),
				.isConfig_DCEF(wisConfig_DCEF),
				.Data_Config_Out_DCEF(wData_Config_In_DCEF)
			);	
		

endmodule
