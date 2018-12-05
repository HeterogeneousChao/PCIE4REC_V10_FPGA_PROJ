///////////////////////////////////////////////////////////////////////////////////
////  DDC CHANNEL FILTERS FUNCTION
////					DDC_CHANNEL_FILTERS
////         										ZHAOCHAO
////												 	20180508
///////////////////////////////////////////////////////////////////////////////////////////
////
module DDC_CHANNEL_FILTERS(
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	Data_In_I,
	Data_In_Q,
	Data_In_I_Valid,
	Data_In_Q_Valid,

	Data_Out_I,
	Data_Out_I_Valid,
	Data_Out_Q,
	Data_Out_Q_Valid
);

	parameter INPUT_WIDTH   = 16;
	parameter OUTPUT_WIDTH  = 24;
	parameter CONFIG_WIDTH 	= 32;
	parameter CIC_MIDDLE_WIDTH  =  80;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
	//// CIC1 
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3-FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[FILTER_ORDER+5]:   isCoefSym;
	//// CIC2
	//Data_Config_In[FILTER_ORDER+6]: CIC_NUMSECS, 
	//Data_Config_In[FILTER_ORDER+7]: CIC_DCEF, 
	//Data_Config_In[FILTER_ORDER+8]: CIC_SCALE;
	//Data_Config_In[FILTER_ORDER+9~2*FILTER_ORDER+9]: cicc coef, 
	//Data_Config_In[2*FILTER_ORDER+10]:   cicc ScalVal, 
	//Data_Config_In[2*FILTER_ORDER+11]:   isCoefSym;
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	
	input  Data_In_I_Valid;
	input  Data_In_Q_Valid;
	output Data_Out_I_Valid;
	output Data_Out_Q_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In_I;
	input  signed [INPUT_WIDTH-1:0]     Data_In_Q;
	
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q;
	
/////////////////////////////////////////////////////////////////////////////////////
//// config wire declearation

	wire  wisConfigACK_CIC_CICC1;
	wire  wisConfigDone_CIC_CICC1;
	wire  wisConfig_CIC_CICC1;
	wire signed [CONFIG_WIDTH-1:0] wData_Config_Out_CIC_CICC1;
	
	wire  wisConfigACK_MUXF;
	wire  wisConfigDone_MUFX;
	wire  wisConfig_MUXF;
	wire signed [CONFIG_WIDTH-1:0] wData_Config_Out_MUXF;

//////////////////////////////////////////////////////////

	wire  wData_Out_Validi;
	wire  signed [OUTPUT_WIDTH-1:0] wDatai;
	wire  wData_Out_Validq;
	wire  signed [OUTPUT_WIDTH-1:0] wDataq;
	
