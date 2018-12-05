///////////////////////////////////////////////////////////////////////////////////
////  DDC CHANNEL SUB FUNCTION
////					MODULE_DDC_CHANNEL_MUX_FILTERS
////         										ZHAOCHAO
////												 	20180508
///////////////////////////////////////////////////////////////////////////////////////////
////
module MODULE_DDC_CHANNEL_MUX_FILTERS(
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

	parameter INPUT_WIDTH   		=  24;
	parameter OUTPUT_WIDTH  		=  24;
	parameter COEF_WIDTH 			=  32;
	parameter CIC_MIDDLE_WIDTH    	=  37;

	parameter CIC_MAX_CHANNELS		=  2;
	parameter CIC_CONFIG_DATA_WIDTH =  24;
	parameter CIC_MAX_DCEF 			=  16;
	parameter CIC_MAX_DIFFD  		=  1;
	parameter CIC_MAX_NUMSECS		=  16;
	
	
	parameter CIC2_MAX_CHANNELS		=  2;
	parameter CICC2_MAX_CHANNELS	=  2;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;

	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3 - CICC_FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[CICC_FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[CICC_FILTER_ORDER+5]:   isCoefSym;
	//Data_Config_In[CICC_FILTER_ORDER+6]:   mhbf_ctl, 
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5]: hbf coefs, 
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5 + 1]: dfir dcef, 
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+1]: dfir coefs,  
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+2 - (*+DFIR_ORDER)]: dfir isCoefSym;
	//Data_Config_In[*+1]:   fir ScalVal,
	input  signed [COEF_WIDTH-1:0]  Data_Config_In; 
	
	input  signed [INPUT_WIDTH-1:0]  Data_In;
	output signed [OUTPUT_WIDTH-1:0] Data_Out;
	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	wire  [3:0]wData_In_ChIdx;
	wire  [3:0]wData_Out_ChIdx; 
	
	assign wData_In_ChIdx = (Data_In_ChIdx - 1);
	assign Data_Out_ChIdx = (wData_Out_ChIdx + 1);
	
	
//// MODULE_CIC_CICC SECONDARY
	wire wcicData_Out_Valid;
	wire [3:0]wcicData_Out_ChIdx;
	wire signed [OUTPUT_WIDTH-1:0] wcicData_Out;
	
	wire wcic_ciccisConfig;
	wire wcic_ciccisConfigACK;
	wire wcic_ciccisConfigDone;
	wire signed [COEF_WIDTH-1:0]  wcic_ciccData_Config;
	
	MODULE_CIC_CICC #(
			.INPUT_WIDTH(INPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.CONFIG_WIDTH(COEF_WIDTH),
			.CIC_MIDDLE_WIDTH(CIC_MIDDLE_WIDTH),
			.CIC_MAX_DCEF(CIC_MAX_DCEF),
			.CIC_MAX_DIFFD(CIC_MAX_DIFFD),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC2_MAX_CHANNELS),
			.CICC_MAX_CHANNELS(CICC2_MAX_CHANNELS),
			.CLK_DELAY_PERIOD(28)
		) ddc_channel_filter_cic_cicc_inst(
		// parameter INPUT_WIDTH    = 16;
		// parameter OUTPUT_WIDTH   = 24;
		// parameter CONFIG_WIDTH 	= 32;
		// parameter CIC_MIDDLE_WIDTH   =  37;
		// parameter CIC_MAX_DCEF 		=  16;
		// parameter CIC_MAX_DIFFD  	=  1;
		// parameter CIC_MAX_NUMSECS	=  16;
		// parameter CIC_MAX_CHANNELS	=  2;
		// parameter CICC_MAX_CHANNELS	=  2;
		// parameter CLK_DELAY_PERIOD   =  0;
			
			.CLK(CLK), .nRST(nRST),
			.isConfig(wcic_ciccisConfig),
			.Data_Config_In(wcic_ciccData_Config),
			.isConfigACK(wcic_ciccisConfigACK),
			.isConfigDone(wcic_ciccisConfigDone),
			
			.Data_In(Data_In),
			.Data_In_Valid(Data_In_Valid),
			.Data_In_ChIdx(wData_In_ChIdx),
			.Data_Out(wcicData_Out),
			.Data_Out_Valid(wcicData_Out_Valid),
			.Data_Out_ChIdx(wcicData_Out_ChIdx)
		);
		
		
		
