set_global_assignment -entity "ALTCLKCTRL_IP" -library "lib_ALTCLKCTRL_IP" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "ALTCLKCTRL_IP" -library "lib_ALTCLKCTRL_IP" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "ALTCLKCTRL_IP" -library "lib_ALTCLKCTRL_IP" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_ALTCLKCTRL_IP" -name SPD_FILE [file join $::quartus(sip_path) "../ALTCLKCTRL_IP.spd"]
set_global_assignment -library "lib_ALTCLKCTRL_IP" -name MISC_FILE [file join $::quartus(sip_path) "../../ALTCLKCTRL_IP.qsys"]

set_global_assignment -library "lib_ALTCLKCTRL_IP" -name MISC_FILE [file join $::quartus(sip_path) "ALTCLKCTRL_IP.v"]
set_global_assignment -library "lib_ALTCLKCTRL_IP" -name MISC_FILE [file join $::quartus(sip_path) "submodules/ALTCLKCTRL_IP_altclkctrl_0.v"]
