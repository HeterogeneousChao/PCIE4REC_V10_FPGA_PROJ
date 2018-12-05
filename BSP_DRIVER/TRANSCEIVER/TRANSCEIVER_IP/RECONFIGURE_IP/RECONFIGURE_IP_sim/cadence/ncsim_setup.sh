
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.0 145 win32 2017.12.06.21:06:14

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="RECONFIGURE_IP"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="E:/altera/15.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/RECONFIGURE_IP/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_xcvr_functions.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_h.sv"                                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_resync.sv"                                                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"                                                       -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"                                                         -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_cif.sv"                                                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_uif.sv"                                                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv"                                               -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv"                                            -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv"                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"                                                    -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv"                                              -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv"                                          -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv"                                                      -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv"                                                      -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_arbiter_acq.sv"                                                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"                                                   -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv"                                                       -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv"                                                         -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv"                                                        -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv"                                                        -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_lif.sv"                                                            -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv"                                                    -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"                                                          -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_m2s.sv"                                                              -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_wait_generate.v"                                                       -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"                                                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"                                               -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv"                                               -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv"                                                -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu.v"                                                      -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu.v"                                         -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_test_bench.v"                              -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0.v"                                    -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_irq_mapper.sv"                                          -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_reset_controller.v"                                                    -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_reset_synchronizer.v"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_master_translator.sv"                                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_slave_translator.sv"                                            -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_master_agent.sv"                                                -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_slave_agent.sv"                                                 -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_burst_uncompressor.sv"                                          -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_avalon_sc_fifo.v"                                                      -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router.sv"                            -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_001.sv"                        -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_002.sv"                        -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_003.sv"                        -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux.sv"                         -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux_001.sv"                     -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_arbitrator.sv"                                                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux.sv"                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux_001.sv"                       -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux.sv"                           -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux_001.sv"                       -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter.v"                  -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work RECONFIGURE_IP -cdslib ./cds_libs/RECONFIGURE_IP.cds.lib
  ncvlog     "$QSYS_SIMDIR/RECONFIGURE_IP.v"                                                                                                                                             
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