//// MODULE_MMBF 
	wire wmhbfData_Out_Valid;
	wire [3:0]wmhbfData_Out_ChIdx;
	wire signed [OUTPUT_WIDTH-1:0] wmhbfData_Out;
	
	wire wmhbfisConfig;
	wire wmhbfisConfigACK;
	wire wmhbfisConfigDone;
	wire signed [COEF_WIDTH-1:0]  wmhbfData_Config;

	parameter NMHBF_MAX   	     	  =  5;
	parameter MHBF_COEFF_WIDTH   	  =  24;
	parameter MHBF_INPUT_WIDTH   	  =  24;
	parameter MHBF_OUTPUT_WIDTH  	  =  24;
	parameter MHBF_DATA_WIDTH         =  24;
	parameter MHBF_FILTER_MAX_ORDER   =  32;
	parameter MHBF_MULT_OUTPUT_WIDTH  =  49;
	parameter MHBF_ADDER_OUTPUT_WIDTH =  54;
	parameter MHBF_FILTER_MULTER_NUM  =  2;
	parameter MHBF_MBF_MAX_CHANNELS	  =  2;
	
	MODULE_MMBF #( 
			.NMHBF_MAX(NMHBF_MAX),
			.COEFF_WIDTH(MHBF_COEFF_WIDTH),
			.INPUT_WIDTH(MHBF_INPUT_WIDTH),
			.OUTPUT_WIDTH(MHBF_OUTPUT_WIDTH),
			.DATA_WIDTH(MHBF_DATA_WIDTH),
			.FILTER_MAX_ORDER(MHBF_FILTER_MAX_ORDER),
			.MULT_OUTPUT_WIDTH(MHBF_MULT_OUTPUT_WIDTH),
			.ADDER_OUTPUT_WIDTH(MHBF_ADDER_OUTPUT_WIDTH),
			.FILTER_MULTER_NUM(MHBF_FILTER_MULTER_NUM),
			.MBF_MAX_CHANNELS(MHBF_MBF_MAX_CHANNELS)
		) module_mmbf_inst (
		// parameter NMHBF_MAX   	      =  5;
		// parameter COEFF_WIDTH   	  =  24;
		// parameter INPUT_WIDTH   	  =  24;
		// parameter OUTPUT_WIDTH  	  =  24;
		// parameter DATA_WIDTH   	      =  24;
		// parameter FILTER_MAX_ORDER    =  32;
		// parameter MULT_OUTPUT_WIDTH   =  49;
		// parameter ADDER_OUTPUT_WIDTH  =  54;
		// parameter FILTER_MULTER_NUM   =  2;
		// parameter MBF_MAX_CHANNELS	  =  2;
		
			.CLK(CLK), .nRST(nRST),
			.isConfig(wmhbfisConfig),
			.isConfigACK(wmhbfisConfigACK),
			.isConfigDone(wmhbfisConfigDone),
			.Data_Config(wmhbfData_Config),
			
			.Data_In(wcicData_Out),
			.Data_In_Valid(wcicData_Out_Valid),
			.Data_In_ChIdx(wcicData_Out_ChIdx),
			.Data_Out(wmhbfData_Out),
			.Data_Out_Valid(wmhbfData_Out_Valid),
			.Data_Out_ChIdx(wmhbfData_Out_ChIdx)
		);
	
