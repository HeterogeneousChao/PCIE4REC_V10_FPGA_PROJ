set_global_assignment -entity "AD_CLK_OUTPUT_PLL_IP" -library "lib_AD_CLK_OUTPUT_PLL_IP" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "AD_CLK_OUTPUT_PLL_IP" -library "lib_AD_CLK_OUTPUT_PLL_IP" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "AD_CLK_OUTPUT_PLL_IP" -library "lib_AD_CLK_OUTPUT_PLL_IP" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_AD_CLK_OUTPUT_PLL_IP" -name SPD_FILE [file join $::quartus(sip_path) "AD_CLK_OUTPUT_PLL_IP.spd"]

set_global_assignment -library "lib_AD_CLK_OUTPUT_PLL_IP" -name MISC_FILE [file join $::quartus(sip_path) "AD_CLK_OUTPUT_PLL_IP_sim/AD_CLK_OUTPUT_PLL_IP.vo"]
