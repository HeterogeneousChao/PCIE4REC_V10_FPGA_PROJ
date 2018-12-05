///////////////////////////////////////////////////////////////////////////////////
////  DDC SIGNAL CHANNEL MODULE
////					MODULE_DDC_SINGLE_CHANNEL
////         							ZHAOCHAO
////									 	20180418
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_DDC_1CHANNEL(
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	Data_In,
	Data_Out_I,
	Data_Out_I_Valid,
	Data_Out_Q,
	Data_Out_Q_Valid,
	
	Data_In_Valid
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
	
	input  Data_In_Valid;
	output Data_Out_I_Valid;
	output Data_Out_Q_Valid;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q;
	
	
	///////////////////////////////////////////////////////////////////////////
	//// QUAD_MIXER  	
	parameter MIXER_OUTPUT_WIDTH  	   = 16;
	parameter INPUT_DATA_SHIFT_NUM 	   = 1;
	parameter QMIXER_CONFIG_DATA_NUM   = 2;
	parameter NCO_CONFIT_WIDTH  	   = 32;
	parameter NCO_DEFAULT_INC_PHA_MOD  = 429496728;		// default nco fre 10MHz
	
	wire wisConfig_MIXER;
	wire wisConfigACK_MIXER;
	wire wisConfigDone_MIXER;
	wire wData_Out_Valid;
	wire signed [CONFIG_WIDTH-1:0] 	     wData_Config_In_MIXER;
	wire signed [MIXER_OUTPUT_WIDTH-1:0] wData_MixerOut_I;
	wire signed [MIXER_OUTPUT_WIDTH-1:0] wData_MixerOut_Q;
	
	wire signed [MIXER_OUTPUT_WIDTH-1:0] NCO_Data_Out_I;
	wire signed [MIXER_OUTPUT_WIDTH-1:0] NCO_Data_Out_Q;
	
	parameter NCO_ACCUMULATE_WIDTH 	  = 32;
	parameter NCO_PHA_MOD_WIDTH    	  = 32;
	parameter NCO_FRE_MOD_WIDTH		  = 32;
	parameter NCO_CONFIT_CTL_WIDTH 	  = 4;
	
	wire   [NCO_CONFIT_CTL_WIDTH-1:0] configCtl;
	wire   [NCO_FRE_MOD_WIDTH-1:0]    configFreqMod;
	wire   [NCO_PHA_MOD_WIDTH-1:0]    configPhasMod;
	wire   [NCO_ACCUMULATE_WIDTH-1:0] configCurPhaInc;
	
	
	MODULE_QUAD_MIXER #(
			.INPUT_WIDTH(INPUT_WIDTH),
			.OUTPUT_WIDTH(MIXER_OUTPUT_WIDTH),
			.INPUT_DATA_SHIFT_NUM(INPUT_DATA_SHIFT_NUM),
			//.MULT_OUTPUT_WIDTH(),
			.NCO_CONFIT_WIDTH(CONFIG_WIDTH),
			//.NCO_FRE_MOD_WIDTH(),
			//.NCO_PHA_MOD_WIDTH(),
			//.NCO_CONFIT_CTL_WIDTH(),
			//.NCO_OUTPUT_WIDTH(),
			//.NCO_ACCUMULATE_WIDTH(),
			//.NCO_ROM_ADDR_WIDTH(),
			//.NCO_ROM_DATA_WIDTH(),
			.NCO_DEFAULT_INC_PHA_MOD(NCO_DEFAULT_INC_PHA_MOD)
		) module_quad_mixer_inst(
		// parameter INPUT_WIDTH   	  =  16;
		// parameter OUTPUT_WIDTH  	  =  16;
		// parameter INPUT_DATA_SHIFT_NUM = 3;
		// parameter MULT_OUTPUT_WIDTH  =  32;
		// // NCO PARAMETERS
		// parameter NCO_CONFIT_WIDTH  	  	  = 32;
		// parameter NCO_FRE_MOD_WIDTH		  = 32;
		// parameter NCO_PHA_MOD_WIDTH    	  = 32;
		// parameter NCO_CONFIT_CTL_WIDTH 	  = 4;
		// parameter NCO_OUTPUT_WIDTH     	  = 16;
		// parameter NCO_ACCUMULATE_WIDTH 	  = 32;
		// parameter NCO_ROM_ADDR_WIDTH   	  = 16;
		// parameter NCO_ROM_DATA_WIDTH   	  = 16;
		// parameter NCO_DEFAULT_INC_PHA_MOD = 429496728;		// 10MHz
			.CLK(CLK), .nRST(nRST),
			.isConfig(wisConfig_MIXER),
			.Data_Config_In(wData_Config_In_MIXER),
			.isConfigACK(wisConfigACK_MIXER),
			.isConfigDone(wisConfigDone_MIXER),
			
			.Data_In(Data_In),
			.Data_Out_I(wData_MixerOut_I),
			.Data_Out_Q(wData_MixerOut_Q),
			
			.configFreqMod(configFreqMod),
			.configPhasMod(configPhasMod),
			.configCurPhaInc(configCurPhaInc),
			.configCtl(configCtl),
			
			.NCO_Data_Out_I(NCO_Data_Out_I),
			.NCO_Data_Out_Q(NCO_Data_Out_Q),
			.Data_In_Valid(Data_In_Valid),
			.Data_Out_Valid(wData_Out_Valid)
		);
	
	///////////////////////////////////////////////////////////////////////////
	//// DDC_CHANNEL FUN
	wire wisConfig_DDCCF;
	wire wisConfigACK_DDCCF;
	wire wisConfigDone_DDCCF;
	wire signed [CONFIG_WIDTH-1:0] wData_Config_In_DDCCF;
	DDC_CHANNEL_FILTERS #(
			.INPUT_WIDTH(INPUT_WIDTH),
			.OUTPUT_WIDTH(OUTPUT_WIDTH),
			.CONFIG_WIDTH(CONFIG_WIDTH)
			//.CIC_MIDDLE_WIDTH(CIC1_MIDDLE_WIDTH)
		) module_ddc_channel_fun_inst(
		// parameter INPUT_WIDTH   = 16;
		// parameter OUTPUT_WIDTH  = 24;
		// parameter CONFIG_WIDTH 	= 32;
		// parameter CIC_MIDDLE_WIDTH  =  80;
			.CLK(CLK), .nRST(nRST),
			.isConfig(wisConfig_DDCCF),
			.Data_Config_In(wData_Config_In_DDCCF),
			.isConfigACK(wisConfigACK_DDCCF),
			.isConfigDone(wisConfigDone_DDCCF),
			
			.Data_In_I(wData_MixerOut_I),
			.Data_In_Q(wData_MixerOut_Q),
			.Data_In_I_Valid(wData_Out_Valid),
			.Data_In_Q_Valid(wData_Out_Valid),

			.Data_Out_I(Data_Out_I),
			.Data_Out_I_Valid(Data_Out_I_Valid),
			.Data_Out_Q(Data_Out_Q),
			.Data_Out_Q_Valid(Data_Out_Q_Valid)
		);
	
		
	///////////////////////////////////////////////////////////////////////////
	//// DDC_CHANNEL CTL 
	parameter CIC1_CONFIG_DATA_NUM 	  = 3;
	parameter CICC1_CONFIG_DATA_NUM   = 259;
	parameter CIC2_CONFIG_DATA_NUM 	  = 3;
	parameter CICC2_CONFIG_DATA_NUM   = 259;
	parameter MHBF_CONFIG_DATA_NUM 	  = 176; // 1 + 5*(33 + 2);
	parameter DFIR_CONFIG_DATA_NUM 	  = 516; // 1 + 513 + 2;
	
	DDC_CHANNEL_CTL # (
			.CONFIG_WIDTH(CONFIG_WIDTH),
			.QMIXER_CONFIG_DATA_NUM(QMIXER_CONFIG_DATA_NUM),
			.CIC1_CONFIG_DATA_NUM(CIC1_CONFIG_DATA_NUM),
			.CICC1_CONFIG_DATA_NUM(CICC1_CONFIG_DATA_NUM),
			.CIC2_CONFIG_DATA_NUM(CIC2_CONFIG_DATA_NUM),
			.CICC2_CONFIG_DATA_NUM(CICC2_CONFIG_DATA_NUM),
			.MHBF_CONFIG_DATA_NUM(MHBF_CONFIG_DATA_NUM),
			.DFIR_CONFIG_DATA_NUM(DFIR_CONFIG_DATA_NUM)
		) ddc_channel_ctl_inst (
		// parameter CONFIG_WIDTH 		     = 32;	
		// parameter QMIXER_CONFIG_DATA_NUM  = 2;
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
			
			.isConfigACK_MIXER(wisConfigACK_MIXER),
			.isConfigDone_MIXER(wisConfigDone_MIXER),
			.isConfig_MIXER(wisConfig_MIXER),
			.Data_Config_Out_MIXER(wData_Config_In_MIXER),
			
			.isConfig_DDCF(wisConfig_DDCCF),
			.Data_Config_Out_DDCF(wData_Config_In_DDCCF),
			.isConfigACK_DDCF(wisConfigACK_DDCCF),
			.isConfigDone_DDCF(wisConfigDone_DDCCF)
		);
	
endmodule
