
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

# ACDS 15.0 145 win32 2018.11.18.22:41:33

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "DDR2_SIP_DQ16BIT_IP"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "E:/altera/15.0/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_AC_ROM.hex ./
  file copy -force $QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_inst_ROM.hex ./
  file copy -force $QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_sequencer_mem.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
}
ensure_lib                                  ./libraries/s0_seq_debug_translator/         
vmap       s0_seq_debug_translator          ./libraries/s0_seq_debug_translator/         
ensure_lib                                  ./libraries/dmaster_master_translator/       
vmap       dmaster_master_translator        ./libraries/dmaster_master_translator/       
ensure_lib                                  ./libraries/a0/                              
vmap       a0                               ./libraries/a0/                              
ensure_lib                                  ./libraries/ng0/                             
vmap       ng0                              ./libraries/ng0/                             
ensure_lib                                  ./libraries/rst_controller/                  
vmap       rst_controller                   ./libraries/rst_controller/                  
ensure_lib                                  ./libraries/p2b_adapter/                     
vmap       p2b_adapter                      ./libraries/p2b_adapter/                     
ensure_lib                                  ./libraries/b2p_adapter/                     
vmap       b2p_adapter                      ./libraries/b2p_adapter/                     
ensure_lib                                  ./libraries/transacto/                       
vmap       transacto                        ./libraries/transacto/                       
ensure_lib                                  ./libraries/p2b/                             
vmap       p2b                              ./libraries/p2b/                             
ensure_lib                                  ./libraries/b2p/                             
vmap       b2p                              ./libraries/b2p/                             
ensure_lib                                  ./libraries/fifo/                            
vmap       fifo                             ./libraries/fifo/                            
ensure_lib                                  ./libraries/timing_adt/                      
vmap       timing_adt                       ./libraries/timing_adt/                      
ensure_lib                                  ./libraries/jtag_phy_embedded_in_jtag_master/
vmap       jtag_phy_embedded_in_jtag_master ./libraries/jtag_phy_embedded_in_jtag_master/
ensure_lib                                  ./libraries/mm_interconnect_0/               
vmap       mm_interconnect_0                ./libraries/mm_interconnect_0/               
ensure_lib                                  ./libraries/dll0/                            
vmap       dll0                             ./libraries/dll0/                            
ensure_lib                                  ./libraries/oct0/                            
vmap       oct0                             ./libraries/oct0/                            
ensure_lib                                  ./libraries/c0/                              
vmap       c0                               ./libraries/c0/                              
ensure_lib                                  ./libraries/dmaster/                         
vmap       dmaster                          ./libraries/dmaster/                         
ensure_lib                                  ./libraries/s0/                              
vmap       s0                               ./libraries/s0/                              
ensure_lib                                  ./libraries/m0/                              
vmap       m0                               ./libraries/m0/                              
ensure_lib                                  ./libraries/p0/                              
vmap       p0                               ./libraries/p0/                              
ensure_lib                                  ./libraries/pll0/                            
vmap       pll0                             ./libraries/pll0/                            
ensure_lib                                  ./libraries/DDR2_SIP_DQ16BIT_IP/             
vmap       DDR2_SIP_DQ16BIT_IP              ./libraries/DDR2_SIP_DQ16BIT_IP/             

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_slave_translator.sv"                                             -work s0_seq_debug_translator         
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_master_translator.sv"                                            -work dmaster_master_translator       
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_mm_st_converter.v"                                                -work a0                              
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_addr_cmd.v"                                                       -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_addr_cmd_wrap.v"                                                  -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ddr2_odt_gen.v"                                                   -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ddr3_odt_gen.v"                                                   -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_lpddr2_addr_cmd.v"                                                -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_odt_gen.v"                                                        -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_rdwr_data_tmg.v"                                                  -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_arbiter.v"                                                        -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_burst_gen.v"                                                      -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_cmd_gen.v"                                                        -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_csr.v"                                                            -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_buffer.v"                                                         -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_buffer_manager.v"                                                 -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_burst_tracking.v"                                                 -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_dataid_manager.v"                                                 -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_fifo.v"                                                           -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_list.v"                                                           -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_rdata_path.v"                                                     -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_wdata_path.v"                                                     -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_decoder.v"                                                    -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_decoder_32_syn.v"                                             -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_decoder_64_syn.v"                                             -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_encoder.v"                                                    -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_encoder_32_syn.v"                                             -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_encoder_64_syn.v"                                             -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_ecc_encoder_decoder_wrapper.v"                                    -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_axi_st_converter.v"                                               -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_input_if.v"                                                       -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_rank_timer.v"                                                     -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_sideband.v"                                                       -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_tbp.v"                                                            -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_timing_param.v"                                                   -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_controller.v"                                                     -work ng0                             
  vlog     "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_ddrx_controller_st_top.v"                                              -work ng0                             
  vlog -sv "+incdir+$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/" "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/alt_mem_if_nextgen_ddr2_controller_core.sv"                                    -work ng0                             
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_reset_controller.v"                                                     -work rst_controller                  
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_reset_synchronizer.v"                                                   -work rst_controller                  
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_dmaster_p2b_adapter.sv"                                    -work p2b_adapter                     
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_dmaster_b2p_adapter.sv"                                    -work b2p_adapter                     
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_packets_to_master.v"                                             -work transacto                       
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_packets_to_bytes.v"                                           -work p2b                             
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_bytes_to_packets.v"                                           -work b2p                             
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_sc_fifo.v"                                                       -work fifo                            
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_dmaster_timing_adt.sv"                                     -work timing_adt                      
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_jtag_interface.v"                                             -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_jtag_dc_streaming.v"                                                    -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_jtag_sld_node.v"                                                        -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_jtag_streaming.v"                                                       -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_clock_crosser.v"                                              -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_pipeline_base.v"                                              -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_idle_remover.v"                                               -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_idle_inserter.v"                                              -work jtag_phy_embedded_in_jtag_master
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_st_pipeline_stage.sv"                                            -work jtag_phy_embedded_in_jtag_master
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_mm_interconnect_0.v"                                       -work mm_interconnect_0               
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_dll_cyclonev.sv"                                                 -work dll0                            
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_oct_cyclonev.sv"                                                 -work oct0                            
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_c0.v"                                                      -work c0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_dmaster.v"                                                 -work dmaster                         
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0.v"                                                      -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_avalon_mm_bridge.v"                                                     -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                                 -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"                      -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_mem_if_sequencer_rst.sv"                                                -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_arbitrator.sv"                                                   -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_burst_uncompressor.sv"                                           -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_master_agent.sv"                                                 -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_reorder_memory.sv"                                               -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_slave_agent.sv"                                                  -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altera_merlin_traffic_limiter.sv"                                              -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_irq_mapper.sv"                                          -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0.v"                                    -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_avalon_st_adapter.v"                  -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_demux.sv"                         -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_demux_001.sv"                     -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_demux_002.sv"                     -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_mux.sv"                           -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_mux_003.sv"                       -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_cmd_mux_005.sv"                       -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router.sv"                            -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router_001.sv"                        -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router_002.sv"                        -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router_003.sv"                        -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router_006.sv"                        -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_router_008.sv"                        -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_rsp_demux_003.sv"                     -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_rsp_demux_005.sv"                     -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_rsp_mux.sv"                           -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_rsp_mux_001.sv"                       -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_s0_mm_interconnect_0_rsp_mux_002.sv"                       -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_ac_ROM_no_ifdef_params.v"                                           -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_ac_ROM_reg.v"                                                       -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_bitcheck.v"                                                         -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_core.sv"                                                            -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_datamux.v"                                                          -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_data_broadcast.v"                                                   -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_data_decoder.v"                                                     -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_ddr2.v"                                                             -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_di_buffer.v"                                                        -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_di_buffer_wrap.v"                                                   -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_dm_decoder.v"                                                       -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_generic.sv"                                                         -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_inst_ROM_no_ifdef_params.v"                                         -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_inst_ROM_reg.v"                                                     -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_jumplogic.v"                                                        -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_lfsr12.v"                                                           -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_lfsr36.v"                                                           -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_lfsr72.v"                                                           -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_pattern_fifo.v"                                                     -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_ram.v"                                                              -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_ram_csr.v"                                                          -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_read_datapath.v"                                                    -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/rw_manager_write_decoder.v"                                                    -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_data_mgr.sv"                                                         -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_phy_mgr.sv"                                                          -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_reg_file.sv"                                                         -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_acv_phase_decode.v"                                              -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_acv_wrapper.sv"                                                  -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_mgr.sv"                                                          -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_reg_file.v"                                                      -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_siii_phase_decode.v"                                             -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_siii_wrapper.sv"                                                 -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_sv_phase_decode.v"                                               -work s0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/sequencer_scc_sv_wrapper.sv"                                                   -work s0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/afi_mux_ddrx.v"                                                                -work m0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_clock_pair_generator.v"                                 -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_read_valid_selector.v"                                  -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_addr_cmd_datapath.v"                                    -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_reset.v"                                                -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_acv_ldc.v"                                              -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_memphy.sv"                                              -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_reset_sync.v"                                           -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_new_io_pads.v"                                          -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_fr_cycle_shifter.v"                                     -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_fr_cycle_extender.v"                                    -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_read_datapath.sv"                                       -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_write_datapath.v"                                       -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_simple_ddio_out.sv"                                     -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_phy_csr.sv"                                             -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_iss_probe.v"                                            -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_addr_cmd_pads.v"                                        -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_flop_mem.v"                                             -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0.sv"                                                     -work p0                              
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_p0_altdqdqs.v"                                             -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/altdq_dqs2_acv_cyclonev.sv"                                                    -work p0                              
  vlog -sv                                             "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_pll0.sv"                                                   -work pll0                            
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP/DDR2_SIP_DQ16BIT_IP_0002.v"                                                    -work DDR2_SIP_DQ16BIT_IP             
  vlog                                                 "$QSYS_SIMDIR/DDR2_SIP_DQ16BIT_IP.v"                                                                                                                   
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L s0_seq_debug_translator -L dmaster_master_translator -L a0 -L ng0 -L rst_controller -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L mm_interconnect_0 -L dll0 -L oct0 -L c0 -L dmaster -L s0 -L m0 -L p0 -L pll0 -L DDR2_SIP_DQ16BIT_IP -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L s0_seq_debug_translator -L dmaster_master_translator -L a0 -L ng0 -L rst_controller -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L mm_interconnect_0 -L dll0 -L oct0 -L c0 -L dmaster -L s0 -L m0 -L p0 -L pll0 -L DDR2_SIP_DQ16BIT_IP -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
