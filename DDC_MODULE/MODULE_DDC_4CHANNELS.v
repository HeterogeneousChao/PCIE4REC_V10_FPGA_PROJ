/////////////////////////////////////////////////////////////////////////////////////
////  DDC 4 CHANNELS MODULE
////					MODULE_DDC_4CHANNELS
////         							ZHAOCHAO
////									 	20180418
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_DDC_4CHANNELS(
	CLK, nRST,
	
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	Data_In0,
	Data_In0_Valid,
	Data_Out_I0,
	Data_Out_I0_Valid,
	Data_Out_Q0,
	Data_Out_Q0_Valid,
	
	Data_In1,
	Data_In1_Valid,
	Data_Out_I1,
	Data_Out_I1_Valid,
	Data_Out_Q1,
	Data_Out_Q1_Valid,
	
	Data_In2,
	Data_In2_Valid,
	Data_Out_I2,
	Data_Out_I2_Valid,
	Data_Out_Q2,
	Data_Out_Q2_Valid,
	
	Data_In3,
	Data_In3_Valid,
	Data_Out_I3,
	Data_Out_I3_Valid,
	Data_Out_Q3,
	Data_Out_Q3_Valid
);
	
	/// CLK: 100MHz
	/// default Flo: 10MHz	
	parameter INPUT_WIDTH   = 16;
	parameter OUTPUT_WIDTH  = 24;
	parameter CONFIG_WIDTH 	= 32;
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	output isConfigACK;
	output isConfigDone;
	
////// MIXER
	//Data_Config_In[0]: configFreqMod,
	//Data_Config_In[1]: configPhasMod;
////// CIC CICC 1
	//Data_Config_In[2]: CIC_NUMSECS, 
	//Data_Config_In[3]: CIC_DCEF, 
	//Data_Config_In[4]: CIC_SCALE;
	//Data_Config_In[5-FILTER_ORDER+5]: cicc coef, 
	//Data_Config_In[FILTER_ORDER+6]:   cicc ScalVal, 
	//Data_Config_In[FILTER_ORDER+7]:   isCoefSym;
////// CIC CICC 2	
	//Data_Config_In[0]: CIC_NUMSECS, 
	//Data_Config_In[1]: CIC_DCEF, 
	//Data_Config_In[2]: CIC_SCALE;
	//Data_Config_In[3 - CICC_FILTER_ORDER+3]: cicc coef, 
	//Data_Config_In[CICC_FILTER_ORDER+4]:   cicc ScalVal, 
	//Data_Config_In[CICC_FILTER_ORDER+5]:   isCoefSym;
////// MHBF
	//Data_Config_In[CICC_FILTER_ORDER+6]:   mhbf_ctl, 
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5]: hbf coefs, 
////// DFIR
	//Data_Config_In[CICC_FILTER_ORDER+7 - CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5 + 1]: dfir dcef, 
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+1]: dfir coefs,  
	//Data_Config_In[CICC_FILTER_ORDER+(HBF_FILTER_ORDER+3)*5+2 - (*+DFIR_ORDER)]: dfir isCoefSym;
	//Data_Config_In[*+1]:   fir ScalVal;
	input  [CONFIG_WIDTH-1:0] Data_Config_In;
	
	
// channel 0
	input  Data_In0_Valid;
	output Data_Out_I0_Valid;
	output Data_Out_Q0_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In0;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I0;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q0;
// channel 1
	input  Data_In1_Valid;
	output Data_Out_I1_Valid;
	output Data_Out_Q1_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In1;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I1;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q1;
// channel 2
	input  Data_In2_Valid;
	output Data_Out_I2_Valid;
	output Data_Out_Q2_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In2;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I2;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q2;
// channel 3
	input  Data_In3_Valid;
	output Data_Out_I3_Valid;
	output Data_Out_Q3_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In3;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I3;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q3;