///////////////////////////////////////////////////////////////////////////
////  CIC1 
 	parameter DDC_FILTER_INPUT_WIDTH  	= 16; 
	parameter DDC_FILTER_OUTPUT_WIDTH   = 24;
	parameter DDC_FILTER_CONFIG_WIDTH   = 32;
	parameter CIC_MAX_DCEF 				=  16;
	parameter CIC_MAX_DIFFD  			=  1;
	parameter CIC_MAX_NUMSECS			=  16;
	
	parameter CIC1_MAX_CHANNELS			=  1;
	parameter CICC1_MAX_CHANNELS		=  1;

	wire wisConfig_DDCCF_I;
	wire wisConfigACK_DDCCF_I;
	//// MODULE_CIC_CICC I  
	MODULE_CIC_CICC #(
			.INPUT_WIDTH(DDC_FILTER_INPUT_WIDTH),
			.OUTPUT_WIDTH(DDC_FILTER_OUTPUT_WIDTH),
			.CONFIG_WIDTH(DDC_FILTER_CONFIG_WIDTH),
			.CIC_MIDDLE_WIDTH(CIC_MIDDLE_WIDTH),
			.CIC_MAX_DCEF(CIC_MAX_DCEF),
			.CIC_MAX_DIFFD(CIC_MAX_DIFFD),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC1_MAX_CHANNELS),
			.CICC_MAX_CHANNELS(CICC1_MAX_CHANNELS),
			.CLK_DELAY_PERIOD(0)
		) ddc_channel_filter_i_inst(
		// parameter INPUT_WIDTH   = 16;
		// parameter OUTPUT_WIDTH  = 24;
		// parameter CONFIG_WIDTH 	= 32;
		// parameter CIC_MIDDLE_WIDTH  =  37;
		// parameter CIC_MAX_DCEF 		=  16;
		// parameter CIC_MAX_DIFFD  	=  1;
		// parameter CIC_MAX_NUMSECS	=  16;
		
		// parameter CIC_MAX_CHANNELS	=  2;
		// parameter CICC_MAX_CHANNELS	=  2;
		// parameter CLK_DELAY_PERIOD   =  0;
			
			.CLK(CLK), .nRST(nRST),
			.isConfig(wisConfig_CIC_CICC1),
			.Data_Config_In(wData_Config_Out_CIC_CICC1),
			.isConfigACK(wisConfigACK_CIC_CICC1),
			.isConfigDone(wisConfigDone_CIC_CICC1),
			
			.Data_In(Data_In_I),
			.Data_In_Valid(Data_In_I_Valid),
			.Data_In_ChIdx(0),
			.Data_Out(wDatai),
			.Data_Out_Valid(wData_Out_Validi),
			.Data_Out_ChIdx()
		);
		
		
	wire wisConfig_DDCCF_Q;
	wire wisConfigACK_DDCCF_Q;
	//// MODULE_CIC_CICC Q
	MODULE_CIC_CICC #(
			.INPUT_WIDTH(DDC_FILTER_INPUT_WIDTH),
			.OUTPUT_WIDTH(DDC_FILTER_OUTPUT_WIDTH),
			.CONFIG_WIDTH(DDC_FILTER_CONFIG_WIDTH),
			.CIC_MIDDLE_WIDTH(CIC_MIDDLE_WIDTH),
			.CIC_MAX_DCEF(CIC_MAX_DCEF),
			.CIC_MAX_DIFFD(CIC_MAX_DIFFD),
			.CIC_MAX_NUMSECS(CIC_MAX_NUMSECS),
			.CIC_MAX_CHANNELS(CIC1_MAX_CHANNELS),
			.CICC_MAX_CHANNELS(CICC1_MAX_CHANNELS),
			.CLK_DELAY_PERIOD(0)
		) ddc_channel_filter_q_inst(
		// parameter INPUT_WIDTH    = 16;
		// parameter OUTPUT_WIDTH   = 24;
		// parameter CONFIG_WIDTH 	= 32;
		// parameter CIC_MIDDLE_WIDTH  =  37;
		// parameter CIC_MAX_DCEF 		=  16;
		// parameter CIC_MAX_DIFFD  	=  1;
		// parameter CIC_MAX_NUMSECS	=  16;
		
		// parameter CIC_MAX_CHANNELS	=  2;
		// parameter CICC_MAX_CHANNELS	=  2;
		// parameter CLK_DELAY_PERIOD   =  0;
		
			.CLK(CLK), .nRST(nRST),
			.isConfig(wisConfig_CIC_CICC1),
			.Data_Config_In(wData_Config_Out_CIC_CICC1),
			.isConfigACK(wisConfigACK_CIC_CICC1),
			.isConfigDone(wisConfigDone_CIC_CICC1),
			
			.Data_In(Data_In_Q),
			.Data_In_Valid(Data_In_Q_Valid),
			.Data_In_ChIdx(0),
			.Data_Out(wDataq),
			.Data_Out_Valid(wData_Out_Validq),
			.Data_Out_ChIdx()
		);
		
	// assign isConfigACK  = wisConfigACK_DDCCF_I & wisConfigACK_DDCCF_Q;
	// assign isConfigDone = wisConfigDone_DDCCF_I & wisConfigDone_DDCCF_Q;

	wire  wData_Out_Valid1;
	wire  [3:0] wData_ChIdx1;
	wire  signed [OUTPUT_WIDTH-1:0] wData1;
	wire  wData_Out_Valid2;
	wire  [3:0] wData_ChIdx2;
	wire  signed [OUTPUT_WIDTH-1:0] wData2;
