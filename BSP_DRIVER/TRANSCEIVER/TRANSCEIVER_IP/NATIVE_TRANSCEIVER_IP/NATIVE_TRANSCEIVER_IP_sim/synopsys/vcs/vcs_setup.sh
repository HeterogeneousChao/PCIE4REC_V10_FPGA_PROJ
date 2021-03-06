
# (C) 2001-2018 Altera Corporation. All rights reserved.
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

# ACDS 15.0 145 win32 2018.07.16.04:09:41

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="NATIVE_TRANSCEIVER_IP"
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
  $QSYS_SIMDIR/altera_xcvr_native_cv/altera_xcvr_functions.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/sv_reconfig_bundle_to_xcvr.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/sv_reconfig_bundle_to_ip.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/sv_reconfig_bundle_merger.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_h.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_avmm_csr.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_tx_pma_ch.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_tx_pma.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_rx_pma.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_pma.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_pcs_ch.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_pcs.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_avmm.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_native.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_plls.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_xcvr_data_adapter.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_reconfig_bundle_to_basic.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_reconfig_bundle_to_xcvr.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_8g_rx_pcs_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_8g_tx_pcs_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_common_pcs_pma_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_common_pld_pcs_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_pipe_gen1_2_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_rx_pcs_pma_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_rx_pld_pcs_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_tx_pcs_pma_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/av_hssi_tx_pld_pcs_interface_rbc.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_reset_ctrl_lego.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_reset_ctrl_tgx_cdrauto.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_csr_common_h.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_csr_common.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g_h.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_csr_selector.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/alt_xcvr_mgmt2dec.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/altera_wait_generate.v \
  $QSYS_SIMDIR/altera_xcvr_native_cv/altera_xcvr_native_av_functions_h.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/altera_xcvr_native_av.sv \
  $QSYS_SIMDIR/altera_xcvr_native_cv/altera_xcvr_data_adapter_av.sv \
  $QSYS_SIMDIR/NATIVE_TRANSCEIVER_IP.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