//// channel 0
	MODULE_DDC_1CHANNEL #( 
		.INPUT_WIDTH(INPUT_WIDTH),
		.OUTPUT_WIDTH(OUTPUT_WIDTH),
		.CONFIG_WIDTH(CONFIG_WIDTH)
	) module_ddc_channel0_inst(
	/// CLK: 100MHz
	/// default Flo: 10MHz	
	// parameter INPUT_WIDTH   = 16;
	// parameter OUTPUT_WIDTH  = 24;
	// parameter CONFIG_WIDTH 	= 32;
	
		.CLK(CLK), .nRST(nRST),
		.isConfig(isConfig),
		.Data_Config_In(Data_Config_In),
		.isConfigACK(),
		.isConfigDone(),
		
		.Data_In(Data_In0),
		.Data_In_Valid(Data_In0_Valid),
		.Data_Out_I(Data_Out_I0),
		.Data_Out_I_Valid(Data_Out_I0_Valid),
		.Data_Out_Q(Data_Out_Q0),
		.Data_Out_Q_Valid(Data_Out_Q0_Valid)
	);
	
//// channel 1
	MODULE_DDC_1CHANNEL #( 
		.INPUT_WIDTH(INPUT_WIDTH),
		.OUTPUT_WIDTH(OUTPUT_WIDTH),
		.CONFIG_WIDTH(CONFIG_WIDTH)
	) module_ddc_channel1_inst(
	/// CLK: 100MHz
	/// default Flo: 10MHz	
	// parameter INPUT_WIDTH   = 16;
	// parameter OUTPUT_WIDTH  = 24;
	// parameter CONFIG_WIDTH 	= 32;
	
		.CLK(CLK), .nRST(nRST),
		.isConfig(isConfig),
		.Data_Config_In(Data_Config_In),
		.isConfigACK(),
		.isConfigDone(),
		
		.Data_In(Data_In1),
		.Data_In_Valid(Data_In1_Valid),
		.Data_Out_I(Data_Out_I1),
		.Data_Out_I_Valid(Data_Out_I1_Valid),
		.Data_Out_Q(Data_Out_Q1),
		.Data_Out_Q_Valid(Data_Out_Q1_Valid)
	);
	
//// channel 2
	MODULE_DDC_1CHANNEL #( 
		.INPUT_WIDTH(INPUT_WIDTH),
		.OUTPUT_WIDTH(OUTPUT_WIDTH),
		.CONFIG_WIDTH(CONFIG_WIDTH)
	) module_ddc_channel2_inst(
	/// CLK: 100MHz
	/// default Flo: 10MHz	
	// parameter INPUT_WIDTH   = 16;
	// parameter OUTPUT_WIDTH  = 24;
	// parameter CONFIG_WIDTH 	= 32;
	
		.CLK(CLK), .nRST(nRST),
		.isConfig(isConfig),
		.Data_Config_In(Data_Config_In),
		.isConfigACK(),
		.isConfigDone(),
		
		.Data_In(Data_In2),
		.Data_In_Valid(Data_In2_Valid),
		.Data_Out_I(Data_Out_I2),
		.Data_Out_I_Valid(Data_Out_I2_Valid),
		.Data_Out_Q(Data_Out_Q2),
		.Data_Out_Q_Valid(Data_Out_Q2_Valid)
	);
	
//// channel 3
	MODULE_DDC_1CHANNEL #( 
		.INPUT_WIDTH(INPUT_WIDTH),
		.OUTPUT_WIDTH(OUTPUT_WIDTH),
		.CONFIG_WIDTH(CONFIG_WIDTH)
	) module_ddc_channel3_inst(
	/// CLK: 100MHz
	/// default Flo: 10MHz	
	// parameter INPUT_WIDTH   = 16;
	// parameter OUTPUT_WIDTH  = 24;
	// parameter CONFIG_WIDTH 	= 32;
	
		.CLK(CLK), .nRST(nRST),
		.isConfig(isConfig),
		.Data_Config_In(Data_Config_In),
		.isConfigACK(),
		.isConfigDone(),
		
		.Data_In(Data_In3),
		.Data_In_Valid(Data_In3_Valid),
		.Data_Out_I(Data_Out_I3),
		.Data_Out_I_Valid(Data_Out_I3_Valid),
		.Data_Out_Q(Data_Out_Q3),
		.Data_Out_Q_Valid(Data_Out_Q3_Valid)
	);
	
	
endmodule
