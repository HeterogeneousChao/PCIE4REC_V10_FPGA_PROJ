 ////////////////////////////////////////////////////////////////////////////////////////////////
////   BSP_SDK_DEF.v
////                                                        
////   		BSP MODULE SELECT
/////////////////////////////////////////////////////////////////////////
////  	Device:  5CGXFC9
//// 		SCH-ver: SHC-20180714
////                  				ZHAOCHAO
////                   					 2018-07-14
/////////////////////////////////////////////////////////////////////////
////
////!!! comment the unused item instead of change to 0; 

//// LEDS
`define MODULE_LEDS_ENABLE		 	1 	 

//// GPIOS
`define MODULE_GPIO_ENABLE		 	1

//// IDC IN
`define MODULE_IDC_IN_ENABLE		1

//// BOARD CLK_IN
`define MODULE_BCLK_IN_ENABLE		1

//// EXTERN CLK_IN
`define MODULE_ECLK_IN_ENABLE		1

//// RF CHANNEL A
`define MODULE_RF_CHA_ENABLE 		1

//// RF CHANNEL B
`define MODULE_RF_CHB_ENABLE 		1

//// RF CHANNEL C
`define MODULE_RF_CHC_ENABLE 		1

//// RF CHANNEL D
`define MODULE_RF_CHD_ENABLE 		1

//// ADC9653
`define MODULE_AD9653_ENABLE 		1

///  DDR2
`define MODULE_DOUBLE_DDR2 	 		1

//`define MODULE_SINGLE_DDR2   		1
//`ifdef MODULE_SINGLE_DDR2
	// DDR2_A
	//`define MODULE_DDR2_A_ENABLE		1
	// DDR2_B
	//`define MODULE_DDR2_B_ENABLE		1
//`endif

//// SFP A
`define MODULE_SFP_A_ENABLE			1
	
//// SFP B
`define MODULE_SFP_B_ENABLE			1

//// PEX8311
`define MODULE_PEX8311_ENABLE		1

