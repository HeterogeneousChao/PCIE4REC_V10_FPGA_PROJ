set_global_assignment -entity "RESET_CONTROLLER_IP" -library "lib_RESET_CONTROLLER_IP" -name IP_TOOL_NAME "altera_xcvr_reset_control"
set_global_assignment -entity "RESET_CONTROLLER_IP" -library "lib_RESET_CONTROLLER_IP" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "RESET_CONTROLLER_IP" -library "lib_RESET_CONTROLLER_IP" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name SPD_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP.spd"]

set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/RESET_CONTROLLER_IP.v"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/altera_xcvr_functions.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/mentor/altera_xcvr_functions.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/mentor/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/altera_xcvr_reset_control.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/alt_xcvr_reset_counter.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/mentor/altera_xcvr_reset_control.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/mentor/alt_xcvr_reset_counter.sv"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/plain_files.txt"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/mentor_files.txt"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/cadence_files.txt"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/synopsys_files.txt"]
set_global_assignment -library "lib_RESET_CONTROLLER_IP" -name MISC_FILE [file join $::quartus(sip_path) "RESET_CONTROLLER_IP_sim/altera_xcvr_reset_control/aldec_files.txt"]