//// MODULE_DFIR
	parameter FIR_FILTER_MAX_ORDER   = 512;
	parameter DFIR_MAX_CHANNELS	  	 = 2;
	
	wire wdfirisConfig;
	wire wdfirisConfigACK;
	wire wdfirisConfigDone;
	wire signed [COEF_WIDTH-1:0]  wdfirData_Config;
	
	MODULE_DFIR # ( 
			.INPUT_WIDTH(INPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.CONFIG_WIDTH(COEF_WIDTH),
			.FIR_FILTER_MAX_ORDER(FIR_FILTER_MAX_ORDER),
			.DFIR_MAX_CHANNELS(DFIR_MAX_CHANNELS)
		) module_dfir_inst(
		// parameter INPUT_WIDTH   	=  24;
		// parameter OUTPUT_WIDTH  	=  24;
		// parameter CONFIG_WIDTH 		=  32;
		// parameter FIR_FILTER_MAX_ORDER   = 512;
		// parameter DFIR_MAX_DCEF      	 = 5;
		// parameter DCEF_CONFIG_DATA_WIDTH = 24;
		// parameter FIR_COEFF_WIDTH   	 = 24;
		// parameter DFIR_MAX_CHANNELS	  	 = 2;
			.CLK(CLK), .nRST(nRST),
			.isConfig(wdfirisConfig),
			.Data_Config_In(wdfirData_Config),
			.isConfigACK(wdfirisConfigACK),
			.isConfigDone(wdfirisConfigDone),
			
			.Data_In(wmhbfData_Out),
			.Data_In_Valid(wmhbfData_Out_Valid),
			.Data_In_ChIdx(wmhbfData_Out_ChIdx),
			.Data_Out(Data_Out),
			.Data_Out_Valid(Data_Out_Valid),
			.Data_Out_ChIdx(wData_Out_ChIdx)
		);
	
//// DDC_CHANNEL_MUX_FILTERS_CTL	
		parameter CIC_CONFIG_DATA_NUM 	  = 3;
		parameter CICC_CONFIG_DATA_NUM 	  = 259;
		parameter MHBF_CONFIG_DATA_NUM 	  = (1+(5*(MHBF_FILTER_MAX_ORDER+3))); // 1 + 5*(33 + 2);
		parameter DFIR_CONFIG_DATA_NUM 	  = FIR_FILTER_MAX_ORDER + 4; // 1 + 513 + 2;
		
		DDC_CHANNEL_MUX_FILTERS_CTL # ( 
			.CONFIG_WIDTH(COEF_WIDTH),
			.CIC_CONFIG_DATA_NUM(CIC_CONFIG_DATA_NUM),
			.CICC_CONFIG_DATA_NUM(CICC_CONFIG_DATA_NUM),
			.MHBF_CONFIG_DATA_NUM(MHBF_CONFIG_DATA_NUM),
			.DFIR_CONFIG_DATA_NUM(DFIR_CONFIG_DATA_NUM)
		) ddc_channel_mux_filters_ctl_inst (
		// parameter CONFIG_WIDTH 		      = 32;	
		// parameter CIC_CONFIG_DATA_NUM 	  = 3;
		// parameter CICC_CONFIG_DATA_NUM 	  = 259;
		// parameter MHBF_CONFIG_DATA_NUM 	  = 176; // 1 + 5*(33 + 2);
		// parameter DFIR_CONFIG_DATA_NUM 	  = 514; // 1 + 513 + 2;
			.CLK(CLK), .nRST(nRST),
			
			.isConfig(isConfig),
			.Data_Config_In(Data_Config_In),
			.isConfigACK(isConfigACK),
			.isConfigDone(isConfigDone),
			
			.isConfig_CIC_CICC(wcic_ciccisConfig),
			.Data_Config_Out_CIC_CICC(wcic_ciccData_Config),
			.isConfigACK_CIC_CICC(wcic_ciccisConfigACK),
			.isConfigDone_CIC_CICC(wcic_ciccisConfigDone),
			
			.isConfig_MHBF(wmhbfisConfig),
			.Data_Config_Out_MHBF(wmhbfData_Config),
			.isConfigACK_MHBF(wmhbfisConfigACK),
			.isConfigDone_MHBF(wmhbfisConfigDone),
			
			.isConfig_DFIR(wdfirisConfig),
			.Data_Config_Out_DFIR(wdfirData_Config),
			.isConfigACK_DFIR(wdfirisConfigACK),
			.isConfigDone_DFIR(wdfirisConfigDone)
		);


endmodule
