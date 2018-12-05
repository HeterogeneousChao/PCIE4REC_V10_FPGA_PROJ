
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
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="RECONFIGURE_IP"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="E:/altera/15.0/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
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
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_xcvr_functions.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_h.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_cif.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_uif.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_arbiter_acq.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xrbasic_lif.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_arbiter.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_m2s.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_wait_generate.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_test_bench.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_irq_mapper.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_reset_controller.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_001.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_003.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux_001.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux_001.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux_001.sv \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/RECONFIGURE_IP.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