//////////////////////////////////////////////////////////////////////////////////////////////
//// MUX PS
	parameter MUX_PS_DATA_OUT_CLK_NUM = 4;
	
	MODULE_MUX_PS #( 
			.INPUT_WIDTH(OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.DATA_OUT_CLK_NUM(MUX_PS_DATA_OUT_CLK_NUM)
		) module_mux_ps_inst (
		// parameter INPUT_WIDTH   	  = 24;
		// parameter OUTPUT_WIDTH  	  = 24;
		// parameter DATA_OUT_CLK_NUM = 8;
		
		.CLK(CLK), .nRST(nRST),
		
		.Data_In_I({{8'd0},{wDatai}}),
		.Data_In_I_Valid(wData_Out_Validi),
		.Data_In_Q({{8'd0},{wDataq}}),
		.Data_In_Q_Valid(wData_Out_Validq),
		
		.Data_Out(wData1),
		.Data_Out_Valid(wData_Out_Valid1),
		.Data_Out_ChIdx(wData_ChIdx1)
	);

//////////////////////////////////////////////////////////////////////////////////////////////
//// MUX FUN
 	parameter CIC2_MAX_DCEF 		=  16;
	parameter CIC2_MAX_CHANNELS		=  2;
	
	MODULE_DDC_CHANNEL_MUX_FILTERS #(  
			.CIC_MIDDLE_WIDTH(CIC_MIDDLE_WIDTH),
			.CIC_MAX_DCEF(CIC2_MAX_DCEF),
			.CIC_MAX_CHANNELS(CIC2_MAX_CHANNELS)
		) module_ddc_channel_mux_fun_inst (
		// parameter INPUT_WIDTH   			=  24;
		// parameter OUTPUT_WIDTH  			=  24;
		// parameter COEF_WIDTH 			=  32;
		// parameter CIC_MIDDLE_WIDTH    	=  37;
		// parameter CIC_MAX_CHANNELS		=  2;
		// parameter CIC_CONFIG_DATA_WIDTH  =  24;
		// parameter CIC_MAX_DCEF 			=  16;
		// parameter CIC_MAX_DIFFD  		=  1;
		// parameter CIC_MAX_NUMSECS		=  16;
		// parameter CIC2_MAX_CHANNELS		=  2;
		// parameter CICC2_MAX_CHANNELS		=  2;
		
		.CLK(CLK), .nRST(nRST),
		
		.isConfig(wisConfig_MUXF),
		.isConfigACK(wisConfigACK_MUXF),
		.isConfigDone(wisConfigDone_MUFX),
		.Data_Config_In(wData_Config_Out_MUXF),
		
		.Data_In(wData1),
		.Data_In_Valid(wData_Out_Valid1),
		.Data_In_ChIdx(wData_ChIdx1),
		.Data_Out(wData2),
		.Data_Out_Valid(wData_Out_Valid2),
		.Data_Out_ChIdx(wData_ChIdx2)
	); 
//////////////////////////////////////////////////////////////////////////////////////////////
//// MUX SP	
	parameter MUX_SP_DATA_OUT_CLK_NUM = 32;
	
	MODULE_MUX_SP #( 
			.INPUT_WIDTH(OUTPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.DATA_OUT_CLK_NUM(MUX_SP_DATA_OUT_CLK_NUM)
		) module_mux_sp_inst (
		// parameter INPUT_WIDTH   	  = 24;
		// parameter OUTPUT_WIDTH  	  = 24;
		// parameter DATA_OUT_CLK_NUM = 8;
		
		.CLK(CLK), .nRST(nRST),

		.Data_In(wData2),
		.Data_In_Valid(wData_Out_Valid2),
		.Data_In_ChIdx(wData_ChIdx2),
		
		.Data_Out_I(Data_Out_I),
		.Data_Out_I_Valid(Data_Out_I_Valid),
		.Data_Out_Q(Data_Out_Q),
		.Data_Out_Q_Valid(Data_Out_Q_Valid)
	);

	
/////////////////////////////////////////////////////////////////////////////////////////////////
//// 
	DDC_CHANNEL_FILTERS_CTL #( 
			.CONFIG_WIDTH(CONFIG_WIDTH)
			//.CIC_CONFIG_DATA_NUM(CIC_CONFIG_DATA_NUM),
			//.CICC_CONFIG_DATA_NUM(CICC_CONFIG_DATA_NUM)
		) ddc_channel_filters_ctl_inst (
		// parameter CONFIG_WIDTH 		     = 32;	
		// parameter CIC1_CONFIG_DATA_NUM 	 = 3;
		// parameter CICC1_CONFIG_DATA_NUM   = 259;
		// parameter CIC2_CONFIG_DATA_NUM 	 = 3;
		// parameter CICC2_CONFIG_DATA_NUM   = 259;
		// parameter MHBF_CONFIG_DATA_NUM 	 = 176; // 1 + 5*(33 + 2);
		// parameter DFIR_CONFIG_DATA_NUM 	 = 516; // 1 + 513 + 2;
	
		.CLK(CLK), .nRST(nRST),
		
		.isConfig(isConfig),
		.Data_Config_In(Data_Config_In),
		.isConfigACK(isConfigACK),
		.isConfigDone(isConfigDone),
		
		.isConfig_CIC_CICC(wisConfig_CIC_CICC1),
		.Data_Config_Out_CIC_CICC(wData_Config_Out_CIC_CICC1),
		.isConfigACK_CIC_CICC(wisConfigACK_CIC_CICC1),
		.isConfigDone_CIC_CICC(wisConfigDone_CIC_CICC1),
		
		.isConfig_MUXF(wisConfig_MUXF),
		.Data_Config_Out_MUXF(wData_Config_Out_MUXF),
		.isConfigACK_MUXF(wisConfigACK_MUXF),
		.isConfigDone_MUFX(wisConfigDone_MUFX)
	);

endmodule
