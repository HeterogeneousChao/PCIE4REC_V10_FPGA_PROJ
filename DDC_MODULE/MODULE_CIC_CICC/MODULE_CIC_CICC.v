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
module MODULE_CIC_CICC(
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
	
	parameter INPUT_WIDTH   	 =  16;
	parameter OUTPUT_WIDTH  	 =  24;
	parameter CONFIG_WIDTH 		 =  32;
	parameter CIC_MIDDLE_WIDTH  =  37;
	
	parameter CIC_MAX_CHANNELS	 =  2;
	parameter CICC_MAX_CHANNELS =  2;
	
	parameter CLK_DELAY_PERIOD  =  0;   //CLK_DELAY_PERIOD = 0; disable clk delay adj;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3-FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[FILTER_ORDER+5]:   isCoefSym;
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out;
	
	///////////////////////////////////////////////////////////////////////////
	//// CIC1 I 
		parameter CIC_CONFIG_DATA_WIDTH = 16;
		parameter CIC_MAX_DCEF 		=  16;
		parameter CIC_MAX_DIFFD  	=  1;
		parameter CIC_MAX_NUMSECS	=  16;
		
		wire wisConfig_CIC;
		wire wisConfigACK_CIC;
		wire wisConfigDone_CIC;
		wire [CONFIG_WIDTH-1:0] wData_Config_In_CIC;
		
		wire wData_CICOutValid;
		wire [3:0] wData_CICOut_ChIdx;
		wire [OUTPUT_WIDTH-1:0] wData_CICOut;
		
		
		MODULE_CIC #(
			.INPUT_WIDTH(INPUT_WIDTH),
			.MIDDLE_WIDTH(CIC_MIDDLE_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			// .CIC_CONFIG_DATA_WIDTH(),
			.CIC_MAX_DCEF(CIC_MAX_DCEF),
			.CIC_MAX_DIFFD(CIC_MAX_DIFFD),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC_MAX_CHANNELS)
		) module_cic1_inst(
		// parameter INPUT_WIDTH   =  16;
		// parameter MIDDLE_WIDTH  =  37;
		// parameter OUTPUT_WIDTH  =  24;
		// parameter CIC_CONFIG_DATA_WIDTH = 16;
		// parameter CIC_MAX_DCEF 		=  5;
		// parameter CIC_MAX_DIFFD  	=  1;
		// parameter CIC_MAX_NUMSECS	=  8;
		// parameter CIC_MAX_CHANNELS	=  2;
			.CLK(CLK), .nRST(nRST),	
			.isConfig(wisConfig_CIC),
			.isConfigACK(wisConfigACK_CIC),
			.isConfigDone(wisConfigDone_CIC),
			.Data_Config_In(wData_Config_In_CIC[CIC_CONFIG_DATA_WIDTH-1:0]),
			
			.Data_In(Data_In),
			.Data_In_Valid(Data_In_Valid),
			.Data_In_ChIdx(Data_In_ChIdx),
			.Data_Out(wData_CICOut),
			.Data_Out_Valid(wData_CICOutValid),
			.Data_Out_ChIdx(wData_CICOut_ChIdx)
		);
		
	///////////////////////////////////////////////////////////////////////////
	////  decf clk adjust		
		
		wire wData_CICADJOutValid;
		wire [3:0] wData_CICADJOut_ChIdx;
		wire [OUTPUT_WIDTH-1:0] wData_CICADJOut;
		
		MODULE_MUX_CLK_ADJ #(  
			.INPUT_WIDTH(OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.CLK_DELAY_PERIOD(CLK_DELAY_PERIOD)
		) module_mux_clk_adj_inst(
			// parameter INPUT_WIDTH   	  = 24;
			// parameter OUTPUT_WIDTH  	  = 24;
			// parameter CLK_DELAY_PERIOD = 28;
			.CLK(CLK), .nRST(nRST),

			.Data_In(wData_CICOut),
			.Data_In_Valid(wData_CICOutValid),
			.Data_In_ChIdx(wData_CICOut_ChIdx),
			
			.Data_Out(wData_CICADJOut),
			.Data_Out_Valid(wData_CICADJOutValid),
			.Data_Out_ChIdx(wData_CICADJOut_ChIdx)
		);
		
	///////////////////////////////////////////////////////////////////////////
	//// CIC1 compensate
		parameter CICC_COEFF_WIDTH   	   =  24;
		//parameter CICC1_MULT_OUTPUT_WIDTH  =  49;
		//parameter CICC1_ADDER_OUTPUT_WIDTH =  54;
		parameter CICC_FILTER_MULTER_NUM  =  32;
		parameter CICC_MULT_ITERATION_NUM =  4;
		parameter CICC_FILTER_MAX_ORDER   =  256;
		
		wire wisConfig_CICC;
		wire wisConfigACK_CICC;
		wire wisConfigDone_CICC;
		wire [CONFIG_WIDTH-1:0] wData_Config_In_CICC;
	
		wire wData_CICCOutValid;
		wire [3:0] wData_CICCOut_ChIdx;
		wire [OUTPUT_WIDTH-1:0] wData_CICCOut;
		
		
		MODULE_FIR #(
			//.COEFF_WIDTH(),
			.INPUT_WIDTH(OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			//.MULT_OUTPUT_WIDTH(),
			//.ADDER_OUTPUT_WIDTH(),
			.FILTER_MULTER_NUM(CICC_FILTER_MULTER_NUM),
			.MULT_ITERATION_NUM(CICC_MULT_ITERATION_NUM),
			.FILTER_MAX_ORDER(CICC_FILTER_MAX_ORDER),
			.FIR_MAX_CHANNELS(CICC_MAX_CHANNELS)
		) cic1_compensate_fir_inst(  
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
			.isConfig(wisConfig_CICC),
			.isConfigACK(wisConfigACK_CICC),
			.isConfigDone(wisConfigDone_CICC),
			.Data_Config_In(wData_Config_In_CICC[CICC_COEFF_WIDTH-1:0]),
			
			.Data_In(wData_CICADJOut),
			.Data_In_Valid(wData_CICADJOutValid),
			.Data_In_ChIdx(wData_CICADJOut_ChIdx),
			.Data_Out(wData_CICCOut),
			.Data_Out_Valid(wData_CICCOutValid),
			.Data_Out_ChIdx(wData_CICCOut_ChIdx)
		); 

	////////////////////////////////////////////////////////////////
	//// CIC_CICC_CTL
		//parameter CONFIG_WIDTH 			= 32;
		//parameter CIC_CONFIG_DATA_WIDTH = 16;
		//parameter CICC_COEFF_WIDTH   	= 24;
		parameter CIC_CONFIG_DATA_NUM 	= 3;
		parameter CICC_CONFIG_DATA_NUM 	= 259;
	
		CIC_CICC_CTL #(
				.CONFIG_WIDTH(CONFIG_WIDTH),
				.CIC_CONFIG_DATA_WIDTH(CIC_CONFIG_DATA_WIDTH),
				.CICC_COEFF_WIDTH(CICC_COEFF_WIDTH),
				.CIC_CONFIG_DATA_NUM(CIC_CONFIG_DATA_NUM),
				.CICC_CONFIG_DATA_NUM(CICC_CONFIG_DATA_NUM)
			) cic_cicc_ctl_inst(
			// parameter CONFIG_WIDTH 			= 32;
			// parameter CIC_CONFIG_DATA_WIDTH = 16;
			// parameter CICC_COEFF_WIDTH   	= 24;
			// parameter CIC_CONFIG_DATA_NUM 	= 3;
			// parameter CICC_CONFIG_DATA_NUM 	= 258;
				.CLK(CLK), .nRST(nRST),
				.isConfig(isConfig),
				.Data_Config_In(Data_Config_In),
				.isConfigACK(isConfigACK),
				.isConfigDone(isConfigDone),
				
				.isConfigACK_CIC(wisConfigACK_CIC),
				.isConfigDone_CIC(wisConfigDone_CIC),
				.isConfig_CIC(wisConfig_CIC),
				.Data_Config_Out_CIC(wData_Config_In_CIC),
				
				.isConfigACK_CICC(wisConfigACK_CICC),
				.isConfigDone_CICC(wisConfigDone_CICC),
				.isConfig_CICC(wisConfig_CICC),
				.Data_Config_Out_CICC(wData_Config_In_CICC)
			);	
		
	/////////////////////////////////////////////////////
	//// CHANNEL FILTER 
	assign Data_Out = wData_CICCOut;
	assign Data_Out_ChIdx = wData_CICCOut_ChIdx;
	assign Data_Out_Valid = wData_CICCOutValid;

endmodule
