-- Copyright (C) 1991-2014 Altera Corporation
-- This simulation model contains highly confidential and
-- proprietary information of Altera and is being provided
-- in accordance with and subject to the protections of the
-- applicable Altera Program License Subscription Agreement
-- which governs its use and disclosure. Your use of Altera
-- Corporation's design tools, logic functions and other
-- software and tools, and its AMPP partner logic functions,
-- and any output files any of the foregoing (including device
-- programming or simulation files), and any associated
-- documentation or information are expressly subject to the
-- terms and conditions of the Altera Program License Subscription
-- Agreement, Altera MegaCore Function License Agreement, or other
-- applicable license agreement, including, without limitation,
-- that your use is for the sole purpose of simulating designs for
-- use exclusively in logic devices manufactured by Altera and sold
-- by Altera or its authorized distributors. Please refer to the
-- applicable agreement for further details. Altera products and
-- services are protected under numerous U.S. and foreign patents,
-- maskwork rights, copyrights and other intellectual property laws.
-- Altera assumes no responsibility or liability arising out of the
-- application or use of this simulation model.
-- Quartus II 13.1.4 Build 182 03/12/2014
library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_atx_pll	is
	generic	(
		silicon_rev	:	string	:=	"reve";
		enabled_for_reconfig	:	string	:=	"false";
		sim_use_fast_model	:	string	:=	"true";
		ac_cap	:	string	:=	"disable_ac_cap";
		fbclk_sel	:	string	:=	"vcoclk";
		lc_cmu_pdb	:	string	:=	"false";
		lc_div33_pdb	:	string	:=	"false";
		sel_buf14g	:	string	:=	"disable_buf14g";
		sel_buf8g	:	string	:=	"disable_buf8g";
		vco_over_range_ref	:	string	:=	"vco_over_range_off";
		vco_under_range_ref	:	string	:=	"vco_under_range_off";
		avmm_group_channel_index	:	integer	:=	0;
		output_clock_frequency	:	string	:=	"";
		reference_clock_frequency	:	string	:=	"";
		use_default_base_address	:	string	:=	"true";
		user_base_address0	:	integer	:=	0;
		user_base_address1	:	integer	:=	0;
		user_base_address2	:	integer	:=	0;
		cp_current_ctrl	:	integer	:=	300;
		cp_current_test	:	string	:=	"enable_ch_pump_normal";
		cp_hs_levshift_power_supply_setting	:	integer	:=	1;
		cp_replica_bias_ctrl	:	string	:=	"disable_replica_bias_ctrl";
		cp_rgla_bypass	:	string	:=	"false";
		cp_rgla_volt_inc	:	string	:=	"boost_30pct";
		l_counter	:	integer	:=	1;
		lcpll_atb_select	:	string	:=	"atb_disable";
		lcpll_d2a_sel	:	string	:=	"volt_1p02v";
		lcpll_hclk_driver_enable	:	string	:=	"driver_off";
		lcvco_gear_sel	:	string	:=	"high_gear";
		lcvco_sel	:	string	:=	"high_freq_14g";
		lpf_ripple_cap_ctrl	:	string	:=	"none";
		lpf_rxpll_pfd_bw_ctrl	:	integer	:=	2400;
		m_counter	:	integer	:=	4;
		ref_clk_div	:	integer	:=	1;
		refclk_sel	:	string	:=	"refclk";
		vreg1_lcvco_volt_inc	:	string	:=	"volt_1p1v";
		vreg1_vccehlow	:	string	:=	"normal_operation";
		vreg2_lcpll_volt_sel	:	string	:=	"vreg2_volt_1p0v";
		vreg3_lcpll_volt_sel	:	string	:=	"vreg3_volt_1p0v"
	);
	port	(
		ch0lctestout	:	out	std_logic_vector(1 downto 0) := "00";
		ch1lctestout	:	out	std_logic_vector(1 downto 0) := "00";
		ch2lctestout	:	out	std_logic_vector(1 downto 0) := "00";
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ch0rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		ch1rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		ch2rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		cmurstn	:	in	std_logic := '0';
		cmurstnlpf	:	in	std_logic := '0';
		extfbclk	:	in	std_logic := '0';
		iqclklc	:	in	std_logic := '0';
		pldclklc	:	in	std_logic := '0';
		pllfbswblc	:	in	std_logic := '0';
		pllfbswtlc	:	in	std_logic := '0';
		refclklc	:	in	std_logic := '0';
		fixedclklc	:	in	std_logic := '0';
		clk010g	:	out	std_logic := '0';
		clk025g	:	out	std_logic := '0';
		clk18010g	:	out	std_logic := '0';
		clk18025g	:	out	std_logic := '0';
		clk33cmu	:	out	std_logic := '0';
		clklowcmu	:	out	std_logic := '0';
		frefcmu	:	out	std_logic := '0';
		iqclkatt	:	out	std_logic := '0';
		pfdmodelockcmu	:	out	std_logic := '0';
		pldclkatt	:	out	std_logic := '0';
		refclkatt	:	out	std_logic := '0';
		txpllhclk	:	out	std_logic := '0'
	);
end	stratixv_atx_pll;

architecture behavior of stratixv_atx_pll is

component	stratixv_atx_pll_encrypted
	generic	(
		enabled_for_reconfig	:	string	:=	"false";
		sim_use_fast_model	:	string	:=	"true";
		ac_cap	:	string	:=	"disable_ac_cap";
		fbclk_sel	:	string	:=	"vcoclk";
		lc_cmu_pdb	:	string	:=	"false";
		lc_div33_pdb	:	string	:=	"false";
		sel_buf14g	:	string	:=	"disable_buf14g";
		sel_buf8g	:	string	:=	"disable_buf8g";
		vco_over_range_ref	:	string	:=	"vco_over_range_off";
		vco_under_range_ref	:	string	:=	"vco_under_range_off";
		avmm_group_channel_index	:	integer	:=	0;
		output_clock_frequency	:	string	:=	"";
		reference_clock_frequency	:	string	:=	"";
		use_default_base_address	:	string	:=	"true";
		user_base_address0	:	integer	:=	0;
		user_base_address1	:	integer	:=	0;
		user_base_address2	:	integer	:=	0;
		cp_current_ctrl	:	integer	:=	300;
		cp_current_test	:	string	:=	"enable_ch_pump_normal";
		cp_hs_levshift_power_supply_setting	:	integer	:=	1;
		cp_replica_bias_ctrl	:	string	:=	"disable_replica_bias_ctrl";
		cp_rgla_bypass	:	string	:=	"false";
		cp_rgla_volt_inc	:	string	:=	"boost_30pct";
		l_counter	:	integer	:=	1;
		lcpll_atb_select	:	string	:=	"atb_disable";
		lcpll_d2a_sel	:	string	:=	"volt_1p02v";
		lcpll_hclk_driver_enable	:	string	:=	"driver_off";
		lcvco_gear_sel	:	string	:=	"high_gear";
		lcvco_sel	:	string	:=	"high_freq_14g";
		lpf_ripple_cap_ctrl	:	string	:=	"none";
		lpf_rxpll_pfd_bw_ctrl	:	integer	:=	2400;
		m_counter	:	integer	:=	4;
		ref_clk_div	:	integer	:=	1;
		refclk_sel	:	string	:=	"refclk";
		vreg1_lcvco_volt_inc	:	string	:=	"volt_1p1v";
		vreg1_vccehlow	:	string	:=	"normal_operation";
		vreg2_lcpll_volt_sel	:	string	:=	"vreg2_volt_1p0v";
		vreg3_lcpll_volt_sel	:	string	:=	"vreg3_volt_1p0v"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ch0rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		ch1rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		ch2rcsrlc	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		cmurstn	:	in	std_logic := '0';
		cmurstnlpf	:	in	std_logic := '0';
		extfbclk	:	in	std_logic := '0';
		iqclklc	:	in	std_logic := '0';
		pldclklc	:	in	std_logic := '0';
		pllfbswblc	:	in	std_logic := '0';
		pllfbswtlc	:	in	std_logic := '0';
		refclklc	:	in	std_logic := '0';
		fixedclklc	:	in	std_logic := '0';
		clk010g	:	out	std_logic := '0';
		clk025g	:	out	std_logic := '0';
		clk18010g	:	out	std_logic := '0';
		clk18025g	:	out	std_logic := '0';
		clk33cmu	:	out	std_logic := '0';
		clklowcmu	:	out	std_logic := '0';
		frefcmu	:	out	std_logic := '0';
		iqclkatt	:	out	std_logic := '0';
		pfdmodelockcmu	:	out	std_logic := '0';
		pldclkatt	:	out	std_logic := '0';
		refclkatt	:	out	std_logic := '0';
		txpllhclk	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_atx_pll_encrypted
	generic map	(
		enabled_for_reconfig	=>	enabled_for_reconfig,
		sim_use_fast_model	=>	sim_use_fast_model,
		ac_cap	=>	ac_cap,
		fbclk_sel	=>	fbclk_sel,
		lc_cmu_pdb	=>	lc_cmu_pdb,
		lc_div33_pdb	=>	lc_div33_pdb,
		sel_buf14g	=>	sel_buf14g,
		sel_buf8g	=>	sel_buf8g,
		vco_over_range_ref	=>	vco_over_range_ref,
		vco_under_range_ref	=>	vco_under_range_ref,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		output_clock_frequency	=>	output_clock_frequency,
		reference_clock_frequency	=>	reference_clock_frequency,
		use_default_base_address	=>	use_default_base_address,
		user_base_address0	=>	user_base_address0,
		user_base_address1	=>	user_base_address1,
		user_base_address2	=>	user_base_address2,
		cp_current_ctrl	=>	cp_current_ctrl,
		cp_current_test	=>	cp_current_test,
		cp_hs_levshift_power_supply_setting	=>	cp_hs_levshift_power_supply_setting,
		cp_replica_bias_ctrl	=>	cp_replica_bias_ctrl,
		cp_rgla_bypass	=>	cp_rgla_bypass,
		cp_rgla_volt_inc	=>	cp_rgla_volt_inc,
		l_counter	=>	l_counter,
		lcpll_atb_select	=>	lcpll_atb_select,
		lcpll_d2a_sel	=>	lcpll_d2a_sel,
		lcpll_hclk_driver_enable	=>	lcpll_hclk_driver_enable,
		lcvco_gear_sel	=>	lcvco_gear_sel,
		lcvco_sel	=>	lcvco_sel,
		lpf_ripple_cap_ctrl	=>	lpf_ripple_cap_ctrl,
		lpf_rxpll_pfd_bw_ctrl	=>	lpf_rxpll_pfd_bw_ctrl,
		m_counter	=>	m_counter,
		ref_clk_div	=>	ref_clk_div,
		refclk_sel	=>	refclk_sel,
		vreg1_lcvco_volt_inc	=>	vreg1_lcvco_volt_inc,
		vreg1_vccehlow	=>	vreg1_vccehlow,
		vreg2_lcpll_volt_sel	=>	vreg2_lcpll_volt_sel,
		vreg3_lcpll_volt_sel	=>	vreg3_lcpll_volt_sel
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		avmmreaddata	=>	avmmreaddata,
		blockselect	=>	blockselect,
		ch0rcsrlc	=>	ch0rcsrlc,
		ch1rcsrlc	=>	ch1rcsrlc,
		ch2rcsrlc	=>	ch2rcsrlc,
		cmurstn	=>	cmurstn,
		cmurstnlpf	=>	cmurstnlpf,
		extfbclk	=>	extfbclk,
		iqclklc	=>	iqclklc,
		pldclklc	=>	pldclklc,
		pllfbswblc	=>	pllfbswblc,
		pllfbswtlc	=>	pllfbswtlc,
		refclklc	=>	refclklc,
		fixedclklc	=>	fixedclklc,
		clk010g	=>	clk010g,
		clk025g	=>	clk025g,
		clk18010g	=>	clk18010g,
		clk18025g	=>	clk18025g,
		clk33cmu	=>	clk33cmu,
		clklowcmu	=>	clklowcmu,
		frefcmu	=>	frefcmu,
		iqclkatt	=>	iqclkatt,
		pfdmodelockcmu	=>	pfdmodelockcmu,
		pldclkatt	=>	pldclkatt,
		refclkatt	=>	refclkatt,
		txpllhclk	=>	txpllhclk
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_channel_pll	is
	generic	(
		silicon_rev	:	string	:=	"reve";
		enabled_for_reconfig	:	string	:=	"false";
		sim_use_fast_model	:	string	:=	"true";
		enable_debug_info	:	string	:=	"false";
		cvp_en_iocsr	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		output_clock_frequency	:	string	:=	"";
		reference_clock_frequency	:	string	:=	"";
		use_default_base_address	:	string	:=	"true";
		user_base_address	:	integer	:=	0;
		bbpd_salatch_offset_ctrl_clk0	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk180	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk270	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk90	:	string	:=	"offset_0mv";
		bbpd_salatch_sel	:	string	:=	"normal";
		bypass_cp_rgla	:	string	:=	"false";
		cdr_atb_select	:	string	:=	"atb_disable";
		cgb_clk_enable	:	string	:=	"false";
		charge_pump_current_test	:	string	:=	"enable_ch_pump_normal";
		clklow_fref_to_ppm_div_sel	:	integer	:=	1;
		clock_monitor	:	string	:=	"lpbk_data";
		diag_rev_lpbk	:	string	:=	"false";
		eye_monitor_bbpd_data_ctrl	:	string	:=	"cdr_data";
		fast_lock_mode	:	string	:=	"false";
		fb_sel	:	string	:=	"vcoclk";
		gpon_lock2ref_ctrl	:	string	:=	"lck2ref";
		hs_levshift_power_supply_setting	:	integer	:=	1;
		ignore_phslock	:	string	:=	"false";
		l_counter_pd_clock_disable	:	string	:=	"false";
		m_counter	:	integer	:=	-1;
		pcie_freq_control	:	string	:=	"pcie_100mhz";
		pd_charge_pump_current_ctrl	:	integer	:=	5;
		pd_l_counter	:	integer	:=	1;
		pfd_charge_pump_current_ctrl	:	integer	:=	20;
		pfd_l_counter	:	integer	:=	1;
		powerdown	:	string	:=	"false";
		ref_clk_div	:	integer	:=	-1;
		regulator_volt_inc	:	string	:=	"0";
		replica_bias_ctrl	:	string	:=	"true";
		reverse_serial_lpbk	:	string	:=	"false";
		ripple_cap_ctrl	:	string	:=	"none";
		rxpll_pd_bw_ctrl	:	integer	:=	300;
		rxpll_pfd_bw_ctrl	:	integer	:=	3200;
		txpll_hclk_driver_enable	:	string	:=	"false";
		vco_overange_ref	:	string	:=	"off";
		vco_range_ctrl_en	:	string	:=	"false"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		clk270beyerm	:	in	std_logic := '0';
		clk270eye	:	in	std_logic := '0';
		clk90beyerm	:	in	std_logic := '0';
		clk90eye	:	in	std_logic := '0';
		clkindeser	:	in	std_logic := '0';
		crurstb	:	in	std_logic := '0';
		deeye	:	in	std_logic := '0';
		deeyerm	:	in	std_logic := '0';
		doeye	:	in	std_logic := '0';
		doeyerm	:	in	std_logic := '0';
		earlyeios	:	in	std_logic := '0';
		extclk	:	in	std_logic := '0';
		extfbctrla	:	in	std_logic := '0';
		extfbctrlb	:	in	std_logic := '0';
		gpblck2refb	:	in	std_logic := '0';
		lpbkpreen	:	in	std_logic := '0';
		ltd	:	in	std_logic := '0';
		ltr	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		pciel	:	in	std_logic := '0';
		pciem	:	in	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		ppmlock	:	in	std_logic := '0';
		refclk	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxp	:	in	std_logic := '0';
		sd	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ck0pd	:	out	std_logic := '0';
		ck180pd	:	out	std_logic := '0';
		ck270pd	:	out	std_logic := '0';
		ck90pd	:	out	std_logic := '0';
		clk270bcdr	:	out	std_logic := '0';
		clk270bdes	:	out	std_logic := '0';
		clk90bcdr	:	out	std_logic := '0';
		clk90bdes	:	out	std_logic := '0';
		clkcdr	:	out	std_logic := '0';
		clklow	:	out	std_logic := '0';
		decdr	:	out	std_logic := '0';
		deven	:	out	std_logic := '0';
		docdr	:	out	std_logic := '0';
		dodd	:	out	std_logic := '0';
		fref	:	out	std_logic := '0';
		pdof	:	out	std_logic_vector(3 downto 0) := "0000";
		pfdmodelock	:	out	std_logic := '0';
		rxlpbdp	:	out	std_logic := '0';
		rxlpbp	:	out	std_logic := '0';
		rxplllock	:	out	std_logic := '0';
		txpllhclk	:	out	std_logic := '0';
		txrlpbk	:	out	std_logic := '0';
		vctrloverrange	:	out	std_logic := '0'
	);
end	stratixv_channel_pll;

architecture behavior of stratixv_channel_pll is

component	stratixv_channel_pll_encrypted
	generic	(
		enabled_for_reconfig	:	string	:=	"false";
		sim_use_fast_model	:	string	:=	"true";
		enable_debug_info	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		output_clock_frequency	:	string	:=	"";
		reference_clock_frequency	:	string	:=	"";
		use_default_base_address	:	string	:=	"true";
		user_base_address	:	integer	:=	0;
		bbpd_salatch_offset_ctrl_clk0	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk180	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk270	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk90	:	string	:=	"offset_0mv";
		bbpd_salatch_sel	:	string	:=	"normal";
		bypass_cp_rgla	:	string	:=	"false";
		cdr_atb_select	:	string	:=	"atb_disable";
		cgb_clk_enable	:	string	:=	"false";
		charge_pump_current_test	:	string	:=	"enable_ch_pump_normal";
		clklow_fref_to_ppm_div_sel	:	integer	:=	1;
		clock_monitor	:	string	:=	"lpbk_data";
		diag_rev_lpbk	:	string	:=	"false";
		eye_monitor_bbpd_data_ctrl	:	string	:=	"cdr_data";
		fast_lock_mode	:	string	:=	"false";
		fb_sel	:	string	:=	"vcoclk";
		gpon_lock2ref_ctrl	:	string	:=	"lck2ref";
		hs_levshift_power_supply_setting	:	integer	:=	1;
		ignore_phslock	:	string	:=	"false";
		l_counter_pd_clock_disable	:	string	:=	"false";
		m_counter	:	integer	:=	-1;
		pcie_freq_control	:	string	:=	"pcie_100mhz";
		pd_charge_pump_current_ctrl	:	integer	:=	5;
		pd_l_counter	:	integer	:=	1;
		pfd_charge_pump_current_ctrl	:	integer	:=	20;
		pfd_l_counter	:	integer	:=	1;
		powerdown	:	string	:=	"false";
		ref_clk_div	:	integer	:=	-1;
		regulator_volt_inc	:	string	:=	"0";
		replica_bias_ctrl	:	string	:=	"true";
		reverse_serial_lpbk	:	string	:=	"false";
		ripple_cap_ctrl	:	string	:=	"none";
		rxpll_pd_bw_ctrl	:	integer	:=	300;
		rxpll_pfd_bw_ctrl	:	integer	:=	3200;
		txpll_hclk_driver_enable	:	string	:=	"false";
		vco_overange_ref	:	string	:=	"off";
		vco_range_ctrl_en	:	string	:=	"false"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		clk270beyerm	:	in	std_logic := '0';
		clk270eye	:	in	std_logic := '0';
		clk90beyerm	:	in	std_logic := '0';
		clk90eye	:	in	std_logic := '0';
		clkindeser	:	in	std_logic := '0';
		crurstb	:	in	std_logic := '0';
		deeye	:	in	std_logic := '0';
		deeyerm	:	in	std_logic := '0';
		doeye	:	in	std_logic := '0';
		doeyerm	:	in	std_logic := '0';
		earlyeios	:	in	std_logic := '0';
		extclk	:	in	std_logic := '0';
		extfbctrla	:	in	std_logic := '0';
		extfbctrlb	:	in	std_logic := '0';
		gpblck2refb	:	in	std_logic := '0';
		lpbkpreen	:	in	std_logic := '0';
		ltd	:	in	std_logic := '0';
		ltr	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		pciel	:	in	std_logic := '0';
		pciem	:	in	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		ppmlock	:	in	std_logic := '0';
		refclk	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxp	:	in	std_logic := '0';
		sd	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ck0pd	:	out	std_logic := '0';
		ck180pd	:	out	std_logic := '0';
		ck270pd	:	out	std_logic := '0';
		ck90pd	:	out	std_logic := '0';
		clk270bcdr	:	out	std_logic := '0';
		clk270bdes	:	out	std_logic := '0';
		clk90bcdr	:	out	std_logic := '0';
		clk90bdes	:	out	std_logic := '0';
		clkcdr	:	out	std_logic := '0';
		clklow	:	out	std_logic := '0';
		decdr	:	out	std_logic := '0';
		deven	:	out	std_logic := '0';
		docdr	:	out	std_logic := '0';
		dodd	:	out	std_logic := '0';
		fref	:	out	std_logic := '0';
		pdof	:	out	std_logic_vector(3 downto 0) := "0000";
		pfdmodelock	:	out	std_logic := '0';
		rxlpbdp	:	out	std_logic := '0';
		rxlpbp	:	out	std_logic := '0';
		rxplllock	:	out	std_logic := '0';
		txpllhclk	:	out	std_logic := '0';
		txrlpbk	:	out	std_logic := '0';
		vctrloverrange	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_channel_pll_encrypted
	generic map	(
		enabled_for_reconfig	=>	enabled_for_reconfig,
		sim_use_fast_model	=>	sim_use_fast_model,
		enable_debug_info	=>	enable_debug_info,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		output_clock_frequency	=>	output_clock_frequency,
		reference_clock_frequency	=>	reference_clock_frequency,
		use_default_base_address	=>	use_default_base_address,
		user_base_address	=>	user_base_address,
		bbpd_salatch_offset_ctrl_clk0	=>	bbpd_salatch_offset_ctrl_clk0,
		bbpd_salatch_offset_ctrl_clk180	=>	bbpd_salatch_offset_ctrl_clk180,
		bbpd_salatch_offset_ctrl_clk270	=>	bbpd_salatch_offset_ctrl_clk270,
		bbpd_salatch_offset_ctrl_clk90	=>	bbpd_salatch_offset_ctrl_clk90,
		bbpd_salatch_sel	=>	bbpd_salatch_sel,
		bypass_cp_rgla	=>	bypass_cp_rgla,
		cdr_atb_select	=>	cdr_atb_select,
		cgb_clk_enable	=>	cgb_clk_enable,
		charge_pump_current_test	=>	charge_pump_current_test,
		clklow_fref_to_ppm_div_sel	=>	clklow_fref_to_ppm_div_sel,
		clock_monitor	=>	clock_monitor,
		diag_rev_lpbk	=>	diag_rev_lpbk,
		eye_monitor_bbpd_data_ctrl	=>	eye_monitor_bbpd_data_ctrl,
		fast_lock_mode	=>	fast_lock_mode,
		fb_sel	=>	fb_sel,
		gpon_lock2ref_ctrl	=>	gpon_lock2ref_ctrl,
		hs_levshift_power_supply_setting	=>	hs_levshift_power_supply_setting,
		ignore_phslock	=>	ignore_phslock,
		l_counter_pd_clock_disable	=>	l_counter_pd_clock_disable,
		m_counter	=>	m_counter,
		pcie_freq_control	=>	pcie_freq_control,
		pd_charge_pump_current_ctrl	=>	pd_charge_pump_current_ctrl,
		pd_l_counter	=>	pd_l_counter,
		pfd_charge_pump_current_ctrl	=>	pfd_charge_pump_current_ctrl,
		pfd_l_counter	=>	pfd_l_counter,
		powerdown	=>	powerdown,
		ref_clk_div	=>	ref_clk_div,
		regulator_volt_inc	=>	regulator_volt_inc,
		replica_bias_ctrl	=>	replica_bias_ctrl,
		reverse_serial_lpbk	=>	reverse_serial_lpbk,
		ripple_cap_ctrl	=>	ripple_cap_ctrl,
		rxpll_pd_bw_ctrl	=>	rxpll_pd_bw_ctrl,
		rxpll_pfd_bw_ctrl	=>	rxpll_pfd_bw_ctrl,
		txpll_hclk_driver_enable	=>	txpll_hclk_driver_enable,
		vco_overange_ref	=>	vco_overange_ref,
		vco_range_ctrl_en	=>	vco_range_ctrl_en
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		clk270beyerm	=>	clk270beyerm,
		clk270eye	=>	clk270eye,
		clk90beyerm	=>	clk90beyerm,
		clk90eye	=>	clk90eye,
		clkindeser	=>	clkindeser,
		crurstb	=>	crurstb,
		deeye	=>	deeye,
		deeyerm	=>	deeyerm,
		doeye	=>	doeye,
		doeyerm	=>	doeyerm,
		earlyeios	=>	earlyeios,
		extclk	=>	extclk,
		extfbctrla	=>	extfbctrla,
		extfbctrlb	=>	extfbctrlb,
		gpblck2refb	=>	gpblck2refb,
		lpbkpreen	=>	lpbkpreen,
		ltd	=>	ltd,
		ltr	=>	ltr,
		occalen	=>	occalen,
		pciel	=>	pciel,
		pciem	=>	pciem,
		pciesw	=>	pciesw,
		ppmlock	=>	ppmlock,
		refclk	=>	refclk,
		rstn	=>	rstn,
		rxp	=>	rxp,
		sd	=>	sd,
		avmmreaddata	=>	avmmreaddata,
		blockselect	=>	blockselect,
		ck0pd	=>	ck0pd,
		ck180pd	=>	ck180pd,
		ck270pd	=>	ck270pd,
		ck90pd	=>	ck90pd,
		clk270bcdr	=>	clk270bcdr,
		clk270bdes	=>	clk270bdes,
		clk90bcdr	=>	clk90bcdr,
		clk90bdes	=>	clk90bdes,
		clkcdr	=>	clkcdr,
		clklow	=>	clklow,
		decdr	=>	decdr,
		deven	=>	deven,
		docdr	=>	docdr,
		dodd	=>	dodd,
		fref	=>	fref,
		pdof	=>	pdof,
		pfdmodelock	=>	pfdmodelock,
		rxlpbdp	=>	rxlpbdp,
		rxlpbp	=>	rxlpbp,
		rxplllock	=>	rxplllock,
		txpllhclk	=>	txpllhclk,
		txrlpbk	=>	txrlpbk,
		vctrloverrange	=>	vctrloverrange
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_8g_pcs_aggregate	is
	generic	(
		user_base_address	:	integer	:=	0;
		dskw_mnumber_data	:	bit_vector	:=	B"100";
		use_default_base_address	:	string	:=	"true";
		data_agg_bonding	:	string	:=	"agg_disable";
		xaui_sm_operation	:	string	:=	"en_xaui_sm";
		pcs_dw_datapath	:	string	:=	"sw_data_path";
		prot_mode_tx	:	string	:=	"pipe_g1_tx";
		dskw_control	:	string	:=	"dskw_write_control";
		avmm_group_channel_index	:	integer	:=	0;
		dskw_sm_operation	:	string	:=	"dskw_xaui_sm";
		refclkdig_sel	:	string	:=	"dis_refclk_dig_sel";
		agg_pwdn	:	string	:=	"dis_agg_pwdn";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		aggtestbusch0	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestbusch1	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestbusch2	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aligndetsyncbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch0	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch1	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch2	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsynctopch0	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsynctopch1	:	in	std_logic_vector(1 downto 0) := "00";
		alignstatusbotch2	:	out	std_logic := '0';
		alignstatusch0	:	out	std_logic := '0';
		alignstatusch1	:	out	std_logic := '0';
		alignstatusch2	:	out	std_logic := '0';
		alignstatussync0botch2	:	out	std_logic := '0';
		alignstatussync0ch0	:	out	std_logic := '0';
		alignstatussync0ch1	:	out	std_logic := '0';
		alignstatussync0ch2	:	out	std_logic := '0';
		alignstatussync0topch0	:	out	std_logic := '0';
		alignstatussync0topch1	:	out	std_logic := '0';
		alignstatussyncbotch2	:	in	std_logic := '0';
		alignstatussyncch0	:	in	std_logic := '0';
		alignstatussyncch1	:	in	std_logic := '0';
		alignstatussyncch2	:	in	std_logic := '0';
		alignstatussynctopch0	:	in	std_logic := '0';
		alignstatussynctopch1	:	in	std_logic := '0';
		alignstatustopch0	:	out	std_logic := '0';
		alignstatustopch1	:	out	std_logic := '0';
		cgcomprddallbotch2	:	out	std_logic := '0';
		cgcomprddallch0	:	out	std_logic := '0';
		cgcomprddallch1	:	out	std_logic := '0';
		cgcomprddallch2	:	out	std_logic := '0';
		cgcomprddalltopch0	:	out	std_logic := '0';
		cgcomprddalltopch1	:	out	std_logic := '0';
		cgcomprddinbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddintopch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddintopch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrallbotch2	:	out	std_logic := '0';
		cgcompwrallch0	:	out	std_logic := '0';
		cgcompwrallch1	:	out	std_logic := '0';
		cgcompwrallch2	:	out	std_logic := '0';
		cgcompwralltopch0	:	out	std_logic := '0';
		cgcompwralltopch1	:	out	std_logic := '0';
		cgcompwrinbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrintopch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrintopch1	:	in	std_logic_vector(1 downto 0) := "00";
		decctlbotch2	:	in	std_logic := '0';
		decctlch0	:	in	std_logic := '0';
		decctlch1	:	in	std_logic := '0';
		decctlch2	:	in	std_logic := '0';
		decctltopch0	:	in	std_logic := '0';
		decctltopch1	:	in	std_logic := '0';
		decdatabotch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach0	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach1	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach2	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatatopch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatatopch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatavalidbotch2	:	in	std_logic := '0';
		decdatavalidch0	:	in	std_logic := '0';
		decdatavalidch1	:	in	std_logic := '0';
		decdatavalidch2	:	in	std_logic := '0';
		decdatavalidtopch0	:	in	std_logic := '0';
		decdatavalidtopch1	:	in	std_logic := '0';
		dedicatedaggscaninch1	:	in	std_logic := '0';
		dedicatedaggscanoutch0tieoff	:	out	std_logic := '0';
		dedicatedaggscanoutch1	:	out	std_logic := '0';
		dedicatedaggscanoutch2tieoff	:	out	std_logic := '0';
		delcondmet0botch2	:	out	std_logic := '0';
		delcondmet0ch0	:	out	std_logic := '0';
		delcondmet0ch1	:	out	std_logic := '0';
		delcondmet0ch2	:	out	std_logic := '0';
		delcondmet0topch0	:	out	std_logic := '0';
		delcondmet0topch1	:	out	std_logic := '0';
		delcondmetinbotch2	:	in	std_logic := '0';
		delcondmetinch0	:	in	std_logic := '0';
		delcondmetinch1	:	in	std_logic := '0';
		delcondmetinch2	:	in	std_logic := '0';
		delcondmetintopch0	:	in	std_logic := '0';
		delcondmetintopch1	:	in	std_logic := '0';
		dprioagg	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		endskwqdbotch2	:	out	std_logic := '0';
		endskwqdch0	:	out	std_logic := '0';
		endskwqdch1	:	out	std_logic := '0';
		endskwqdch2	:	out	std_logic := '0';
		endskwqdtopch0	:	out	std_logic := '0';
		endskwqdtopch1	:	out	std_logic := '0';
		endskwrdptrsbotch2	:	out	std_logic := '0';
		endskwrdptrsch0	:	out	std_logic := '0';
		endskwrdptrsch1	:	out	std_logic := '0';
		endskwrdptrsch2	:	out	std_logic := '0';
		endskwrdptrstopch0	:	out	std_logic := '0';
		endskwrdptrstopch1	:	out	std_logic := '0';
		fifoovr0botch2	:	out	std_logic := '0';
		fifoovr0ch0	:	out	std_logic := '0';
		fifoovr0ch1	:	out	std_logic := '0';
		fifoovr0ch2	:	out	std_logic := '0';
		fifoovr0topch0	:	out	std_logic := '0';
		fifoovr0topch1	:	out	std_logic := '0';
		fifoovrinbotch2	:	in	std_logic := '0';
		fifoovrinch0	:	in	std_logic := '0';
		fifoovrinch1	:	in	std_logic := '0';
		fifoovrinch2	:	in	std_logic := '0';
		fifoovrintopch0	:	in	std_logic := '0';
		fifoovrintopch1	:	in	std_logic := '0';
		fifordinbotch2	:	in	std_logic := '0';
		fifordinch0	:	in	std_logic := '0';
		fifordinch1	:	in	std_logic := '0';
		fifordinch2	:	in	std_logic := '0';
		fifordintopch0	:	in	std_logic := '0';
		fifordintopch1	:	in	std_logic := '0';
		fifordoutcomp0botch2	:	out	std_logic := '0';
		fifordoutcomp0ch0	:	out	std_logic := '0';
		fifordoutcomp0ch1	:	out	std_logic := '0';
		fifordoutcomp0ch2	:	out	std_logic := '0';
		fifordoutcomp0topch0	:	out	std_logic := '0';
		fifordoutcomp0topch1	:	out	std_logic := '0';
		fiforstrdqdbotch2	:	out	std_logic := '0';
		fiforstrdqdch0	:	out	std_logic := '0';
		fiforstrdqdch1	:	out	std_logic := '0';
		fiforstrdqdch2	:	out	std_logic := '0';
		fiforstrdqdtopch0	:	out	std_logic := '0';
		fiforstrdqdtopch1	:	out	std_logic := '0';
		insertincomplete0botch2	:	out	std_logic := '0';
		insertincomplete0ch0	:	out	std_logic := '0';
		insertincomplete0ch1	:	out	std_logic := '0';
		insertincomplete0ch2	:	out	std_logic := '0';
		insertincomplete0topch0	:	out	std_logic := '0';
		insertincomplete0topch1	:	out	std_logic := '0';
		insertincompleteinbotch2	:	in	std_logic := '0';
		insertincompleteinch0	:	in	std_logic := '0';
		insertincompleteinch1	:	in	std_logic := '0';
		insertincompleteinch2	:	in	std_logic := '0';
		insertincompleteintopch0	:	in	std_logic := '0';
		insertincompleteintopch1	:	in	std_logic := '0';
		latencycomp0botch2	:	out	std_logic := '0';
		latencycomp0ch0	:	out	std_logic := '0';
		latencycomp0ch1	:	out	std_logic := '0';
		latencycomp0ch2	:	out	std_logic := '0';
		latencycomp0topch0	:	out	std_logic := '0';
		latencycomp0topch1	:	out	std_logic := '0';
		latencycompinbotch2	:	in	std_logic := '0';
		latencycompinch0	:	in	std_logic := '0';
		latencycompinch1	:	in	std_logic := '0';
		latencycompinch2	:	in	std_logic := '0';
		latencycompintopch0	:	in	std_logic := '0';
		latencycompintopch1	:	in	std_logic := '0';
		rcvdclkch0	:	in	std_logic := '0';
		rcvdclkch1	:	in	std_logic := '0';
		rcvdclkout	:	out	std_logic := '0';
		rcvdclkoutbot	:	out	std_logic := '0';
		rcvdclkouttop	:	out	std_logic := '0';
		rdalignbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch0	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch1	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch2	:	in	std_logic_vector(1 downto 0) := "00";
		rdaligntopch0	:	in	std_logic_vector(1 downto 0) := "00";
		rdaligntopch1	:	in	std_logic_vector(1 downto 0) := "00";
		rdenablesyncbotch2	:	in	std_logic := '0';
		rdenablesyncch0	:	in	std_logic := '0';
		rdenablesyncch1	:	in	std_logic := '0';
		rdenablesyncch2	:	in	std_logic := '0';
		rdenablesynctopch0	:	in	std_logic := '0';
		rdenablesynctopch1	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		runningdispbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch0	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch1	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch2	:	in	std_logic_vector(1 downto 0) := "00";
		runningdisptopch0	:	in	std_logic_vector(1 downto 0) := "00";
		runningdisptopch1	:	in	std_logic_vector(1 downto 0) := "00";
		rxctlrsbotch2	:	out	std_logic := '0';
		rxctlrsch0	:	out	std_logic := '0';
		rxctlrsch1	:	out	std_logic := '0';
		rxctlrsch2	:	out	std_logic := '0';
		rxctlrstopch0	:	out	std_logic := '0';
		rxctlrstopch1	:	out	std_logic := '0';
		rxdatarsbotch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarstopch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarstopch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxpcsrstn	:	in	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		scanshiftn	:	in	std_logic := '0';
		syncstatusbotch2	:	in	std_logic := '0';
		syncstatusch0	:	in	std_logic := '0';
		syncstatusch1	:	in	std_logic := '0';
		syncstatusch2	:	in	std_logic := '0';
		syncstatustopch0	:	in	std_logic := '0';
		syncstatustopch1	:	in	std_logic := '0';
		txctltcbotch2	:	in	std_logic := '0';
		txctltcch0	:	in	std_logic := '0';
		txctltcch1	:	in	std_logic := '0';
		txctltcch2	:	in	std_logic := '0';
		txctltctopch0	:	in	std_logic := '0';
		txctltctopch1	:	in	std_logic := '0';
		txctltsbotch2	:	out	std_logic := '0';
		txctltsch0	:	out	std_logic := '0';
		txctltsch1	:	out	std_logic := '0';
		txctltsch2	:	out	std_logic := '0';
		txctltstopch0	:	out	std_logic := '0';
		txctltstopch1	:	out	std_logic := '0';
		txdatatcbotch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatctopch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatctopch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatsbotch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatstopch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatstopch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		txpcsrstn	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0'
	);
end	stratixv_hssi_8g_pcs_aggregate;

architecture behavior of stratixv_hssi_8g_pcs_aggregate is

component	stratixv_hssi_8g_pcs_aggregate_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		dskw_mnumber_data	:	bit_vector	:=	B"100";
		use_default_base_address	:	string	:=	"true";
		data_agg_bonding	:	string	:=	"agg_disable";
		xaui_sm_operation	:	string	:=	"en_xaui_sm";
		pcs_dw_datapath	:	string	:=	"sw_data_path";
		prot_mode_tx	:	string	:=	"pipe_g1_tx";
		dskw_control	:	string	:=	"dskw_write_control";
		avmm_group_channel_index	:	integer	:=	0;
		dskw_sm_operation	:	string	:=	"dskw_xaui_sm";
		refclkdig_sel	:	string	:=	"dis_refclk_dig_sel";
		agg_pwdn	:	string	:=	"dis_agg_pwdn"
	);
	port	(
		aggtestbusch0	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestbusch1	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestbusch2	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		aligndetsyncbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch0	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch1	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsyncch2	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsynctopch0	:	in	std_logic_vector(1 downto 0) := "00";
		aligndetsynctopch1	:	in	std_logic_vector(1 downto 0) := "00";
		alignstatusbotch2	:	out	std_logic := '0';
		alignstatusch0	:	out	std_logic := '0';
		alignstatusch1	:	out	std_logic := '0';
		alignstatusch2	:	out	std_logic := '0';
		alignstatussync0botch2	:	out	std_logic := '0';
		alignstatussync0ch0	:	out	std_logic := '0';
		alignstatussync0ch1	:	out	std_logic := '0';
		alignstatussync0ch2	:	out	std_logic := '0';
		alignstatussync0topch0	:	out	std_logic := '0';
		alignstatussync0topch1	:	out	std_logic := '0';
		alignstatussyncbotch2	:	in	std_logic := '0';
		alignstatussyncch0	:	in	std_logic := '0';
		alignstatussyncch1	:	in	std_logic := '0';
		alignstatussyncch2	:	in	std_logic := '0';
		alignstatussynctopch0	:	in	std_logic := '0';
		alignstatussynctopch1	:	in	std_logic := '0';
		alignstatustopch0	:	out	std_logic := '0';
		alignstatustopch1	:	out	std_logic := '0';
		cgcomprddallbotch2	:	out	std_logic := '0';
		cgcomprddallch0	:	out	std_logic := '0';
		cgcomprddallch1	:	out	std_logic := '0';
		cgcomprddallch2	:	out	std_logic := '0';
		cgcomprddalltopch0	:	out	std_logic := '0';
		cgcomprddalltopch1	:	out	std_logic := '0';
		cgcomprddinbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddinch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddintopch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcomprddintopch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrallbotch2	:	out	std_logic := '0';
		cgcompwrallch0	:	out	std_logic := '0';
		cgcompwrallch1	:	out	std_logic := '0';
		cgcompwrallch2	:	out	std_logic := '0';
		cgcompwralltopch0	:	out	std_logic := '0';
		cgcompwralltopch1	:	out	std_logic := '0';
		cgcompwrinbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch1	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrinch2	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrintopch0	:	in	std_logic_vector(1 downto 0) := "00";
		cgcompwrintopch1	:	in	std_logic_vector(1 downto 0) := "00";
		decctlbotch2	:	in	std_logic := '0';
		decctlch0	:	in	std_logic := '0';
		decctlch1	:	in	std_logic := '0';
		decctlch2	:	in	std_logic := '0';
		decctltopch0	:	in	std_logic := '0';
		decctltopch1	:	in	std_logic := '0';
		decdatabotch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach0	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach1	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatach2	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatatopch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatatopch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		decdatavalidbotch2	:	in	std_logic := '0';
		decdatavalidch0	:	in	std_logic := '0';
		decdatavalidch1	:	in	std_logic := '0';
		decdatavalidch2	:	in	std_logic := '0';
		decdatavalidtopch0	:	in	std_logic := '0';
		decdatavalidtopch1	:	in	std_logic := '0';
		dedicatedaggscaninch1	:	in	std_logic := '0';
		dedicatedaggscanoutch0tieoff	:	out	std_logic := '0';
		dedicatedaggscanoutch1	:	out	std_logic := '0';
		dedicatedaggscanoutch2tieoff	:	out	std_logic := '0';
		delcondmet0botch2	:	out	std_logic := '0';
		delcondmet0ch0	:	out	std_logic := '0';
		delcondmet0ch1	:	out	std_logic := '0';
		delcondmet0ch2	:	out	std_logic := '0';
		delcondmet0topch0	:	out	std_logic := '0';
		delcondmet0topch1	:	out	std_logic := '0';
		delcondmetinbotch2	:	in	std_logic := '0';
		delcondmetinch0	:	in	std_logic := '0';
		delcondmetinch1	:	in	std_logic := '0';
		delcondmetinch2	:	in	std_logic := '0';
		delcondmetintopch0	:	in	std_logic := '0';
		delcondmetintopch1	:	in	std_logic := '0';
		dprioagg	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		endskwqdbotch2	:	out	std_logic := '0';
		endskwqdch0	:	out	std_logic := '0';
		endskwqdch1	:	out	std_logic := '0';
		endskwqdch2	:	out	std_logic := '0';
		endskwqdtopch0	:	out	std_logic := '0';
		endskwqdtopch1	:	out	std_logic := '0';
		endskwrdptrsbotch2	:	out	std_logic := '0';
		endskwrdptrsch0	:	out	std_logic := '0';
		endskwrdptrsch1	:	out	std_logic := '0';
		endskwrdptrsch2	:	out	std_logic := '0';
		endskwrdptrstopch0	:	out	std_logic := '0';
		endskwrdptrstopch1	:	out	std_logic := '0';
		fifoovr0botch2	:	out	std_logic := '0';
		fifoovr0ch0	:	out	std_logic := '0';
		fifoovr0ch1	:	out	std_logic := '0';
		fifoovr0ch2	:	out	std_logic := '0';
		fifoovr0topch0	:	out	std_logic := '0';
		fifoovr0topch1	:	out	std_logic := '0';
		fifoovrinbotch2	:	in	std_logic := '0';
		fifoovrinch0	:	in	std_logic := '0';
		fifoovrinch1	:	in	std_logic := '0';
		fifoovrinch2	:	in	std_logic := '0';
		fifoovrintopch0	:	in	std_logic := '0';
		fifoovrintopch1	:	in	std_logic := '0';
		fifordinbotch2	:	in	std_logic := '0';
		fifordinch0	:	in	std_logic := '0';
		fifordinch1	:	in	std_logic := '0';
		fifordinch2	:	in	std_logic := '0';
		fifordintopch0	:	in	std_logic := '0';
		fifordintopch1	:	in	std_logic := '0';
		fifordoutcomp0botch2	:	out	std_logic := '0';
		fifordoutcomp0ch0	:	out	std_logic := '0';
		fifordoutcomp0ch1	:	out	std_logic := '0';
		fifordoutcomp0ch2	:	out	std_logic := '0';
		fifordoutcomp0topch0	:	out	std_logic := '0';
		fifordoutcomp0topch1	:	out	std_logic := '0';
		fiforstrdqdbotch2	:	out	std_logic := '0';
		fiforstrdqdch0	:	out	std_logic := '0';
		fiforstrdqdch1	:	out	std_logic := '0';
		fiforstrdqdch2	:	out	std_logic := '0';
		fiforstrdqdtopch0	:	out	std_logic := '0';
		fiforstrdqdtopch1	:	out	std_logic := '0';
		insertincomplete0botch2	:	out	std_logic := '0';
		insertincomplete0ch0	:	out	std_logic := '0';
		insertincomplete0ch1	:	out	std_logic := '0';
		insertincomplete0ch2	:	out	std_logic := '0';
		insertincomplete0topch0	:	out	std_logic := '0';
		insertincomplete0topch1	:	out	std_logic := '0';
		insertincompleteinbotch2	:	in	std_logic := '0';
		insertincompleteinch0	:	in	std_logic := '0';
		insertincompleteinch1	:	in	std_logic := '0';
		insertincompleteinch2	:	in	std_logic := '0';
		insertincompleteintopch0	:	in	std_logic := '0';
		insertincompleteintopch1	:	in	std_logic := '0';
		latencycomp0botch2	:	out	std_logic := '0';
		latencycomp0ch0	:	out	std_logic := '0';
		latencycomp0ch1	:	out	std_logic := '0';
		latencycomp0ch2	:	out	std_logic := '0';
		latencycomp0topch0	:	out	std_logic := '0';
		latencycomp0topch1	:	out	std_logic := '0';
		latencycompinbotch2	:	in	std_logic := '0';
		latencycompinch0	:	in	std_logic := '0';
		latencycompinch1	:	in	std_logic := '0';
		latencycompinch2	:	in	std_logic := '0';
		latencycompintopch0	:	in	std_logic := '0';
		latencycompintopch1	:	in	std_logic := '0';
		rcvdclkch0	:	in	std_logic := '0';
		rcvdclkch1	:	in	std_logic := '0';
		rcvdclkout	:	out	std_logic := '0';
		rcvdclkoutbot	:	out	std_logic := '0';
		rcvdclkouttop	:	out	std_logic := '0';
		rdalignbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch0	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch1	:	in	std_logic_vector(1 downto 0) := "00";
		rdalignch2	:	in	std_logic_vector(1 downto 0) := "00";
		rdaligntopch0	:	in	std_logic_vector(1 downto 0) := "00";
		rdaligntopch1	:	in	std_logic_vector(1 downto 0) := "00";
		rdenablesyncbotch2	:	in	std_logic := '0';
		rdenablesyncch0	:	in	std_logic := '0';
		rdenablesyncch1	:	in	std_logic := '0';
		rdenablesyncch2	:	in	std_logic := '0';
		rdenablesynctopch0	:	in	std_logic := '0';
		rdenablesynctopch1	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		runningdispbotch2	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch0	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch1	:	in	std_logic_vector(1 downto 0) := "00";
		runningdispch2	:	in	std_logic_vector(1 downto 0) := "00";
		runningdisptopch0	:	in	std_logic_vector(1 downto 0) := "00";
		runningdisptopch1	:	in	std_logic_vector(1 downto 0) := "00";
		rxctlrsbotch2	:	out	std_logic := '0';
		rxctlrsch0	:	out	std_logic := '0';
		rxctlrsch1	:	out	std_logic := '0';
		rxctlrsch2	:	out	std_logic := '0';
		rxctlrstopch0	:	out	std_logic := '0';
		rxctlrstopch1	:	out	std_logic := '0';
		rxdatarsbotch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarsch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarstopch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxdatarstopch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		rxpcsrstn	:	in	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		scanshiftn	:	in	std_logic := '0';
		syncstatusbotch2	:	in	std_logic := '0';
		syncstatusch0	:	in	std_logic := '0';
		syncstatusch1	:	in	std_logic := '0';
		syncstatusch2	:	in	std_logic := '0';
		syncstatustopch0	:	in	std_logic := '0';
		syncstatustopch1	:	in	std_logic := '0';
		txctltcbotch2	:	in	std_logic := '0';
		txctltcch0	:	in	std_logic := '0';
		txctltcch1	:	in	std_logic := '0';
		txctltcch2	:	in	std_logic := '0';
		txctltctopch0	:	in	std_logic := '0';
		txctltctopch1	:	in	std_logic := '0';
		txctltsbotch2	:	out	std_logic := '0';
		txctltsch0	:	out	std_logic := '0';
		txctltsch1	:	out	std_logic := '0';
		txctltsch2	:	out	std_logic := '0';
		txctltstopch0	:	out	std_logic := '0';
		txctltstopch1	:	out	std_logic := '0';
		txdatatcbotch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatcch2	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatctopch0	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatctopch1	:	in	std_logic_vector(7 downto 0) := "00000000";
		txdatatsbotch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatsch2	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatstopch0	:	out	std_logic_vector(7 downto 0) := "00000000";
		txdatatstopch1	:	out	std_logic_vector(7 downto 0) := "00000000";
		txpcsrstn	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_8g_pcs_aggregate_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		dskw_mnumber_data	=>	dskw_mnumber_data,
		use_default_base_address	=>	use_default_base_address,
		data_agg_bonding	=>	data_agg_bonding,
		xaui_sm_operation	=>	xaui_sm_operation,
		pcs_dw_datapath	=>	pcs_dw_datapath,
		prot_mode_tx	=>	prot_mode_tx,
		dskw_control	=>	dskw_control,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		dskw_sm_operation	=>	dskw_sm_operation,
		refclkdig_sel	=>	refclkdig_sel,
		agg_pwdn	=>	agg_pwdn
	)
	port map	(
		aggtestbusch0	=>	aggtestbusch0,
		aggtestbusch1	=>	aggtestbusch1,
		aggtestbusch2	=>	aggtestbusch2,
		aligndetsyncbotch2	=>	aligndetsyncbotch2,
		aligndetsyncch0	=>	aligndetsyncch0,
		aligndetsyncch1	=>	aligndetsyncch1,
		aligndetsyncch2	=>	aligndetsyncch2,
		aligndetsynctopch0	=>	aligndetsynctopch0,
		aligndetsynctopch1	=>	aligndetsynctopch1,
		alignstatusbotch2	=>	alignstatusbotch2,
		alignstatusch0	=>	alignstatusch0,
		alignstatusch1	=>	alignstatusch1,
		alignstatusch2	=>	alignstatusch2,
		alignstatussync0botch2	=>	alignstatussync0botch2,
		alignstatussync0ch0	=>	alignstatussync0ch0,
		alignstatussync0ch1	=>	alignstatussync0ch1,
		alignstatussync0ch2	=>	alignstatussync0ch2,
		alignstatussync0topch0	=>	alignstatussync0topch0,
		alignstatussync0topch1	=>	alignstatussync0topch1,
		alignstatussyncbotch2	=>	alignstatussyncbotch2,
		alignstatussyncch0	=>	alignstatussyncch0,
		alignstatussyncch1	=>	alignstatussyncch1,
		alignstatussyncch2	=>	alignstatussyncch2,
		alignstatussynctopch0	=>	alignstatussynctopch0,
		alignstatussynctopch1	=>	alignstatussynctopch1,
		alignstatustopch0	=>	alignstatustopch0,
		alignstatustopch1	=>	alignstatustopch1,
		cgcomprddallbotch2	=>	cgcomprddallbotch2,
		cgcomprddallch0	=>	cgcomprddallch0,
		cgcomprddallch1	=>	cgcomprddallch1,
		cgcomprddallch2	=>	cgcomprddallch2,
		cgcomprddalltopch0	=>	cgcomprddalltopch0,
		cgcomprddalltopch1	=>	cgcomprddalltopch1,
		cgcomprddinbotch2	=>	cgcomprddinbotch2,
		cgcomprddinch0	=>	cgcomprddinch0,
		cgcomprddinch1	=>	cgcomprddinch1,
		cgcomprddinch2	=>	cgcomprddinch2,
		cgcomprddintopch0	=>	cgcomprddintopch0,
		cgcomprddintopch1	=>	cgcomprddintopch1,
		cgcompwrallbotch2	=>	cgcompwrallbotch2,
		cgcompwrallch0	=>	cgcompwrallch0,
		cgcompwrallch1	=>	cgcompwrallch1,
		cgcompwrallch2	=>	cgcompwrallch2,
		cgcompwralltopch0	=>	cgcompwralltopch0,
		cgcompwralltopch1	=>	cgcompwralltopch1,
		cgcompwrinbotch2	=>	cgcompwrinbotch2,
		cgcompwrinch0	=>	cgcompwrinch0,
		cgcompwrinch1	=>	cgcompwrinch1,
		cgcompwrinch2	=>	cgcompwrinch2,
		cgcompwrintopch0	=>	cgcompwrintopch0,
		cgcompwrintopch1	=>	cgcompwrintopch1,
		decctlbotch2	=>	decctlbotch2,
		decctlch0	=>	decctlch0,
		decctlch1	=>	decctlch1,
		decctlch2	=>	decctlch2,
		decctltopch0	=>	decctltopch0,
		decctltopch1	=>	decctltopch1,
		decdatabotch2	=>	decdatabotch2,
		decdatach0	=>	decdatach0,
		decdatach1	=>	decdatach1,
		decdatach2	=>	decdatach2,
		decdatatopch0	=>	decdatatopch0,
		decdatatopch1	=>	decdatatopch1,
		decdatavalidbotch2	=>	decdatavalidbotch2,
		decdatavalidch0	=>	decdatavalidch0,
		decdatavalidch1	=>	decdatavalidch1,
		decdatavalidch2	=>	decdatavalidch2,
		decdatavalidtopch0	=>	decdatavalidtopch0,
		decdatavalidtopch1	=>	decdatavalidtopch1,
		dedicatedaggscaninch1	=>	dedicatedaggscaninch1,
		dedicatedaggscanoutch0tieoff	=>	dedicatedaggscanoutch0tieoff,
		dedicatedaggscanoutch1	=>	dedicatedaggscanoutch1,
		dedicatedaggscanoutch2tieoff	=>	dedicatedaggscanoutch2tieoff,
		delcondmet0botch2	=>	delcondmet0botch2,
		delcondmet0ch0	=>	delcondmet0ch0,
		delcondmet0ch1	=>	delcondmet0ch1,
		delcondmet0ch2	=>	delcondmet0ch2,
		delcondmet0topch0	=>	delcondmet0topch0,
		delcondmet0topch1	=>	delcondmet0topch1,
		delcondmetinbotch2	=>	delcondmetinbotch2,
		delcondmetinch0	=>	delcondmetinch0,
		delcondmetinch1	=>	delcondmetinch1,
		delcondmetinch2	=>	delcondmetinch2,
		delcondmetintopch0	=>	delcondmetintopch0,
		delcondmetintopch1	=>	delcondmetintopch1,
		dprioagg	=>	dprioagg,
		endskwqdbotch2	=>	endskwqdbotch2,
		endskwqdch0	=>	endskwqdch0,
		endskwqdch1	=>	endskwqdch1,
		endskwqdch2	=>	endskwqdch2,
		endskwqdtopch0	=>	endskwqdtopch0,
		endskwqdtopch1	=>	endskwqdtopch1,
		endskwrdptrsbotch2	=>	endskwrdptrsbotch2,
		endskwrdptrsch0	=>	endskwrdptrsch0,
		endskwrdptrsch1	=>	endskwrdptrsch1,
		endskwrdptrsch2	=>	endskwrdptrsch2,
		endskwrdptrstopch0	=>	endskwrdptrstopch0,
		endskwrdptrstopch1	=>	endskwrdptrstopch1,
		fifoovr0botch2	=>	fifoovr0botch2,
		fifoovr0ch0	=>	fifoovr0ch0,
		fifoovr0ch1	=>	fifoovr0ch1,
		fifoovr0ch2	=>	fifoovr0ch2,
		fifoovr0topch0	=>	fifoovr0topch0,
		fifoovr0topch1	=>	fifoovr0topch1,
		fifoovrinbotch2	=>	fifoovrinbotch2,
		fifoovrinch0	=>	fifoovrinch0,
		fifoovrinch1	=>	fifoovrinch1,
		fifoovrinch2	=>	fifoovrinch2,
		fifoovrintopch0	=>	fifoovrintopch0,
		fifoovrintopch1	=>	fifoovrintopch1,
		fifordinbotch2	=>	fifordinbotch2,
		fifordinch0	=>	fifordinch0,
		fifordinch1	=>	fifordinch1,
		fifordinch2	=>	fifordinch2,
		fifordintopch0	=>	fifordintopch0,
		fifordintopch1	=>	fifordintopch1,
		fifordoutcomp0botch2	=>	fifordoutcomp0botch2,
		fifordoutcomp0ch0	=>	fifordoutcomp0ch0,
		fifordoutcomp0ch1	=>	fifordoutcomp0ch1,
		fifordoutcomp0ch2	=>	fifordoutcomp0ch2,
		fifordoutcomp0topch0	=>	fifordoutcomp0topch0,
		fifordoutcomp0topch1	=>	fifordoutcomp0topch1,
		fiforstrdqdbotch2	=>	fiforstrdqdbotch2,
		fiforstrdqdch0	=>	fiforstrdqdch0,
		fiforstrdqdch1	=>	fiforstrdqdch1,
		fiforstrdqdch2	=>	fiforstrdqdch2,
		fiforstrdqdtopch0	=>	fiforstrdqdtopch0,
		fiforstrdqdtopch1	=>	fiforstrdqdtopch1,
		insertincomplete0botch2	=>	insertincomplete0botch2,
		insertincomplete0ch0	=>	insertincomplete0ch0,
		insertincomplete0ch1	=>	insertincomplete0ch1,
		insertincomplete0ch2	=>	insertincomplete0ch2,
		insertincomplete0topch0	=>	insertincomplete0topch0,
		insertincomplete0topch1	=>	insertincomplete0topch1,
		insertincompleteinbotch2	=>	insertincompleteinbotch2,
		insertincompleteinch0	=>	insertincompleteinch0,
		insertincompleteinch1	=>	insertincompleteinch1,
		insertincompleteinch2	=>	insertincompleteinch2,
		insertincompleteintopch0	=>	insertincompleteintopch0,
		insertincompleteintopch1	=>	insertincompleteintopch1,
		latencycomp0botch2	=>	latencycomp0botch2,
		latencycomp0ch0	=>	latencycomp0ch0,
		latencycomp0ch1	=>	latencycomp0ch1,
		latencycomp0ch2	=>	latencycomp0ch2,
		latencycomp0topch0	=>	latencycomp0topch0,
		latencycomp0topch1	=>	latencycomp0topch1,
		latencycompinbotch2	=>	latencycompinbotch2,
		latencycompinch0	=>	latencycompinch0,
		latencycompinch1	=>	latencycompinch1,
		latencycompinch2	=>	latencycompinch2,
		latencycompintopch0	=>	latencycompintopch0,
		latencycompintopch1	=>	latencycompintopch1,
		rcvdclkch0	=>	rcvdclkch0,
		rcvdclkch1	=>	rcvdclkch1,
		rcvdclkout	=>	rcvdclkout,
		rcvdclkoutbot	=>	rcvdclkoutbot,
		rcvdclkouttop	=>	rcvdclkouttop,
		rdalignbotch2	=>	rdalignbotch2,
		rdalignch0	=>	rdalignch0,
		rdalignch1	=>	rdalignch1,
		rdalignch2	=>	rdalignch2,
		rdaligntopch0	=>	rdaligntopch0,
		rdaligntopch1	=>	rdaligntopch1,
		rdenablesyncbotch2	=>	rdenablesyncbotch2,
		rdenablesyncch0	=>	rdenablesyncch0,
		rdenablesyncch1	=>	rdenablesyncch1,
		rdenablesyncch2	=>	rdenablesyncch2,
		rdenablesynctopch0	=>	rdenablesynctopch0,
		rdenablesynctopch1	=>	rdenablesynctopch1,
		refclkdig	=>	refclkdig,
		runningdispbotch2	=>	runningdispbotch2,
		runningdispch0	=>	runningdispch0,
		runningdispch1	=>	runningdispch1,
		runningdispch2	=>	runningdispch2,
		runningdisptopch0	=>	runningdisptopch0,
		runningdisptopch1	=>	runningdisptopch1,
		rxctlrsbotch2	=>	rxctlrsbotch2,
		rxctlrsch0	=>	rxctlrsch0,
		rxctlrsch1	=>	rxctlrsch1,
		rxctlrsch2	=>	rxctlrsch2,
		rxctlrstopch0	=>	rxctlrstopch0,
		rxctlrstopch1	=>	rxctlrstopch1,
		rxdatarsbotch2	=>	rxdatarsbotch2,
		rxdatarsch0	=>	rxdatarsch0,
		rxdatarsch1	=>	rxdatarsch1,
		rxdatarsch2	=>	rxdatarsch2,
		rxdatarstopch0	=>	rxdatarstopch0,
		rxdatarstopch1	=>	rxdatarstopch1,
		rxpcsrstn	=>	rxpcsrstn,
		scanmoden	=>	scanmoden,
		scanshiftn	=>	scanshiftn,
		syncstatusbotch2	=>	syncstatusbotch2,
		syncstatusch0	=>	syncstatusch0,
		syncstatusch1	=>	syncstatusch1,
		syncstatusch2	=>	syncstatusch2,
		syncstatustopch0	=>	syncstatustopch0,
		syncstatustopch1	=>	syncstatustopch1,
		txctltcbotch2	=>	txctltcbotch2,
		txctltcch0	=>	txctltcch0,
		txctltcch1	=>	txctltcch1,
		txctltcch2	=>	txctltcch2,
		txctltctopch0	=>	txctltctopch0,
		txctltctopch1	=>	txctltctopch1,
		txctltsbotch2	=>	txctltsbotch2,
		txctltsch0	=>	txctltsch0,
		txctltsch1	=>	txctltsch1,
		txctltsch2	=>	txctltsch2,
		txctltstopch0	=>	txctltstopch0,
		txctltstopch1	=>	txctltstopch1,
		txdatatcbotch2	=>	txdatatcbotch2,
		txdatatcch0	=>	txdatatcch0,
		txdatatcch1	=>	txdatatcch1,
		txdatatcch2	=>	txdatatcch2,
		txdatatctopch0	=>	txdatatctopch0,
		txdatatctopch1	=>	txdatatctopch1,
		txdatatsbotch2	=>	txdatatsbotch2,
		txdatatsch0	=>	txdatatsch0,
		txdatatsch1	=>	txdatatsch1,
		txdatatsch2	=>	txdatatsch2,
		txdatatstopch0	=>	txdatatstopch0,
		txdatatstopch1	=>	txdatatstopch1,
		txpcsrstn	=>	txpcsrstn,
		txpmaclk	=>	txpmaclk
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_8g_rx_pcs	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		fixed_pat_det	:	string	:=	"dis_fixed_patdet";
		byte_deserializer	:	string	:=	"dis_bds";
		polinv_8b10b_dec	:	string	:=	"dis_polinv_8b10b_dec";
		clock_gate_bist	:	string	:=	"dis_bist_clk_gating";
		test_bus_sel	:	string	:=	"prbs_bist_testbus";
		rx_clk2	:	string	:=	"rcvd_clk_clk2";
		cdr_ctrl	:	string	:=	"dis_cdr_ctrl";
		deskew_prog_pattern_only	:	string	:=	"en_deskew_prog_pat_only";
		wa_pld_controlled	:	string	:=	"dis_pld_ctrl";
		wa_rgnumber_data	:	bit_vector	:=	B"0";
		eightb_tenb_decoder	:	string	:=	"dis_8b10b";
		wa_disp_err_flag	:	string	:=	"dis_disp_err_flag";
		re_bo_on_wa	:	string	:=	"dis_re_bo_on_wa";
		wa_renumber_data	:	bit_vector	:=	B"0";
		ibm_invalid_code	:	string	:=	"dis_ibm_invalid_code";
		tx_rx_parallel_loopback	:	string	:=	"dis_plpbk";
		rate_match	:	string	:=	"dis_rm";
		auto_error_replacement	:	string	:=	"dis_err_replace";
		wa_sync_sm_ctrl	:	string	:=	"gige_sync_sm";
		wa_rknumber_data	:	bit_vector	:=	B"0";
		hip_mode	:	string	:=	"dis_hip";
		cdr_ctrl_rxvalid_mask	:	string	:=	"dis_rxvalid_mask";
		deskew_pattern	:	bit_vector	:=	B"1101101000";
		symbol_swap	:	string	:=	"dis_symbol_swap";
		wa_kchar	:	string	:=	"dis_kchar";
		bypass_pipeline_reg	:	string	:=	"dis_bypass_pipeline";
		clock_gate_dw_wa	:	string	:=	"dis_dw_wa_clk_gating";
		clock_gate_dw_pc_wrclk	:	string	:=	"dis_dw_pc_wrclk_gating";
		pad_or_edb_error_replace	:	string	:=	"replace_edb";
		wa_rvnumber_data	:	bit_vector	:=	B"0";
		cid_pattern_len	:	bit_vector	:=	B"0";
		deskew	:	string	:=	"dis_deskew";
		eidle_entry_sd	:	string	:=	"dis_eidle_sd";
		eightbtenb_decoder_output_sel	:	string	:=	"data_8b10b_decoder";
		sup_mode	:	string	:=	"user_mode";
		rx_pcs_urst	:	string	:=	"en_rx_pcs_urst";
		prbs_ver	:	string	:=	"dis_prbs";
		agg_block_sel	:	string	:=	"same_smrt_pack";
		rx_wr_clk	:	string	:=	"rx_clk2_div_1_2_4";
		fixed_pat_num	:	bit_vector	:=	B"1111";
		bo_pattern	:	bit_vector	:=	B"0";
		eidle_entry_iei	:	string	:=	"dis_eidle_iei";
		use_default_base_address	:	string	:=	"true";
		comp_fifo_rst_pld_ctrl	:	string	:=	"dis_comp_fifo_rst_pld_ctrl";
		wait_cnt	:	bit_vector	:=	B"0";
		clkcmp_pattern_n	:	bit_vector	:=	B"0";
		force_signal_detect	:	string	:=	"en_force_signal_detect";
		clock_gate_dw_dskw_wr	:	string	:=	"dis_dw_dskw_wrclk_gating";
		rx_clk1	:	string	:=	"rcvd_clk_clk1";
		pma_done_count	:	bit_vector	:=	B"0";
		invalid_code_flag_only	:	string	:=	"dis_invalid_code_only";
		clock_gate_cdr_eidle	:	string	:=	"dis_cdr_eidle_clk_gating";
		clock_gate_bds_dec_asn	:	string	:=	"dis_bds_dec_asn_clk_gating";
		wa_rosnumber_data	:	bit_vector	:=	B"0";
		clock_gate_sw_rm_rd	:	string	:=	"dis_sw_rm_rdclk_gating";
		err_flags_sel	:	string	:=	"err_flags_wa";
		ctrl_plane_bonding_compensation	:	string	:=	"dis_compensation";
		bist_ver_clr_flag	:	string	:=	"dis_bist_clr_flag";
		clock_gate_byteorder	:	string	:=	"dis_byteorder_clk_gating";
		clock_gate_sw_rm_wr	:	string	:=	"dis_sw_rm_wrclk_gating";
		rx_clk_free_running	:	string	:=	"en_rx_clk_free_run";
		polarity_inversion	:	string	:=	"dis_pol_inv";
		auto_deassert_pc_rst_cnt_data	:	bit_vector	:=	B"0";
		user_base_address	:	integer	:=	0;
		bo_pad	:	bit_vector	:=	B"0";
		clkcmp_pattern_p	:	bit_vector	:=	B"0";
		wa_clk_slip_spacing_data	:	bit_vector	:=	B"10000";
		clock_gate_prbs	:	string	:=	"dis_prbs_clk_gating";
		clock_gate_sw_wa	:	string	:=	"dis_sw_wa_clk_gating";
		runlength_val	:	bit_vector	:=	B"0";
		wa_pd	:	string	:=	"wa_pd_10";
		bit_reversal	:	string	:=	"dis_bit_reversal";
		wa_pd_data	:	bit_vector	:=	B"0";
		pc_fifo_rst_pld_ctrl	:	string	:=	"dis_pc_fifo_rst_pld_ctrl";
		mask_cnt	:	bit_vector	:=	X"3FF";
		ctrl_plane_bonding_distribution	:	string	:=	"not_master_chnl_distr";
		cid_pattern	:	string	:=	"cid_pattern_0";
		wait_for_phfifo_cnt_data	:	bit_vector	:=	B"0";
		pma_dw	:	string	:=	"eight_bit";
		byte_order	:	string	:=	"dis_bo";
		wa_det_latency_sync_status_beh	:	string	:=	"assert_sync_status_non_imm";
		clock_gate_sw_pc_wrclk	:	string	:=	"dis_sw_pc_wrclk_gating";
		prbs_ver_clr_flag	:	string	:=	"dis_prbs_clr_flag";
		clock_gate_pc_rdclk	:	string	:=	"dis_pc_rdclk_gating";
		pcs_bypass	:	string	:=	"dis_pcs_bypass";
		dw_one_or_two_symbol_bo	:	string	:=	"donot_care_one_two_bo";
		pipe_if_enable	:	string	:=	"dis_pipe_rx";
		avmm_group_channel_index	:	integer	:=	0;
		phase_compensation_fifo	:	string	:=	"low_latency";
		clock_gate_dskw_rd	:	string	:=	"dis_dskw_rdclk_gating";
		rx_rcvd_clk	:	string	:=	"rcvd_clk_rcvd_clk";
		rx_refclk	:	string	:=	"dis_refclk_sel";
		channel_number	:	integer	:=	0;
		clock_gate_dw_rm_rd	:	string	:=	"dis_dw_rm_rdclk_gating";
		clock_gate_sw_dskw_wr	:	string	:=	"dis_sw_dskw_wrclk_gating";
		auto_pc_en_cnt_data	:	bit_vector	:=	B"0";
		wa_pd_polarity	:	string	:=	"dis_pd_both_pol";
		wa_clk_slip_spacing	:	string	:=	"min_clk_slip_spacing";
		test_mode	:	string	:=	"prbs";
		wa_boundary_lock_ctrl	:	string	:=	"bit_slip";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		prot_mode	:	string	:=	"basic";
		rx_rd_clk	:	string	:=	"pld_rx_clk";
		eidle_entry_eios	:	string	:=	"dis_eidle_eios";
		auto_speed_nego	:	string	:=	"dis_asn";
		bist_ver	:	string	:=	"dis_bist";
		clock_gate_dw_rm_wr	:	string	:=	"dis_dw_rm_wrclk_gating";
		runlength_check	:	string	:=	"en_runlength_sw";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		a1a2k1k2flag	:	out	std_logic_vector(3 downto 0) := "0000";
		a1a2size	:	in	std_logic := '0';
		aggrxpcsrst	:	out	std_logic := '0';
		aggtestbus	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		aligndetsync	:	out	std_logic_vector(1 downto 0) := "00";
		alignstatus	:	in	std_logic := '0';
		alignstatuspld	:	out	std_logic := '0';
		alignstatussync	:	out	std_logic := '0';
		alignstatussync0	:	in	std_logic := '0';
		alignstatussync0toporbot	:	in	std_logic := '0';
		alignstatustoporbot	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		bistdone	:	out	std_logic := '0';
		bisterr	:	out	std_logic := '0';
		bitreversalenable	:	in	std_logic := '0';
		bitslip	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		byteorder	:	in	std_logic := '0';
		byteordflag	:	out	std_logic := '0';
		bytereversalenable	:	in	std_logic := '0';
		cgcomprddall	:	in	std_logic := '0';
		cgcomprddalltoporbot	:	in	std_logic := '0';
		cgcomprddout	:	out	std_logic_vector(1 downto 0) := "00";
		cgcompwrall	:	in	std_logic := '0';
		cgcompwralltoporbot	:	in	std_logic := '0';
		cgcompwrout	:	out	std_logic_vector(1 downto 0) := "00";
		channeltestbusout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		clocktopld	:	out	std_logic := '0';
		configselinchnldown	:	in	std_logic := '0';
		configselinchnlup	:	in	std_logic := '0';
		configseloutchnldown	:	out	std_logic := '0';
		configseloutchnlup	:	out	std_logic := '0';
		ctrlfromaggblock	:	in	std_logic := '0';
		datafrinaggblock	:	in	std_logic_vector(7 downto 0) := "00000000";
		datain	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		dataout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		decoderctrl	:	out	std_logic := '0';
		decoderdata	:	out	std_logic_vector(7 downto 0) := "00000000";
		decoderdatavalid	:	out	std_logic := '0';
		delcondmet0	:	in	std_logic := '0';
		delcondmet0toporbot	:	in	std_logic := '0';
		delcondmetout	:	out	std_logic := '0';
		disablepcfifobyteserdes	:	out	std_logic := '0';
		dispcbytegen3	:	in	std_logic := '0';
		dynclkswitchn	:	in	std_logic := '0';
		earlyeios	:	out	std_logic := '0';
		eidledetected	:	out	std_logic := '0';
		eidleexit	:	out	std_logic := '0';
		eidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		enablecommadetect	:	in	std_logic := '0';
		endskwqd	:	in	std_logic := '0';
		endskwqdtoporbot	:	in	std_logic := '0';
		endskwrdptrs	:	in	std_logic := '0';
		endskwrdptrstoporbot	:	in	std_logic := '0';
		errctrl	:	out	std_logic_vector(1 downto 0) := "00";
		errdata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		fifoovr0	:	in	std_logic := '0';
		fifoovr0toporbot	:	in	std_logic := '0';
		fifoovrout	:	out	std_logic := '0';
		fifordincomp0toporbot	:	in	std_logic := '0';
		fifordoutcomp	:	out	std_logic := '0';
		fiforstrdqd	:	in	std_logic := '0';
		fiforstrdqdtoporbot	:	in	std_logic := '0';
		gen2ngen1	:	in	std_logic := '0';
		hrdrst	:	in	std_logic := '0';
		insertincomplete0	:	in	std_logic := '0';
		insertincomplete0toporbot	:	in	std_logic := '0';
		insertincompleteout	:	out	std_logic := '0';
		latencycomp0	:	in	std_logic := '0';
		latencycomp0toporbot	:	in	std_logic := '0';
		latencycompout	:	out	std_logic := '0';
		ltr	:	out	std_logic := '0';
		observablebyteserdesclock	:	out	std_logic := '0';
		parallelloopback	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		parallelrevloopback	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcfifoempty	:	out	std_logic := '0';
		pcfifofull	:	out	std_logic := '0';
		pcfifordenable	:	in	std_logic := '0';
		pcieswitch	:	out	std_logic := '0';
		pcieswitchgen3	:	in	std_logic := '0';
		phfifouserrst	:	in	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		phystatusinternal	:	in	std_logic := '0';
		phystatuspcsgen3	:	in	std_logic := '0';
		pipedata	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		pipeloopbk	:	in	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pldrxclk	:	in	std_logic := '0';
		polinvrx	:	in	std_logic := '0';
		prbscidenable	:	in	std_logic := '0';
		prbsdone	:	out	std_logic := '0';
		prbserrlt	:	out	std_logic := '0';
		pxfifowrdisable	:	in	std_logic := '0';
		rateswitchcontrol	:	in	std_logic := '0';
		rcvdclkagg	:	in	std_logic := '0';
		rcvdclkaggtoporbot	:	in	std_logic := '0';
		rcvdclkpma	:	in	std_logic := '0';
		rdalign	:	out	std_logic_vector(1 downto 0) := "00";
		rdenableinchnldown	:	in	std_logic := '0';
		rdenableinchnlup	:	in	std_logic := '0';
		rdenableoutchnldown	:	out	std_logic := '0';
		rdenableoutchnlup	:	out	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		refclkdig2	:	in	std_logic := '0';
		resetpcptrs	:	out	std_logic := '0';
		resetpcptrsgen3	:	in	std_logic := '0';
		resetpcptrsinchnldown	:	in	std_logic := '0';
		resetpcptrsinchnldownpipe	:	out	std_logic := '0';
		resetpcptrsinchnlup	:	in	std_logic := '0';
		resetpcptrsinchnluppipe	:	out	std_logic := '0';
		resetpcptrsoutchnldown	:	out	std_logic := '0';
		resetpcptrsoutchnlup	:	out	std_logic := '0';
		resetppmcntrsgen3	:	in	std_logic := '0';
		resetppmcntrsinchnldown	:	in	std_logic := '0';
		resetppmcntrsinchnlup	:	in	std_logic := '0';
		resetppmcntrsoutchnldown	:	out	std_logic := '0';
		resetppmcntrsoutchnlup	:	out	std_logic := '0';
		resetppmcntrspcspma	:	out	std_logic := '0';
		rlvlt	:	out	std_logic := '0';
		rmfifoempty	:	out	std_logic := '0';
		rmfifofull	:	out	std_logic := '0';
		rmfifopartialempty	:	out	std_logic := '0';
		rmfifopartialfull	:	out	std_logic := '0';
		rmfifordincomp0	:	in	std_logic := '0';
		rmfiforeadenable	:	in	std_logic := '0';
		rmfifouserrst	:	in	std_logic := '0';
		rmfifowriteenable	:	in	std_logic := '0';
		runlengthviolation	:	out	std_logic := '0';
		runningdisparity	:	out	std_logic_vector(1 downto 0) := "00";
		rxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		rxblkstartpcsgen3	:	in	std_logic_vector(3 downto 0) := "0000";
		rxclkoutgen3	:	out	std_logic := '0';
		rxclkslip	:	out	std_logic := '0';
		rxcontrolrstoporbot	:	in	std_logic := '0';
		rxdatapcsgen3	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdatarstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		rxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		rxdatavalidpcsgen3	:	in	std_logic_vector(3 downto 0) := "0000";
		rxdivsyncinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		rxdivsyncinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		rxdivsyncoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		rxdivsyncoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		rxpcsrst	:	in	std_logic := '0';
		rxpipeclk	:	out	std_logic := '0';
		rxpipesoftreset	:	out	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxstatusinternal	:	in	std_logic_vector(2 downto 0) := "000";
		rxstatuspcsgen3	:	in	std_logic_vector(2 downto 0) := "000";
		rxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		rxsynchdrpcsgen3	:	in	std_logic_vector(1 downto 0) := "00";
		rxvalid	:	out	std_logic := '0';
		rxvalidinternal	:	in	std_logic := '0';
		rxvalidpcsgen3	:	in	std_logic := '0';
		rxweinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		rxweinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		rxweoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		rxweoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		scanmode	:	in	std_logic := '0';
		selftestdone	:	out	std_logic := '0';
		selftesterr	:	out	std_logic := '0';
		sigdetfrompma	:	in	std_logic := '0';
		signaldetectout	:	out	std_logic := '0';
		speedchange	:	out	std_logic := '0';
		speedchangeinchnldown	:	in	std_logic := '0';
		speedchangeinchnldownpipe	:	out	std_logic := '0';
		speedchangeinchnlup	:	in	std_logic := '0';
		speedchangeinchnluppipe	:	out	std_logic := '0';
		speedchangeoutchnldown	:	out	std_logic := '0';
		speedchangeoutchnlup	:	out	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		syncsmen	:	in	std_logic := '0';
		syncstatus	:	out	std_logic := '0';
		txctrlplanetestbus	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		txdivsync	:	in	std_logic_vector(1 downto 0) := "00";
		txpmaclk	:	in	std_logic := '0';
		txtestbus	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		wordalignboundary	:	out	std_logic_vector(4 downto 0) := "00000";
		wrenableinchnldown	:	in	std_logic := '0';
		wrenableinchnlup	:	in	std_logic := '0';
		wrenableoutchnldown	:	out	std_logic := '0';
		wrenableoutchnlup	:	out	std_logic := '0'
	);
end	stratixv_hssi_8g_rx_pcs;

architecture behavior of stratixv_hssi_8g_rx_pcs is

constant cid_pattern_len_int	:	integer	:= bin2int(cid_pattern_len);
constant wa_rgnumber_data_int	:	integer	:= bin2int(wa_rgnumber_data);
constant wa_renumber_data_int	:	integer	:= bin2int(wa_renumber_data);
constant wa_rknumber_data_int	:	integer	:= bin2int(wa_rknumber_data);
constant deskew_pattern_int	:	integer	:= bin2int(deskew_pattern);
constant wa_rvnumber_data_int	:	integer	:= bin2int(wa_rvnumber_data);
constant fixed_pat_num_int	:	integer	:= bin2int(fixed_pat_num);
constant bo_pattern_int	:	integer	:= bin2int(bo_pattern);
constant wait_cnt_int	:	integer	:= bin2int(wait_cnt);
constant clkcmp_pattern_n_int	:	integer	:= bin2int(clkcmp_pattern_n);
constant pma_done_count_int	:	integer	:= bin2int(pma_done_count);
constant wa_rosnumber_data_int	:	integer	:= bin2int(wa_rosnumber_data);
constant auto_deassert_pc_rst_cnt_data_int	:	integer	:= bin2int(auto_deassert_pc_rst_cnt_data);
constant bo_pad_int	:	integer	:= bin2int(bo_pad);
constant clkcmp_pattern_p_int	:	integer	:= bin2int(clkcmp_pattern_p);
constant wa_clk_slip_spacing_data_int	:	integer	:= bin2int(wa_clk_slip_spacing_data);
constant runlength_val_int	:	integer	:= bin2int(runlength_val);
constant wa_pd_data_int	:	integer	:= bin2int(wa_pd_data);
constant mask_cnt_int	:	integer	:= bin2int(mask_cnt);
constant wait_for_phfifo_cnt_data_int	:	integer	:= bin2int(wait_for_phfifo_cnt_data);
constant auto_pc_en_cnt_data_int	:	integer	:= bin2int(auto_pc_en_cnt_data);

component	stratixv_hssi_8g_rx_pcs_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		fixed_pat_det	:	string	:=	"dis_fixed_patdet";
		byte_deserializer	:	string	:=	"dis_bds";
		polinv_8b10b_dec	:	string	:=	"dis_polinv_8b10b_dec";
		clock_gate_bist	:	string	:=	"dis_bist_clk_gating";
		test_bus_sel	:	string	:=	"prbs_bist_testbus";
		rx_clk2	:	string	:=	"rcvd_clk_clk2";
		cdr_ctrl	:	string	:=	"dis_cdr_ctrl";
		deskew_prog_pattern_only	:	string	:=	"en_deskew_prog_pat_only";
		wa_pld_controlled	:	string	:=	"dis_pld_ctrl";
		wa_rgnumber_data	:	integer	:=	0;
		eightb_tenb_decoder	:	string	:=	"dis_8b10b";
		wa_disp_err_flag	:	string	:=	"dis_disp_err_flag";
		re_bo_on_wa	:	string	:=	"dis_re_bo_on_wa";
		wa_renumber_data	:	integer	:=	0;
		ibm_invalid_code	:	string	:=	"dis_ibm_invalid_code";
		tx_rx_parallel_loopback	:	string	:=	"dis_plpbk";
		rate_match	:	string	:=	"dis_rm";
		auto_error_replacement	:	string	:=	"dis_err_replace";
		wa_sync_sm_ctrl	:	string	:=	"gige_sync_sm";
		wa_rknumber_data	:	integer	:=	0;
		hip_mode	:	string	:=	"dis_hip";
		cdr_ctrl_rxvalid_mask	:	string	:=	"dis_rxvalid_mask";
		deskew_pattern	:	integer	:=	872;
		symbol_swap	:	string	:=	"dis_symbol_swap";
		wa_kchar	:	string	:=	"dis_kchar";
		bypass_pipeline_reg	:	string	:=	"dis_bypass_pipeline";
		clock_gate_dw_wa	:	string	:=	"dis_dw_wa_clk_gating";
		clock_gate_dw_pc_wrclk	:	string	:=	"dis_dw_pc_wrclk_gating";
		pad_or_edb_error_replace	:	string	:=	"replace_edb";
		wa_rvnumber_data	:	integer	:=	0;
		cid_pattern_len	:	integer	:=	0;
		deskew	:	string	:=	"dis_deskew";
		eidle_entry_sd	:	string	:=	"dis_eidle_sd";
		eightbtenb_decoder_output_sel	:	string	:=	"data_8b10b_decoder";
		sup_mode	:	string	:=	"user_mode";
		rx_pcs_urst	:	string	:=	"en_rx_pcs_urst";
		prbs_ver	:	string	:=	"dis_prbs";
		agg_block_sel	:	string	:=	"same_smrt_pack";
		rx_wr_clk	:	string	:=	"rx_clk2_div_1_2_4";
		fixed_pat_num	:	integer	:=	15;
		bo_pattern	:	integer	:=	0;
		eidle_entry_iei	:	string	:=	"dis_eidle_iei";
		use_default_base_address	:	string	:=	"true";
		comp_fifo_rst_pld_ctrl	:	string	:=	"dis_comp_fifo_rst_pld_ctrl";
		wait_cnt	:	integer	:=	0;
		clkcmp_pattern_n	:	integer	:=	0;
		force_signal_detect	:	string	:=	"en_force_signal_detect";
		clock_gate_dw_dskw_wr	:	string	:=	"dis_dw_dskw_wrclk_gating";
		rx_clk1	:	string	:=	"rcvd_clk_clk1";
		pma_done_count	:	integer	:=	0;
		invalid_code_flag_only	:	string	:=	"dis_invalid_code_only";
		clock_gate_cdr_eidle	:	string	:=	"dis_cdr_eidle_clk_gating";
		clock_gate_bds_dec_asn	:	string	:=	"dis_bds_dec_asn_clk_gating";
		wa_rosnumber_data	:	integer	:=	0;
		clock_gate_sw_rm_rd	:	string	:=	"dis_sw_rm_rdclk_gating";
		err_flags_sel	:	string	:=	"err_flags_wa";
		ctrl_plane_bonding_compensation	:	string	:=	"dis_compensation";
		bist_ver_clr_flag	:	string	:=	"dis_bist_clr_flag";
		clock_gate_byteorder	:	string	:=	"dis_byteorder_clk_gating";
		clock_gate_sw_rm_wr	:	string	:=	"dis_sw_rm_wrclk_gating";
		rx_clk_free_running	:	string	:=	"en_rx_clk_free_run";
		polarity_inversion	:	string	:=	"dis_pol_inv";
		auto_deassert_pc_rst_cnt_data	:	integer	:=	0;
		user_base_address	:	integer	:=	0;
		bo_pad	:	integer	:=	0;
		clkcmp_pattern_p	:	integer	:=	0;
		wa_clk_slip_spacing_data	:	integer	:=	16;
		clock_gate_prbs	:	string	:=	"dis_prbs_clk_gating";
		clock_gate_sw_wa	:	string	:=	"dis_sw_wa_clk_gating";
		runlength_val	:	integer	:=	0;
		wa_pd	:	string	:=	"wa_pd_10";
		bit_reversal	:	string	:=	"dis_bit_reversal";
		wa_pd_data	:	integer	:=	0;
		pc_fifo_rst_pld_ctrl	:	string	:=	"dis_pc_fifo_rst_pld_ctrl";
		mask_cnt	:	integer	:=	1023;
		ctrl_plane_bonding_distribution	:	string	:=	"not_master_chnl_distr";
		cid_pattern	:	string	:=	"cid_pattern_0";
		wait_for_phfifo_cnt_data	:	integer	:=	0;
		pma_dw	:	string	:=	"eight_bit";
		byte_order	:	string	:=	"dis_bo";
		wa_det_latency_sync_status_beh	:	string	:=	"assert_sync_status_non_imm";
		clock_gate_sw_pc_wrclk	:	string	:=	"dis_sw_pc_wrclk_gating";
		prbs_ver_clr_flag	:	string	:=	"dis_prbs_clr_flag";
		clock_gate_pc_rdclk	:	string	:=	"dis_pc_rdclk_gating";
		pcs_bypass	:	string	:=	"dis_pcs_bypass";
		dw_one_or_two_symbol_bo	:	string	:=	"donot_care_one_two_bo";
		pipe_if_enable	:	string	:=	"dis_pipe_rx";
		avmm_group_channel_index	:	integer	:=	0;
		phase_compensation_fifo	:	string	:=	"low_latency";
		clock_gate_dskw_rd	:	string	:=	"dis_dskw_rdclk_gating";
		rx_rcvd_clk	:	string	:=	"rcvd_clk_rcvd_clk";
		rx_refclk	:	string	:=	"dis_refclk_sel";
		channel_number	:	integer	:=	0;
		clock_gate_dw_rm_rd	:	string	:=	"dis_dw_rm_rdclk_gating";
		clock_gate_sw_dskw_wr	:	string	:=	"dis_sw_dskw_wrclk_gating";
		auto_pc_en_cnt_data	:	integer	:=	0;
		wa_pd_polarity	:	string	:=	"dis_pd_both_pol";
		wa_clk_slip_spacing	:	string	:=	"min_clk_slip_spacing";
		test_mode	:	string	:=	"prbs";
		wa_boundary_lock_ctrl	:	string	:=	"bit_slip";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		prot_mode	:	string	:=	"basic";
		rx_rd_clk	:	string	:=	"pld_rx_clk";
		eidle_entry_eios	:	string	:=	"dis_eidle_eios";
		auto_speed_nego	:	string	:=	"dis_asn";
		bist_ver	:	string	:=	"dis_bist";
		clock_gate_dw_rm_wr	:	string	:=	"dis_dw_rm_wrclk_gating";
		runlength_check	:	string	:=	"en_runlength_sw"
	);
	port	(
		a1a2k1k2flag	:	out	std_logic_vector(3 downto 0) := "0000";
		a1a2size	:	in	std_logic := '0';
		aggrxpcsrst	:	out	std_logic := '0';
		aggtestbus	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		aligndetsync	:	out	std_logic_vector(1 downto 0) := "00";
		alignstatus	:	in	std_logic := '0';
		alignstatuspld	:	out	std_logic := '0';
		alignstatussync	:	out	std_logic := '0';
		alignstatussync0	:	in	std_logic := '0';
		alignstatussync0toporbot	:	in	std_logic := '0';
		alignstatustoporbot	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		bistdone	:	out	std_logic := '0';
		bisterr	:	out	std_logic := '0';
		bitreversalenable	:	in	std_logic := '0';
		bitslip	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		byteorder	:	in	std_logic := '0';
		byteordflag	:	out	std_logic := '0';
		bytereversalenable	:	in	std_logic := '0';
		cgcomprddall	:	in	std_logic := '0';
		cgcomprddalltoporbot	:	in	std_logic := '0';
		cgcomprddout	:	out	std_logic_vector(1 downto 0) := "00";
		cgcompwrall	:	in	std_logic := '0';
		cgcompwralltoporbot	:	in	std_logic := '0';
		cgcompwrout	:	out	std_logic_vector(1 downto 0) := "00";
		channeltestbusout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		clocktopld	:	out	std_logic := '0';
		configselinchnldown	:	in	std_logic := '0';
		configselinchnlup	:	in	std_logic := '0';
		configseloutchnldown	:	out	std_logic := '0';
		configseloutchnlup	:	out	std_logic := '0';
		ctrlfromaggblock	:	in	std_logic := '0';
		datafrinaggblock	:	in	std_logic_vector(7 downto 0) := "00000000";
		datain	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		dataout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		decoderctrl	:	out	std_logic := '0';
		decoderdata	:	out	std_logic_vector(7 downto 0) := "00000000";
		decoderdatavalid	:	out	std_logic := '0';
		delcondmet0	:	in	std_logic := '0';
		delcondmet0toporbot	:	in	std_logic := '0';
		delcondmetout	:	out	std_logic := '0';
		disablepcfifobyteserdes	:	out	std_logic := '0';
		dispcbytegen3	:	in	std_logic := '0';
		dynclkswitchn	:	in	std_logic := '0';
		earlyeios	:	out	std_logic := '0';
		eidledetected	:	out	std_logic := '0';
		eidleexit	:	out	std_logic := '0';
		eidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		enablecommadetect	:	in	std_logic := '0';
		endskwqd	:	in	std_logic := '0';
		endskwqdtoporbot	:	in	std_logic := '0';
		endskwrdptrs	:	in	std_logic := '0';
		endskwrdptrstoporbot	:	in	std_logic := '0';
		errctrl	:	out	std_logic_vector(1 downto 0) := "00";
		errdata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		fifoovr0	:	in	std_logic := '0';
		fifoovr0toporbot	:	in	std_logic := '0';
		fifoovrout	:	out	std_logic := '0';
		fifordincomp0toporbot	:	in	std_logic := '0';
		fifordoutcomp	:	out	std_logic := '0';
		fiforstrdqd	:	in	std_logic := '0';
		fiforstrdqdtoporbot	:	in	std_logic := '0';
		gen2ngen1	:	in	std_logic := '0';
		hrdrst	:	in	std_logic := '0';
		insertincomplete0	:	in	std_logic := '0';
		insertincomplete0toporbot	:	in	std_logic := '0';
		insertincompleteout	:	out	std_logic := '0';
		latencycomp0	:	in	std_logic := '0';
		latencycomp0toporbot	:	in	std_logic := '0';
		latencycompout	:	out	std_logic := '0';
		ltr	:	out	std_logic := '0';
		observablebyteserdesclock	:	out	std_logic := '0';
		parallelloopback	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		parallelrevloopback	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcfifoempty	:	out	std_logic := '0';
		pcfifofull	:	out	std_logic := '0';
		pcfifordenable	:	in	std_logic := '0';
		pcieswitch	:	out	std_logic := '0';
		pcieswitchgen3	:	in	std_logic := '0';
		phfifouserrst	:	in	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		phystatusinternal	:	in	std_logic := '0';
		phystatuspcsgen3	:	in	std_logic := '0';
		pipedata	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		pipeloopbk	:	in	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pldrxclk	:	in	std_logic := '0';
		polinvrx	:	in	std_logic := '0';
		prbscidenable	:	in	std_logic := '0';
		prbsdone	:	out	std_logic := '0';
		prbserrlt	:	out	std_logic := '0';
		pxfifowrdisable	:	in	std_logic := '0';
		rateswitchcontrol	:	in	std_logic := '0';
		rcvdclkagg	:	in	std_logic := '0';
		rcvdclkaggtoporbot	:	in	std_logic := '0';
		rcvdclkpma	:	in	std_logic := '0';
		rdalign	:	out	std_logic_vector(1 downto 0) := "00";
		rdenableinchnldown	:	in	std_logic := '0';
		rdenableinchnlup	:	in	std_logic := '0';
		rdenableoutchnldown	:	out	std_logic := '0';
		rdenableoutchnlup	:	out	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		refclkdig2	:	in	std_logic := '0';
		resetpcptrs	:	out	std_logic := '0';
		resetpcptrsgen3	:	in	std_logic := '0';
		resetpcptrsinchnldown	:	in	std_logic := '0';
		resetpcptrsinchnldownpipe	:	out	std_logic := '0';
		resetpcptrsinchnlup	:	in	std_logic := '0';
		resetpcptrsinchnluppipe	:	out	std_logic := '0';
		resetpcptrsoutchnldown	:	out	std_logic := '0';
		resetpcptrsoutchnlup	:	out	std_logic := '0';
		resetppmcntrsgen3	:	in	std_logic := '0';
		resetppmcntrsinchnldown	:	in	std_logic := '0';
		resetppmcntrsinchnlup	:	in	std_logic := '0';
		resetppmcntrsoutchnldown	:	out	std_logic := '0';
		resetppmcntrsoutchnlup	:	out	std_logic := '0';
		resetppmcntrspcspma	:	out	std_logic := '0';
		rlvlt	:	out	std_logic := '0';
		rmfifoempty	:	out	std_logic := '0';
		rmfifofull	:	out	std_logic := '0';
		rmfifopartialempty	:	out	std_logic := '0';
		rmfifopartialfull	:	out	std_logic := '0';
		rmfifordincomp0	:	in	std_logic := '0';
		rmfiforeadenable	:	in	std_logic := '0';
		rmfifouserrst	:	in	std_logic := '0';
		rmfifowriteenable	:	in	std_logic := '0';
		runlengthviolation	:	out	std_logic := '0';
		runningdisparity	:	out	std_logic_vector(1 downto 0) := "00";
		rxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		rxblkstartpcsgen3	:	in	std_logic_vector(3 downto 0) := "0000";
		rxclkoutgen3	:	out	std_logic := '0';
		rxclkslip	:	out	std_logic := '0';
		rxcontrolrstoporbot	:	in	std_logic := '0';
		rxdatapcsgen3	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdatarstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		rxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		rxdatavalidpcsgen3	:	in	std_logic_vector(3 downto 0) := "0000";
		rxdivsyncinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		rxdivsyncinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		rxdivsyncoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		rxdivsyncoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		rxpcsrst	:	in	std_logic := '0';
		rxpipeclk	:	out	std_logic := '0';
		rxpipesoftreset	:	out	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxstatusinternal	:	in	std_logic_vector(2 downto 0) := "000";
		rxstatuspcsgen3	:	in	std_logic_vector(2 downto 0) := "000";
		rxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		rxsynchdrpcsgen3	:	in	std_logic_vector(1 downto 0) := "00";
		rxvalid	:	out	std_logic := '0';
		rxvalidinternal	:	in	std_logic := '0';
		rxvalidpcsgen3	:	in	std_logic := '0';
		rxweinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		rxweinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		rxweoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		rxweoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		scanmode	:	in	std_logic := '0';
		selftestdone	:	out	std_logic := '0';
		selftesterr	:	out	std_logic := '0';
		sigdetfrompma	:	in	std_logic := '0';
		signaldetectout	:	out	std_logic := '0';
		speedchange	:	out	std_logic := '0';
		speedchangeinchnldown	:	in	std_logic := '0';
		speedchangeinchnldownpipe	:	out	std_logic := '0';
		speedchangeinchnlup	:	in	std_logic := '0';
		speedchangeinchnluppipe	:	out	std_logic := '0';
		speedchangeoutchnldown	:	out	std_logic := '0';
		speedchangeoutchnlup	:	out	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		syncsmen	:	in	std_logic := '0';
		syncstatus	:	out	std_logic := '0';
		txctrlplanetestbus	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		txdivsync	:	in	std_logic_vector(1 downto 0) := "00";
		txpmaclk	:	in	std_logic := '0';
		txtestbus	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		wordalignboundary	:	out	std_logic_vector(4 downto 0) := "00000";
		wrenableinchnldown	:	in	std_logic := '0';
		wrenableinchnlup	:	in	std_logic := '0';
		wrenableoutchnldown	:	out	std_logic := '0';
		wrenableoutchnlup	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_8g_rx_pcs_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		fixed_pat_det	=>	fixed_pat_det,
		byte_deserializer	=>	byte_deserializer,
		polinv_8b10b_dec	=>	polinv_8b10b_dec,
		clock_gate_bist	=>	clock_gate_bist,
		test_bus_sel	=>	test_bus_sel,
		rx_clk2	=>	rx_clk2,
		cdr_ctrl	=>	cdr_ctrl,
		deskew_prog_pattern_only	=>	deskew_prog_pattern_only,
		wa_pld_controlled	=>	wa_pld_controlled,
		wa_rgnumber_data	=>	wa_rgnumber_data_int,
		eightb_tenb_decoder	=>	eightb_tenb_decoder,
		wa_disp_err_flag	=>	wa_disp_err_flag,
		re_bo_on_wa	=>	re_bo_on_wa,
		wa_renumber_data	=>	wa_renumber_data_int,
		ibm_invalid_code	=>	ibm_invalid_code,
		tx_rx_parallel_loopback	=>	tx_rx_parallel_loopback,
		rate_match	=>	rate_match,
		auto_error_replacement	=>	auto_error_replacement,
		wa_sync_sm_ctrl	=>	wa_sync_sm_ctrl,
		wa_rknumber_data	=>	wa_rknumber_data_int,
		hip_mode	=>	hip_mode,
		cdr_ctrl_rxvalid_mask	=>	cdr_ctrl_rxvalid_mask,
		deskew_pattern	=>	deskew_pattern_int,
		symbol_swap	=>	symbol_swap,
		wa_kchar	=>	wa_kchar,
		bypass_pipeline_reg	=>	bypass_pipeline_reg,
		clock_gate_dw_wa	=>	clock_gate_dw_wa,
		clock_gate_dw_pc_wrclk	=>	clock_gate_dw_pc_wrclk,
		pad_or_edb_error_replace	=>	pad_or_edb_error_replace,
		wa_rvnumber_data	=>	wa_rvnumber_data_int,
		cid_pattern_len	=>	cid_pattern_len_int,
		deskew	=>	deskew,
		eidle_entry_sd	=>	eidle_entry_sd,
		eightbtenb_decoder_output_sel	=>	eightbtenb_decoder_output_sel,
		sup_mode	=>	sup_mode,
		rx_pcs_urst	=>	rx_pcs_urst,
		prbs_ver	=>	prbs_ver,
		agg_block_sel	=>	agg_block_sel,
		rx_wr_clk	=>	rx_wr_clk,
		fixed_pat_num	=>	fixed_pat_num_int,
		bo_pattern	=>	bo_pattern_int,
		eidle_entry_iei	=>	eidle_entry_iei,
		use_default_base_address	=>	use_default_base_address,
		comp_fifo_rst_pld_ctrl	=>	comp_fifo_rst_pld_ctrl,
		wait_cnt	=>	wait_cnt_int,
		clkcmp_pattern_n	=>	clkcmp_pattern_n_int,
		force_signal_detect	=>	force_signal_detect,
		clock_gate_dw_dskw_wr	=>	clock_gate_dw_dskw_wr,
		rx_clk1	=>	rx_clk1,
		pma_done_count	=>	pma_done_count_int,
		invalid_code_flag_only	=>	invalid_code_flag_only,
		clock_gate_cdr_eidle	=>	clock_gate_cdr_eidle,
		clock_gate_bds_dec_asn	=>	clock_gate_bds_dec_asn,
		wa_rosnumber_data	=>	wa_rosnumber_data_int,
		clock_gate_sw_rm_rd	=>	clock_gate_sw_rm_rd,
		err_flags_sel	=>	err_flags_sel,
		ctrl_plane_bonding_compensation	=>	ctrl_plane_bonding_compensation,
		bist_ver_clr_flag	=>	bist_ver_clr_flag,
		clock_gate_byteorder	=>	clock_gate_byteorder,
		clock_gate_sw_rm_wr	=>	clock_gate_sw_rm_wr,
		rx_clk_free_running	=>	rx_clk_free_running,
		polarity_inversion	=>	polarity_inversion,
		auto_deassert_pc_rst_cnt_data	=>	auto_deassert_pc_rst_cnt_data_int,
		user_base_address	=>	user_base_address,
		bo_pad	=>	bo_pad_int,
		clkcmp_pattern_p	=>	clkcmp_pattern_p_int,
		wa_clk_slip_spacing_data	=>	wa_clk_slip_spacing_data_int,
		clock_gate_prbs	=>	clock_gate_prbs,
		clock_gate_sw_wa	=>	clock_gate_sw_wa,
		runlength_val	=>	runlength_val_int,
		wa_pd	=>	wa_pd,
		bit_reversal	=>	bit_reversal,
		wa_pd_data	=>	wa_pd_data_int,
		pc_fifo_rst_pld_ctrl	=>	pc_fifo_rst_pld_ctrl,
		mask_cnt	=>	mask_cnt_int,
		ctrl_plane_bonding_distribution	=>	ctrl_plane_bonding_distribution,
		cid_pattern	=>	cid_pattern,
		wait_for_phfifo_cnt_data	=>	wait_for_phfifo_cnt_data_int,
		pma_dw	=>	pma_dw,
		byte_order	=>	byte_order,
		wa_det_latency_sync_status_beh	=>	wa_det_latency_sync_status_beh,
		clock_gate_sw_pc_wrclk	=>	clock_gate_sw_pc_wrclk,
		prbs_ver_clr_flag	=>	prbs_ver_clr_flag,
		clock_gate_pc_rdclk	=>	clock_gate_pc_rdclk,
		pcs_bypass	=>	pcs_bypass,
		dw_one_or_two_symbol_bo	=>	dw_one_or_two_symbol_bo,
		pipe_if_enable	=>	pipe_if_enable,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		phase_compensation_fifo	=>	phase_compensation_fifo,
		clock_gate_dskw_rd	=>	clock_gate_dskw_rd,
		rx_rcvd_clk	=>	rx_rcvd_clk,
		rx_refclk	=>	rx_refclk,
		channel_number	=>	channel_number,
		clock_gate_dw_rm_rd	=>	clock_gate_dw_rm_rd,
		clock_gate_sw_dskw_wr	=>	clock_gate_sw_dskw_wr,
		auto_pc_en_cnt_data	=>	auto_pc_en_cnt_data_int,
		wa_pd_polarity	=>	wa_pd_polarity,
		wa_clk_slip_spacing	=>	wa_clk_slip_spacing,
		test_mode	=>	test_mode,
		wa_boundary_lock_ctrl	=>	wa_boundary_lock_ctrl,
		ctrl_plane_bonding_consumption	=>	ctrl_plane_bonding_consumption,
		prot_mode	=>	prot_mode,
		rx_rd_clk	=>	rx_rd_clk,
		eidle_entry_eios	=>	eidle_entry_eios,
		auto_speed_nego	=>	auto_speed_nego,
		bist_ver	=>	bist_ver,
		clock_gate_dw_rm_wr	=>	clock_gate_dw_rm_wr,
		runlength_check	=>	runlength_check
	)
	port map	(
		a1a2k1k2flag	=>	a1a2k1k2flag,
		a1a2size	=>	a1a2size,
		aggrxpcsrst	=>	aggrxpcsrst,
		aggtestbus	=>	aggtestbus,
		aligndetsync	=>	aligndetsync,
		alignstatus	=>	alignstatus,
		alignstatuspld	=>	alignstatuspld,
		alignstatussync	=>	alignstatussync,
		alignstatussync0	=>	alignstatussync0,
		alignstatussync0toporbot	=>	alignstatussync0toporbot,
		alignstatustoporbot	=>	alignstatustoporbot,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		bistdone	=>	bistdone,
		bisterr	=>	bisterr,
		bitreversalenable	=>	bitreversalenable,
		bitslip	=>	bitslip,
		blockselect	=>	blockselect,
		byteorder	=>	byteorder,
		byteordflag	=>	byteordflag,
		bytereversalenable	=>	bytereversalenable,
		cgcomprddall	=>	cgcomprddall,
		cgcomprddalltoporbot	=>	cgcomprddalltoporbot,
		cgcomprddout	=>	cgcomprddout,
		cgcompwrall	=>	cgcompwrall,
		cgcompwralltoporbot	=>	cgcompwralltoporbot,
		cgcompwrout	=>	cgcompwrout,
		channeltestbusout	=>	channeltestbusout,
		clocktopld	=>	clocktopld,
		configselinchnldown	=>	configselinchnldown,
		configselinchnlup	=>	configselinchnlup,
		configseloutchnldown	=>	configseloutchnldown,
		configseloutchnlup	=>	configseloutchnlup,
		ctrlfromaggblock	=>	ctrlfromaggblock,
		datafrinaggblock	=>	datafrinaggblock,
		datain	=>	datain,
		dataout	=>	dataout,
		decoderctrl	=>	decoderctrl,
		decoderdata	=>	decoderdata,
		decoderdatavalid	=>	decoderdatavalid,
		delcondmet0	=>	delcondmet0,
		delcondmet0toporbot	=>	delcondmet0toporbot,
		delcondmetout	=>	delcondmetout,
		disablepcfifobyteserdes	=>	disablepcfifobyteserdes,
		dispcbytegen3	=>	dispcbytegen3,
		dynclkswitchn	=>	dynclkswitchn,
		earlyeios	=>	earlyeios,
		eidledetected	=>	eidledetected,
		eidleexit	=>	eidleexit,
		eidleinfersel	=>	eidleinfersel,
		enablecommadetect	=>	enablecommadetect,
		endskwqd	=>	endskwqd,
		endskwqdtoporbot	=>	endskwqdtoporbot,
		endskwrdptrs	=>	endskwrdptrs,
		endskwrdptrstoporbot	=>	endskwrdptrstoporbot,
		errctrl	=>	errctrl,
		errdata	=>	errdata,
		fifoovr0	=>	fifoovr0,
		fifoovr0toporbot	=>	fifoovr0toporbot,
		fifoovrout	=>	fifoovrout,
		fifordincomp0toporbot	=>	fifordincomp0toporbot,
		fifordoutcomp	=>	fifordoutcomp,
		fiforstrdqd	=>	fiforstrdqd,
		fiforstrdqdtoporbot	=>	fiforstrdqdtoporbot,
		gen2ngen1	=>	gen2ngen1,
		hrdrst	=>	hrdrst,
		insertincomplete0	=>	insertincomplete0,
		insertincomplete0toporbot	=>	insertincomplete0toporbot,
		insertincompleteout	=>	insertincompleteout,
		latencycomp0	=>	latencycomp0,
		latencycomp0toporbot	=>	latencycomp0toporbot,
		latencycompout	=>	latencycompout,
		ltr	=>	ltr,
		observablebyteserdesclock	=>	observablebyteserdesclock,
		parallelloopback	=>	parallelloopback,
		parallelrevloopback	=>	parallelrevloopback,
		pcfifoempty	=>	pcfifoempty,
		pcfifofull	=>	pcfifofull,
		pcfifordenable	=>	pcfifordenable,
		pcieswitch	=>	pcieswitch,
		pcieswitchgen3	=>	pcieswitchgen3,
		phfifouserrst	=>	phfifouserrst,
		phystatus	=>	phystatus,
		phystatusinternal	=>	phystatusinternal,
		phystatuspcsgen3	=>	phystatuspcsgen3,
		pipedata	=>	pipedata,
		pipeloopbk	=>	pipeloopbk,
		pldltr	=>	pldltr,
		pldrxclk	=>	pldrxclk,
		polinvrx	=>	polinvrx,
		prbscidenable	=>	prbscidenable,
		prbsdone	=>	prbsdone,
		prbserrlt	=>	prbserrlt,
		pxfifowrdisable	=>	pxfifowrdisable,
		rateswitchcontrol	=>	rateswitchcontrol,
		rcvdclkagg	=>	rcvdclkagg,
		rcvdclkaggtoporbot	=>	rcvdclkaggtoporbot,
		rcvdclkpma	=>	rcvdclkpma,
		rdalign	=>	rdalign,
		rdenableinchnldown	=>	rdenableinchnldown,
		rdenableinchnlup	=>	rdenableinchnlup,
		rdenableoutchnldown	=>	rdenableoutchnldown,
		rdenableoutchnlup	=>	rdenableoutchnlup,
		refclkdig	=>	refclkdig,
		refclkdig2	=>	refclkdig2,
		resetpcptrs	=>	resetpcptrs,
		resetpcptrsgen3	=>	resetpcptrsgen3,
		resetpcptrsinchnldown	=>	resetpcptrsinchnldown,
		resetpcptrsinchnldownpipe	=>	resetpcptrsinchnldownpipe,
		resetpcptrsinchnlup	=>	resetpcptrsinchnlup,
		resetpcptrsinchnluppipe	=>	resetpcptrsinchnluppipe,
		resetpcptrsoutchnldown	=>	resetpcptrsoutchnldown,
		resetpcptrsoutchnlup	=>	resetpcptrsoutchnlup,
		resetppmcntrsgen3	=>	resetppmcntrsgen3,
		resetppmcntrsinchnldown	=>	resetppmcntrsinchnldown,
		resetppmcntrsinchnlup	=>	resetppmcntrsinchnlup,
		resetppmcntrsoutchnldown	=>	resetppmcntrsoutchnldown,
		resetppmcntrsoutchnlup	=>	resetppmcntrsoutchnlup,
		resetppmcntrspcspma	=>	resetppmcntrspcspma,
		rlvlt	=>	rlvlt,
		rmfifoempty	=>	rmfifoempty,
		rmfifofull	=>	rmfifofull,
		rmfifopartialempty	=>	rmfifopartialempty,
		rmfifopartialfull	=>	rmfifopartialfull,
		rmfifordincomp0	=>	rmfifordincomp0,
		rmfiforeadenable	=>	rmfiforeadenable,
		rmfifouserrst	=>	rmfifouserrst,
		rmfifowriteenable	=>	rmfifowriteenable,
		runlengthviolation	=>	runlengthviolation,
		runningdisparity	=>	runningdisparity,
		rxblkstart	=>	rxblkstart,
		rxblkstartpcsgen3	=>	rxblkstartpcsgen3,
		rxclkoutgen3	=>	rxclkoutgen3,
		rxclkslip	=>	rxclkslip,
		rxcontrolrstoporbot	=>	rxcontrolrstoporbot,
		rxdatapcsgen3	=>	rxdatapcsgen3,
		rxdatarstoporbot	=>	rxdatarstoporbot,
		rxdatavalid	=>	rxdatavalid,
		rxdatavalidpcsgen3	=>	rxdatavalidpcsgen3,
		rxdivsyncinchnldown	=>	rxdivsyncinchnldown,
		rxdivsyncinchnlup	=>	rxdivsyncinchnlup,
		rxdivsyncoutchnldown	=>	rxdivsyncoutchnldown,
		rxdivsyncoutchnlup	=>	rxdivsyncoutchnlup,
		rxpcsrst	=>	rxpcsrst,
		rxpipeclk	=>	rxpipeclk,
		rxpipesoftreset	=>	rxpipesoftreset,
		rxstatus	=>	rxstatus,
		rxstatusinternal	=>	rxstatusinternal,
		rxstatuspcsgen3	=>	rxstatuspcsgen3,
		rxsynchdr	=>	rxsynchdr,
		rxsynchdrpcsgen3	=>	rxsynchdrpcsgen3,
		rxvalid	=>	rxvalid,
		rxvalidinternal	=>	rxvalidinternal,
		rxvalidpcsgen3	=>	rxvalidpcsgen3,
		rxweinchnldown	=>	rxweinchnldown,
		rxweinchnlup	=>	rxweinchnlup,
		rxweoutchnldown	=>	rxweoutchnldown,
		rxweoutchnlup	=>	rxweoutchnlup,
		scanmode	=>	scanmode,
		selftestdone	=>	selftestdone,
		selftesterr	=>	selftesterr,
		sigdetfrompma	=>	sigdetfrompma,
		signaldetectout	=>	signaldetectout,
		speedchange	=>	speedchange,
		speedchangeinchnldown	=>	speedchangeinchnldown,
		speedchangeinchnldownpipe	=>	speedchangeinchnldownpipe,
		speedchangeinchnlup	=>	speedchangeinchnlup,
		speedchangeinchnluppipe	=>	speedchangeinchnluppipe,
		speedchangeoutchnldown	=>	speedchangeoutchnldown,
		speedchangeoutchnlup	=>	speedchangeoutchnlup,
		syncdatain	=>	syncdatain,
		syncsmen	=>	syncsmen,
		syncstatus	=>	syncstatus,
		txctrlplanetestbus	=>	txctrlplanetestbus,
		txdivsync	=>	txdivsync,
		txpmaclk	=>	txpmaclk,
		txtestbus	=>	txtestbus,
		wordalignboundary	=>	wordalignboundary,
		wrenableinchnldown	=>	wrenableinchnldown,
		wrenableinchnlup	=>	wrenableinchnlup,
		wrenableoutchnldown	=>	wrenableoutchnldown,
		wrenableoutchnlup	=>	wrenableoutchnlup
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_8g_tx_pcs	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		clock_gate_bist	:	string	:=	"dis_bist_clk_gating";
		clock_gate_bs_enc	:	string	:=	"dis_bs_enc_clk_gating";
		ctrl_plane_bonding_compensation	:	string	:=	"dis_compensation";
		data_selection_8b10b_encoder_input	:	string	:=	"normal_data_path";
		dynamic_clk_switch	:	string	:=	"dis_dyn_clk_switch";
		eightb_tenb_disp_ctrl	:	string	:=	"dis_disp_ctrl";
		phfifo_write_clk_sel	:	string	:=	"pld_tx_clk";
		bist_gen	:	string	:=	"dis_bist";
		polarity_inversion	:	string	:=	"dis_polinv";
		user_base_address	:	integer	:=	0;
		byte_serializer	:	string	:=	"dis_bs";
		refclk_b_clk_sel	:	string	:=	"tx_pma_clock";
		clock_gate_prbs	:	string	:=	"dis_prbs_clk_gating";
		tx_bitslip	:	string	:=	"dis_tx_bitslip";
		bit_reversal	:	string	:=	"dis_bit_reversal";
		force_kchar	:	string	:=	"dis_force_kchar";
		force_echar	:	string	:=	"dis_force_echar";
		hip_mode	:	string	:=	"dis_hip";
		clock_gate_dw_fifowr	:	string	:=	"dis_dw_fifowr_clk_gating";
		symbol_swap	:	string	:=	"dis_symbol_swap";
		ctrl_plane_bonding_distribution	:	string	:=	"not_master_chnl_distr";
		cid_pattern	:	string	:=	"cid_pattern_0";
		pma_dw	:	string	:=	"eight_bit";
		bypass_pipeline_reg	:	string	:=	"dis_bypass_pipeline";
		cid_pattern_len	:	bit_vector	:=	B"0";
		clock_gate_sw_fifowr	:	string	:=	"dis_sw_fifowr_clk_gating";
		pcfifo_urst	:	string	:=	"dis_pcfifourst";
		eightb_tenb_encoder	:	string	:=	"dis_8b10b";
		pcs_bypass	:	string	:=	"dis_pcs_bypass";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		phase_compensation_fifo	:	string	:=	"low_latency";
		txclk_freerun	:	string	:=	"en_freerun_tx";
		agg_block_sel	:	string	:=	"same_smrt_pack";
		auto_speed_nego_gen2	:	string	:=	"dis_asn_g2";
		txpcs_urst	:	string	:=	"en_txpcs_urst";
		channel_number	:	integer	:=	0;
		revloop_back_rm	:	string	:=	"dis_rev_loopback_rx_rm";
		use_default_base_address	:	string	:=	"true";
		test_mode	:	string	:=	"prbs";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		clock_gate_fiford	:	string	:=	"dis_fiford_clk_gating";
		prot_mode	:	string	:=	"basic";
		tx_compliance_controlled_disparity	:	string	:=	"dis_txcompliance";
		prbs_gen	:	string	:=	"dis_prbs";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		aggtxpcsrst	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		bitslipboundaryselect	:	in	std_logic_vector(4 downto 0) := "00000";
		blockselect	:	out	std_logic := '0';
		clkout	:	out	std_logic := '0';
		clkoutgen3	:	out	std_logic := '0';
		clkselgen3	:	in	std_logic := '0';
		coreclk	:	in	std_logic := '0';
		datain	:	in	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		dataout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		detectrxloopin	:	in	std_logic := '0';
		detectrxloopout	:	out	std_logic := '0';
		dispcbyte	:	in	std_logic := '0';
		dynclkswitchn	:	out	std_logic := '0';
		elecidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		enrevparallellpbk	:	in	std_logic := '0';
		fifoselectinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		fifoselectinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		fifoselectoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		fifoselectoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		grayelecidleinferselout	:	out	std_logic_vector(2 downto 0) := "000";
		hrdrst	:	in	std_logic := '1';
		invpol	:	in	std_logic := '0';
		observablebyteserdesclock	:	out	std_logic := '0';
		parallelfdbkout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		phfifooverflow	:	out	std_logic := '0';
		phfiforddisable	:	in	std_logic := '0';
		phfiforeset	:	in	std_logic := '0';
		phfifotxdeemph	:	out	std_logic := '0';
		phfifotxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		phfifotxswing	:	out	std_logic := '0';
		phfifounderflow	:	out	std_logic := '0';
		phfifowrenable	:	in	std_logic := '0';
		pipeenrevparallellpbkin	:	in	std_logic := '0';
		pipeenrevparallellpbkout	:	out	std_logic := '0';
		pipepowerdownout	:	out	std_logic_vector(1 downto 0) := "00";
		pipetxdeemph	:	in	std_logic := '0';
		pipetxmargin	:	in	std_logic_vector(2 downto 0) := "000";
		pipetxswing	:	in	std_logic := '0';
		polinvrxin	:	in	std_logic := '0';
		polinvrxout	:	out	std_logic := '0';
		powerdn	:	in	std_logic_vector(1 downto 0) := "00";
		prbscidenable	:	in	std_logic := '0';
		rateswitch	:	in	std_logic := '0';
		rdenableinchnldown	:	in	std_logic := '0';
		rdenableinchnlup	:	in	std_logic := '0';
		rdenableoutchnldown	:	out	std_logic := '0';
		rdenableoutchnlup	:	out	std_logic := '0';
		rdenablesync	:	out	std_logic := '0';
		refclkb	:	out	std_logic := '0';
		refclkbreset	:	out	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		resetpcptrs	:	in	std_logic := '0';
		resetpcptrsinchnldown	:	in	std_logic := '0';
		resetpcptrsinchnlup	:	in	std_logic := '0';
		revparallellpbkdata	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		rxpolarityin	:	in	std_logic := '0';
		rxpolarityout	:	out	std_logic := '0';
		scanmode	:	in	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		txblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		txblkstartout	:	out	std_logic_vector(3 downto 0) := "0000";
		txcomplianceout	:	out	std_logic := '0';
		txctrlplanetestbus	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		txdatakouttogen3	:	out	std_logic_vector(3 downto 0) := "0000";
		txdataouttogen3	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		txdatavalidouttogen3	:	out	std_logic_vector(3 downto 0) := "0000";
		txdivsync	:	out	std_logic_vector(1 downto 0) := "00";
		txdivsyncinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		txdivsyncinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		txdivsyncoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		txdivsyncoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		txelecidleout	:	out	std_logic := '0';
		txpcsreset	:	in	std_logic := '0';
		txpipeclk	:	out	std_logic := '0';
		txpipeelectidle	:	out	std_logic := '0';
		txpipesoftreset	:	out	std_logic := '0';
		txpmalocalclk	:	in	std_logic := '0';
		txsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		txsynchdrout	:	out	std_logic_vector(1 downto 0) := "00";
		txtestbus	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		wrenableinchnldown	:	in	std_logic := '0';
		wrenableinchnlup	:	in	std_logic := '0';
		wrenableoutchnldown	:	out	std_logic := '0';
		wrenableoutchnlup	:	out	std_logic := '0';
		xgmctrl	:	in	std_logic := '0';
		xgmctrlenable	:	out	std_logic := '0';
		xgmctrltoporbottom	:	in	std_logic := '0';
		xgmdatain	:	in	std_logic_vector(7 downto 0) := "00000000";
		xgmdataintoporbottom	:	in	std_logic_vector(7 downto 0) := "00000000";
		xgmdataout	:	out	std_logic_vector(7 downto 0) := "00000000"
	);
end	stratixv_hssi_8g_tx_pcs;

architecture behavior of stratixv_hssi_8g_tx_pcs is

constant cid_pattern_len_int	:	integer	:= bin2int(cid_pattern_len);

component	stratixv_hssi_8g_tx_pcs_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		clock_gate_bist	:	string	:=	"dis_bist_clk_gating";
		clock_gate_bs_enc	:	string	:=	"dis_bs_enc_clk_gating";
		ctrl_plane_bonding_compensation	:	string	:=	"dis_compensation";
		data_selection_8b10b_encoder_input	:	string	:=	"normal_data_path";
		dynamic_clk_switch	:	string	:=	"dis_dyn_clk_switch";
		eightb_tenb_disp_ctrl	:	string	:=	"dis_disp_ctrl";
		phfifo_write_clk_sel	:	string	:=	"pld_tx_clk";
		bist_gen	:	string	:=	"dis_bist";
		polarity_inversion	:	string	:=	"dis_polinv";
		user_base_address	:	integer	:=	0;
		byte_serializer	:	string	:=	"dis_bs";
		refclk_b_clk_sel	:	string	:=	"tx_pma_clock";
		clock_gate_prbs	:	string	:=	"dis_prbs_clk_gating";
		tx_bitslip	:	string	:=	"dis_tx_bitslip";
		bit_reversal	:	string	:=	"dis_bit_reversal";
		force_kchar	:	string	:=	"dis_force_kchar";
		force_echar	:	string	:=	"dis_force_echar";
		hip_mode	:	string	:=	"dis_hip";
		clock_gate_dw_fifowr	:	string	:=	"dis_dw_fifowr_clk_gating";
		symbol_swap	:	string	:=	"dis_symbol_swap";
		ctrl_plane_bonding_distribution	:	string	:=	"not_master_chnl_distr";
		cid_pattern	:	string	:=	"cid_pattern_0";
		pma_dw	:	string	:=	"eight_bit";
		bypass_pipeline_reg	:	string	:=	"dis_bypass_pipeline";
		cid_pattern_len	:	integer	:=	0;
		clock_gate_sw_fifowr	:	string	:=	"dis_sw_fifowr_clk_gating";
		pcfifo_urst	:	string	:=	"dis_pcfifourst";
		eightb_tenb_encoder	:	string	:=	"dis_8b10b";
		pcs_bypass	:	string	:=	"dis_pcs_bypass";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		phase_compensation_fifo	:	string	:=	"low_latency";
		txclk_freerun	:	string	:=	"en_freerun_tx";
		agg_block_sel	:	string	:=	"same_smrt_pack";
		auto_speed_nego_gen2	:	string	:=	"dis_asn_g2";
		txpcs_urst	:	string	:=	"en_txpcs_urst";
		channel_number	:	integer	:=	0;
		revloop_back_rm	:	string	:=	"dis_rev_loopback_rx_rm";
		use_default_base_address	:	string	:=	"true";
		test_mode	:	string	:=	"prbs";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		clock_gate_fiford	:	string	:=	"dis_fiford_clk_gating";
		prot_mode	:	string	:=	"basic";
		tx_compliance_controlled_disparity	:	string	:=	"dis_txcompliance";
		prbs_gen	:	string	:=	"dis_prbs"
	);
	port	(
		aggtxpcsrst	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		bitslipboundaryselect	:	in	std_logic_vector(4 downto 0) := "00000";
		blockselect	:	out	std_logic := '0';
		clkout	:	out	std_logic := '0';
		clkoutgen3	:	out	std_logic := '0';
		clkselgen3	:	in	std_logic := '0';
		coreclk	:	in	std_logic := '0';
		datain	:	in	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		dataout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		detectrxloopin	:	in	std_logic := '0';
		detectrxloopout	:	out	std_logic := '0';
		dispcbyte	:	in	std_logic := '0';
		dynclkswitchn	:	out	std_logic := '0';
		elecidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		enrevparallellpbk	:	in	std_logic := '0';
		fifoselectinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		fifoselectinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		fifoselectoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		fifoselectoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		grayelecidleinferselout	:	out	std_logic_vector(2 downto 0) := "000";
		hrdrst	:	in	std_logic := '1';
		invpol	:	in	std_logic := '0';
		observablebyteserdesclock	:	out	std_logic := '0';
		parallelfdbkout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		phfifooverflow	:	out	std_logic := '0';
		phfiforddisable	:	in	std_logic := '0';
		phfiforeset	:	in	std_logic := '0';
		phfifotxdeemph	:	out	std_logic := '0';
		phfifotxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		phfifotxswing	:	out	std_logic := '0';
		phfifounderflow	:	out	std_logic := '0';
		phfifowrenable	:	in	std_logic := '0';
		pipeenrevparallellpbkin	:	in	std_logic := '0';
		pipeenrevparallellpbkout	:	out	std_logic := '0';
		pipepowerdownout	:	out	std_logic_vector(1 downto 0) := "00";
		pipetxdeemph	:	in	std_logic := '0';
		pipetxmargin	:	in	std_logic_vector(2 downto 0) := "000";
		pipetxswing	:	in	std_logic := '0';
		polinvrxin	:	in	std_logic := '0';
		polinvrxout	:	out	std_logic := '0';
		powerdn	:	in	std_logic_vector(1 downto 0) := "00";
		prbscidenable	:	in	std_logic := '0';
		rateswitch	:	in	std_logic := '0';
		rdenableinchnldown	:	in	std_logic := '0';
		rdenableinchnlup	:	in	std_logic := '0';
		rdenableoutchnldown	:	out	std_logic := '0';
		rdenableoutchnlup	:	out	std_logic := '0';
		rdenablesync	:	out	std_logic := '0';
		refclkb	:	out	std_logic := '0';
		refclkbreset	:	out	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		resetpcptrs	:	in	std_logic := '0';
		resetpcptrsinchnldown	:	in	std_logic := '0';
		resetpcptrsinchnlup	:	in	std_logic := '0';
		revparallellpbkdata	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		rxpolarityin	:	in	std_logic := '0';
		rxpolarityout	:	out	std_logic := '0';
		scanmode	:	in	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		txblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		txblkstartout	:	out	std_logic_vector(3 downto 0) := "0000";
		txcomplianceout	:	out	std_logic := '0';
		txctrlplanetestbus	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		txdatakouttogen3	:	out	std_logic_vector(3 downto 0) := "0000";
		txdataouttogen3	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		txdatavalidouttogen3	:	out	std_logic_vector(3 downto 0) := "0000";
		txdivsync	:	out	std_logic_vector(1 downto 0) := "00";
		txdivsyncinchnldown	:	in	std_logic_vector(1 downto 0) := "00";
		txdivsyncinchnlup	:	in	std_logic_vector(1 downto 0) := "00";
		txdivsyncoutchnldown	:	out	std_logic_vector(1 downto 0) := "00";
		txdivsyncoutchnlup	:	out	std_logic_vector(1 downto 0) := "00";
		txelecidleout	:	out	std_logic := '0';
		txpcsreset	:	in	std_logic := '0';
		txpipeclk	:	out	std_logic := '0';
		txpipeelectidle	:	out	std_logic := '0';
		txpipesoftreset	:	out	std_logic := '0';
		txpmalocalclk	:	in	std_logic := '0';
		txsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		txsynchdrout	:	out	std_logic_vector(1 downto 0) := "00";
		txtestbus	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		wrenableinchnldown	:	in	std_logic := '0';
		wrenableinchnlup	:	in	std_logic := '0';
		wrenableoutchnldown	:	out	std_logic := '0';
		wrenableoutchnlup	:	out	std_logic := '0';
		xgmctrl	:	in	std_logic := '0';
		xgmctrlenable	:	out	std_logic := '0';
		xgmctrltoporbottom	:	in	std_logic := '0';
		xgmdatain	:	in	std_logic_vector(7 downto 0) := "00000000";
		xgmdataintoporbottom	:	in	std_logic_vector(7 downto 0) := "00000000";
		xgmdataout	:	out	std_logic_vector(7 downto 0) := "00000000"
	);
end component;

begin


inst : stratixv_hssi_8g_tx_pcs_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		clock_gate_bist	=>	clock_gate_bist,
		clock_gate_bs_enc	=>	clock_gate_bs_enc,
		ctrl_plane_bonding_compensation	=>	ctrl_plane_bonding_compensation,
		data_selection_8b10b_encoder_input	=>	data_selection_8b10b_encoder_input,
		dynamic_clk_switch	=>	dynamic_clk_switch,
		eightb_tenb_disp_ctrl	=>	eightb_tenb_disp_ctrl,
		phfifo_write_clk_sel	=>	phfifo_write_clk_sel,
		bist_gen	=>	bist_gen,
		polarity_inversion	=>	polarity_inversion,
		user_base_address	=>	user_base_address,
		byte_serializer	=>	byte_serializer,
		refclk_b_clk_sel	=>	refclk_b_clk_sel,
		clock_gate_prbs	=>	clock_gate_prbs,
		tx_bitslip	=>	tx_bitslip,
		bit_reversal	=>	bit_reversal,
		force_kchar	=>	force_kchar,
		force_echar	=>	force_echar,
		hip_mode	=>	hip_mode,
		clock_gate_dw_fifowr	=>	clock_gate_dw_fifowr,
		symbol_swap	=>	symbol_swap,
		ctrl_plane_bonding_distribution	=>	ctrl_plane_bonding_distribution,
		cid_pattern	=>	cid_pattern,
		pma_dw	=>	pma_dw,
		bypass_pipeline_reg	=>	bypass_pipeline_reg,
		cid_pattern_len	=>	cid_pattern_len_int,
		clock_gate_sw_fifowr	=>	clock_gate_sw_fifowr,
		pcfifo_urst	=>	pcfifo_urst,
		eightb_tenb_encoder	=>	eightb_tenb_encoder,
		pcs_bypass	=>	pcs_bypass,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		sup_mode	=>	sup_mode,
		phase_compensation_fifo	=>	phase_compensation_fifo,
		txclk_freerun	=>	txclk_freerun,
		agg_block_sel	=>	agg_block_sel,
		auto_speed_nego_gen2	=>	auto_speed_nego_gen2,
		txpcs_urst	=>	txpcs_urst,
		channel_number	=>	channel_number,
		revloop_back_rm	=>	revloop_back_rm,
		use_default_base_address	=>	use_default_base_address,
		test_mode	=>	test_mode,
		ctrl_plane_bonding_consumption	=>	ctrl_plane_bonding_consumption,
		clock_gate_fiford	=>	clock_gate_fiford,
		prot_mode	=>	prot_mode,
		tx_compliance_controlled_disparity	=>	tx_compliance_controlled_disparity,
		prbs_gen	=>	prbs_gen
	)
	port map	(
		aggtxpcsrst	=>	aggtxpcsrst,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		bitslipboundaryselect	=>	bitslipboundaryselect,
		blockselect	=>	blockselect,
		clkout	=>	clkout,
		clkoutgen3	=>	clkoutgen3,
		clkselgen3	=>	clkselgen3,
		coreclk	=>	coreclk,
		datain	=>	datain,
		dataout	=>	dataout,
		detectrxloopin	=>	detectrxloopin,
		detectrxloopout	=>	detectrxloopout,
		dispcbyte	=>	dispcbyte,
		dynclkswitchn	=>	dynclkswitchn,
		elecidleinfersel	=>	elecidleinfersel,
		enrevparallellpbk	=>	enrevparallellpbk,
		fifoselectinchnldown	=>	fifoselectinchnldown,
		fifoselectinchnlup	=>	fifoselectinchnlup,
		fifoselectoutchnldown	=>	fifoselectoutchnldown,
		fifoselectoutchnlup	=>	fifoselectoutchnlup,
		grayelecidleinferselout	=>	grayelecidleinferselout,
		hrdrst	=>	hrdrst,
		invpol	=>	invpol,
		observablebyteserdesclock	=>	observablebyteserdesclock,
		parallelfdbkout	=>	parallelfdbkout,
		phfifooverflow	=>	phfifooverflow,
		phfiforddisable	=>	phfiforddisable,
		phfiforeset	=>	phfiforeset,
		phfifotxdeemph	=>	phfifotxdeemph,
		phfifotxmargin	=>	phfifotxmargin,
		phfifotxswing	=>	phfifotxswing,
		phfifounderflow	=>	phfifounderflow,
		phfifowrenable	=>	phfifowrenable,
		pipeenrevparallellpbkin	=>	pipeenrevparallellpbkin,
		pipeenrevparallellpbkout	=>	pipeenrevparallellpbkout,
		pipepowerdownout	=>	pipepowerdownout,
		pipetxdeemph	=>	pipetxdeemph,
		pipetxmargin	=>	pipetxmargin,
		pipetxswing	=>	pipetxswing,
		polinvrxin	=>	polinvrxin,
		polinvrxout	=>	polinvrxout,
		powerdn	=>	powerdn,
		prbscidenable	=>	prbscidenable,
		rateswitch	=>	rateswitch,
		rdenableinchnldown	=>	rdenableinchnldown,
		rdenableinchnlup	=>	rdenableinchnlup,
		rdenableoutchnldown	=>	rdenableoutchnldown,
		rdenableoutchnlup	=>	rdenableoutchnlup,
		rdenablesync	=>	rdenablesync,
		refclkb	=>	refclkb,
		refclkbreset	=>	refclkbreset,
		refclkdig	=>	refclkdig,
		resetpcptrs	=>	resetpcptrs,
		resetpcptrsinchnldown	=>	resetpcptrsinchnldown,
		resetpcptrsinchnlup	=>	resetpcptrsinchnlup,
		revparallellpbkdata	=>	revparallellpbkdata,
		rxpolarityin	=>	rxpolarityin,
		rxpolarityout	=>	rxpolarityout,
		scanmode	=>	scanmode,
		syncdatain	=>	syncdatain,
		txblkstart	=>	txblkstart,
		txblkstartout	=>	txblkstartout,
		txcomplianceout	=>	txcomplianceout,
		txctrlplanetestbus	=>	txctrlplanetestbus,
		txdatakouttogen3	=>	txdatakouttogen3,
		txdataouttogen3	=>	txdataouttogen3,
		txdatavalid	=>	txdatavalid,
		txdatavalidouttogen3	=>	txdatavalidouttogen3,
		txdivsync	=>	txdivsync,
		txdivsyncinchnldown	=>	txdivsyncinchnldown,
		txdivsyncinchnlup	=>	txdivsyncinchnlup,
		txdivsyncoutchnldown	=>	txdivsyncoutchnldown,
		txdivsyncoutchnlup	=>	txdivsyncoutchnlup,
		txelecidleout	=>	txelecidleout,
		txpcsreset	=>	txpcsreset,
		txpipeclk	=>	txpipeclk,
		txpipeelectidle	=>	txpipeelectidle,
		txpipesoftreset	=>	txpipesoftreset,
		txpmalocalclk	=>	txpmalocalclk,
		txsynchdr	=>	txsynchdr,
		txsynchdrout	=>	txsynchdrout,
		txtestbus	=>	txtestbus,
		wrenableinchnldown	=>	wrenableinchnldown,
		wrenableinchnlup	=>	wrenableinchnlup,
		wrenableoutchnldown	=>	wrenableoutchnldown,
		wrenableoutchnlup	=>	wrenableoutchnlup,
		xgmctrl	=>	xgmctrl,
		xgmctrlenable	=>	xgmctrlenable,
		xgmctrltoporbottom	=>	xgmctrltoporbottom,
		xgmdatain	=>	xgmdatain,
		xgmdataintoporbottom	=>	xgmdataintoporbottom,
		xgmdataout	=>	xgmdataout
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_pipe_gen1_2	is
	generic	(
		rpre_emph_a_val	:	bit_vector	:=	B"0";
		rpre_emph_d_val	:	bit_vector	:=	B"0";
		rxdetect_bypass	:	string	:=	"dis_rxdetect_bypass";
		pipe_byte_de_serializer_en	:	string	:=	"dont_care_bds";
		rvod_sel_settings	:	bit_vector	:=	B"0";
		elec_idle_delay_val	:	bit_vector	:=	B"0";
		elecidle_delay	:	string	:=	"elec_idle_delay";
		rvod_sel_c_val	:	bit_vector	:=	B"0";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		rvod_sel_a_val	:	bit_vector	:=	B"0";
		error_replace_pad	:	string	:=	"replace_edb";
		ind_error_reporting	:	string	:=	"dis_ind_error_reporting";
		phy_status_delay	:	string	:=	"phystatus_delay";
		user_base_address	:	integer	:=	0;
		rvod_sel_b_val	:	bit_vector	:=	B"0";
		phystatus_delay_val	:	bit_vector	:=	B"0";
		rvod_sel_d_val	:	bit_vector	:=	B"0";
		use_default_base_address	:	string	:=	"true";
		phystatus_rst_toggle	:	string	:=	"dis_phystatus_rst_toggle";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		txswing	:	string	:=	"dis_txswing";
		rx_pipe_enable	:	string	:=	"dis_pipe_rx";
		prot_mode	:	string	:=	"pipe_g1";
		rpre_emph_c_val	:	bit_vector	:=	B"0";
		rvod_sel_e_val	:	bit_vector	:=	B"0";
		rpre_emph_settings	:	bit_vector	:=	B"0";
		hip_mode	:	string	:=	"dis_hip";
		tx_pipe_enable	:	string	:=	"dis_pipe_tx";
		rpre_emph_e_val	:	bit_vector	:=	B"0";
		rpre_emph_b_val	:	bit_vector	:=	B"0";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		currentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pcieswitch	:	in	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		piperxclk	:	in	std_logic := '0';
		pipetxclk	:	in	std_logic := '0';
		polinvrx	:	in	std_logic := '0';
		polinvrxint	:	out	std_logic := '0';
		powerdown	:	in	std_logic_vector(1 downto 0) := "00";
		powerstatetransitiondone	:	in	std_logic := '0';
		powerstatetransitiondoneena	:	in	std_logic := '0';
		refclkb	:	in	std_logic := '0';
		refclkbreset	:	in	std_logic := '0';
		revloopback	:	in	std_logic := '0';
		revloopbk	:	out	std_logic := '0';
		revloopbkpcsgen3	:	in	std_logic := '0';
		rxd	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdch	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdetectvalid	:	in	std_logic := '0';
		rxelecidle	:	out	std_logic := '0';
		rxelectricalidle	:	in	std_logic := '0';
		rxelectricalidleout	:	out	std_logic := '0';
		rxelectricalidlepcsgen3	:	in	std_logic := '0';
		rxfound	:	in	std_logic := '0';
		rxpipereset	:	in	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxpolaritypcsgen3	:	in	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxvalid	:	out	std_logic := '0';
		sigdetni	:	in	std_logic := '0';
		speedchange	:	in	std_logic := '0';
		speedchangechnldown	:	in	std_logic := '0';
		speedchangechnlup	:	in	std_logic := '0';
		speedchangeout	:	out	std_logic := '0';
		txd	:	out	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		txdch	:	in	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		txdeemph	:	in	std_logic := '0';
		txdetectrx	:	out	std_logic := '0';
		txdetectrxloopback	:	in	std_logic := '0';
		txelecidlecomp	:	in	std_logic := '0';
		txelecidlein	:	in	std_logic := '0';
		txelecidleout	:	out	std_logic := '0';
		txmargin	:	in	std_logic_vector(2 downto 0) := "000";
		txpipereset	:	in	std_logic := '0';
		txswingport	:	in	std_logic := '0'
	);
end	stratixv_hssi_pipe_gen1_2;

architecture behavior of stratixv_hssi_pipe_gen1_2 is

constant elec_idle_delay_val_int	:	integer	:= bin2int(elec_idle_delay_val);
constant rpre_emph_a_val_int	:	integer	:= bin2int(rpre_emph_a_val);
constant rpre_emph_b_val_int	:	integer	:= bin2int(rpre_emph_b_val);
constant rpre_emph_c_val_int	:	integer	:= bin2int(rpre_emph_c_val);
constant rpre_emph_d_val_int	:	integer	:= bin2int(rpre_emph_d_val);
constant rpre_emph_e_val_int	:	integer	:= bin2int(rpre_emph_e_val);
constant rvod_sel_settings_int	:	integer	:= bin2int(rvod_sel_settings);
constant rvod_sel_a_val_int	:	integer	:= bin2int(rvod_sel_a_val);
constant rvod_sel_b_val_int	:	integer	:= bin2int(rvod_sel_b_val);
constant rvod_sel_c_val_int	:	integer	:= bin2int(rvod_sel_c_val);
constant rvod_sel_d_val_int	:	integer	:= bin2int(rvod_sel_d_val);
constant rvod_sel_e_val_int	:	integer	:= bin2int(rvod_sel_e_val);
constant phystatus_delay_val_int	:	integer	:= bin2int(phystatus_delay_val);
constant rpre_emph_settings_int	:	integer	:= bin2int(rpre_emph_settings);

component	stratixv_hssi_pipe_gen1_2_encrypted
	generic	(
		rpre_emph_a_val	:	integer	:=	0;
		rpre_emph_d_val	:	integer	:=	0;
		rxdetect_bypass	:	string	:=	"dis_rxdetect_bypass";
		pipe_byte_de_serializer_en	:	string	:=	"dont_care_bds";
		rvod_sel_settings	:	integer	:=	0;
		elec_idle_delay_val	:	integer	:=	0;
		elecidle_delay	:	string	:=	"elec_idle_delay";
		rvod_sel_c_val	:	integer	:=	0;
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		rvod_sel_a_val	:	integer	:=	0;
		error_replace_pad	:	string	:=	"replace_edb";
		ind_error_reporting	:	string	:=	"dis_ind_error_reporting";
		phy_status_delay	:	string	:=	"phystatus_delay";
		user_base_address	:	integer	:=	0;
		rvod_sel_b_val	:	integer	:=	0;
		phystatus_delay_val	:	integer	:=	0;
		rvod_sel_d_val	:	integer	:=	0;
		use_default_base_address	:	string	:=	"true";
		phystatus_rst_toggle	:	string	:=	"dis_phystatus_rst_toggle";
		ctrl_plane_bonding_consumption	:	string	:=	"individual";
		txswing	:	string	:=	"dis_txswing";
		rx_pipe_enable	:	string	:=	"dis_pipe_rx";
		prot_mode	:	string	:=	"pipe_g1";
		rpre_emph_c_val	:	integer	:=	0;
		rvod_sel_e_val	:	integer	:=	0;
		rpre_emph_settings	:	integer	:=	0;
		hip_mode	:	string	:=	"dis_hip";
		tx_pipe_enable	:	string	:=	"dis_pipe_tx";
		rpre_emph_e_val	:	integer	:=	0;
		rpre_emph_b_val	:	integer	:=	0
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		currentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pcieswitch	:	in	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		piperxclk	:	in	std_logic := '0';
		pipetxclk	:	in	std_logic := '0';
		polinvrx	:	in	std_logic := '0';
		polinvrxint	:	out	std_logic := '0';
		powerdown	:	in	std_logic_vector(1 downto 0) := "00";
		powerstatetransitiondone	:	in	std_logic := '0';
		powerstatetransitiondoneena	:	in	std_logic := '0';
		refclkb	:	in	std_logic := '0';
		refclkbreset	:	in	std_logic := '0';
		revloopback	:	in	std_logic := '0';
		revloopbk	:	out	std_logic := '0';
		revloopbkpcsgen3	:	in	std_logic := '0';
		rxd	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdch	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdetectvalid	:	in	std_logic := '0';
		rxelecidle	:	out	std_logic := '0';
		rxelectricalidle	:	in	std_logic := '0';
		rxelectricalidleout	:	out	std_logic := '0';
		rxelectricalidlepcsgen3	:	in	std_logic := '0';
		rxfound	:	in	std_logic := '0';
		rxpipereset	:	in	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxpolaritypcsgen3	:	in	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxvalid	:	out	std_logic := '0';
		sigdetni	:	in	std_logic := '0';
		speedchange	:	in	std_logic := '0';
		speedchangechnldown	:	in	std_logic := '0';
		speedchangechnlup	:	in	std_logic := '0';
		speedchangeout	:	out	std_logic := '0';
		txd	:	out	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		txdch	:	in	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		txdeemph	:	in	std_logic := '0';
		txdetectrx	:	out	std_logic := '0';
		txdetectrxloopback	:	in	std_logic := '0';
		txelecidlecomp	:	in	std_logic := '0';
		txelecidlein	:	in	std_logic := '0';
		txelecidleout	:	out	std_logic := '0';
		txmargin	:	in	std_logic_vector(2 downto 0) := "000";
		txpipereset	:	in	std_logic := '0';
		txswingport	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pipe_gen1_2_encrypted
	generic map	(
		rpre_emph_a_val	=>	rpre_emph_a_val_int,
		rpre_emph_d_val	=>	rpre_emph_d_val_int,
		rxdetect_bypass	=>	rxdetect_bypass,
		pipe_byte_de_serializer_en	=>	pipe_byte_de_serializer_en,
		rvod_sel_settings	=>	rvod_sel_settings_int,
		elec_idle_delay_val	=>	elec_idle_delay_val_int,
		elecidle_delay	=>	elecidle_delay,
		rvod_sel_c_val	=>	rvod_sel_c_val_int,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		sup_mode	=>	sup_mode,
		rvod_sel_a_val	=>	rvod_sel_a_val_int,
		error_replace_pad	=>	error_replace_pad,
		ind_error_reporting	=>	ind_error_reporting,
		phy_status_delay	=>	phy_status_delay,
		user_base_address	=>	user_base_address,
		rvod_sel_b_val	=>	rvod_sel_b_val_int,
		phystatus_delay_val	=>	phystatus_delay_val_int,
		rvod_sel_d_val	=>	rvod_sel_d_val_int,
		use_default_base_address	=>	use_default_base_address,
		phystatus_rst_toggle	=>	phystatus_rst_toggle,
		ctrl_plane_bonding_consumption	=>	ctrl_plane_bonding_consumption,
		txswing	=>	txswing,
		rx_pipe_enable	=>	rx_pipe_enable,
		prot_mode	=>	prot_mode,
		rpre_emph_c_val	=>	rpre_emph_c_val_int,
		rvod_sel_e_val	=>	rvod_sel_e_val_int,
		rpre_emph_settings	=>	rpre_emph_settings_int,
		hip_mode	=>	hip_mode,
		tx_pipe_enable	=>	tx_pipe_enable,
		rpre_emph_e_val	=>	rpre_emph_e_val_int,
		rpre_emph_b_val	=>	rpre_emph_b_val_int
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		currentcoeff	=>	currentcoeff,
		pcieswitch	=>	pcieswitch,
		phystatus	=>	phystatus,
		piperxclk	=>	piperxclk,
		pipetxclk	=>	pipetxclk,
		polinvrx	=>	polinvrx,
		polinvrxint	=>	polinvrxint,
		powerdown	=>	powerdown,
		powerstatetransitiondone	=>	powerstatetransitiondone,
		powerstatetransitiondoneena	=>	powerstatetransitiondoneena,
		refclkb	=>	refclkb,
		refclkbreset	=>	refclkbreset,
		revloopback	=>	revloopback,
		revloopbk	=>	revloopbk,
		revloopbkpcsgen3	=>	revloopbkpcsgen3,
		rxd	=>	rxd,
		rxdch	=>	rxdch,
		rxdetectvalid	=>	rxdetectvalid,
		rxelecidle	=>	rxelecidle,
		rxelectricalidle	=>	rxelectricalidle,
		rxelectricalidleout	=>	rxelectricalidleout,
		rxelectricalidlepcsgen3	=>	rxelectricalidlepcsgen3,
		rxfound	=>	rxfound,
		rxpipereset	=>	rxpipereset,
		rxpolarity	=>	rxpolarity,
		rxpolaritypcsgen3	=>	rxpolaritypcsgen3,
		rxstatus	=>	rxstatus,
		rxvalid	=>	rxvalid,
		sigdetni	=>	sigdetni,
		speedchange	=>	speedchange,
		speedchangechnldown	=>	speedchangechnldown,
		speedchangechnlup	=>	speedchangechnlup,
		speedchangeout	=>	speedchangeout,
		txd	=>	txd,
		txdch	=>	txdch,
		txdeemph	=>	txdeemph,
		txdetectrx	=>	txdetectrx,
		txdetectrxloopback	=>	txdetectrxloopback,
		txelecidlecomp	=>	txelecidlecomp,
		txelecidlein	=>	txelecidlein,
		txelecidleout	=>	txelecidleout,
		txmargin	=>	txmargin,
		txpipereset	=>	txpipereset,
		txswingport	=>	txswingport
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pipe_gen3	is
	generic	(
		ph_fifo_reg_mode	:	string	:=	"phfifo_reg_mode_dis";
		phfifo_flush_wait_data	:	bit_vector	:=	B"0";
		bypass_rx_preset_data	:	bit_vector	:=	B"0";
		mode	:	string	:=	"pipe_g1";
		test_out_sel	:	string	:=	"disable";
		asn_enable	:	string	:=	"dis_asn";
		ctrl_plane_bonding	:	string	:=	"individual";
		cp_dwn_mstr	:	string	:=	"false";
		rxvalid_mask	:	string	:=	"rxvalid_mask_en";
		elecidle_delay_g3_data	:	bit_vector	:=	B"0";
		phy_status_delay_g3_data	:	bit_vector	:=	B"0";
		bypass_rx_detection_enable	:	string	:=	"false";
		wait_send_syncp_fbkp_data	:	bit_vector	:=	B"11111010";
		user_base_address	:	integer	:=	0;
		wait_pipe_synchronizing	:	string	:=	"wait_pipe_sync";
		asn_clk_enable	:	string	:=	"false";
		pma_done_counter	:	string	:=	"pma_done_count";
		inf_ei_enable	:	string	:=	"dis_inf_ei";
		cid_enable	:	string	:=	"en_cid_mode";
		phy_status_delay_g12	:	string	:=	"phy_status_delay_g12";
		pc_en_counter_data	:	bit_vector	:=	B"110111";
		data_mask_count	:	string	:=	"data_mask_count";
		data_mask_count_val	:	bit_vector	:=	B"0";
		bypass_tx_coefficent_enable	:	string	:=	"false";
		wait_clk_on_off_timer_data	:	bit_vector	:=	B"100";
		pc_rst_counter	:	string	:=	"pc_rst_count";
		phystatus_rst_toggle_g12	:	string	:=	"dis_phystatus_rst_toggle";
		wait_send_syncp_fbkp	:	string	:=	"wait_send_syncp_fbkp";
		elecidle_delay_g3	:	string	:=	"elecidle_delay_g3";
		sigdet_wait_counter_data	:	bit_vector	:=	B"0";
		cp_up_mstr	:	string	:=	"false";
		pma_done_counter_data	:	bit_vector	:=	B"0";
		test_mode_timers	:	string	:=	"dis_test_mode_timers";
		pc_rst_counter_data	:	bit_vector	:=	B"10111";
		cdr_control	:	string	:=	"en_cdr_ctrl";
		phy_status_delay_g3	:	string	:=	"phy_status_delay_g3";
		bypass_rx_preset	:	string	:=	"rx_preset_bypass";
		bypass_tx_coefficent_data	:	bit_vector	:=	B"0";
		bypass_pma_sw_done	:	string	:=	"false";
		bypass_send_syncp_fbkp	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		wait_pipe_synchronizing_data	:	bit_vector	:=	B"10111";
		phy_status_delay_g12_data	:	bit_vector	:=	B"0";
		free_run_clk_enable	:	string	:=	"true";
		phystatus_rst_toggle_g3	:	string	:=	"dis_phystatus_rst_toggle_g3";
		ind_error_reporting	:	string	:=	"dis_ind_error_reporting";
		cp_cons_sel	:	string	:=	"cp_cons_default";
		bypass_tx_coefficent	:	string	:=	"tx_coeff_bypass";
		phfifo_flush_wait	:	string	:=	"phfifo_flush_wait";
		sigdet_wait_counter	:	string	:=	"sigdet_wait_counter";
		use_default_base_address	:	string	:=	"true";
		pc_en_counter	:	string	:=	"pc_en_count";
		rate_match_pad_insertion	:	string	:=	"dis_rm_fifo_pad_ins";
		pipe_clk_sel	:	string	:=	"func_clk";
		wait_clk_on_off_timer	:	string	:=	"wait_clk_on_off_timer";
		bypass_rx_preset_enable	:	string	:=	"false";
		spd_chnge_g2_sel	:	string	:=	"false";
		parity_chk_ts1	:	string	:=	"en_ts1_parity_chk";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkalgndint	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		bundlingindown	:	in	std_logic_vector(10 downto 0) := "00000000000";
		bundlinginup	:	in	std_logic_vector(10 downto 0) := "00000000000";
		bundlingoutdown	:	out	std_logic_vector(10 downto 0) := "00000000000";
		bundlingoutup	:	out	std_logic_vector(10 downto 0) := "00000000000";
		clkcompdeleteint	:	in	std_logic := '0';
		clkcompinsertint	:	in	std_logic := '0';
		clkcompoverflint	:	in	std_logic := '0';
		clkcompundflint	:	in	std_logic := '0';
		currentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		currentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		dispcbyte	:	out	std_logic := '0';
		eidetint	:	in	std_logic := '0';
		eidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		eipartialdetint	:	in	std_logic := '0';
		errdecodeint	:	in	std_logic := '0';
		errencodeint	:	in	std_logic := '0';
		gen3clksel	:	out	std_logic := '0';
		gen3datasel	:	out	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		idetint	:	in	std_logic := '0';
		inferredrxvalidint	:	out	std_logic := '0';
		masktxpll	:	out	std_logic := '0';
		pcsrst	:	out	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pllfixedclk	:	in	std_logic := '0';
		pmacurrentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pmacurrentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pmaearlyeios	:	out	std_logic := '0';
		pmaltr	:	out	std_logic := '0';
		pmapcieswdone	:	in	std_logic_vector(1 downto 0) := "00";
		pmapcieswitch	:	out	std_logic_vector(1 downto 0) := "00";
		pmarxdetectvalid	:	in	std_logic := '0';
		pmarxdetpd	:	out	std_logic := '0';
		pmarxfound	:	in	std_logic := '0';
		pmasignaldet	:	in	std_logic := '0';
		pmatxdeemph	:	out	std_logic := '0';
		pmatxdetectrx	:	out	std_logic := '0';
		pmatxelecidle	:	out	std_logic := '0';
		pmatxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		pmatxswing	:	out	std_logic := '0';
		powerdown	:	in	std_logic_vector(1 downto 0) := "00";
		ppmcntrst8gpcsout	:	out	std_logic := '0';
		ppmeidleexit	:	out	std_logic := '0';
		rate	:	in	std_logic_vector(1 downto 0) := "00";
		rcvdclk	:	in	std_logic := '0';
		rcvlfsrchkint	:	in	std_logic := '0';
		resetpcprts	:	out	std_logic := '0';
		revlpbk8gpcsout	:	out	std_logic := '0';
		revlpbkint	:	out	std_logic := '0';
		rrxdigclksel	:	in	std_logic := '0';
		rrxgen3capen	:	in	std_logic := '0';
		rtxdigclksel	:	in	std_logic := '0';
		rtxgen3capen	:	in	std_logic := '0';
		rxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		rxblkstartint	:	in	std_logic := '0';
		rxd8gpcsin	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxd8gpcsout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdataint	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		rxdatakint	:	in	std_logic_vector(3 downto 0) := "0000";
		rxdataskip	:	out	std_logic_vector(3 downto 0) := "0000";
		rxdataskipint	:	in	std_logic := '0';
		rxelecidle	:	out	std_logic := '0';
		rxelecidle8gpcsin	:	in	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxpolarity8gpcsout	:	out	std_logic := '0';
		rxpolarityint	:	out	std_logic := '0';
		rxrstn	:	in	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		rxsynchdrint	:	in	std_logic_vector(1 downto 0) := "00";
		rxtestout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		rxupdatefc	:	in	std_logic := '0';
		rxvalid	:	out	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	out	std_logic := '0';
		speedchangeg2	:	in	std_logic := '0';
		testinfei	:	out	std_logic_vector(18 downto 0) := "0000000000000000000";
		testout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		txblkstart	:	in	std_logic := '0';
		txblkstartint	:	out	std_logic := '0';
		txcompliance	:	in	std_logic := '0';
		txdata	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdataint	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdatak	:	in	std_logic_vector(3 downto 0) := "0000";
		txdatakint	:	out	std_logic_vector(3 downto 0) := "0000";
		txdataskip	:	in	std_logic := '0';
		txdataskipint	:	out	std_logic := '0';
		txdeemph	:	in	std_logic := '0';
		txdetectrxloopback	:	in	std_logic := '0';
		txelecidle	:	in	std_logic := '0';
		txmargin	:	in	std_logic_vector(2 downto 0) := "000";
		txpmaclk	:	in	std_logic := '0';
		txpmasyncp	:	out	std_logic := '0';
		txpmasyncphip	:	in	std_logic := '0';
		txrstn	:	in	std_logic := '0';
		txswing	:	in	std_logic := '0';
		txsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		txsynchdrint	:	out	std_logic_vector(1 downto 0) := "00"
	);
end	stratixv_hssi_pipe_gen3;

architecture behavior of stratixv_hssi_pipe_gen3 is

component	stratixv_hssi_pipe_gen3_encrypted
	generic	(
		ph_fifo_reg_mode	:	string	:=	"phfifo_reg_mode_dis";
		phfifo_flush_wait_data	:	bit_vector	:=	B"0";
		bypass_rx_preset_data	:	bit_vector	:=	B"0";
		mode	:	string	:=	"pipe_g1";
		test_out_sel	:	string	:=	"disable";
		asn_enable	:	string	:=	"dis_asn";
		ctrl_plane_bonding	:	string	:=	"individual";
		cp_dwn_mstr	:	string	:=	"false";
		rxvalid_mask	:	string	:=	"rxvalid_mask_en";
		elecidle_delay_g3_data	:	bit_vector	:=	B"0";
		phy_status_delay_g3_data	:	bit_vector	:=	B"0";
		bypass_rx_detection_enable	:	string	:=	"false";
		wait_send_syncp_fbkp_data	:	bit_vector	:=	B"11111010";
		user_base_address	:	integer	:=	0;
		wait_pipe_synchronizing	:	string	:=	"wait_pipe_sync";
		asn_clk_enable	:	string	:=	"false";
		pma_done_counter	:	string	:=	"pma_done_count";
		inf_ei_enable	:	string	:=	"dis_inf_ei";
		cid_enable	:	string	:=	"en_cid_mode";
		phy_status_delay_g12	:	string	:=	"phy_status_delay_g12";
		pc_en_counter_data	:	bit_vector	:=	B"110111";
		data_mask_count	:	string	:=	"data_mask_count";
		data_mask_count_val	:	bit_vector	:=	B"0";
		bypass_tx_coefficent_enable	:	string	:=	"false";
		wait_clk_on_off_timer_data	:	bit_vector	:=	B"100";
		pc_rst_counter	:	string	:=	"pc_rst_count";
		phystatus_rst_toggle_g12	:	string	:=	"dis_phystatus_rst_toggle";
		wait_send_syncp_fbkp	:	string	:=	"wait_send_syncp_fbkp";
		elecidle_delay_g3	:	string	:=	"elecidle_delay_g3";
		sigdet_wait_counter_data	:	bit_vector	:=	B"0";
		cp_up_mstr	:	string	:=	"false";
		pma_done_counter_data	:	bit_vector	:=	B"0";
		test_mode_timers	:	string	:=	"dis_test_mode_timers";
		pc_rst_counter_data	:	bit_vector	:=	B"10111";
		cdr_control	:	string	:=	"en_cdr_ctrl";
		phy_status_delay_g3	:	string	:=	"phy_status_delay_g3";
		bypass_rx_preset	:	string	:=	"rx_preset_bypass";
		bypass_tx_coefficent_data	:	bit_vector	:=	B"0";
		bypass_pma_sw_done	:	string	:=	"false";
		bypass_send_syncp_fbkp	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		wait_pipe_synchronizing_data	:	bit_vector	:=	B"10111";
		phy_status_delay_g12_data	:	bit_vector	:=	B"0";
		free_run_clk_enable	:	string	:=	"true";
		phystatus_rst_toggle_g3	:	string	:=	"dis_phystatus_rst_toggle_g3";
		ind_error_reporting	:	string	:=	"dis_ind_error_reporting";
		cp_cons_sel	:	string	:=	"cp_cons_default";
		bypass_tx_coefficent	:	string	:=	"tx_coeff_bypass";
		phfifo_flush_wait	:	string	:=	"phfifo_flush_wait";
		sigdet_wait_counter	:	string	:=	"sigdet_wait_counter";
		use_default_base_address	:	string	:=	"true";
		pc_en_counter	:	string	:=	"pc_en_count";
		rate_match_pad_insertion	:	string	:=	"dis_rm_fifo_pad_ins";
		pipe_clk_sel	:	string	:=	"func_clk";
		wait_clk_on_off_timer	:	string	:=	"wait_clk_on_off_timer";
		bypass_rx_preset_enable	:	string	:=	"false";
		spd_chnge_g2_sel	:	string	:=	"false";
		parity_chk_ts1	:	string	:=	"en_ts1_parity_chk"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkalgndint	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		bundlingindown	:	in	std_logic_vector(10 downto 0) := "00000000000";
		bundlinginup	:	in	std_logic_vector(10 downto 0) := "00000000000";
		bundlingoutdown	:	out	std_logic_vector(10 downto 0) := "00000000000";
		bundlingoutup	:	out	std_logic_vector(10 downto 0) := "00000000000";
		clkcompdeleteint	:	in	std_logic := '0';
		clkcompinsertint	:	in	std_logic := '0';
		clkcompoverflint	:	in	std_logic := '0';
		clkcompundflint	:	in	std_logic := '0';
		currentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		currentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		dispcbyte	:	out	std_logic := '0';
		eidetint	:	in	std_logic := '0';
		eidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		eipartialdetint	:	in	std_logic := '0';
		errdecodeint	:	in	std_logic := '0';
		errencodeint	:	in	std_logic := '0';
		gen3clksel	:	out	std_logic := '0';
		gen3datasel	:	out	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		idetint	:	in	std_logic := '0';
		inferredrxvalidint	:	out	std_logic := '0';
		masktxpll	:	out	std_logic := '0';
		pcsrst	:	out	std_logic := '0';
		phystatus	:	out	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pllfixedclk	:	in	std_logic := '0';
		pmacurrentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pmacurrentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pmaearlyeios	:	out	std_logic := '0';
		pmaltr	:	out	std_logic := '0';
		pmapcieswdone	:	in	std_logic_vector(1 downto 0) := "00";
		pmapcieswitch	:	out	std_logic_vector(1 downto 0) := "00";
		pmarxdetectvalid	:	in	std_logic := '0';
		pmarxdetpd	:	out	std_logic := '0';
		pmarxfound	:	in	std_logic := '0';
		pmasignaldet	:	in	std_logic := '0';
		pmatxdeemph	:	out	std_logic := '0';
		pmatxdetectrx	:	out	std_logic := '0';
		pmatxelecidle	:	out	std_logic := '0';
		pmatxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		pmatxswing	:	out	std_logic := '0';
		powerdown	:	in	std_logic_vector(1 downto 0) := "00";
		ppmcntrst8gpcsout	:	out	std_logic := '0';
		ppmeidleexit	:	out	std_logic := '0';
		rate	:	in	std_logic_vector(1 downto 0) := "00";
		rcvdclk	:	in	std_logic := '0';
		rcvlfsrchkint	:	in	std_logic := '0';
		resetpcprts	:	out	std_logic := '0';
		revlpbk8gpcsout	:	out	std_logic := '0';
		revlpbkint	:	out	std_logic := '0';
		rrxdigclksel	:	in	std_logic := '0';
		rrxgen3capen	:	in	std_logic := '0';
		rtxdigclksel	:	in	std_logic := '0';
		rtxgen3capen	:	in	std_logic := '0';
		rxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		rxblkstartint	:	in	std_logic := '0';
		rxd8gpcsin	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxd8gpcsout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdataint	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		rxdatakint	:	in	std_logic_vector(3 downto 0) := "0000";
		rxdataskip	:	out	std_logic_vector(3 downto 0) := "0000";
		rxdataskipint	:	in	std_logic := '0';
		rxelecidle	:	out	std_logic := '0';
		rxelecidle8gpcsin	:	in	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxpolarity8gpcsout	:	out	std_logic := '0';
		rxpolarityint	:	out	std_logic := '0';
		rxrstn	:	in	std_logic := '0';
		rxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		rxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		rxsynchdrint	:	in	std_logic_vector(1 downto 0) := "00";
		rxtestout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		rxupdatefc	:	in	std_logic := '0';
		rxvalid	:	out	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	out	std_logic := '0';
		speedchangeg2	:	in	std_logic := '0';
		testinfei	:	out	std_logic_vector(18 downto 0) := "0000000000000000000";
		testout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		txblkstart	:	in	std_logic := '0';
		txblkstartint	:	out	std_logic := '0';
		txcompliance	:	in	std_logic := '0';
		txdata	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdataint	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		txdatak	:	in	std_logic_vector(3 downto 0) := "0000";
		txdatakint	:	out	std_logic_vector(3 downto 0) := "0000";
		txdataskip	:	in	std_logic := '0';
		txdataskipint	:	out	std_logic := '0';
		txdeemph	:	in	std_logic := '0';
		txdetectrxloopback	:	in	std_logic := '0';
		txelecidle	:	in	std_logic := '0';
		txmargin	:	in	std_logic_vector(2 downto 0) := "000";
		txpmaclk	:	in	std_logic := '0';
		txpmasyncp	:	out	std_logic := '0';
		txpmasyncphip	:	in	std_logic := '0';
		txrstn	:	in	std_logic := '0';
		txswing	:	in	std_logic := '0';
		txsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		txsynchdrint	:	out	std_logic_vector(1 downto 0) := "00"
	);
end component;

begin


inst : stratixv_hssi_pipe_gen3_encrypted
	generic map	(
		ph_fifo_reg_mode	=>	ph_fifo_reg_mode,
		phfifo_flush_wait_data	=>	phfifo_flush_wait_data,
		bypass_rx_preset_data	=>	bypass_rx_preset_data,
		mode	=>	mode,
		test_out_sel	=>	test_out_sel,
		asn_enable	=>	asn_enable,
		ctrl_plane_bonding	=>	ctrl_plane_bonding,
		cp_dwn_mstr	=>	cp_dwn_mstr,
		rxvalid_mask	=>	rxvalid_mask,
		elecidle_delay_g3_data	=>	elecidle_delay_g3_data,
		phy_status_delay_g3_data	=>	phy_status_delay_g3_data,
		bypass_rx_detection_enable	=>	bypass_rx_detection_enable,
		wait_send_syncp_fbkp_data	=>	wait_send_syncp_fbkp_data,
		user_base_address	=>	user_base_address,
		wait_pipe_synchronizing	=>	wait_pipe_synchronizing,
		asn_clk_enable	=>	asn_clk_enable,
		pma_done_counter	=>	pma_done_counter,
		inf_ei_enable	=>	inf_ei_enable,
		cid_enable	=>	cid_enable,
		phy_status_delay_g12	=>	phy_status_delay_g12,
		pc_en_counter_data	=>	pc_en_counter_data,
		data_mask_count	=>	data_mask_count,
		data_mask_count_val	=>	data_mask_count_val,
		bypass_tx_coefficent_enable	=>	bypass_tx_coefficent_enable,
		wait_clk_on_off_timer_data	=>	wait_clk_on_off_timer_data,
		pc_rst_counter	=>	pc_rst_counter,
		phystatus_rst_toggle_g12	=>	phystatus_rst_toggle_g12,
		wait_send_syncp_fbkp	=>	wait_send_syncp_fbkp,
		elecidle_delay_g3	=>	elecidle_delay_g3,
		sigdet_wait_counter_data	=>	sigdet_wait_counter_data,
		cp_up_mstr	=>	cp_up_mstr,
		pma_done_counter_data	=>	pma_done_counter_data,
		test_mode_timers	=>	test_mode_timers,
		pc_rst_counter_data	=>	pc_rst_counter_data,
		cdr_control	=>	cdr_control,
		phy_status_delay_g3	=>	phy_status_delay_g3,
		bypass_rx_preset	=>	bypass_rx_preset,
		bypass_tx_coefficent_data	=>	bypass_tx_coefficent_data,
		bypass_pma_sw_done	=>	bypass_pma_sw_done,
		bypass_send_syncp_fbkp	=>	bypass_send_syncp_fbkp,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		sup_mode	=>	sup_mode,
		wait_pipe_synchronizing_data	=>	wait_pipe_synchronizing_data,
		phy_status_delay_g12_data	=>	phy_status_delay_g12_data,
		free_run_clk_enable	=>	free_run_clk_enable,
		phystatus_rst_toggle_g3	=>	phystatus_rst_toggle_g3,
		ind_error_reporting	=>	ind_error_reporting,
		cp_cons_sel	=>	cp_cons_sel,
		bypass_tx_coefficent	=>	bypass_tx_coefficent,
		phfifo_flush_wait	=>	phfifo_flush_wait,
		sigdet_wait_counter	=>	sigdet_wait_counter,
		use_default_base_address	=>	use_default_base_address,
		pc_en_counter	=>	pc_en_counter,
		rate_match_pad_insertion	=>	rate_match_pad_insertion,
		pipe_clk_sel	=>	pipe_clk_sel,
		wait_clk_on_off_timer	=>	wait_clk_on_off_timer,
		bypass_rx_preset_enable	=>	bypass_rx_preset_enable,
		spd_chnge_g2_sel	=>	spd_chnge_g2_sel,
		parity_chk_ts1	=>	parity_chk_ts1
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blkalgndint	=>	blkalgndint,
		blockselect	=>	blockselect,
		bundlingindown	=>	bundlingindown,
		bundlinginup	=>	bundlinginup,
		bundlingoutdown	=>	bundlingoutdown,
		bundlingoutup	=>	bundlingoutup,
		clkcompdeleteint	=>	clkcompdeleteint,
		clkcompinsertint	=>	clkcompinsertint,
		clkcompoverflint	=>	clkcompoverflint,
		clkcompundflint	=>	clkcompundflint,
		currentcoeff	=>	currentcoeff,
		currentrxpreset	=>	currentrxpreset,
		dispcbyte	=>	dispcbyte,
		eidetint	=>	eidetint,
		eidleinfersel	=>	eidleinfersel,
		eipartialdetint	=>	eipartialdetint,
		errdecodeint	=>	errdecodeint,
		errencodeint	=>	errencodeint,
		gen3clksel	=>	gen3clksel,
		gen3datasel	=>	gen3datasel,
		hardresetn	=>	hardresetn,
		idetint	=>	idetint,
		inferredrxvalidint	=>	inferredrxvalidint,
		masktxpll	=>	masktxpll,
		pcsrst	=>	pcsrst,
		phystatus	=>	phystatus,
		pldltr	=>	pldltr,
		pllfixedclk	=>	pllfixedclk,
		pmacurrentcoeff	=>	pmacurrentcoeff,
		pmacurrentrxpreset	=>	pmacurrentrxpreset,
		pmaearlyeios	=>	pmaearlyeios,
		pmaltr	=>	pmaltr,
		pmapcieswdone	=>	pmapcieswdone,
		pmapcieswitch	=>	pmapcieswitch,
		pmarxdetectvalid	=>	pmarxdetectvalid,
		pmarxdetpd	=>	pmarxdetpd,
		pmarxfound	=>	pmarxfound,
		pmasignaldet	=>	pmasignaldet,
		pmatxdeemph	=>	pmatxdeemph,
		pmatxdetectrx	=>	pmatxdetectrx,
		pmatxelecidle	=>	pmatxelecidle,
		pmatxmargin	=>	pmatxmargin,
		pmatxswing	=>	pmatxswing,
		powerdown	=>	powerdown,
		ppmcntrst8gpcsout	=>	ppmcntrst8gpcsout,
		ppmeidleexit	=>	ppmeidleexit,
		rate	=>	rate,
		rcvdclk	=>	rcvdclk,
		rcvlfsrchkint	=>	rcvlfsrchkint,
		resetpcprts	=>	resetpcprts,
		revlpbk8gpcsout	=>	revlpbk8gpcsout,
		revlpbkint	=>	revlpbkint,
		rrxdigclksel	=>	rrxdigclksel,
		rrxgen3capen	=>	rrxgen3capen,
		rtxdigclksel	=>	rtxdigclksel,
		rtxgen3capen	=>	rtxgen3capen,
		rxblkstart	=>	rxblkstart,
		rxblkstartint	=>	rxblkstartint,
		rxd8gpcsin	=>	rxd8gpcsin,
		rxd8gpcsout	=>	rxd8gpcsout,
		rxdataint	=>	rxdataint,
		rxdatakint	=>	rxdatakint,
		rxdataskip	=>	rxdataskip,
		rxdataskipint	=>	rxdataskipint,
		rxelecidle	=>	rxelecidle,
		rxelecidle8gpcsin	=>	rxelecidle8gpcsin,
		rxpolarity	=>	rxpolarity,
		rxpolarity8gpcsout	=>	rxpolarity8gpcsout,
		rxpolarityint	=>	rxpolarityint,
		rxrstn	=>	rxrstn,
		rxstatus	=>	rxstatus,
		rxsynchdr	=>	rxsynchdr,
		rxsynchdrint	=>	rxsynchdrint,
		rxtestout	=>	rxtestout,
		rxupdatefc	=>	rxupdatefc,
		rxvalid	=>	rxvalid,
		scanmoden	=>	scanmoden,
		shutdownclk	=>	shutdownclk,
		speedchangeg2	=>	speedchangeg2,
		testinfei	=>	testinfei,
		testout	=>	testout,
		txblkstart	=>	txblkstart,
		txblkstartint	=>	txblkstartint,
		txcompliance	=>	txcompliance,
		txdata	=>	txdata,
		txdataint	=>	txdataint,
		txdatak	=>	txdatak,
		txdatakint	=>	txdatakint,
		txdataskip	=>	txdataskip,
		txdataskipint	=>	txdataskipint,
		txdeemph	=>	txdeemph,
		txdetectrxloopback	=>	txdetectrxloopback,
		txelecidle	=>	txelecidle,
		txmargin	=>	txmargin,
		txpmaclk	=>	txpmaclk,
		txpmasyncp	=>	txpmasyncp,
		txpmasyncphip	=>	txpmasyncphip,
		txrstn	=>	txrstn,
		txswing	=>	txswing,
		txsynchdr	=>	txsynchdr,
		txsynchdrint	=>	txsynchdrint
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_gen3_rx_pcs	is
	generic	(
		rmfifo_full_data	:	bit_vector	:=	B"11111";
		rx_test_out_sel	:	string	:=	"rx_test_out0";
		reverse_lpbk	:	string	:=	"rev_lpbk_en";
		mode	:	string	:=	"gen3_func";
		rmfifo_pfull	:	string	:=	"rmfifo_pfull";
		rx_ins_del_one_skip	:	string	:=	"ins_del_one_skip_en";
		rx_force_balign	:	string	:=	"en_force_balign";
		decoder	:	string	:=	"enable_decoder";
		lpbk_force	:	string	:=	"lpbk_frce_dis";
		rx_lane_num	:	string	:=	"lane_0";
		rx_pol_compl	:	string	:=	"rx_pol_compl_dis";
		rmfifo_full	:	string	:=	"rmfifo_full";
		rate_match_fifo_latency	:	string	:=	"regular_latency";
		user_base_address	:	integer	:=	0;
		rmfifo_pempty	:	string	:=	"rmfifo_pempty";
		descrambler	:	string	:=	"enable_descrambler";
		block_sync_sm	:	string	:=	"enable_blk_sync_sm";
		rx_num_fixed_pat	:	string	:=	"num_fixed_pat";
		rx_g3_dcbal	:	string	:=	"g3_dcbal_en";
		rate_match_fifo	:	string	:=	"enable_rm_fifo";
		tx_clk_sel	:	string	:=	"tx_pma_clk";
		parallel_lpbk	:	string	:=	"par_lpbk_dis";
		rmfifo_pempty_data	:	bit_vector	:=	B"1000";
		rx_b4gb_par_lpbk	:	string	:=	"b4gb_par_lpbk_dis";
		sup_mode	:	string	:=	"user_mode";
		avmm_group_channel_index	:	integer	:=	0;
		block_sync	:	string	:=	"enable_block_sync";
		descrambler_lfsr_check	:	string	:=	"lfsr_chk_dis";
		rx_clk_sel	:	string	:=	"rcvd_clk";
		rmfifo_empty	:	string	:=	"rmfifo_empty";
		use_default_base_address	:	string	:=	"true";
		rmfifo_pfull_data	:	bit_vector	:=	B"10111";
		rx_num_fixed_pat_data	:	bit_vector	:=	B"100";
		rmfifo_empty_data	:	bit_vector	:=	B"1";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkalgndint	:	out	std_logic := '0';
		blklockdint	:	out	std_logic := '0';
		blkstart	:	out	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		clkcompdeleteint	:	out	std_logic := '0';
		clkcompinsertint	:	out	std_logic := '0';
		clkcompoverflint	:	out	std_logic := '0';
		clkcompundflint	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		datavalid	:	out	std_logic := '0';
		eidetint	:	out	std_logic := '0';
		eipartialdetint	:	out	std_logic := '0';
		errdecodeint	:	out	std_logic := '0';
		gen3clksel	:	in	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		idetint	:	out	std_logic := '0';
		inferredrxvalid	:	in	std_logic := '0';
		lpbkblkstart	:	out	std_logic := '0';
		lpbkdata	:	out	std_logic_vector(33 downto 0) := "0000000000000000000000000000000000";
		lpbkdatavalid	:	out	std_logic := '0';
		lpbken	:	in	std_logic := '0';
		parlpbkb4gbin	:	in	std_logic_vector(35 downto 0) := "000000000000000000000000000000000000";
		parlpbkin	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcsrst	:	in	std_logic := '0';
		pldclk28gpcs	:	in	std_logic := '0';
		rcvdclk	:	in	std_logic := '0';
		rcvlfsrchkint	:	out	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxrstn	:	in	std_logic := '0';
		rxtestout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	in	std_logic := '0';
		skpdetint	:	out	std_logic := '0';
		synchdr	:	out	std_logic_vector(1 downto 0) := "00";
		syncsmen	:	in	std_logic := '0';
		txdatakin	:	in	std_logic_vector(3 downto 0) := "0000";
		txelecidle	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0';
		txpth	:	in	std_logic := '0'
	);
end	stratixv_hssi_gen3_rx_pcs;

architecture behavior of stratixv_hssi_gen3_rx_pcs is

component	stratixv_hssi_gen3_rx_pcs_encrypted
	generic	(
		rmfifo_full_data	:	bit_vector	:=	B"11111";
		rx_test_out_sel	:	string	:=	"rx_test_out0";
		reverse_lpbk	:	string	:=	"rev_lpbk_en";
		mode	:	string	:=	"gen3_func";
		rmfifo_pfull	:	string	:=	"rmfifo_pfull";
		rx_ins_del_one_skip	:	string	:=	"ins_del_one_skip_en";
		rx_force_balign	:	string	:=	"en_force_balign";
		decoder	:	string	:=	"enable_decoder";
		lpbk_force	:	string	:=	"lpbk_frce_dis";
		rx_lane_num	:	string	:=	"lane_0";
		rx_pol_compl	:	string	:=	"rx_pol_compl_dis";
		rmfifo_full	:	string	:=	"rmfifo_full";
		rate_match_fifo_latency	:	string	:=	"regular_latency";
		user_base_address	:	integer	:=	0;
		rmfifo_pempty	:	string	:=	"rmfifo_pempty";
		descrambler	:	string	:=	"enable_descrambler";
		block_sync_sm	:	string	:=	"enable_blk_sync_sm";
		rx_num_fixed_pat	:	string	:=	"num_fixed_pat";
		rx_g3_dcbal	:	string	:=	"g3_dcbal_en";
		rate_match_fifo	:	string	:=	"enable_rm_fifo";
		tx_clk_sel	:	string	:=	"tx_pma_clk";
		parallel_lpbk	:	string	:=	"par_lpbk_dis";
		rmfifo_pempty_data	:	bit_vector	:=	B"1000";
		rx_b4gb_par_lpbk	:	string	:=	"b4gb_par_lpbk_dis";
		sup_mode	:	string	:=	"user_mode";
		avmm_group_channel_index	:	integer	:=	0;
		block_sync	:	string	:=	"enable_block_sync";
		descrambler_lfsr_check	:	string	:=	"lfsr_chk_dis";
		rx_clk_sel	:	string	:=	"rcvd_clk";
		rmfifo_empty	:	string	:=	"rmfifo_empty";
		use_default_base_address	:	string	:=	"true";
		rmfifo_pfull_data	:	bit_vector	:=	B"10111";
		rx_num_fixed_pat_data	:	bit_vector	:=	B"100";
		rmfifo_empty_data	:	bit_vector	:=	B"1"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkalgndint	:	out	std_logic := '0';
		blklockdint	:	out	std_logic := '0';
		blkstart	:	out	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		clkcompdeleteint	:	out	std_logic := '0';
		clkcompinsertint	:	out	std_logic := '0';
		clkcompoverflint	:	out	std_logic := '0';
		clkcompundflint	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		datavalid	:	out	std_logic := '0';
		eidetint	:	out	std_logic := '0';
		eipartialdetint	:	out	std_logic := '0';
		errdecodeint	:	out	std_logic := '0';
		gen3clksel	:	in	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		idetint	:	out	std_logic := '0';
		inferredrxvalid	:	in	std_logic := '0';
		lpbkblkstart	:	out	std_logic := '0';
		lpbkdata	:	out	std_logic_vector(33 downto 0) := "0000000000000000000000000000000000";
		lpbkdatavalid	:	out	std_logic := '0';
		lpbken	:	in	std_logic := '0';
		parlpbkb4gbin	:	in	std_logic_vector(35 downto 0) := "000000000000000000000000000000000000";
		parlpbkin	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcsrst	:	in	std_logic := '0';
		pldclk28gpcs	:	in	std_logic := '0';
		rcvdclk	:	in	std_logic := '0';
		rcvlfsrchkint	:	out	std_logic := '0';
		rxpolarity	:	in	std_logic := '0';
		rxrstn	:	in	std_logic := '0';
		rxtestout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	in	std_logic := '0';
		skpdetint	:	out	std_logic := '0';
		synchdr	:	out	std_logic_vector(1 downto 0) := "00";
		syncsmen	:	in	std_logic := '0';
		txdatakin	:	in	std_logic_vector(3 downto 0) := "0000";
		txelecidle	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0';
		txpth	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_gen3_rx_pcs_encrypted
	generic map	(
		rmfifo_full_data	=>	rmfifo_full_data,
		rx_test_out_sel	=>	rx_test_out_sel,
		reverse_lpbk	=>	reverse_lpbk,
		mode	=>	mode,
		rmfifo_pfull	=>	rmfifo_pfull,
		rx_ins_del_one_skip	=>	rx_ins_del_one_skip,
		rx_force_balign	=>	rx_force_balign,
		decoder	=>	decoder,
		lpbk_force	=>	lpbk_force,
		rx_lane_num	=>	rx_lane_num,
		rx_pol_compl	=>	rx_pol_compl,
		rmfifo_full	=>	rmfifo_full,
		rate_match_fifo_latency	=>	rate_match_fifo_latency,
		user_base_address	=>	user_base_address,
		rmfifo_pempty	=>	rmfifo_pempty,
		descrambler	=>	descrambler,
		block_sync_sm	=>	block_sync_sm,
		rx_num_fixed_pat	=>	rx_num_fixed_pat,
		rx_g3_dcbal	=>	rx_g3_dcbal,
		rate_match_fifo	=>	rate_match_fifo,
		tx_clk_sel	=>	tx_clk_sel,
		parallel_lpbk	=>	parallel_lpbk,
		rmfifo_pempty_data	=>	rmfifo_pempty_data,
		rx_b4gb_par_lpbk	=>	rx_b4gb_par_lpbk,
		sup_mode	=>	sup_mode,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		block_sync	=>	block_sync,
		descrambler_lfsr_check	=>	descrambler_lfsr_check,
		rx_clk_sel	=>	rx_clk_sel,
		rmfifo_empty	=>	rmfifo_empty,
		use_default_base_address	=>	use_default_base_address,
		rmfifo_pfull_data	=>	rmfifo_pfull_data,
		rx_num_fixed_pat_data	=>	rx_num_fixed_pat_data,
		rmfifo_empty_data	=>	rmfifo_empty_data
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blkalgndint	=>	blkalgndint,
		blklockdint	=>	blklockdint,
		blkstart	=>	blkstart,
		blockselect	=>	blockselect,
		clkcompdeleteint	=>	clkcompdeleteint,
		clkcompinsertint	=>	clkcompinsertint,
		clkcompoverflint	=>	clkcompoverflint,
		clkcompundflint	=>	clkcompundflint,
		datain	=>	datain,
		dataout	=>	dataout,
		datavalid	=>	datavalid,
		eidetint	=>	eidetint,
		eipartialdetint	=>	eipartialdetint,
		errdecodeint	=>	errdecodeint,
		gen3clksel	=>	gen3clksel,
		hardresetn	=>	hardresetn,
		idetint	=>	idetint,
		inferredrxvalid	=>	inferredrxvalid,
		lpbkblkstart	=>	lpbkblkstart,
		lpbkdata	=>	lpbkdata,
		lpbkdatavalid	=>	lpbkdatavalid,
		lpbken	=>	lpbken,
		parlpbkb4gbin	=>	parlpbkb4gbin,
		parlpbkin	=>	parlpbkin,
		pcsrst	=>	pcsrst,
		pldclk28gpcs	=>	pldclk28gpcs,
		rcvdclk	=>	rcvdclk,
		rcvlfsrchkint	=>	rcvlfsrchkint,
		rxpolarity	=>	rxpolarity,
		rxrstn	=>	rxrstn,
		rxtestout	=>	rxtestout,
		scanmoden	=>	scanmoden,
		shutdownclk	=>	shutdownclk,
		skpdetint	=>	skpdetint,
		synchdr	=>	synchdr,
		syncsmen	=>	syncsmen,
		txdatakin	=>	txdatakin,
		txelecidle	=>	txelecidle,
		txpmaclk	=>	txpmaclk,
		txpth	=>	txpth
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_gen3_tx_pcs	is
	generic	(
		user_base_address	:	integer	:=	0;
		tx_lane_num	:	string	:=	"lane_0";
		reverse_lpbk	:	string	:=	"rev_lpbk_en";
		mode	:	string	:=	"gen3_func";
		use_default_base_address	:	string	:=	"true";
		tx_pol_compl	:	string	:=	"tx_pol_compl_dis";
		tx_clk_sel	:	string	:=	"tx_pma_clk";
		tx_bitslip	:	string	:=	"tx_bitslip_val";
		encoder	:	string	:=	"enable_encoder";
		prbs_generator	:	string	:=	"prbs_gen_dis";
		tx_g3_dcbal	:	string	:=	"tx_g3_dcbal_en";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		scrambler	:	string	:=	"enable_scrambler";
		tx_gbox_byp	:	string	:=	"bypass_gbox";
		tx_bitslip_data	:	bit_vector	:=	B"0";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkstartin	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		datavalid	:	in	std_logic := '0';
		errencode	:	out	std_logic := '0';
		gen3clksel	:	in	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		lpbkblkstart	:	in	std_logic := '0';
		lpbkdatain	:	in	std_logic_vector(33 downto 0) := "0000000000000000000000000000000000";
		lpbkdatavalid	:	in	std_logic := '0';
		lpbken	:	in	std_logic := '0';
		parlpbkb4gbout	:	out	std_logic_vector(35 downto 0) := "000000000000000000000000000000000000";
		parlpbkout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcsrst	:	in	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	in	std_logic := '0';
		syncin	:	in	std_logic_vector(1 downto 0) := "00";
		txelecidle	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0';
		txpth	:	in	std_logic := '0';
		txrstn	:	in	std_logic := '0';
		txtestout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000"
	);
end	stratixv_hssi_gen3_tx_pcs;

architecture behavior of stratixv_hssi_gen3_tx_pcs is

component	stratixv_hssi_gen3_tx_pcs_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		tx_lane_num	:	string	:=	"lane_0";
		reverse_lpbk	:	string	:=	"rev_lpbk_en";
		mode	:	string	:=	"gen3_func";
		use_default_base_address	:	string	:=	"true";
		tx_pol_compl	:	string	:=	"tx_pol_compl_dis";
		tx_clk_sel	:	string	:=	"tx_pma_clk";
		tx_bitslip	:	string	:=	"tx_bitslip_val";
		encoder	:	string	:=	"enable_encoder";
		prbs_generator	:	string	:=	"prbs_gen_dis";
		tx_g3_dcbal	:	string	:=	"tx_g3_dcbal_en";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		scrambler	:	string	:=	"enable_scrambler";
		tx_gbox_byp	:	string	:=	"bypass_gbox";
		tx_bitslip_data	:	bit_vector	:=	B"0"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blkstartin	:	in	std_logic := '0';
		blockselect	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		datavalid	:	in	std_logic := '0';
		errencode	:	out	std_logic := '0';
		gen3clksel	:	in	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		lpbkblkstart	:	in	std_logic := '0';
		lpbkdatain	:	in	std_logic_vector(33 downto 0) := "0000000000000000000000000000000000";
		lpbkdatavalid	:	in	std_logic := '0';
		lpbken	:	in	std_logic := '0';
		parlpbkb4gbout	:	out	std_logic_vector(35 downto 0) := "000000000000000000000000000000000000";
		parlpbkout	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcsrst	:	in	std_logic := '0';
		scanmoden	:	in	std_logic := '0';
		shutdownclk	:	in	std_logic := '0';
		syncin	:	in	std_logic_vector(1 downto 0) := "00";
		txelecidle	:	in	std_logic := '0';
		txpmaclk	:	in	std_logic := '0';
		txpth	:	in	std_logic := '0';
		txrstn	:	in	std_logic := '0';
		txtestout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000"
	);
end component;

begin


inst : stratixv_hssi_gen3_tx_pcs_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		tx_lane_num	=>	tx_lane_num,
		reverse_lpbk	=>	reverse_lpbk,
		mode	=>	mode,
		use_default_base_address	=>	use_default_base_address,
		tx_pol_compl	=>	tx_pol_compl,
		tx_clk_sel	=>	tx_clk_sel,
		tx_bitslip	=>	tx_bitslip,
		encoder	=>	encoder,
		prbs_generator	=>	prbs_generator,
		tx_g3_dcbal	=>	tx_g3_dcbal,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		sup_mode	=>	sup_mode,
		scrambler	=>	scrambler,
		tx_gbox_byp	=>	tx_gbox_byp,
		tx_bitslip_data	=>	tx_bitslip_data
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blkstartin	=>	blkstartin,
		blockselect	=>	blockselect,
		datain	=>	datain,
		dataout	=>	dataout,
		datavalid	=>	datavalid,
		errencode	=>	errencode,
		gen3clksel	=>	gen3clksel,
		hardresetn	=>	hardresetn,
		lpbkblkstart	=>	lpbkblkstart,
		lpbkdatain	=>	lpbkdatain,
		lpbkdatavalid	=>	lpbkdatavalid,
		lpbken	=>	lpbken,
		parlpbkb4gbout	=>	parlpbkb4gbout,
		parlpbkout	=>	parlpbkout,
		pcsrst	=>	pcsrst,
		scanmoden	=>	scanmoden,
		shutdownclk	=>	shutdownclk,
		syncin	=>	syncin,
		txelecidle	=>	txelecidle,
		txpmaclk	=>	txpmaclk,
		txpth	=>	txpth,
		txrstn	=>	txrstn,
		txtestout	=>	txtestout
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_cdr_refclk_select_mux	is
	generic	(
		inclk20_logical_to_physical_mapping	:	string	:=	"unused";
		inclk3_logical_to_physical_mapping	:	string	:=	"unused";
		inclk23_logical_to_physical_mapping	:	string	:=	"unused";
		inclk8_logical_to_physical_mapping	:	string	:=	"unused";
		inclk17_logical_to_physical_mapping	:	string	:=	"unused";
		inclk6_logical_to_physical_mapping	:	string	:=	"unused";
		inclk10_logical_to_physical_mapping	:	string	:=	"unused";
		inclk24_logical_to_physical_mapping	:	string	:=	"unused";
		inclk18_logical_to_physical_mapping	:	string	:=	"unused";
		inclk14_logical_to_physical_mapping	:	string	:=	"unused";
		refclk_select	:	string	:=	"ref_iqclk0";
		user_base_address	:	integer	:=	0;
		inclk21_logical_to_physical_mapping	:	string	:=	"unused";
		inclk16_logical_to_physical_mapping	:	string	:=	"unused";
		inclk25_logical_to_physical_mapping	:	string	:=	"unused";
		inclk9_logical_to_physical_mapping	:	string	:=	"unused";
		inclk5_logical_to_physical_mapping	:	string	:=	"unused";
		reference_clock_frequency	:	string	:=	"";
		inclk2_logical_to_physical_mapping	:	string	:=	"unused";
		mux_type	:	string	:=	"cdr_refclk_select_mux";
		avmm_group_channel_index	:	integer	:=	0;
		inclk13_logical_to_physical_mapping	:	string	:=	"unused";
		channel_number	:	integer	:=	0;
		inclk15_logical_to_physical_mapping	:	string	:=	"unused";
		inclk0_logical_to_physical_mapping	:	string	:=	"unused";
		inclk12_logical_to_physical_mapping	:	string	:=	"unused";
		use_default_base_address	:	string	:=	"true";
		inclk4_logical_to_physical_mapping	:	string	:=	"unused";
		inclk7_logical_to_physical_mapping	:	string	:=	"unused";
		inclk1_logical_to_physical_mapping	:	string	:=	"unused";
		inclk22_logical_to_physical_mapping	:	string	:=	"unused";
		inclk19_logical_to_physical_mapping	:	string	:=	"unused";
		inclk11_logical_to_physical_mapping	:	string	:=	"unused";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		refclklc	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		calclk	:	in	std_logic := '0';
		clkout	:	out	std_logic := '0';
		ffplloutbot	:	in	std_logic := '0';
		ffpllouttop	:	in	std_logic := '0';
		pldclk	:	in	std_logic := '0';
		refiqclk0	:	in	std_logic := '0';
		refiqclk1	:	in	std_logic := '0';
		refiqclk10	:	in	std_logic := '0';
		refiqclk2	:	in	std_logic := '0';
		refiqclk3	:	in	std_logic := '0';
		refiqclk4	:	in	std_logic := '0';
		refiqclk5	:	in	std_logic := '0';
		refiqclk6	:	in	std_logic := '0';
		refiqclk7	:	in	std_logic := '0';
		refiqclk8	:	in	std_logic := '0';
		refiqclk9	:	in	std_logic := '0';
		rxiqclk0	:	in	std_logic := '0';
		rxiqclk1	:	in	std_logic := '0';
		rxiqclk10	:	in	std_logic := '0';
		rxiqclk2	:	in	std_logic := '0';
		rxiqclk3	:	in	std_logic := '0';
		rxiqclk4	:	in	std_logic := '0';
		rxiqclk5	:	in	std_logic := '0';
		rxiqclk6	:	in	std_logic := '0';
		rxiqclk7	:	in	std_logic := '0';
		rxiqclk8	:	in	std_logic := '0';
		rxiqclk9	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_cdr_refclk_select_mux;

architecture behavior of stratixv_hssi_pma_cdr_refclk_select_mux is

component	stratixv_hssi_pma_cdr_refclk_select_mux_encrypted
	generic	(
		inclk20_logical_to_physical_mapping	:	string	:=	"unused";
		inclk3_logical_to_physical_mapping	:	string	:=	"unused";
		inclk23_logical_to_physical_mapping	:	string	:=	"unused";
		inclk8_logical_to_physical_mapping	:	string	:=	"unused";
		inclk17_logical_to_physical_mapping	:	string	:=	"unused";
		inclk6_logical_to_physical_mapping	:	string	:=	"unused";
		inclk10_logical_to_physical_mapping	:	string	:=	"unused";
		inclk24_logical_to_physical_mapping	:	string	:=	"unused";
		inclk18_logical_to_physical_mapping	:	string	:=	"unused";
		inclk14_logical_to_physical_mapping	:	string	:=	"unused";
		refclk_select	:	string	:=	"ref_iqclk0";
		user_base_address	:	integer	:=	0;
		inclk21_logical_to_physical_mapping	:	string	:=	"unused";
		inclk16_logical_to_physical_mapping	:	string	:=	"unused";
		inclk25_logical_to_physical_mapping	:	string	:=	"unused";
		inclk9_logical_to_physical_mapping	:	string	:=	"unused";
		inclk5_logical_to_physical_mapping	:	string	:=	"unused";
		reference_clock_frequency	:	string	:=	"";
		inclk2_logical_to_physical_mapping	:	string	:=	"unused";
		mux_type	:	string	:=	"cdr_refclk_select_mux";
		avmm_group_channel_index	:	integer	:=	0;
		inclk13_logical_to_physical_mapping	:	string	:=	"unused";
		channel_number	:	integer	:=	0;
		inclk15_logical_to_physical_mapping	:	string	:=	"unused";
		inclk0_logical_to_physical_mapping	:	string	:=	"unused";
		inclk12_logical_to_physical_mapping	:	string	:=	"unused";
		use_default_base_address	:	string	:=	"true";
		inclk4_logical_to_physical_mapping	:	string	:=	"unused";
		inclk7_logical_to_physical_mapping	:	string	:=	"unused";
		inclk1_logical_to_physical_mapping	:	string	:=	"unused";
		inclk22_logical_to_physical_mapping	:	string	:=	"unused";
		inclk19_logical_to_physical_mapping	:	string	:=	"unused";
		inclk11_logical_to_physical_mapping	:	string	:=	"unused"
	);
	port	(
		refclklc	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		calclk	:	in	std_logic := '0';
		clkout	:	out	std_logic := '0';
		ffplloutbot	:	in	std_logic := '0';
		ffpllouttop	:	in	std_logic := '0';
		pldclk	:	in	std_logic := '0';
		refiqclk0	:	in	std_logic := '0';
		refiqclk1	:	in	std_logic := '0';
		refiqclk10	:	in	std_logic := '0';
		refiqclk2	:	in	std_logic := '0';
		refiqclk3	:	in	std_logic := '0';
		refiqclk4	:	in	std_logic := '0';
		refiqclk5	:	in	std_logic := '0';
		refiqclk6	:	in	std_logic := '0';
		refiqclk7	:	in	std_logic := '0';
		refiqclk8	:	in	std_logic := '0';
		refiqclk9	:	in	std_logic := '0';
		rxiqclk0	:	in	std_logic := '0';
		rxiqclk1	:	in	std_logic := '0';
		rxiqclk10	:	in	std_logic := '0';
		rxiqclk2	:	in	std_logic := '0';
		rxiqclk3	:	in	std_logic := '0';
		rxiqclk4	:	in	std_logic := '0';
		rxiqclk5	:	in	std_logic := '0';
		rxiqclk6	:	in	std_logic := '0';
		rxiqclk7	:	in	std_logic := '0';
		rxiqclk8	:	in	std_logic := '0';
		rxiqclk9	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_cdr_refclk_select_mux_encrypted
	generic map	(
		inclk20_logical_to_physical_mapping	=>	inclk20_logical_to_physical_mapping,
		inclk3_logical_to_physical_mapping	=>	inclk3_logical_to_physical_mapping,
		inclk23_logical_to_physical_mapping	=>	inclk23_logical_to_physical_mapping,
		inclk8_logical_to_physical_mapping	=>	inclk8_logical_to_physical_mapping,
		inclk17_logical_to_physical_mapping	=>	inclk17_logical_to_physical_mapping,
		inclk6_logical_to_physical_mapping	=>	inclk6_logical_to_physical_mapping,
		inclk10_logical_to_physical_mapping	=>	inclk10_logical_to_physical_mapping,
		inclk24_logical_to_physical_mapping	=>	inclk24_logical_to_physical_mapping,
		inclk18_logical_to_physical_mapping	=>	inclk18_logical_to_physical_mapping,
		inclk14_logical_to_physical_mapping	=>	inclk14_logical_to_physical_mapping,
		refclk_select	=>	refclk_select,
		user_base_address	=>	user_base_address,
		inclk21_logical_to_physical_mapping	=>	inclk21_logical_to_physical_mapping,
		inclk16_logical_to_physical_mapping	=>	inclk16_logical_to_physical_mapping,
		inclk25_logical_to_physical_mapping	=>	inclk25_logical_to_physical_mapping,
		inclk9_logical_to_physical_mapping	=>	inclk9_logical_to_physical_mapping,
		inclk5_logical_to_physical_mapping	=>	inclk5_logical_to_physical_mapping,
		reference_clock_frequency	=>	reference_clock_frequency,
		inclk2_logical_to_physical_mapping	=>	inclk2_logical_to_physical_mapping,
		mux_type	=>	mux_type,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		inclk13_logical_to_physical_mapping	=>	inclk13_logical_to_physical_mapping,
		channel_number	=>	channel_number,
		inclk15_logical_to_physical_mapping	=>	inclk15_logical_to_physical_mapping,
		inclk0_logical_to_physical_mapping	=>	inclk0_logical_to_physical_mapping,
		inclk12_logical_to_physical_mapping	=>	inclk12_logical_to_physical_mapping,
		use_default_base_address	=>	use_default_base_address,
		inclk4_logical_to_physical_mapping	=>	inclk4_logical_to_physical_mapping,
		inclk7_logical_to_physical_mapping	=>	inclk7_logical_to_physical_mapping,
		inclk1_logical_to_physical_mapping	=>	inclk1_logical_to_physical_mapping,
		inclk22_logical_to_physical_mapping	=>	inclk22_logical_to_physical_mapping,
		inclk19_logical_to_physical_mapping	=>	inclk19_logical_to_physical_mapping,
		inclk11_logical_to_physical_mapping	=>	inclk11_logical_to_physical_mapping
	)
	port map	(
		refclklc	=>	refclklc,
		occalen	=>	occalen,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		calclk	=>	calclk,
		clkout	=>	clkout,
		ffplloutbot	=>	ffplloutbot,
		ffpllouttop	=>	ffpllouttop,
		pldclk	=>	pldclk,
		refiqclk0	=>	refiqclk0,
		refiqclk1	=>	refiqclk1,
		refiqclk10	=>	refiqclk10,
		refiqclk2	=>	refiqclk2,
		refiqclk3	=>	refiqclk3,
		refiqclk4	=>	refiqclk4,
		refiqclk5	=>	refiqclk5,
		refiqclk6	=>	refiqclk6,
		refiqclk7	=>	refiqclk7,
		refiqclk8	=>	refiqclk8,
		refiqclk9	=>	refiqclk9,
		rxiqclk0	=>	rxiqclk0,
		rxiqclk1	=>	rxiqclk1,
		rxiqclk10	=>	rxiqclk10,
		rxiqclk2	=>	rxiqclk2,
		rxiqclk3	=>	rxiqclk3,
		rxiqclk4	=>	rxiqclk4,
		rxiqclk5	=>	rxiqclk5,
		rxiqclk6	=>	rxiqclk6,
		rxiqclk7	=>	rxiqclk7,
		rxiqclk8	=>	rxiqclk8,
		rxiqclk9	=>	rxiqclk9
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_lc_refclk_select_mux	is
	generic	(
		inclk20_logical_to_physical_mapping	:	string	:=	"unused";
		inclk3_logical_to_physical_mapping	:	string	:=	"unused";
		inclk23_logical_to_physical_mapping	:	string	:=	"unused";
		inclk8_logical_to_physical_mapping	:	string	:=	"unused";
		inclk17_logical_to_physical_mapping	:	string	:=	"unused";
		inclk6_logical_to_physical_mapping	:	string	:=	"unused";
		inclk10_logical_to_physical_mapping	:	string	:=	"unused";
		inclk24_logical_to_physical_mapping	:	string	:=	"unused";
		inclk18_logical_to_physical_mapping	:	string	:=	"unused";
		inclk14_logical_to_physical_mapping	:	string	:=	"unused";
		refclk_select	:	string	:=	"ref_iqclk0";
		user_base_address	:	integer	:=	0;
		inclk21_logical_to_physical_mapping	:	string	:=	"unused";
		inclk16_logical_to_physical_mapping	:	string	:=	"unused";
		inclk25_logical_to_physical_mapping	:	string	:=	"unused";
		inclk9_logical_to_physical_mapping	:	string	:=	"unused";
		inclk5_logical_to_physical_mapping	:	string	:=	"unused";
		reference_clock_frequency	:	string	:=	"";
		inclk2_logical_to_physical_mapping	:	string	:=	"unused";
		mux_type	:	string	:=	"cdr_refclk_select_mux";
		avmm_group_channel_index	:	integer	:=	0;
		inclk13_logical_to_physical_mapping	:	string	:=	"unused";
		channel_number	:	integer	:=	0;
		inclk15_logical_to_physical_mapping	:	string	:=	"unused";
		inclk0_logical_to_physical_mapping	:	string	:=	"unused";
		inclk12_logical_to_physical_mapping	:	string	:=	"unused";
		use_default_base_address	:	string	:=	"true";
		inclk4_logical_to_physical_mapping	:	string	:=	"unused";
		inclk7_logical_to_physical_mapping	:	string	:=	"unused";
		inclk1_logical_to_physical_mapping	:	string	:=	"unused";
		inclk22_logical_to_physical_mapping	:	string	:=	"unused";
		inclk19_logical_to_physical_mapping	:	string	:=	"unused";
		inclk11_logical_to_physical_mapping	:	string	:=	"unused";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		refclklc	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		calclk	:	in	std_logic := '0';
		clkout	:	out	std_logic := '0';
		ffplloutbot	:	in	std_logic := '0';
		ffpllouttop	:	in	std_logic := '0';
		pldclk	:	in	std_logic := '0';
		refiqclk0	:	in	std_logic := '0';
		refiqclk1	:	in	std_logic := '0';
		refiqclk10	:	in	std_logic := '0';
		refiqclk2	:	in	std_logic := '0';
		refiqclk3	:	in	std_logic := '0';
		refiqclk4	:	in	std_logic := '0';
		refiqclk5	:	in	std_logic := '0';
		refiqclk6	:	in	std_logic := '0';
		refiqclk7	:	in	std_logic := '0';
		refiqclk8	:	in	std_logic := '0';
		refiqclk9	:	in	std_logic := '0';
		rxiqclk0	:	in	std_logic := '0';
		rxiqclk1	:	in	std_logic := '0';
		rxiqclk10	:	in	std_logic := '0';
		rxiqclk2	:	in	std_logic := '0';
		rxiqclk3	:	in	std_logic := '0';
		rxiqclk4	:	in	std_logic := '0';
		rxiqclk5	:	in	std_logic := '0';
		rxiqclk6	:	in	std_logic := '0';
		rxiqclk7	:	in	std_logic := '0';
		rxiqclk8	:	in	std_logic := '0';
		rxiqclk9	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_lc_refclk_select_mux;

architecture behavior of stratixv_hssi_pma_lc_refclk_select_mux is

component	stratixv_hssi_pma_lc_refclk_select_mux_encrypted
	generic	(
		inclk20_logical_to_physical_mapping	:	string	:=	"unused";
		inclk3_logical_to_physical_mapping	:	string	:=	"unused";
		inclk23_logical_to_physical_mapping	:	string	:=	"unused";
		inclk8_logical_to_physical_mapping	:	string	:=	"unused";
		inclk17_logical_to_physical_mapping	:	string	:=	"unused";
		inclk6_logical_to_physical_mapping	:	string	:=	"unused";
		inclk10_logical_to_physical_mapping	:	string	:=	"unused";
		inclk24_logical_to_physical_mapping	:	string	:=	"unused";
		inclk18_logical_to_physical_mapping	:	string	:=	"unused";
		inclk14_logical_to_physical_mapping	:	string	:=	"unused";
		refclk_select	:	string	:=	"ref_iqclk0";
		user_base_address	:	integer	:=	0;
		inclk21_logical_to_physical_mapping	:	string	:=	"unused";
		inclk16_logical_to_physical_mapping	:	string	:=	"unused";
		inclk25_logical_to_physical_mapping	:	string	:=	"unused";
		inclk9_logical_to_physical_mapping	:	string	:=	"unused";
		inclk5_logical_to_physical_mapping	:	string	:=	"unused";
		reference_clock_frequency	:	string	:=	"";
		inclk2_logical_to_physical_mapping	:	string	:=	"unused";
		mux_type	:	string	:=	"cdr_refclk_select_mux";
		avmm_group_channel_index	:	integer	:=	0;
		inclk13_logical_to_physical_mapping	:	string	:=	"unused";
		channel_number	:	integer	:=	0;
		inclk15_logical_to_physical_mapping	:	string	:=	"unused";
		inclk0_logical_to_physical_mapping	:	string	:=	"unused";
		inclk12_logical_to_physical_mapping	:	string	:=	"unused";
		use_default_base_address	:	string	:=	"true";
		inclk4_logical_to_physical_mapping	:	string	:=	"unused";
		inclk7_logical_to_physical_mapping	:	string	:=	"unused";
		inclk1_logical_to_physical_mapping	:	string	:=	"unused";
		inclk22_logical_to_physical_mapping	:	string	:=	"unused";
		inclk19_logical_to_physical_mapping	:	string	:=	"unused";
		inclk11_logical_to_physical_mapping	:	string	:=	"unused"
	);
	port	(
		refclklc	:	in	std_logic := '0';
		occalen	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		calclk	:	in	std_logic := '0';
		clkout	:	out	std_logic := '0';
		ffplloutbot	:	in	std_logic := '0';
		ffpllouttop	:	in	std_logic := '0';
		pldclk	:	in	std_logic := '0';
		refiqclk0	:	in	std_logic := '0';
		refiqclk1	:	in	std_logic := '0';
		refiqclk10	:	in	std_logic := '0';
		refiqclk2	:	in	std_logic := '0';
		refiqclk3	:	in	std_logic := '0';
		refiqclk4	:	in	std_logic := '0';
		refiqclk5	:	in	std_logic := '0';
		refiqclk6	:	in	std_logic := '0';
		refiqclk7	:	in	std_logic := '0';
		refiqclk8	:	in	std_logic := '0';
		refiqclk9	:	in	std_logic := '0';
		rxiqclk0	:	in	std_logic := '0';
		rxiqclk1	:	in	std_logic := '0';
		rxiqclk10	:	in	std_logic := '0';
		rxiqclk2	:	in	std_logic := '0';
		rxiqclk3	:	in	std_logic := '0';
		rxiqclk4	:	in	std_logic := '0';
		rxiqclk5	:	in	std_logic := '0';
		rxiqclk6	:	in	std_logic := '0';
		rxiqclk7	:	in	std_logic := '0';
		rxiqclk8	:	in	std_logic := '0';
		rxiqclk9	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_lc_refclk_select_mux_encrypted
	generic map	(
		inclk20_logical_to_physical_mapping	=>	inclk20_logical_to_physical_mapping,
		inclk3_logical_to_physical_mapping	=>	inclk3_logical_to_physical_mapping,
		inclk23_logical_to_physical_mapping	=>	inclk23_logical_to_physical_mapping,
		inclk8_logical_to_physical_mapping	=>	inclk8_logical_to_physical_mapping,
		inclk17_logical_to_physical_mapping	=>	inclk17_logical_to_physical_mapping,
		inclk6_logical_to_physical_mapping	=>	inclk6_logical_to_physical_mapping,
		inclk10_logical_to_physical_mapping	=>	inclk10_logical_to_physical_mapping,
		inclk24_logical_to_physical_mapping	=>	inclk24_logical_to_physical_mapping,
		inclk18_logical_to_physical_mapping	=>	inclk18_logical_to_physical_mapping,
		inclk14_logical_to_physical_mapping	=>	inclk14_logical_to_physical_mapping,
		refclk_select	=>	refclk_select,
		user_base_address	=>	user_base_address,
		inclk21_logical_to_physical_mapping	=>	inclk21_logical_to_physical_mapping,
		inclk16_logical_to_physical_mapping	=>	inclk16_logical_to_physical_mapping,
		inclk25_logical_to_physical_mapping	=>	inclk25_logical_to_physical_mapping,
		inclk9_logical_to_physical_mapping	=>	inclk9_logical_to_physical_mapping,
		inclk5_logical_to_physical_mapping	=>	inclk5_logical_to_physical_mapping,
		reference_clock_frequency	=>	reference_clock_frequency,
		inclk2_logical_to_physical_mapping	=>	inclk2_logical_to_physical_mapping,
		mux_type	=>	mux_type,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		inclk13_logical_to_physical_mapping	=>	inclk13_logical_to_physical_mapping,
		channel_number	=>	channel_number,
		inclk15_logical_to_physical_mapping	=>	inclk15_logical_to_physical_mapping,
		inclk0_logical_to_physical_mapping	=>	inclk0_logical_to_physical_mapping,
		inclk12_logical_to_physical_mapping	=>	inclk12_logical_to_physical_mapping,
		use_default_base_address	=>	use_default_base_address,
		inclk4_logical_to_physical_mapping	=>	inclk4_logical_to_physical_mapping,
		inclk7_logical_to_physical_mapping	=>	inclk7_logical_to_physical_mapping,
		inclk1_logical_to_physical_mapping	=>	inclk1_logical_to_physical_mapping,
		inclk22_logical_to_physical_mapping	=>	inclk22_logical_to_physical_mapping,
		inclk19_logical_to_physical_mapping	=>	inclk19_logical_to_physical_mapping,
		inclk11_logical_to_physical_mapping	=>	inclk11_logical_to_physical_mapping
	)
	port map	(
		refclklc	=>	refclklc,
		occalen	=>	occalen,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		calclk	=>	calclk,
		clkout	=>	clkout,
		ffplloutbot	=>	ffplloutbot,
		ffpllouttop	=>	ffpllouttop,
		pldclk	=>	pldclk,
		refiqclk0	=>	refiqclk0,
		refiqclk1	=>	refiqclk1,
		refiqclk10	=>	refiqclk10,
		refiqclk2	=>	refiqclk2,
		refiqclk3	=>	refiqclk3,
		refiqclk4	=>	refiqclk4,
		refiqclk5	=>	refiqclk5,
		refiqclk6	=>	refiqclk6,
		refiqclk7	=>	refiqclk7,
		refiqclk8	=>	refiqclk8,
		refiqclk9	=>	refiqclk9,
		rxiqclk0	=>	rxiqclk0,
		rxiqclk1	=>	rxiqclk1,
		rxiqclk10	=>	rxiqclk10,
		rxiqclk2	=>	rxiqclk2,
		rxiqclk3	=>	rxiqclk3,
		rxiqclk4	=>	rxiqclk4,
		rxiqclk5	=>	rxiqclk5,
		rxiqclk6	=>	rxiqclk6,
		rxiqclk7	=>	rxiqclk7,
		rxiqclk8	=>	rxiqclk8,
		rxiqclk9	=>	rxiqclk9
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_rx_buf	is
	generic	(
		sd_threshold	:	integer	:=	0;
		vcm_sel	:	string	:=	"vtt_0p70v";
		vcm_current_add	:	string	:=	"vcm_current_default";
		qpi_enable	:	string	:=	"false";
		rx_sel_bias_source	:	string	:=	"bias_vcmdrv";
		bypass_eqz_stages_234	:	string	:=	"all_stages_enabled";
		cdr_clock_enable	:	string	:=	"true";
		term_sel	:	string	:=	"int_100ohm";
		sd_on	:	integer	:=	16;
		avmm_group_channel_index	:	integer	:=	0;
		rx_dc_gain	:	integer	:=	0;
		diagnostic_loopback	:	string	:=	"diag_lpbk_off";
		user_base_address	:	integer	:=	0;
		offset_cal_pd	:	string	:=	"eqz1_en";
		channel_number	:	integer	:=	0;
		vccela_supply_voltage	:	string	:=	"vccela_1p0v";
		pdb_sd	:	string	:=	"false";
		use_default_base_address	:	string	:=	"true";
		pmos_gain_peak	:	string	:=	"eqzp_en_peaking";
		sd_off	:	integer	:=	0;
		input_vcm_sel	:	string	:=	"high_vcm";
		ct_equalizer_setting	:	integer	:=	1;
		enable_rx_gainctrl_pciemode	:	string	:=	"false";
		eq_bw_sel	:	string	:=	"bw_full_12p5";
		cdrclk_to_cgb	:	string	:=	"cdrclk_2cgb_dis";
		serial_loopback	:	string	:=	"lpbkp_dis";
		dfe_pi_bw	:	string	:=	"bw_10ghz";
		silicon_rev	:	string	:=	"reve";
		adce_rgen_bw	:	string	:=	"low_bw";
		adce_hsf_hfbw	:	string	:=	"full_bw";
		monitor_bw_sel	:	string	:=	"bw_1gbps_less";
		adce_rambit_en	:	string	:=	"adce_ram_disable";
		mode_adce	:	string	:=	"power_down";
		pcie	:	string	:=	"pcie_disable";
		adce_rst	:	string	:=	"adce_rst";
		dfe_ibias	:	string	:=	"dfe_ibias_from_bandgap";
		dfe_adapt	:	string	:=	"adpat_from_adce";
		adapt_sequence	:	string	:=	"v_d_c_b_a";
		lfclk	:	string	:=	"lf_clk_divby8";
		hfclk	:	string	:=	"hf_bypass";
		hsf_hx	:	string	:=	"hsf_2ma";
		dc_bw	:	string	:=	"bw_6p6mhz";
		lpf_bw	:	string	:=	"bw_205mhz";
		lpf_gain	:	string	:=	"gain_3db";
		hpf_bw	:	string	:=	"bw_500mhz";
		rect_adj	:	string	:=	"amp_full_leaker_full";
		rgen_mode	:	string	:=	"high_freq_mode";
		rgen_vod_max	:	string	:=	"rgen_max_vod_125mv";
		rgen_vod_int	:	string	:=	"rgen_vod_int_125mv";
		rgen_vod_min	:	string	:=	"rgen_min_vod_125mv";
		max_eqa	:	string	:=	"max_eqa_125mv";
		max_eqb	:	string	:=	"max_eqb_125mv";
		max_eqc	:	string	:=	"max_eqc_125mv";
		max_eqd	:	string	:=	"max_eqd_125mv";
		max_eqv	:	string	:=	"max_eqv_125mv";
		min_eqctrl	:	string	:=	"min_eqctrl_0";
		lock_lf_ovd	:	string	:=	"lock_lf_norm";
		lf_offset_step	:	string	:=	"lfos_step1";
		hf_offset_step	:	string	:=	"hfos_step1";
		lf_offset	:	string	:=	"lf_minus_2mv";
		hf_offset	:	string	:=	"hf_0mv";
		macro_hfclk_divide	:	string	:=	"hf_macro_bypass";
		macro_lfclk_divide	:	string	:=	"lf_macro_bypass";
		hfclk_duration_value	:	bit_vector	:=	B"0";
		hfclk_duration	:	string	:=	"hfclk_duration_val";
		hfclk_edge_lock_value	:	bit_vector	:=	B"0";
		hfclk_edge_lock	:	string	:=	"hfclk_edge_lock_val";
		hfclk_lock_for_adapt_done_value	:	bit_vector	:=	B"0";
		hfclk_lock_for_adapt_done	:	string	:=	"hfclk_lock_for_adapt_done_val";
		lfclk_duration_value	:	bit_vector	:=	B"0";
		lfclk_duration	:	string	:=	"lfclk_duration_val";
		lfclk_edge_lock_value	:	bit_vector	:=	B"0";
		lfclk_edge_lock	:	string	:=	"lfclk_edge_lock_val";
		lfclk_lock_for_adapt_done_value	:	bit_vector	:=	B"0";
		lfclk_lock_for_adapt_done	:	string	:=	"lfclk_lock_for_adapt_done_val";
		adce_atb	:	string	:=	"atb_lst0";
		adce_reserved	:	string	:=	"reserved_default";
		bias_rgen_enable	:	string	:=	"ibias_from_ibp150u";
		level_1t	:	string	:=	"off_1t";
		level_2t	:	string	:=	"off_2t";
		level_3t	:	string	:=	"off_3t";
		level_4t	:	string	:=	"off_4t";
		level_5t	:	string	:=	"off_5t";
		phase_steps_sel_dfe	:	string	:=	"step1";
		vco_phase_sel	:	string	:=	"clk0";
		clk_source_sel	:	string	:=	"vco_clk";
		polarity_2t	:	string	:=	"negative_2t";
		polarity_3t	:	string	:=	"negative_3t";
		polarity_4t	:	string	:=	"negative_4t";
		polarity_5t	:	string	:=	"negative_5t";
		offset_ev_level	:	string	:=	"ev_left_level0";
		offset_od_level	:	string	:=	"od_left_level0";
		offset_evh_level	:	string	:=	"evh_left_level0";
		offset_evl_level	:	string	:=	"evl_left_level0";
		offset_odh_level	:	string	:=	"odh_left_level0";
		offset_odl_level	:	string	:=	"odl_left_level0";
		offset_testmux	:	string	:=	"testmux_off";
		adapt_en	:	string	:=	"adapt_disable";
		adapt_bypass	:	string	:=	"adapt_bypass_off";
		speed_mode	:	string	:=	"high_freq";
		vref	:	string	:=	"vref_level4";
		atb	:	string	:=	"atb_off";
		pcnt1_bsel	:	string	:=	"pcnt1_200";
		pcnt2_bsel	:	string	:=	"pcnt2_200";
		pcnt3_bsel	:	string	:=	"pcnt3_200";
		pcnt4_bsel	:	string	:=	"pcnt4_200";
		pcnt5_bsel	:	string	:=	"pcnt5_200";
		adapt_mode	:	string	:=	"adapt_3tap";
		adapt_vcm_op_en	:	string	:=	"vcm_opamp_enable";
		adapt_hold_en	:	string	:=	"adapt_hold_disable";
		adapt_limit_en	:	string	:=	"adapt_limit_disable";
		pdb_odi	:	string	:=	"power_down_eye";
		vert_threshold	:	string	:=	"vert_0mv";
		v_vert_threshold_scaling	:	string	:=	"scale_plus_0p8";
		phase_steps_sel_odi	:	string	:=	"step20";
		bit_error_check_enable	:	string	:=	"bit_err_chk_enable";
		out_to_nxt_ch	:	string	:=	"out_2_nxt_ch_off";
		select_1d_eye	:	string	:=	"sel_2d_eye";
		rx_manual_mode	:	string	:=	"eq_manual_1";
		select_testbus	:	string	:=	"select_testbus_a";
		clk_sel	:	string	:=	"refclk_or_cal_clk";
		reverse_loopback	:	string	:=	"reverse_lpbk_cdr";
		to_jitter_enable	:	string	:=	"no_jitter_enable";
		to_scale_jitter	:	string	:=	"jitter_setting_000";
		cal_eye_pdb	:	string	:=	"eye_monitor_off";
		cal_dfe_pdb	:	string	:=	"dfe_monitor_off";
		cal_offset_mode	:	string	:=	"mode_independent";
		cal_set_timer	:	string	:=	"timer_fast";
		cal_limit_sa_cap	:	string	:=	"full_cap";
		cal_oneshot	:	string	:=	"oneshot_off";
		rx_dprio_sel	:	string	:=	"rx_dprio_sel";
		bbpd_dprio_sel	:	string	:=	"bbpd_dprio_sel";
		eye_dprio_sel	:	string	:=	"eye_dprio_sel";
		dfe_dprio_sel	:	string	:=	"dfe_dprio_sel";
		offset_cal_pd_top	:	string	:=	"offset_enable";
		offset_att_en	:	string	:=	"enable_12g_cal";
		cal_status_sel	:	string	:=	"status_reg1";
		cal_limit_bbpd_sa_cal	:	string	:=	"enable_4phase";
		rx_det_pdb	:	string	:=	"power_down";
		counter_0	:	string	:=	"setting_0";
		counter_1	:	string	:=	"setting_0";
		counter_2	:	string	:=	"setting_0";
		counter_3	:	string	:=	"setting_0";
		pcie_qpi_sel	:	string	:=	"pcie_mode";
		rx_manual_mode_test	:	string	:=	"eq_d2a_test_disable"
	);
	port	(
		adaptcapture	:	in	std_logic := '0';
		adaptdone	:	out	std_logic := '0';
		adcestandby	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ck0sigdet	:	in	std_logic := '0';
		datain	:	in	std_logic := '0';
		dataout	:	out	std_logic := '0';
		eyemonitor	:	in	std_logic_vector(4 downto 0) := "00000";
		hardoccaldone	:	out	std_logic := '0';
		hardoccalen	:	in	std_logic := '0';
		lpbkn	:	in	std_logic := '0';
		lpbkp	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		occlk	:	in	std_logic := '0';
		rdlpbkn	:	out	std_logic := '0';
		rdlpbkp	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxqpipulldn	:	in	std_logic := '0';
		rxrefclk	:	out	std_logic := '0';
		sd	:	out	std_logic := '0';
		slpbk	:	in	std_logic := '0';
		vonlp	:	in	std_logic := '0';
		voplp	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_rx_buf;

architecture behavior of stratixv_hssi_pma_rx_buf is

component	stratixv_hssi_pma_rx_buf_encrypted
	generic	(
		sd_threshold	:	integer	:=	0;
		vcm_sel	:	string	:=	"vtt_0p70v";
		vcm_current_add	:	string	:=	"vcm_current_default";
		qpi_enable	:	string	:=	"false";
		rx_sel_bias_source	:	string	:=	"bias_vcmdrv";
		bypass_eqz_stages_234	:	string	:=	"all_stages_enabled";
		cdr_clock_enable	:	string	:=	"true";
		term_sel	:	string	:=	"int_100ohm";
		sd_on	:	integer	:=	16;
		avmm_group_channel_index	:	integer	:=	0;
		rx_dc_gain	:	integer	:=	0;
		diagnostic_loopback	:	string	:=	"diag_lpbk_off";
		user_base_address	:	integer	:=	0;
		offset_cal_pd	:	string	:=	"eqz1_en";
		channel_number	:	integer	:=	0;
		vccela_supply_voltage	:	string	:=	"vccela_1p0v";
		pdb_sd	:	string	:=	"false";
		use_default_base_address	:	string	:=	"true";
		pmos_gain_peak	:	string	:=	"eqzp_en_peaking";
		sd_off	:	integer	:=	0;
		input_vcm_sel	:	string	:=	"high_vcm";
		ct_equalizer_setting	:	integer	:=	1;
		enable_rx_gainctrl_pciemode	:	string	:=	"false";
		eq_bw_sel	:	string	:=	"bw_full_12p5";
		cdrclk_to_cgb	:	string	:=	"cdrclk_2cgb_dis";
		serial_loopback	:	string	:=	"lpbkp_dis";
		dfe_pi_bw	:	string	:=	"bw_10ghz";
		adce_rgen_bw	:	string	:=	"low_bw";
		adce_hsf_hfbw	:	string	:=	"full_bw";
		monitor_bw_sel	:	string	:=	"bw_1gbps_less"
	);
	port	(
		adaptcapture	:	in	std_logic := '0';
		adaptdone	:	out	std_logic := '0';
		adcestandby	:	in	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		ck0sigdet	:	in	std_logic := '0';
		datain	:	in	std_logic := '0';
		dataout	:	out	std_logic := '0';
		eyemonitor	:	in	std_logic_vector(4 downto 0) := "00000";
		hardoccaldone	:	out	std_logic := '0';
		hardoccalen	:	in	std_logic := '0';
		lpbkn	:	in	std_logic := '0';
		lpbkp	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		occlk	:	in	std_logic := '0';
		rdlpbkn	:	out	std_logic := '0';
		rdlpbkp	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxqpipulldn	:	in	std_logic := '0';
		rxrefclk	:	out	std_logic := '0';
		sd	:	out	std_logic := '0';
		slpbk	:	in	std_logic := '0';
		vonlp	:	in	std_logic := '0';
		voplp	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_rx_buf_encrypted
	generic map	(
		sd_threshold	=>	sd_threshold,
		vcm_sel	=>	vcm_sel,
		vcm_current_add	=>	vcm_current_add,
		qpi_enable	=>	qpi_enable,
		rx_sel_bias_source	=>	rx_sel_bias_source,
		bypass_eqz_stages_234	=>	bypass_eqz_stages_234,
		cdr_clock_enable	=>	cdr_clock_enable,
		term_sel	=>	term_sel,
		sd_on	=>	sd_on,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		rx_dc_gain	=>	rx_dc_gain,
		diagnostic_loopback	=>	diagnostic_loopback,
		user_base_address	=>	user_base_address,
		offset_cal_pd	=>	offset_cal_pd,
		channel_number	=>	channel_number,
		vccela_supply_voltage	=>	vccela_supply_voltage,
		pdb_sd	=>	pdb_sd,
		use_default_base_address	=>	use_default_base_address,
		pmos_gain_peak	=>	pmos_gain_peak,
		sd_off	=>	sd_off,
		input_vcm_sel	=>	input_vcm_sel,
		ct_equalizer_setting	=>	ct_equalizer_setting,
		enable_rx_gainctrl_pciemode	=>	enable_rx_gainctrl_pciemode,
		eq_bw_sel	=>	eq_bw_sel,
		cdrclk_to_cgb	=>	cdrclk_to_cgb,
		serial_loopback	=>	serial_loopback,
		dfe_pi_bw	=>	dfe_pi_bw,
		adce_rgen_bw	=>	adce_rgen_bw,
		adce_hsf_hfbw	=>	adce_hsf_hfbw,
		monitor_bw_sel	=>	monitor_bw_sel
	)
	port map	(
		adaptcapture	=>	adaptcapture,
		adaptdone	=>	adaptdone,
		adcestandby	=>	adcestandby,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		ck0sigdet	=>	ck0sigdet,
		datain	=>	datain,
		dataout	=>	dataout,
		eyemonitor	=>	eyemonitor,
		hardoccaldone	=>	hardoccaldone,
		hardoccalen	=>	hardoccalen,
		lpbkn	=>	lpbkn,
		lpbkp	=>	lpbkp,
		nonuserfrompmaux	=>	nonuserfrompmaux,
		occlk	=>	occlk,
		rdlpbkn	=>	rdlpbkn,
		rdlpbkp	=>	rdlpbkp,
		rstn	=>	rstn,
		rxqpipulldn	=>	rxqpipulldn,
		rxrefclk	=>	rxrefclk,
		sd	=>	sd,
		slpbk	=>	slpbk,
		vonlp	=>	vonlp,
		voplp	=>	voplp
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_rx_deser	is
	generic	(
		user_base_address	:	integer	:=	0;
		deser_div33_enable	:	string	:=	"true";
		channel_number	:	integer	:=	0;
		vco_bypass	:	string	:=	"vco_bypass_normal";
		mode	:	integer	:=	8;
		use_default_base_address	:	string	:=	"true";
		auto_negotiation	:	string	:=	"false";
		clk_forward_only_mode	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		enable_bit_slip	:	string	:=	"true";
		sdclk_enable	:	string	:=	"true";
		pma_direct	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		bslip	:	in	std_logic := '0';
		clk270b	:	in	std_logic := '0';
		clk33pcs	:	out	std_logic := '0';
		clk90b	:	in	std_logic := '0';
		clkdivrx	:	out	std_logic := '0';
		clkdivrxrx	:	out	std_logic := '0';
		clklow	:	in	std_logic := '0';
		deven	:	in	std_logic := '0';
		dodd	:	in	std_logic := '0';
		dout	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		fref	:	in	std_logic := '0';
		pciel	:	out	std_logic := '0';
		pciem	:	out	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pfdmodelock	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_rx_deser;

architecture behavior of stratixv_hssi_pma_rx_deser is

component	stratixv_hssi_pma_rx_deser_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		deser_div33_enable	:	string	:=	"true";
		channel_number	:	integer	:=	0;
		vco_bypass	:	string	:=	"vco_bypass_normal";
		mode	:	integer	:=	8;
		use_default_base_address	:	string	:=	"true";
		auto_negotiation	:	string	:=	"false";
		clk_forward_only_mode	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		enable_bit_slip	:	string	:=	"true";
		sdclk_enable	:	string	:=	"true";
		pma_direct	:	string	:=	"false"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		bslip	:	in	std_logic := '0';
		clk270b	:	in	std_logic := '0';
		clk33pcs	:	out	std_logic := '0';
		clk90b	:	in	std_logic := '0';
		clkdivrx	:	out	std_logic := '0';
		clkdivrxrx	:	out	std_logic := '0';
		clklow	:	in	std_logic := '0';
		deven	:	in	std_logic := '0';
		dodd	:	in	std_logic := '0';
		dout	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		fref	:	in	std_logic := '0';
		pciel	:	out	std_logic := '0';
		pciem	:	out	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pfdmodelock	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_rx_deser_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		deser_div33_enable	=>	deser_div33_enable,
		channel_number	=>	channel_number,
		vco_bypass	=>	vco_bypass,
		mode	=>	mode,
		use_default_base_address	=>	use_default_base_address,
		auto_negotiation	=>	auto_negotiation,
		clk_forward_only_mode	=>	clk_forward_only_mode,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		enable_bit_slip	=>	enable_bit_slip,
		sdclk_enable	=>	sdclk_enable,
		pma_direct	=>	pma_direct
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		bslip	=>	bslip,
		clk270b	=>	clk270b,
		clk33pcs	=>	clk33pcs,
		clk90b	=>	clk90b,
		clkdivrx	=>	clkdivrx,
		clkdivrxrx	=>	clkdivrxrx,
		clklow	=>	clklow,
		deven	=>	deven,
		dodd	=>	dodd,
		dout	=>	dout,
		fref	=>	fref,
		pciel	=>	pciel,
		pciem	=>	pciem,
		pciesw	=>	pciesw,
		pfdmodelock	=>	pfdmodelock,
		rstn	=>	rstn
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_tx_buf	is
	generic	(
		pre_emp_switching_ctrl_2nd_post_tap	:	integer	:=	0;
		rx_det_output_sel	:	string	:=	"rx_det_pcie_out";
		vcm_current_addl	:	string	:=	"vcm_current_default";
		term_sel	:	string	:=	"int_100ohm";
		rx_det	:	integer	:=	0;
		fir_coeff_ctrl_sel	:	string	:=	"ram_ctl";
		dft_sel	:	string	:=	"disabled";
		avmm_group_channel_index	:	integer	:=	0;
		pre_emp_switching_ctrl_pre_tap	:	integer	:=	0;
		vod_switching_ctrl_main_tap	:	integer	:=	50;
		local_ib_ctl	:	string	:=	"ib_29ohm";
		sig_inv_pre_tap	:	string	:=	"false";
		user_base_address	:	integer	:=	0;
		driver_resolution_ctrl	:	string	:=	"disabled";
		channel_number	:	integer	:=	0;
		vccela_supply_voltage	:	string	:=	"vccela_1p0v";
		vcm_ctrl_sel	:	string	:=	"ram_ctl";
		swing_boost	:	string	:=	"not_boost";
		qpi_en	:	string	:=	"false";
		vod_boost	:	string	:=	"not_boost";
		use_default_base_address	:	string	:=	"true";
		rx_det_pdb	:	string	:=	"true";
		sig_inv_2nd_tap	:	string	:=	"false";
		common_mode_driver_sel	:	string	:=	"volt_0p65v";
		pre_emp_switching_ctrl_1st_post_tap	:	integer	:=	0;
		slew_rate_ctrl	:	integer	:=	5;
		silicon_rev	:	string	:=	"reve";
		pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig	:	integer	:=	0;
		local_ib_en	:	string	:=	"local_ib_en";
		pre_emp_switching_ctrl_pre_tap_analog_reconfig	:	integer	:=	0;
		ser_att_buf_en	:	string	:=	"disable"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		datain	:	in	std_logic := '0';
		dataout	:	out	std_logic := '0';
		fixedclkout	:	out	std_logic := '0';
		icoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		nonuserfrompmaux	:	in	std_logic := '0';
		rxdetclk	:	in	std_logic := '0';
		rxdetectvalid	:	out	std_logic := '0';
		rxfound	:	out	std_logic := '0';
		txdetrx	:	in	std_logic := '0';
		txelecidl	:	in	std_logic := '0';
		txqpipulldn	:	in	std_logic := '0';
		txqpipullup	:	in	std_logic := '0';
		vrlpbkn	:	in	std_logic := '0';
		vrlpbkn1t	:	in	std_logic := '0';
		vrlpbkp	:	in	std_logic := '0';
		vrlpbkp1t	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_tx_buf;

architecture behavior of stratixv_hssi_pma_tx_buf is

component	stratixv_hssi_pma_tx_buf_encrypted
	generic	(
		pre_emp_switching_ctrl_2nd_post_tap	:	integer	:=	0;
		rx_det_output_sel	:	string	:=	"rx_det_pcie_out";
		vcm_current_addl	:	string	:=	"vcm_current_default";
		term_sel	:	string	:=	"int_100ohm";
		rx_det	:	integer	:=	0;
		fir_coeff_ctrl_sel	:	string	:=	"ram_ctl";
		dft_sel	:	string	:=	"disabled";
		avmm_group_channel_index	:	integer	:=	0;
		pre_emp_switching_ctrl_pre_tap	:	integer	:=	0;
		vod_switching_ctrl_main_tap	:	integer	:=	50;
		local_ib_ctl	:	string	:=	"ib_29ohm";
		sig_inv_pre_tap	:	string	:=	"false";
		user_base_address	:	integer	:=	0;
		driver_resolution_ctrl	:	string	:=	"disabled";
		channel_number	:	integer	:=	0;
		vccela_supply_voltage	:	string	:=	"vccela_1p0v";
		vcm_ctrl_sel	:	string	:=	"ram_ctl";
		swing_boost	:	string	:=	"not_boost";
		qpi_en	:	string	:=	"false";
		vod_boost	:	string	:=	"not_boost";
		use_default_base_address	:	string	:=	"true";
		rx_det_pdb	:	string	:=	"true";
		sig_inv_2nd_tap	:	string	:=	"false";
		common_mode_driver_sel	:	string	:=	"volt_0p65v";
		pre_emp_switching_ctrl_1st_post_tap	:	integer	:=	0;
		slew_rate_ctrl	:	integer	:=	5;
		pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig	:	integer	:=	0;
		local_ib_en	:	string	:=	"local_ib_en";
		pre_emp_switching_ctrl_pre_tap_analog_reconfig	:	integer	:=	0
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		datain	:	in	std_logic := '0';
		dataout	:	out	std_logic := '0';
		fixedclkout	:	out	std_logic := '0';
		icoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		nonuserfrompmaux	:	in	std_logic := '0';
		rxdetclk	:	in	std_logic := '0';
		rxdetectvalid	:	out	std_logic := '0';
		rxfound	:	out	std_logic := '0';
		txdetrx	:	in	std_logic := '0';
		txelecidl	:	in	std_logic := '0';
		txqpipulldn	:	in	std_logic := '0';
		txqpipullup	:	in	std_logic := '0';
		vrlpbkn	:	in	std_logic := '0';
		vrlpbkn1t	:	in	std_logic := '0';
		vrlpbkp	:	in	std_logic := '0';
		vrlpbkp1t	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_tx_buf_encrypted
	generic map	(
		pre_emp_switching_ctrl_2nd_post_tap	=>	pre_emp_switching_ctrl_2nd_post_tap,
		rx_det_output_sel	=>	rx_det_output_sel,
		vcm_current_addl	=>	vcm_current_addl,
		term_sel	=>	term_sel,
		rx_det	=>	rx_det,
		fir_coeff_ctrl_sel	=>	fir_coeff_ctrl_sel,
		dft_sel	=>	dft_sel,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		pre_emp_switching_ctrl_pre_tap	=>	pre_emp_switching_ctrl_pre_tap,
		vod_switching_ctrl_main_tap	=>	vod_switching_ctrl_main_tap,
		local_ib_ctl	=>	local_ib_ctl,
		sig_inv_pre_tap	=>	sig_inv_pre_tap,
		user_base_address	=>	user_base_address,
		driver_resolution_ctrl	=>	driver_resolution_ctrl,
		channel_number	=>	channel_number,
		vccela_supply_voltage	=>	vccela_supply_voltage,
		vcm_ctrl_sel	=>	vcm_ctrl_sel,
		swing_boost	=>	swing_boost,
		qpi_en	=>	qpi_en,
		vod_boost	=>	vod_boost,
		use_default_base_address	=>	use_default_base_address,
		rx_det_pdb	=>	rx_det_pdb,
		sig_inv_2nd_tap	=>	sig_inv_2nd_tap,
		common_mode_driver_sel	=>	common_mode_driver_sel,
		pre_emp_switching_ctrl_1st_post_tap	=>	pre_emp_switching_ctrl_1st_post_tap,
		slew_rate_ctrl	=>	slew_rate_ctrl,
		pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig	=>	pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig,
		local_ib_en	=>	local_ib_en,
		pre_emp_switching_ctrl_pre_tap_analog_reconfig	=>	pre_emp_switching_ctrl_pre_tap_analog_reconfig
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		datain	=>	datain,
		dataout	=>	dataout,
		fixedclkout	=>	fixedclkout,
		icoeff	=>	icoeff,
		nonuserfrompmaux	=>	nonuserfrompmaux,
		rxdetclk	=>	rxdetclk,
		rxdetectvalid	=>	rxdetectvalid,
		rxfound	=>	rxfound,
		txdetrx	=>	txdetrx,
		txelecidl	=>	txelecidl,
		txqpipulldn	=>	txqpipulldn,
		txqpipullup	=>	txqpipullup,
		vrlpbkn	=>	vrlpbkn,
		vrlpbkn1t	=>	vrlpbkn1t,
		vrlpbkp	=>	vrlpbkp,
		vrlpbkp1t	=>	vrlpbkp1t
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_tx_cgb	is
	generic	(
		x1_clock4_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_div_m_sel	:	integer	:=	1;
		mode	:	integer	:=	8;
		x1_clock2_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		reset_scheme	:	string	:=	"non_reset_bonding_scheme";
		clk_mute	:	string	:=	"disable_clockmute";
		data_rate	:	string	:=	"";
		cgb_iqclk_sel	:	string	:=	"tristate";
		x1_clock7_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		avmm_group_channel_index	:	integer	:=	0;
		xn_clock_source_sel	:	string	:=	"cgb_xn_unused";
		pll_feedback	:	string	:=	"non_pll_feedback";
		x1_clock5_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		user_base_address	:	integer	:=	0;
		x1_clock_source_sel	:	string	:=	"x1_clk_unused";
		channel_number	:	integer	:=	0;
		tx_mux_power_down	:	string	:=	"normal";
		use_default_base_address	:	string	:=	"true";
		x1_clock0_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_clock1_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		auto_negotiation	:	string	:=	"false";
		pcie_g3_x8	:	string	:=	"non_pcie_g3_x8";
		cgb_sync	:	string	:=	"normal";
		x1_clock3_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_clock6_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		pcie_rst	:	string	:=	"normal_reset";
		silicon_rev	:	string	:=	"reve";
		fref_vco_bypass	:	string	:=	"normal_operation"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkbcdr1b	:	in	std_logic := '0';
		clkbcdr1t	:	in	std_logic := '0';
		clkbcdrloc	:	in	std_logic := '0';
		clkbdnseg	:	in	std_logic := '0';
		clkbffpll	:	in	std_logic := '0';
		clkblcb	:	in	std_logic := '0';
		clkblct	:	in	std_logic := '0';
		clkbupseg	:	in	std_logic := '0';
		clkcdr1b	:	in	std_logic := '0';
		clkcdr1t	:	in	std_logic := '0';
		clkcdrloc	:	in	std_logic := '0';
		clkdnseg	:	in	std_logic := '0';
		clkffpll	:	in	std_logic := '0';
		clklcb	:	in	std_logic := '0';
		clklct	:	in	std_logic := '0';
		clkupseg	:	in	std_logic := '0';
		cpulse	:	out	std_logic := '0';
		cpulseout	:	out	std_logic := '0';
		cpulsex6dn	:	in	std_logic := '0';
		cpulsex6up	:	in	std_logic := '0';
		cpulsexndn	:	in	std_logic := '0';
		cpulsexnup	:	in	std_logic := '0';
		hfclkn	:	out	std_logic := '0';
		hfclknout	:	out	std_logic := '0';
		hfclknx6dn	:	in	std_logic := '0';
		hfclknx6up	:	in	std_logic := '0';
		hfclknxndn	:	in	std_logic := '0';
		hfclknxnup	:	in	std_logic := '0';
		hfclkp	:	out	std_logic := '0';
		hfclkpout	:	out	std_logic := '0';
		hfclkpx6dn	:	in	std_logic := '0';
		hfclkpx6up	:	in	std_logic := '0';
		hfclkpxndn	:	in	std_logic := '0';
		hfclkpxnup	:	in	std_logic := '0';
		lfclkn	:	out	std_logic := '0';
		lfclknout	:	out	std_logic := '0';
		lfclknx6dn	:	in	std_logic := '0';
		lfclknx6up	:	in	std_logic := '0';
		lfclknxndn	:	in	std_logic := '0';
		lfclknxnup	:	in	std_logic := '0';
		lfclkp	:	out	std_logic := '0';
		lfclkpout	:	out	std_logic := '0';
		lfclkpx6dn	:	in	std_logic := '0';
		lfclkpx6up	:	in	std_logic := '0';
		lfclkpxndn	:	in	std_logic := '0';
		lfclkpxnup	:	in	std_logic := '0';
		pciefbclk	:	out	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pcieswdone	:	out	std_logic_vector(1 downto 0) := "00";
		pciesyncp	:	out	std_logic := '0';
		pclk	:	out	std_logic_vector(2 downto 0) := "000";
		pclkout	:	out	std_logic_vector(2 downto 0) := "000";
		pclkx6dn	:	in	std_logic_vector(2 downto 0) := "000";
		pclkx6up	:	in	std_logic_vector(2 downto 0) := "000";
		pclkxndn	:	in	std_logic_vector(2 downto 0) := "000";
		pclkxnup	:	in	std_logic_vector(2 downto 0) := "000";
		pllfbsw	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxclk	:	in	std_logic := '0';
		rxiqclk	:	out	std_logic := '0';
		txpmasyncp	:	in	std_logic := '0';
		fref	:	in	std_logic := '0';
		pcs_rst_n	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_tx_cgb;

architecture behavior of stratixv_hssi_pma_tx_cgb is

component	stratixv_hssi_pma_tx_cgb_encrypted
	generic	(
		x1_clock4_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_div_m_sel	:	integer	:=	1;
		mode	:	integer	:=	8;
		x1_clock2_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		reset_scheme	:	string	:=	"non_reset_bonding_scheme";
		clk_mute	:	string	:=	"disable_clockmute";
		data_rate	:	string	:=	"";
		cgb_iqclk_sel	:	string	:=	"tristate";
		x1_clock7_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		avmm_group_channel_index	:	integer	:=	0;
		xn_clock_source_sel	:	string	:=	"cgb_xn_unused";
		pll_feedback	:	string	:=	"non_pll_feedback";
		x1_clock5_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		user_base_address	:	integer	:=	0;
		x1_clock_source_sel	:	string	:=	"x1_clk_unused";
		channel_number	:	integer	:=	0;
		tx_mux_power_down	:	string	:=	"normal";
		use_default_base_address	:	string	:=	"true";
		x1_clock0_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_clock1_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		auto_negotiation	:	string	:=	"false";
		pcie_g3_x8	:	string	:=	"non_pcie_g3_x8";
		cgb_sync	:	string	:=	"normal";
		x1_clock3_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		x1_clock6_logical_to_physical_mapping	:	string	:=	"x1_clk_unused";
		pcie_rst	:	string	:=	"normal_reset";
		fref_vco_bypass	:	string	:=	"normal_operation"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkbcdr1b	:	in	std_logic := '0';
		clkbcdr1t	:	in	std_logic := '0';
		clkbcdrloc	:	in	std_logic := '0';
		clkbdnseg	:	in	std_logic := '0';
		clkbffpll	:	in	std_logic := '0';
		clkblcb	:	in	std_logic := '0';
		clkblct	:	in	std_logic := '0';
		clkbupseg	:	in	std_logic := '0';
		clkcdr1b	:	in	std_logic := '0';
		clkcdr1t	:	in	std_logic := '0';
		clkcdrloc	:	in	std_logic := '0';
		clkdnseg	:	in	std_logic := '0';
		clkffpll	:	in	std_logic := '0';
		clklcb	:	in	std_logic := '0';
		clklct	:	in	std_logic := '0';
		clkupseg	:	in	std_logic := '0';
		cpulse	:	out	std_logic := '0';
		cpulseout	:	out	std_logic := '0';
		cpulsex6dn	:	in	std_logic := '0';
		cpulsex6up	:	in	std_logic := '0';
		cpulsexndn	:	in	std_logic := '0';
		cpulsexnup	:	in	std_logic := '0';
		hfclkn	:	out	std_logic := '0';
		hfclknout	:	out	std_logic := '0';
		hfclknx6dn	:	in	std_logic := '0';
		hfclknx6up	:	in	std_logic := '0';
		hfclknxndn	:	in	std_logic := '0';
		hfclknxnup	:	in	std_logic := '0';
		hfclkp	:	out	std_logic := '0';
		hfclkpout	:	out	std_logic := '0';
		hfclkpx6dn	:	in	std_logic := '0';
		hfclkpx6up	:	in	std_logic := '0';
		hfclkpxndn	:	in	std_logic := '0';
		hfclkpxnup	:	in	std_logic := '0';
		lfclkn	:	out	std_logic := '0';
		lfclknout	:	out	std_logic := '0';
		lfclknx6dn	:	in	std_logic := '0';
		lfclknx6up	:	in	std_logic := '0';
		lfclknxndn	:	in	std_logic := '0';
		lfclknxnup	:	in	std_logic := '0';
		lfclkp	:	out	std_logic := '0';
		lfclkpout	:	out	std_logic := '0';
		lfclkpx6dn	:	in	std_logic := '0';
		lfclkpx6up	:	in	std_logic := '0';
		lfclkpxndn	:	in	std_logic := '0';
		lfclkpxnup	:	in	std_logic := '0';
		pciefbclk	:	out	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pcieswdone	:	out	std_logic_vector(1 downto 0) := "00";
		pciesyncp	:	out	std_logic := '0';
		pclk	:	out	std_logic_vector(2 downto 0) := "000";
		pclkout	:	out	std_logic_vector(2 downto 0) := "000";
		pclkx6dn	:	in	std_logic_vector(2 downto 0) := "000";
		pclkx6up	:	in	std_logic_vector(2 downto 0) := "000";
		pclkxndn	:	in	std_logic_vector(2 downto 0) := "000";
		pclkxnup	:	in	std_logic_vector(2 downto 0) := "000";
		pllfbsw	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxclk	:	in	std_logic := '0';
		rxiqclk	:	out	std_logic := '0';
		txpmasyncp	:	in	std_logic := '0';
		fref	:	in	std_logic := '0';
		pcs_rst_n	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_tx_cgb_encrypted
	generic map	(
		x1_clock4_logical_to_physical_mapping	=>	x1_clock4_logical_to_physical_mapping,
		x1_div_m_sel	=>	x1_div_m_sel,
		mode	=>	mode,
		x1_clock2_logical_to_physical_mapping	=>	x1_clock2_logical_to_physical_mapping,
		reset_scheme	=>	reset_scheme,
		clk_mute	=>	clk_mute,
		data_rate	=>	data_rate,
		cgb_iqclk_sel	=>	cgb_iqclk_sel,
		x1_clock7_logical_to_physical_mapping	=>	x1_clock7_logical_to_physical_mapping,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		xn_clock_source_sel	=>	xn_clock_source_sel,
		pll_feedback	=>	pll_feedback,
		x1_clock5_logical_to_physical_mapping	=>	x1_clock5_logical_to_physical_mapping,
		user_base_address	=>	user_base_address,
		x1_clock_source_sel	=>	x1_clock_source_sel,
		channel_number	=>	channel_number,
		tx_mux_power_down	=>	tx_mux_power_down,
		use_default_base_address	=>	use_default_base_address,
		x1_clock0_logical_to_physical_mapping	=>	x1_clock0_logical_to_physical_mapping,
		x1_clock1_logical_to_physical_mapping	=>	x1_clock1_logical_to_physical_mapping,
		auto_negotiation	=>	auto_negotiation,
		pcie_g3_x8	=>	pcie_g3_x8,
		cgb_sync	=>	cgb_sync,
		x1_clock3_logical_to_physical_mapping	=>	x1_clock3_logical_to_physical_mapping,
		x1_clock6_logical_to_physical_mapping	=>	x1_clock6_logical_to_physical_mapping,
		pcie_rst	=>	pcie_rst,
		fref_vco_bypass	=>	fref_vco_bypass
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clkbcdr1b	=>	clkbcdr1b,
		clkbcdr1t	=>	clkbcdr1t,
		clkbcdrloc	=>	clkbcdrloc,
		clkbdnseg	=>	clkbdnseg,
		clkbffpll	=>	clkbffpll,
		clkblcb	=>	clkblcb,
		clkblct	=>	clkblct,
		clkbupseg	=>	clkbupseg,
		clkcdr1b	=>	clkcdr1b,
		clkcdr1t	=>	clkcdr1t,
		clkcdrloc	=>	clkcdrloc,
		clkdnseg	=>	clkdnseg,
		clkffpll	=>	clkffpll,
		clklcb	=>	clklcb,
		clklct	=>	clklct,
		clkupseg	=>	clkupseg,
		cpulse	=>	cpulse,
		cpulseout	=>	cpulseout,
		cpulsex6dn	=>	cpulsex6dn,
		cpulsex6up	=>	cpulsex6up,
		cpulsexndn	=>	cpulsexndn,
		cpulsexnup	=>	cpulsexnup,
		hfclkn	=>	hfclkn,
		hfclknout	=>	hfclknout,
		hfclknx6dn	=>	hfclknx6dn,
		hfclknx6up	=>	hfclknx6up,
		hfclknxndn	=>	hfclknxndn,
		hfclknxnup	=>	hfclknxnup,
		hfclkp	=>	hfclkp,
		hfclkpout	=>	hfclkpout,
		hfclkpx6dn	=>	hfclkpx6dn,
		hfclkpx6up	=>	hfclkpx6up,
		hfclkpxndn	=>	hfclkpxndn,
		hfclkpxnup	=>	hfclkpxnup,
		lfclkn	=>	lfclkn,
		lfclknout	=>	lfclknout,
		lfclknx6dn	=>	lfclknx6dn,
		lfclknx6up	=>	lfclknx6up,
		lfclknxndn	=>	lfclknxndn,
		lfclknxnup	=>	lfclknxnup,
		lfclkp	=>	lfclkp,
		lfclkpout	=>	lfclkpout,
		lfclkpx6dn	=>	lfclkpx6dn,
		lfclkpx6up	=>	lfclkpx6up,
		lfclkpxndn	=>	lfclkpxndn,
		lfclkpxnup	=>	lfclkpxnup,
		pciefbclk	=>	pciefbclk,
		pciesw	=>	pciesw,
		pcieswdone	=>	pcieswdone,
		pciesyncp	=>	pciesyncp,
		pclk	=>	pclk,
		pclkout	=>	pclkout,
		pclkx6dn	=>	pclkx6dn,
		pclkx6up	=>	pclkx6up,
		pclkxndn	=>	pclkxndn,
		pclkxnup	=>	pclkxnup,
		pllfbsw	=>	pllfbsw,
		rstn	=>	rstn,
		rxclk	=>	rxclk,
		rxiqclk	=>	rxiqclk,
		txpmasyncp	=>	txpmasyncp,
		fref	=>	fref,
		pcs_rst_n	=>	pcs_rst_n
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_tx_ser	is
	generic	(
		user_base_address	:	integer	:=	0;
		channel_number	:	integer	:=	0;
		clk_divtx_deskew	:	integer	:=	0;
		mode	:	integer	:=	8;
		pre_tap_en	:	string	:=	"true";
		ser_loopback	:	string	:=	"false";
		use_default_base_address	:	string	:=	"true";
		auto_negotiation	:	string	:=	"false";
		post_tap_2_en	:	string	:=	"true";
		clk_forward_only_mode	:	string	:=	"false";
		duty_cycle_tune	:	string	:=	"duty_cycle3";
		avmm_group_channel_index	:	integer	:=	0;
		post_tap_1_en	:	string	:=	"true";
		pma_direct	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkdivtx	:	out	std_logic := '0';
		cpulse	:	in	std_logic := '0';
		datain	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataout	:	out	std_logic := '0';
		hfclk	:	in	std_logic := '0';
		hfclkn	:	in	std_logic := '0';
		lbvon	:	out	std_logic := '0';
		lbvop	:	out	std_logic := '0';
		lfclk	:	in	std_logic := '0';
		lfclkn	:	in	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pciesyncp	:	in	std_logic := '0';
		pclk	:	in	std_logic_vector(2 downto 0) := "000";
		preenout	:	out	std_logic := '0';
		rstn	:	in	std_logic := '1';
		slpbk	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_tx_ser;

architecture behavior of stratixv_hssi_pma_tx_ser is

component	stratixv_hssi_pma_tx_ser_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		channel_number	:	integer	:=	0;
		clk_divtx_deskew	:	integer	:=	0;
		mode	:	integer	:=	8;
		pre_tap_en	:	string	:=	"true";
		ser_loopback	:	string	:=	"false";
		use_default_base_address	:	string	:=	"true";
		auto_negotiation	:	string	:=	"false";
		post_tap_2_en	:	string	:=	"true";
		clk_forward_only_mode	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		post_tap_1_en	:	string	:=	"true";
		pma_direct	:	string	:=	"false"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkdivtx	:	out	std_logic := '0';
		cpulse	:	in	std_logic := '0';
		datain	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataout	:	out	std_logic := '0';
		hfclk	:	in	std_logic := '0';
		hfclkn	:	in	std_logic := '0';
		lbvon	:	out	std_logic := '0';
		lbvop	:	out	std_logic := '0';
		lfclk	:	in	std_logic := '0';
		lfclkn	:	in	std_logic := '0';
		pciesw	:	in	std_logic_vector(1 downto 0) := "00";
		pciesyncp	:	in	std_logic := '0';
		pclk	:	in	std_logic_vector(2 downto 0) := "000";
		preenout	:	out	std_logic := '0';
		rstn	:	in	std_logic := '1';
		slpbk	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_tx_ser_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		channel_number	=>	channel_number,
		clk_divtx_deskew	=>	clk_divtx_deskew,
		mode	=>	mode,
		pre_tap_en	=>	pre_tap_en,
		ser_loopback	=>	ser_loopback,
		use_default_base_address	=>	use_default_base_address,
		auto_negotiation	=>	auto_negotiation,
		post_tap_2_en	=>	post_tap_2_en,
		clk_forward_only_mode	=>	clk_forward_only_mode,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		post_tap_1_en	=>	post_tap_1_en,
		pma_direct	=>	pma_direct
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clkdivtx	=>	clkdivtx,
		cpulse	=>	cpulse,
		datain	=>	datain,
		dataout	=>	dataout,
		hfclk	=>	hfclk,
		hfclkn	=>	hfclkn,
		lbvon	=>	lbvon,
		lbvop	=>	lbvop,
		lfclk	=>	lfclk,
		lfclkn	=>	lfclkn,
		pciesw	=>	pciesw,
		pciesyncp	=>	pciesyncp,
		pclk	=>	pclk,
		preenout	=>	preenout,
		rstn	=>	rstn,
		slpbk	=>	slpbk
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_common_pcs_pma_interface	is
	generic	(
		ppm_deassert_early	:	string	:=	"deassert_early_dis";
		auto_speed_ena	:	string	:=	"dis_auto_speed_ena";
		pcie_gen3_cap	:	string	:=	"non_pcie_gen3_cap";
		pipe_if_g3pcs	:	string	:=	"pipe_if_8gpcs";
		ppmsel	:	string	:=	"ppmsel_default";
		pma_if_dft_en	:	string	:=	"dft_dis";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		ppm_cnt_rst	:	string	:=	"ppm_cnt_rst_dis";
		user_base_address	:	integer	:=	0;
		refclk_dig_sel	:	string	:=	"refclk_dig_dis";
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		force_freqdet	:	string	:=	"force_freqdet_dis";
		ppm_gen1_2_cnt	:	string	:=	"cnt_32k";
		prot_mode	:	string	:=	"disabled_prot_mode";
		ppm_post_eidle_delay	:	string	:=	"cnt_200_cycles";
		pma_if_dft_val	:	string	:=	"dft_0";
		func_mode	:	string	:=	"disable";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		aggaligndetsync	:	out	std_logic_vector(1 downto 0) := "00";
		aggalignstatus	:	in	std_logic := '0';
		aggalignstatussync	:	out	std_logic := '0';
		aggalignstatussync0	:	in	std_logic := '0';
		aggalignstatussync0toporbot	:	in	std_logic := '0';
		aggalignstatustoporbot	:	in	std_logic := '0';
		aggcgcomprddall	:	in	std_logic := '0';
		aggcgcomprddalltoporbot	:	in	std_logic := '0';
		aggcgcomprddout	:	out	std_logic_vector(1 downto 0) := "00";
		aggcgcompwrall	:	in	std_logic := '0';
		aggcgcompwralltoporbot	:	in	std_logic := '0';
		aggcgcompwrout	:	out	std_logic_vector(1 downto 0) := "00";
		aggdecctl	:	out	std_logic := '0';
		aggdecdata	:	out	std_logic_vector(7 downto 0) := "00000000";
		aggdecdatavalid	:	out	std_logic := '0';
		aggdelcondmet0	:	in	std_logic := '0';
		aggdelcondmet0toporbot	:	in	std_logic := '0';
		aggdelcondmetout	:	out	std_logic := '0';
		aggendskwqd	:	in	std_logic := '0';
		aggendskwqdtoporbot	:	in	std_logic := '0';
		aggendskwrdptrs	:	in	std_logic := '0';
		aggendskwrdptrstoporbot	:	in	std_logic := '0';
		aggfifoovr0	:	in	std_logic := '0';
		aggfifoovr0toporbot	:	in	std_logic := '0';
		aggfifoovrout	:	out	std_logic := '0';
		aggfifordincomp0	:	in	std_logic := '0';
		aggfifordincomp0toporbot	:	in	std_logic := '0';
		aggfifordoutcomp	:	out	std_logic := '0';
		aggfiforstrdqd	:	in	std_logic := '0';
		aggfiforstrdqdtoporbot	:	in	std_logic := '0';
		agginsertincomplete0	:	in	std_logic := '0';
		agginsertincomplete0toporbot	:	in	std_logic := '0';
		agginsertincompleteout	:	out	std_logic := '0';
		agglatencycomp0	:	in	std_logic := '0';
		agglatencycomp0toporbot	:	in	std_logic := '0';
		agglatencycompout	:	out	std_logic := '0';
		aggrcvdclkagg	:	in	std_logic := '0';
		aggrcvdclkaggtoporbot	:	in	std_logic := '0';
		aggrdalign	:	out	std_logic_vector(1 downto 0) := "00";
		aggrdenablesync	:	out	std_logic := '0';
		aggrefclkdig	:	out	std_logic := '0';
		aggrunningdisp	:	out	std_logic_vector(1 downto 0) := "00";
		aggrxcontrolrs	:	in	std_logic := '0';
		aggrxcontrolrstoporbot	:	in	std_logic := '0';
		aggrxdatars	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggrxdatarstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggrxpcsrst	:	out	std_logic := '0';
		aggscanmoden	:	out	std_logic := '0';
		aggscanshiftn	:	out	std_logic := '0';
		aggsyncstatus	:	out	std_logic := '0';
		aggtestbus	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestsotopldin	:	in	std_logic := '0';
		aggtestsotopldout	:	out	std_logic := '0';
		aggtxctltc	:	out	std_logic := '0';
		aggtxctlts	:	in	std_logic := '0';
		aggtxctltstoporbot	:	in	std_logic := '0';
		aggtxdatatc	:	out	std_logic_vector(7 downto 0) := "00000000";
		aggtxdatats	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggtxdatatstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggtxpcsrst	:	out	std_logic := '0';
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clklow	:	in	std_logic := '0';
		fref	:	in	std_logic := '0';
		freqlock	:	out	std_logic := '0';
		hardreset	:	in	std_logic := '0';
		pcs8gearlyeios	:	in	std_logic := '0';
		pcs8geidleexit	:	in	std_logic := '0';
		pcs8ggen2ngen1	:	out	std_logic := '0';
		pcs8gltrpma	:	in	std_logic := '0';
		pcs8gpcieswitch	:	in	std_logic := '0';
		pcs8gpmacurrentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcs8gpmarxfound	:	out	std_logic := '0';
		pcs8gpowerstatetransitiondone	:	out	std_logic := '0';
		pcs8grxdetectvalid	:	out	std_logic := '0';
		pcs8gtxdetectrx	:	in	std_logic := '0';
		pcs8gtxelecidle	:	in	std_logic := '0';
		pcsaggaligndetsync	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggalignstatus	:	out	std_logic := '0';
		pcsaggalignstatussync	:	in	std_logic := '0';
		pcsaggalignstatussync0	:	out	std_logic := '0';
		pcsaggalignstatussync0toporbot	:	out	std_logic := '0';
		pcsaggalignstatustoporbot	:	out	std_logic := '0';
		pcsaggcgcomprddall	:	out	std_logic := '0';
		pcsaggcgcomprddalltoporbot	:	out	std_logic := '0';
		pcsaggcgcomprddout	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggcgcompwrall	:	out	std_logic := '0';
		pcsaggcgcompwralltoporbot	:	out	std_logic := '0';
		pcsaggcgcompwrout	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggdecctl	:	in	std_logic := '0';
		pcsaggdecdata	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsaggdecdatavalid	:	in	std_logic := '0';
		pcsaggdelcondmet0	:	out	std_logic := '0';
		pcsaggdelcondmet0toporbot	:	out	std_logic := '0';
		pcsaggdelcondmetout	:	in	std_logic := '0';
		pcsaggendskwqd	:	out	std_logic := '0';
		pcsaggendskwqdtoporbot	:	out	std_logic := '0';
		pcsaggendskwrdptrs	:	out	std_logic := '0';
		pcsaggendskwrdptrstoporbot	:	out	std_logic := '0';
		pcsaggfifoovr0	:	out	std_logic := '0';
		pcsaggfifoovr0toporbot	:	out	std_logic := '0';
		pcsaggfifoovrout	:	in	std_logic := '0';
		pcsaggfifordincomp0	:	out	std_logic := '0';
		pcsaggfifordincomp0toporbot	:	out	std_logic := '0';
		pcsaggfifordoutcomp	:	in	std_logic := '0';
		pcsaggfiforstrdqd	:	out	std_logic := '0';
		pcsaggfiforstrdqdtoporbot	:	out	std_logic := '0';
		pcsagginsertincomplete0	:	out	std_logic := '0';
		pcsagginsertincomplete0toporbot	:	out	std_logic := '0';
		pcsagginsertincompleteout	:	in	std_logic := '0';
		pcsagglatencycomp0	:	out	std_logic := '0';
		pcsagglatencycomp0toporbot	:	out	std_logic := '0';
		pcsagglatencycompout	:	in	std_logic := '0';
		pcsaggrcvdclkagg	:	out	std_logic := '0';
		pcsaggrcvdclkaggtoporbot	:	out	std_logic := '0';
		pcsaggrdalign	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggrdenablesync	:	in	std_logic := '0';
		pcsaggrefclkdig	:	in	std_logic := '0';
		pcsaggrunningdisp	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggrxcontrolrs	:	out	std_logic := '0';
		pcsaggrxcontrolrstoporbot	:	out	std_logic := '0';
		pcsaggrxdatars	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggrxdatarstoporbot	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggrxpcsrst	:	in	std_logic := '0';
		pcsaggscanmoden	:	in	std_logic := '0';
		pcsaggscanshiftn	:	in	std_logic := '0';
		pcsaggsyncstatus	:	in	std_logic := '0';
		pcsaggtestbus	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcsaggtxctltc	:	in	std_logic := '0';
		pcsaggtxctlts	:	out	std_logic := '0';
		pcsaggtxctltstoporbot	:	out	std_logic := '0';
		pcsaggtxdatatc	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxdatats	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxdatatstoporbot	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxpcsrst	:	in	std_logic := '0';
		pcsgen3gen3datasel	:	in	std_logic := '0';
		pcsgen3pllfixedclk	:	out	std_logic := '0';
		pcsgen3pmacurrentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3pmacurrentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		pcsgen3pmaearlyeios	:	in	std_logic := '0';
		pcsgen3pmaltr	:	in	std_logic := '0';
		pcsgen3pmapcieswdone	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3pmapcieswitch	:	in	std_logic_vector(1 downto 0) := "00";
		pcsgen3pmarxdetectvalid	:	out	std_logic := '0';
		pcsgen3pmarxfound	:	out	std_logic := '0';
		pcsgen3pmatxdetectrx	:	in	std_logic := '0';
		pcsgen3pmatxelecidle	:	in	std_logic := '0';
		pcsgen3ppmeidleexit	:	in	std_logic := '0';
		pcsrefclkdig	:	in	std_logic := '0';
		pcsscanmoden	:	in	std_logic := '0';
		pcsscanshiftn	:	in	std_logic := '0';
		pldhclkout	:	out	std_logic := '0';
		pldlccmurstb	:	in	std_logic := '0';
		pldnfrzdrv	:	in	std_logic := '0';
		pldpartialreconfig	:	in	std_logic := '0';
		pldtestsitoaggin	:	in	std_logic := '0';
		pldtestsitoaggout	:	out	std_logic := '0';
		pmaclklowout	:	out	std_logic := '0';
		pmacurrentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pmacurrentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pmaearlyeios	:	out	std_logic := '0';
		pmafrefout	:	out	std_logic := '0';
		pmahclk	:	in	std_logic := '0';
		pmaiftestbus	:	out	std_logic_vector(9 downto 0) := "0000000000";
		pmalccmurstb	:	out	std_logic := '0';
		pmaltr	:	out	std_logic := '0';
		pmanfrzdrv	:	out	std_logic := '0';
		pmaoffcaldone	:	out	std_logic := '0';
		pmaoffcalenin	:	in	std_logic := '0';
		pmapartialreconfig	:	out	std_logic := '0';
		pmapcieswdone	:	in	std_logic_vector(1 downto 0) := "00";
		pmapcieswitch	:	out	std_logic_vector(1 downto 0) := "00";
		pmarxdetectvalid	:	in	std_logic := '0';
		pmarxfound	:	in	std_logic := '0';
		pmarxpmarstb	:	in	std_logic := '0';
		pmatxdetectrx	:	out	std_logic := '0';
		pmatxelecidle	:	out	std_logic := '0';
		resetppmcntrs	:	in	std_logic := '0'
	);
end	stratixv_hssi_common_pcs_pma_interface;

architecture behavior of stratixv_hssi_common_pcs_pma_interface is

component	stratixv_hssi_common_pcs_pma_interface_encrypted
	generic	(
		ppm_deassert_early	:	string	:=	"deassert_early_dis";
		auto_speed_ena	:	string	:=	"dis_auto_speed_ena";
		pcie_gen3_cap	:	string	:=	"non_pcie_gen3_cap";
		pipe_if_g3pcs	:	string	:=	"pipe_if_8gpcs";
		ppmsel	:	string	:=	"ppmsel_default";
		pma_if_dft_en	:	string	:=	"dft_dis";
		avmm_group_channel_index	:	integer	:=	0;
		sup_mode	:	string	:=	"user_mode";
		ppm_cnt_rst	:	string	:=	"ppm_cnt_rst_dis";
		user_base_address	:	integer	:=	0;
		refclk_dig_sel	:	string	:=	"refclk_dig_dis";
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		force_freqdet	:	string	:=	"force_freqdet_dis";
		ppm_gen1_2_cnt	:	string	:=	"cnt_32k";
		prot_mode	:	string	:=	"disabled_prot_mode";
		ppm_post_eidle_delay	:	string	:=	"cnt_200_cycles";
		pma_if_dft_val	:	string	:=	"dft_0";
		func_mode	:	string	:=	"disable"
	);
	port	(
		aggaligndetsync	:	out	std_logic_vector(1 downto 0) := "00";
		aggalignstatus	:	in	std_logic := '0';
		aggalignstatussync	:	out	std_logic := '0';
		aggalignstatussync0	:	in	std_logic := '0';
		aggalignstatussync0toporbot	:	in	std_logic := '0';
		aggalignstatustoporbot	:	in	std_logic := '0';
		aggcgcomprddall	:	in	std_logic := '0';
		aggcgcomprddalltoporbot	:	in	std_logic := '0';
		aggcgcomprddout	:	out	std_logic_vector(1 downto 0) := "00";
		aggcgcompwrall	:	in	std_logic := '0';
		aggcgcompwralltoporbot	:	in	std_logic := '0';
		aggcgcompwrout	:	out	std_logic_vector(1 downto 0) := "00";
		aggdecctl	:	out	std_logic := '0';
		aggdecdata	:	out	std_logic_vector(7 downto 0) := "00000000";
		aggdecdatavalid	:	out	std_logic := '0';
		aggdelcondmet0	:	in	std_logic := '0';
		aggdelcondmet0toporbot	:	in	std_logic := '0';
		aggdelcondmetout	:	out	std_logic := '0';
		aggendskwqd	:	in	std_logic := '0';
		aggendskwqdtoporbot	:	in	std_logic := '0';
		aggendskwrdptrs	:	in	std_logic := '0';
		aggendskwrdptrstoporbot	:	in	std_logic := '0';
		aggfifoovr0	:	in	std_logic := '0';
		aggfifoovr0toporbot	:	in	std_logic := '0';
		aggfifoovrout	:	out	std_logic := '0';
		aggfifordincomp0	:	in	std_logic := '0';
		aggfifordincomp0toporbot	:	in	std_logic := '0';
		aggfifordoutcomp	:	out	std_logic := '0';
		aggfiforstrdqd	:	in	std_logic := '0';
		aggfiforstrdqdtoporbot	:	in	std_logic := '0';
		agginsertincomplete0	:	in	std_logic := '0';
		agginsertincomplete0toporbot	:	in	std_logic := '0';
		agginsertincompleteout	:	out	std_logic := '0';
		agglatencycomp0	:	in	std_logic := '0';
		agglatencycomp0toporbot	:	in	std_logic := '0';
		agglatencycompout	:	out	std_logic := '0';
		aggrcvdclkagg	:	in	std_logic := '0';
		aggrcvdclkaggtoporbot	:	in	std_logic := '0';
		aggrdalign	:	out	std_logic_vector(1 downto 0) := "00";
		aggrdenablesync	:	out	std_logic := '0';
		aggrefclkdig	:	out	std_logic := '0';
		aggrunningdisp	:	out	std_logic_vector(1 downto 0) := "00";
		aggrxcontrolrs	:	in	std_logic := '0';
		aggrxcontrolrstoporbot	:	in	std_logic := '0';
		aggrxdatars	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggrxdatarstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggrxpcsrst	:	out	std_logic := '0';
		aggscanmoden	:	out	std_logic := '0';
		aggscanshiftn	:	out	std_logic := '0';
		aggsyncstatus	:	out	std_logic := '0';
		aggtestbus	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		aggtestsotopldin	:	in	std_logic := '0';
		aggtestsotopldout	:	out	std_logic := '0';
		aggtxctltc	:	out	std_logic := '0';
		aggtxctlts	:	in	std_logic := '0';
		aggtxctltstoporbot	:	in	std_logic := '0';
		aggtxdatatc	:	out	std_logic_vector(7 downto 0) := "00000000";
		aggtxdatats	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggtxdatatstoporbot	:	in	std_logic_vector(7 downto 0) := "00000000";
		aggtxpcsrst	:	out	std_logic := '0';
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clklow	:	in	std_logic := '0';
		fref	:	in	std_logic := '0';
		freqlock	:	out	std_logic := '0';
		hardreset	:	in	std_logic := '0';
		pcs8gearlyeios	:	in	std_logic := '0';
		pcs8geidleexit	:	in	std_logic := '0';
		pcs8ggen2ngen1	:	out	std_logic := '0';
		pcs8gltrpma	:	in	std_logic := '0';
		pcs8gpcieswitch	:	in	std_logic := '0';
		pcs8gpmacurrentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcs8gpmarxfound	:	out	std_logic := '0';
		pcs8gpowerstatetransitiondone	:	out	std_logic := '0';
		pcs8grxdetectvalid	:	out	std_logic := '0';
		pcs8gtxdetectrx	:	in	std_logic := '0';
		pcs8gtxelecidle	:	in	std_logic := '0';
		pcsaggaligndetsync	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggalignstatus	:	out	std_logic := '0';
		pcsaggalignstatussync	:	in	std_logic := '0';
		pcsaggalignstatussync0	:	out	std_logic := '0';
		pcsaggalignstatussync0toporbot	:	out	std_logic := '0';
		pcsaggalignstatustoporbot	:	out	std_logic := '0';
		pcsaggcgcomprddall	:	out	std_logic := '0';
		pcsaggcgcomprddalltoporbot	:	out	std_logic := '0';
		pcsaggcgcomprddout	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggcgcompwrall	:	out	std_logic := '0';
		pcsaggcgcompwralltoporbot	:	out	std_logic := '0';
		pcsaggcgcompwrout	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggdecctl	:	in	std_logic := '0';
		pcsaggdecdata	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsaggdecdatavalid	:	in	std_logic := '0';
		pcsaggdelcondmet0	:	out	std_logic := '0';
		pcsaggdelcondmet0toporbot	:	out	std_logic := '0';
		pcsaggdelcondmetout	:	in	std_logic := '0';
		pcsaggendskwqd	:	out	std_logic := '0';
		pcsaggendskwqdtoporbot	:	out	std_logic := '0';
		pcsaggendskwrdptrs	:	out	std_logic := '0';
		pcsaggendskwrdptrstoporbot	:	out	std_logic := '0';
		pcsaggfifoovr0	:	out	std_logic := '0';
		pcsaggfifoovr0toporbot	:	out	std_logic := '0';
		pcsaggfifoovrout	:	in	std_logic := '0';
		pcsaggfifordincomp0	:	out	std_logic := '0';
		pcsaggfifordincomp0toporbot	:	out	std_logic := '0';
		pcsaggfifordoutcomp	:	in	std_logic := '0';
		pcsaggfiforstrdqd	:	out	std_logic := '0';
		pcsaggfiforstrdqdtoporbot	:	out	std_logic := '0';
		pcsagginsertincomplete0	:	out	std_logic := '0';
		pcsagginsertincomplete0toporbot	:	out	std_logic := '0';
		pcsagginsertincompleteout	:	in	std_logic := '0';
		pcsagglatencycomp0	:	out	std_logic := '0';
		pcsagglatencycomp0toporbot	:	out	std_logic := '0';
		pcsagglatencycompout	:	in	std_logic := '0';
		pcsaggrcvdclkagg	:	out	std_logic := '0';
		pcsaggrcvdclkaggtoporbot	:	out	std_logic := '0';
		pcsaggrdalign	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggrdenablesync	:	in	std_logic := '0';
		pcsaggrefclkdig	:	in	std_logic := '0';
		pcsaggrunningdisp	:	in	std_logic_vector(1 downto 0) := "00";
		pcsaggrxcontrolrs	:	out	std_logic := '0';
		pcsaggrxcontrolrstoporbot	:	out	std_logic := '0';
		pcsaggrxdatars	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggrxdatarstoporbot	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggrxpcsrst	:	in	std_logic := '0';
		pcsaggscanmoden	:	in	std_logic := '0';
		pcsaggscanshiftn	:	in	std_logic := '0';
		pcsaggsyncstatus	:	in	std_logic := '0';
		pcsaggtestbus	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcsaggtxctltc	:	in	std_logic := '0';
		pcsaggtxctlts	:	out	std_logic := '0';
		pcsaggtxctltstoporbot	:	out	std_logic := '0';
		pcsaggtxdatatc	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxdatats	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxdatatstoporbot	:	out	std_logic_vector(7 downto 0) := "00000000";
		pcsaggtxpcsrst	:	in	std_logic := '0';
		pcsgen3gen3datasel	:	in	std_logic := '0';
		pcsgen3pllfixedclk	:	out	std_logic := '0';
		pcsgen3pmacurrentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3pmacurrentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		pcsgen3pmaearlyeios	:	in	std_logic := '0';
		pcsgen3pmaltr	:	in	std_logic := '0';
		pcsgen3pmapcieswdone	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3pmapcieswitch	:	in	std_logic_vector(1 downto 0) := "00";
		pcsgen3pmarxdetectvalid	:	out	std_logic := '0';
		pcsgen3pmarxfound	:	out	std_logic := '0';
		pcsgen3pmatxdetectrx	:	in	std_logic := '0';
		pcsgen3pmatxelecidle	:	in	std_logic := '0';
		pcsgen3ppmeidleexit	:	in	std_logic := '0';
		pcsrefclkdig	:	in	std_logic := '0';
		pcsscanmoden	:	in	std_logic := '0';
		pcsscanshiftn	:	in	std_logic := '0';
		pldhclkout	:	out	std_logic := '0';
		pldlccmurstb	:	in	std_logic := '0';
		pldnfrzdrv	:	in	std_logic := '0';
		pldpartialreconfig	:	in	std_logic := '0';
		pldtestsitoaggin	:	in	std_logic := '0';
		pldtestsitoaggout	:	out	std_logic := '0';
		pmaclklowout	:	out	std_logic := '0';
		pmacurrentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pmacurrentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pmaearlyeios	:	out	std_logic := '0';
		pmafrefout	:	out	std_logic := '0';
		pmahclk	:	in	std_logic := '0';
		pmaiftestbus	:	out	std_logic_vector(9 downto 0) := "0000000000";
		pmalccmurstb	:	out	std_logic := '0';
		pmaltr	:	out	std_logic := '0';
		pmanfrzdrv	:	out	std_logic := '0';
		pmaoffcaldone	:	out	std_logic := '0';
		pmaoffcalenin	:	in	std_logic := '0';
		pmapartialreconfig	:	out	std_logic := '0';
		pmapcieswdone	:	in	std_logic_vector(1 downto 0) := "00";
		pmapcieswitch	:	out	std_logic_vector(1 downto 0) := "00";
		pmarxdetectvalid	:	in	std_logic := '0';
		pmarxfound	:	in	std_logic := '0';
		pmarxpmarstb	:	in	std_logic := '0';
		pmatxdetectrx	:	out	std_logic := '0';
		pmatxelecidle	:	out	std_logic := '0';
		resetppmcntrs	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_common_pcs_pma_interface_encrypted
	generic map	(
		ppm_deassert_early	=>	ppm_deassert_early,
		auto_speed_ena	=>	auto_speed_ena,
		pcie_gen3_cap	=>	pcie_gen3_cap,
		pipe_if_g3pcs	=>	pipe_if_g3pcs,
		ppmsel	=>	ppmsel,
		pma_if_dft_en	=>	pma_if_dft_en,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		sup_mode	=>	sup_mode,
		ppm_cnt_rst	=>	ppm_cnt_rst,
		user_base_address	=>	user_base_address,
		refclk_dig_sel	=>	refclk_dig_sel,
		selectpcs	=>	selectpcs,
		use_default_base_address	=>	use_default_base_address,
		force_freqdet	=>	force_freqdet,
		ppm_gen1_2_cnt	=>	ppm_gen1_2_cnt,
		prot_mode	=>	prot_mode,
		ppm_post_eidle_delay	=>	ppm_post_eidle_delay,
		pma_if_dft_val	=>	pma_if_dft_val,
		func_mode	=>	func_mode
	)
	port map	(
		aggaligndetsync	=>	aggaligndetsync,
		aggalignstatus	=>	aggalignstatus,
		aggalignstatussync	=>	aggalignstatussync,
		aggalignstatussync0	=>	aggalignstatussync0,
		aggalignstatussync0toporbot	=>	aggalignstatussync0toporbot,
		aggalignstatustoporbot	=>	aggalignstatustoporbot,
		aggcgcomprddall	=>	aggcgcomprddall,
		aggcgcomprddalltoporbot	=>	aggcgcomprddalltoporbot,
		aggcgcomprddout	=>	aggcgcomprddout,
		aggcgcompwrall	=>	aggcgcompwrall,
		aggcgcompwralltoporbot	=>	aggcgcompwralltoporbot,
		aggcgcompwrout	=>	aggcgcompwrout,
		aggdecctl	=>	aggdecctl,
		aggdecdata	=>	aggdecdata,
		aggdecdatavalid	=>	aggdecdatavalid,
		aggdelcondmet0	=>	aggdelcondmet0,
		aggdelcondmet0toporbot	=>	aggdelcondmet0toporbot,
		aggdelcondmetout	=>	aggdelcondmetout,
		aggendskwqd	=>	aggendskwqd,
		aggendskwqdtoporbot	=>	aggendskwqdtoporbot,
		aggendskwrdptrs	=>	aggendskwrdptrs,
		aggendskwrdptrstoporbot	=>	aggendskwrdptrstoporbot,
		aggfifoovr0	=>	aggfifoovr0,
		aggfifoovr0toporbot	=>	aggfifoovr0toporbot,
		aggfifoovrout	=>	aggfifoovrout,
		aggfifordincomp0	=>	aggfifordincomp0,
		aggfifordincomp0toporbot	=>	aggfifordincomp0toporbot,
		aggfifordoutcomp	=>	aggfifordoutcomp,
		aggfiforstrdqd	=>	aggfiforstrdqd,
		aggfiforstrdqdtoporbot	=>	aggfiforstrdqdtoporbot,
		agginsertincomplete0	=>	agginsertincomplete0,
		agginsertincomplete0toporbot	=>	agginsertincomplete0toporbot,
		agginsertincompleteout	=>	agginsertincompleteout,
		agglatencycomp0	=>	agglatencycomp0,
		agglatencycomp0toporbot	=>	agglatencycomp0toporbot,
		agglatencycompout	=>	agglatencycompout,
		aggrcvdclkagg	=>	aggrcvdclkagg,
		aggrcvdclkaggtoporbot	=>	aggrcvdclkaggtoporbot,
		aggrdalign	=>	aggrdalign,
		aggrdenablesync	=>	aggrdenablesync,
		aggrefclkdig	=>	aggrefclkdig,
		aggrunningdisp	=>	aggrunningdisp,
		aggrxcontrolrs	=>	aggrxcontrolrs,
		aggrxcontrolrstoporbot	=>	aggrxcontrolrstoporbot,
		aggrxdatars	=>	aggrxdatars,
		aggrxdatarstoporbot	=>	aggrxdatarstoporbot,
		aggrxpcsrst	=>	aggrxpcsrst,
		aggscanmoden	=>	aggscanmoden,
		aggscanshiftn	=>	aggscanshiftn,
		aggsyncstatus	=>	aggsyncstatus,
		aggtestbus	=>	aggtestbus,
		aggtestsotopldin	=>	aggtestsotopldin,
		aggtestsotopldout	=>	aggtestsotopldout,
		aggtxctltc	=>	aggtxctltc,
		aggtxctlts	=>	aggtxctlts,
		aggtxctltstoporbot	=>	aggtxctltstoporbot,
		aggtxdatatc	=>	aggtxdatatc,
		aggtxdatats	=>	aggtxdatats,
		aggtxdatatstoporbot	=>	aggtxdatatstoporbot,
		aggtxpcsrst	=>	aggtxpcsrst,
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clklow	=>	clklow,
		fref	=>	fref,
		freqlock	=>	freqlock,
		hardreset	=>	hardreset,
		pcs8gearlyeios	=>	pcs8gearlyeios,
		pcs8geidleexit	=>	pcs8geidleexit,
		pcs8ggen2ngen1	=>	pcs8ggen2ngen1,
		pcs8gltrpma	=>	pcs8gltrpma,
		pcs8gpcieswitch	=>	pcs8gpcieswitch,
		pcs8gpmacurrentcoeff	=>	pcs8gpmacurrentcoeff,
		pcs8gpmarxfound	=>	pcs8gpmarxfound,
		pcs8gpowerstatetransitiondone	=>	pcs8gpowerstatetransitiondone,
		pcs8grxdetectvalid	=>	pcs8grxdetectvalid,
		pcs8gtxdetectrx	=>	pcs8gtxdetectrx,
		pcs8gtxelecidle	=>	pcs8gtxelecidle,
		pcsaggaligndetsync	=>	pcsaggaligndetsync,
		pcsaggalignstatus	=>	pcsaggalignstatus,
		pcsaggalignstatussync	=>	pcsaggalignstatussync,
		pcsaggalignstatussync0	=>	pcsaggalignstatussync0,
		pcsaggalignstatussync0toporbot	=>	pcsaggalignstatussync0toporbot,
		pcsaggalignstatustoporbot	=>	pcsaggalignstatustoporbot,
		pcsaggcgcomprddall	=>	pcsaggcgcomprddall,
		pcsaggcgcomprddalltoporbot	=>	pcsaggcgcomprddalltoporbot,
		pcsaggcgcomprddout	=>	pcsaggcgcomprddout,
		pcsaggcgcompwrall	=>	pcsaggcgcompwrall,
		pcsaggcgcompwralltoporbot	=>	pcsaggcgcompwralltoporbot,
		pcsaggcgcompwrout	=>	pcsaggcgcompwrout,
		pcsaggdecctl	=>	pcsaggdecctl,
		pcsaggdecdata	=>	pcsaggdecdata,
		pcsaggdecdatavalid	=>	pcsaggdecdatavalid,
		pcsaggdelcondmet0	=>	pcsaggdelcondmet0,
		pcsaggdelcondmet0toporbot	=>	pcsaggdelcondmet0toporbot,
		pcsaggdelcondmetout	=>	pcsaggdelcondmetout,
		pcsaggendskwqd	=>	pcsaggendskwqd,
		pcsaggendskwqdtoporbot	=>	pcsaggendskwqdtoporbot,
		pcsaggendskwrdptrs	=>	pcsaggendskwrdptrs,
		pcsaggendskwrdptrstoporbot	=>	pcsaggendskwrdptrstoporbot,
		pcsaggfifoovr0	=>	pcsaggfifoovr0,
		pcsaggfifoovr0toporbot	=>	pcsaggfifoovr0toporbot,
		pcsaggfifoovrout	=>	pcsaggfifoovrout,
		pcsaggfifordincomp0	=>	pcsaggfifordincomp0,
		pcsaggfifordincomp0toporbot	=>	pcsaggfifordincomp0toporbot,
		pcsaggfifordoutcomp	=>	pcsaggfifordoutcomp,
		pcsaggfiforstrdqd	=>	pcsaggfiforstrdqd,
		pcsaggfiforstrdqdtoporbot	=>	pcsaggfiforstrdqdtoporbot,
		pcsagginsertincomplete0	=>	pcsagginsertincomplete0,
		pcsagginsertincomplete0toporbot	=>	pcsagginsertincomplete0toporbot,
		pcsagginsertincompleteout	=>	pcsagginsertincompleteout,
		pcsagglatencycomp0	=>	pcsagglatencycomp0,
		pcsagglatencycomp0toporbot	=>	pcsagglatencycomp0toporbot,
		pcsagglatencycompout	=>	pcsagglatencycompout,
		pcsaggrcvdclkagg	=>	pcsaggrcvdclkagg,
		pcsaggrcvdclkaggtoporbot	=>	pcsaggrcvdclkaggtoporbot,
		pcsaggrdalign	=>	pcsaggrdalign,
		pcsaggrdenablesync	=>	pcsaggrdenablesync,
		pcsaggrefclkdig	=>	pcsaggrefclkdig,
		pcsaggrunningdisp	=>	pcsaggrunningdisp,
		pcsaggrxcontrolrs	=>	pcsaggrxcontrolrs,
		pcsaggrxcontrolrstoporbot	=>	pcsaggrxcontrolrstoporbot,
		pcsaggrxdatars	=>	pcsaggrxdatars,
		pcsaggrxdatarstoporbot	=>	pcsaggrxdatarstoporbot,
		pcsaggrxpcsrst	=>	pcsaggrxpcsrst,
		pcsaggscanmoden	=>	pcsaggscanmoden,
		pcsaggscanshiftn	=>	pcsaggscanshiftn,
		pcsaggsyncstatus	=>	pcsaggsyncstatus,
		pcsaggtestbus	=>	pcsaggtestbus,
		pcsaggtxctltc	=>	pcsaggtxctltc,
		pcsaggtxctlts	=>	pcsaggtxctlts,
		pcsaggtxctltstoporbot	=>	pcsaggtxctltstoporbot,
		pcsaggtxdatatc	=>	pcsaggtxdatatc,
		pcsaggtxdatats	=>	pcsaggtxdatats,
		pcsaggtxdatatstoporbot	=>	pcsaggtxdatatstoporbot,
		pcsaggtxpcsrst	=>	pcsaggtxpcsrst,
		pcsgen3gen3datasel	=>	pcsgen3gen3datasel,
		pcsgen3pllfixedclk	=>	pcsgen3pllfixedclk,
		pcsgen3pmacurrentcoeff	=>	pcsgen3pmacurrentcoeff,
		pcsgen3pmacurrentrxpreset	=>	pcsgen3pmacurrentrxpreset,
		pcsgen3pmaearlyeios	=>	pcsgen3pmaearlyeios,
		pcsgen3pmaltr	=>	pcsgen3pmaltr,
		pcsgen3pmapcieswdone	=>	pcsgen3pmapcieswdone,
		pcsgen3pmapcieswitch	=>	pcsgen3pmapcieswitch,
		pcsgen3pmarxdetectvalid	=>	pcsgen3pmarxdetectvalid,
		pcsgen3pmarxfound	=>	pcsgen3pmarxfound,
		pcsgen3pmatxdetectrx	=>	pcsgen3pmatxdetectrx,
		pcsgen3pmatxelecidle	=>	pcsgen3pmatxelecidle,
		pcsgen3ppmeidleexit	=>	pcsgen3ppmeidleexit,
		pcsrefclkdig	=>	pcsrefclkdig,
		pcsscanmoden	=>	pcsscanmoden,
		pcsscanshiftn	=>	pcsscanshiftn,
		pldhclkout	=>	pldhclkout,
		pldlccmurstb	=>	pldlccmurstb,
		pldnfrzdrv	=>	pldnfrzdrv,
		pldpartialreconfig	=>	pldpartialreconfig,
		pldtestsitoaggin	=>	pldtestsitoaggin,
		pldtestsitoaggout	=>	pldtestsitoaggout,
		pmaclklowout	=>	pmaclklowout,
		pmacurrentcoeff	=>	pmacurrentcoeff,
		pmacurrentrxpreset	=>	pmacurrentrxpreset,
		pmaearlyeios	=>	pmaearlyeios,
		pmafrefout	=>	pmafrefout,
		pmahclk	=>	pmahclk,
		pmaiftestbus	=>	pmaiftestbus,
		pmalccmurstb	=>	pmalccmurstb,
		pmaltr	=>	pmaltr,
		pmanfrzdrv	=>	pmanfrzdrv,
		pmaoffcaldone	=>	pmaoffcaldone,
		pmaoffcalenin	=>	pmaoffcalenin,
		pmapartialreconfig	=>	pmapartialreconfig,
		pmapcieswdone	=>	pmapcieswdone,
		pmapcieswitch	=>	pmapcieswitch,
		pmarxdetectvalid	=>	pmarxdetectvalid,
		pmarxfound	=>	pmarxfound,
		pmarxpmarstb	=>	pmarxpmarstb,
		pmatxdetectrx	=>	pmatxdetectrx,
		pmatxelecidle	=>	pmatxelecidle,
		resetppmcntrs	=>	resetppmcntrs
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_common_pld_pcs_interface	is
	generic	(
		pld_side_reserved_source9	:	string	:=	"pld_res9";
		usrmode_sel4rst	:	string	:=	"usermode";
		pld_side_reserved_source0	:	string	:=	"pld_res0";
		pld_side_reserved_source5	:	string	:=	"pld_res5";
		pld_side_reserved_source2	:	string	:=	"pld_res2";
		pld_side_reserved_source3	:	string	:=	"pld_res3";
		data_source	:	string	:=	"pld";
		testbus_sel	:	string	:=	"eight_g_pcs";
		hrdrstctrl_en_cfg	:	string	:=	"hrst_dis_cfg";
		avmm_group_channel_index	:	integer	:=	0;
		pld_side_reserved_source4	:	string	:=	"pld_res4";
		hrdrstctrl_en_cfgusr	:	string	:=	"hrst_dis_cfgusr";
		user_base_address	:	integer	:=	0;
		pld_side_reserved_source10	:	string	:=	"pld_res10";
		pld_side_reserved_source6	:	string	:=	"pld_res6";
		use_default_base_address	:	string	:=	"true";
		pld_side_reserved_source1	:	string	:=	"pld_res1";
		pld_side_reserved_source8	:	string	:=	"pld_res8";
		pld_side_reserved_source11	:	string	:=	"pld_res11";
		pld_side_reserved_source7	:	string	:=	"pld_res7";
		emsip_enable	:	string	:=	"emsip_disable";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		emsipcomclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsipcomin	:	in	std_logic_vector(37 downto 0) := "00000000000000000000000000000000000000";
		emsipcomout	:	out	std_logic_vector(26 downto 0) := "000000000000000000000000000";
		emsipcomspecialin	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsipcomspecialout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsipenablediocsrrdydly	:	out	std_logic := '0';
		entest	:	in	std_logic := '0';
		frzreg	:	in	std_logic := '0';
		iocsrrdydly	:	in	std_logic := '0';
		nfrzdrv	:	in	std_logic := '0';
		npor	:	in	std_logic := '0';
		pcs10gextrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs10gextraout	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs10ghardreset	:	out	std_logic := '0';
		pcs10ghardresetn	:	out	std_logic := '0';
		pcs10grefclkdig	:	out	std_logic := '0';
		pcs10gtestdata	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcs10gtestsi	:	out	std_logic_vector(8 downto 0) := "000000000";
		pcs10gtestso	:	in	std_logic_vector(8 downto 0) := "000000000";
		pcs8gchnltestbusout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcs8geidleinfersel	:	out	std_logic_vector(2 downto 0) := "000";
		pcs8ghardreset	:	out	std_logic := '0';
		pcs8ghardresetn	:	out	std_logic := '0';
		pcs8gltr	:	out	std_logic := '0';
		pcs8gphystatus	:	in	std_logic := '0';
		pcs8gpldextrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gpldextraout	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8gpowerdown	:	out	std_logic_vector(1 downto 0) := "00";
		pcs8gprbsciden	:	out	std_logic := '0';
		pcs8grate	:	out	std_logic := '0';
		pcs8grefclkdig	:	out	std_logic := '0';
		pcs8grefclkdig2	:	out	std_logic := '0';
		pcs8grxelecidle	:	in	std_logic := '0';
		pcs8grxpolarity	:	out	std_logic := '0';
		pcs8grxstatus	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8grxvalid	:	in	std_logic := '0';
		pcs8gscanmoden	:	out	std_logic := '0';
		pcs8gtestsi	:	out	std_logic_vector(5 downto 0) := "000000";
		pcs8gtestso	:	in	std_logic_vector(5 downto 0) := "000000";
		pcs8gtxdeemph	:	out	std_logic := '0';
		pcs8gtxdetectrxloopback	:	out	std_logic := '0';
		pcs8gtxelecidle	:	out	std_logic := '0';
		pcs8gtxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		pcs8gtxswing	:	out	std_logic := '0';
		pcsaggrefclkdig	:	out	std_logic := '0';
		pcsaggtestsi	:	out	std_logic := '0';
		pcsaggtestso	:	in	std_logic := '0';
		pcsgen3currentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3currentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3eidleinfersel	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3extrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcsgen3extraout	:	in	std_logic_vector(3 downto 0) := "0000";
		pcsgen3hardreset	:	out	std_logic := '0';
		pcsgen3masktxpll	:	in	std_logic := '0';
		pcsgen3pldltr	:	out	std_logic := '0';
		pcsgen3rate	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3rxdeemph	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3rxeqctrl	:	in	std_logic_vector(1 downto 0) := "00";
		pcsgen3scanmoden	:	out	std_logic := '0';
		pcsgen3testout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcsgen3testsi	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3testso	:	in	std_logic_vector(2 downto 0) := "000";
		pcspcspmaifrefclkdig	:	out	std_logic := '0';
		pcspcspmaifscanmoden	:	out	std_logic := '0';
		pcspcspmaifscanshiftn	:	out	std_logic := '0';
		pcspmaifhardreset	:	out	std_logic := '0';
		pcspmaiftestbusout	:	in	std_logic_vector(9 downto 0) := "0000000000";
		pcspmaiftestsi	:	out	std_logic := '0';
		pcspmaiftestso	:	in	std_logic := '0';
		pld10grefclkdig	:	in	std_logic := '0';
		pld8gphystatus	:	out	std_logic := '0';
		pld8gpowerdown	:	in	std_logic_vector(1 downto 0) := "00";
		pld8gprbsciden	:	in	std_logic := '0';
		pld8grefclkdig	:	in	std_logic := '0';
		pld8grefclkdig2	:	in	std_logic := '0';
		pld8grxelecidle	:	out	std_logic := '0';
		pld8grxpolarity	:	in	std_logic := '0';
		pld8grxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		pld8grxvalid	:	out	std_logic := '0';
		pld8gtxdeemph	:	in	std_logic := '0';
		pld8gtxdetectrxloopback	:	in	std_logic := '0';
		pld8gtxelecidle	:	in	std_logic := '0';
		pld8gtxmargin	:	in	std_logic_vector(2 downto 0) := "000";
		pld8gtxswing	:	in	std_logic := '0';
		pldaggrefclkdig	:	in	std_logic := '0';
		pldclklow	:	out	std_logic := '0';
		pldeidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		pldfref	:	out	std_logic := '0';
		pldgen3currentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pldgen3currentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		pldgen3masktxpll	:	out	std_logic := '0';
		pldgen3rxdeemph	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pldgen3rxeqctrl	:	out	std_logic_vector(1 downto 0) := "00";
		pldhclkin	:	in	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pldnfrzdrv	:	out	std_logic := '0';
		pldoffcaldone	:	in	std_logic := '0';
		pldoffcaldonein	:	in	std_logic := '0';
		pldoffcaldoneout	:	out	std_logic := '0';
		pldoffcalen	:	out	std_logic := '0';
		pldpartialreconfigin	:	in	std_logic := '0';
		pldpartialreconfigout	:	out	std_logic := '0';
		pldpcspmaifrefclkdig	:	in	std_logic := '0';
		pldrate	:	in	std_logic_vector(1 downto 0) := "00";
		pldreservedin	:	in	std_logic_vector(11 downto 0) := "000000000000";
		pldreservedout	:	out	std_logic_vector(10 downto 0) := "00000000000";
		pldscanmoden	:	in	std_logic := '0';
		pldscanshiftn	:	in	std_logic := '0';
		pldtestdata	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		plniotri	:	in	std_logic := '0';
		pmaclklow	:	in	std_logic := '0';
		pmafref	:	in	std_logic := '0';
		pmaoffcalen	:	in	std_logic := '0';
		rstsel	:	out	std_logic := '0';
		usermode	:	in	std_logic := '0';
		usrrstsel	:	out	std_logic := '0'
	);
end	stratixv_hssi_common_pld_pcs_interface;

architecture behavior of stratixv_hssi_common_pld_pcs_interface is

component	stratixv_hssi_common_pld_pcs_interface_encrypted
	generic	(
		pld_side_reserved_source9	:	string	:=	"pld_res9";
		usrmode_sel4rst	:	string	:=	"usermode";
		pld_side_reserved_source0	:	string	:=	"pld_res0";
		pld_side_reserved_source5	:	string	:=	"pld_res5";
		pld_side_reserved_source2	:	string	:=	"pld_res2";
		pld_side_reserved_source3	:	string	:=	"pld_res3";
		data_source	:	string	:=	"pld";
		testbus_sel	:	string	:=	"eight_g_pcs";
		hrdrstctrl_en_cfg	:	string	:=	"hrst_dis_cfg";
		avmm_group_channel_index	:	integer	:=	0;
		pld_side_reserved_source4	:	string	:=	"pld_res4";
		hrdrstctrl_en_cfgusr	:	string	:=	"hrst_dis_cfgusr";
		user_base_address	:	integer	:=	0;
		pld_side_reserved_source10	:	string	:=	"pld_res10";
		pld_side_reserved_source6	:	string	:=	"pld_res6";
		use_default_base_address	:	string	:=	"true";
		pld_side_reserved_source1	:	string	:=	"pld_res1";
		pld_side_reserved_source8	:	string	:=	"pld_res8";
		pld_side_reserved_source11	:	string	:=	"pld_res11";
		pld_side_reserved_source7	:	string	:=	"pld_res7";
		emsip_enable	:	string	:=	"emsip_disable"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		emsipcomclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsipcomin	:	in	std_logic_vector(37 downto 0) := "00000000000000000000000000000000000000";
		emsipcomout	:	out	std_logic_vector(26 downto 0) := "000000000000000000000000000";
		emsipcomspecialin	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsipcomspecialout	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsipenablediocsrrdydly	:	out	std_logic := '0';
		entest	:	in	std_logic := '0';
		frzreg	:	in	std_logic := '0';
		iocsrrdydly	:	in	std_logic := '0';
		nfrzdrv	:	in	std_logic := '0';
		npor	:	in	std_logic := '0';
		pcs10gextrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs10gextraout	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs10ghardreset	:	out	std_logic := '0';
		pcs10ghardresetn	:	out	std_logic := '0';
		pcs10grefclkdig	:	out	std_logic := '0';
		pcs10gtestdata	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcs10gtestsi	:	out	std_logic_vector(8 downto 0) := "000000000";
		pcs10gtestso	:	in	std_logic_vector(8 downto 0) := "000000000";
		pcs8gchnltestbusout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcs8geidleinfersel	:	out	std_logic_vector(2 downto 0) := "000";
		pcs8ghardreset	:	out	std_logic := '0';
		pcs8ghardresetn	:	out	std_logic := '0';
		pcs8gltr	:	out	std_logic := '0';
		pcs8gphystatus	:	in	std_logic := '0';
		pcs8gpldextrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gpldextraout	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8gpowerdown	:	out	std_logic_vector(1 downto 0) := "00";
		pcs8gprbsciden	:	out	std_logic := '0';
		pcs8grate	:	out	std_logic := '0';
		pcs8grefclkdig	:	out	std_logic := '0';
		pcs8grefclkdig2	:	out	std_logic := '0';
		pcs8grxelecidle	:	in	std_logic := '0';
		pcs8grxpolarity	:	out	std_logic := '0';
		pcs8grxstatus	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8grxvalid	:	in	std_logic := '0';
		pcs8gscanmoden	:	out	std_logic := '0';
		pcs8gtestsi	:	out	std_logic_vector(5 downto 0) := "000000";
		pcs8gtestso	:	in	std_logic_vector(5 downto 0) := "000000";
		pcs8gtxdeemph	:	out	std_logic := '0';
		pcs8gtxdetectrxloopback	:	out	std_logic := '0';
		pcs8gtxelecidle	:	out	std_logic := '0';
		pcs8gtxmargin	:	out	std_logic_vector(2 downto 0) := "000";
		pcs8gtxswing	:	out	std_logic := '0';
		pcsaggrefclkdig	:	out	std_logic := '0';
		pcsaggtestsi	:	out	std_logic := '0';
		pcsaggtestso	:	in	std_logic := '0';
		pcsgen3currentcoeff	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3currentrxpreset	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3eidleinfersel	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3extrain	:	out	std_logic_vector(3 downto 0) := "0000";
		pcsgen3extraout	:	in	std_logic_vector(3 downto 0) := "0000";
		pcsgen3hardreset	:	out	std_logic := '0';
		pcsgen3masktxpll	:	in	std_logic := '0';
		pcsgen3pldltr	:	out	std_logic := '0';
		pcsgen3rate	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3rxdeemph	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pcsgen3rxeqctrl	:	in	std_logic_vector(1 downto 0) := "00";
		pcsgen3scanmoden	:	out	std_logic := '0';
		pcsgen3testout	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		pcsgen3testsi	:	out	std_logic_vector(2 downto 0) := "000";
		pcsgen3testso	:	in	std_logic_vector(2 downto 0) := "000";
		pcspcspmaifrefclkdig	:	out	std_logic := '0';
		pcspcspmaifscanmoden	:	out	std_logic := '0';
		pcspcspmaifscanshiftn	:	out	std_logic := '0';
		pcspmaifhardreset	:	out	std_logic := '0';
		pcspmaiftestbusout	:	in	std_logic_vector(9 downto 0) := "0000000000";
		pcspmaiftestsi	:	out	std_logic := '0';
		pcspmaiftestso	:	in	std_logic := '0';
		pld10grefclkdig	:	in	std_logic := '0';
		pld8gphystatus	:	out	std_logic := '0';
		pld8gpowerdown	:	in	std_logic_vector(1 downto 0) := "00";
		pld8gprbsciden	:	in	std_logic := '0';
		pld8grefclkdig	:	in	std_logic := '0';
		pld8grefclkdig2	:	in	std_logic := '0';
		pld8grxelecidle	:	out	std_logic := '0';
		pld8grxpolarity	:	in	std_logic := '0';
		pld8grxstatus	:	out	std_logic_vector(2 downto 0) := "000";
		pld8grxvalid	:	out	std_logic := '0';
		pld8gtxdeemph	:	in	std_logic := '0';
		pld8gtxdetectrxloopback	:	in	std_logic := '0';
		pld8gtxelecidle	:	in	std_logic := '0';
		pld8gtxmargin	:	in	std_logic_vector(2 downto 0) := "000";
		pld8gtxswing	:	in	std_logic := '0';
		pldaggrefclkdig	:	in	std_logic := '0';
		pldclklow	:	out	std_logic := '0';
		pldeidleinfersel	:	in	std_logic_vector(2 downto 0) := "000";
		pldfref	:	out	std_logic := '0';
		pldgen3currentcoeff	:	in	std_logic_vector(17 downto 0) := "000000000000000000";
		pldgen3currentrxpreset	:	in	std_logic_vector(2 downto 0) := "000";
		pldgen3masktxpll	:	out	std_logic := '0';
		pldgen3rxdeemph	:	out	std_logic_vector(17 downto 0) := "000000000000000000";
		pldgen3rxeqctrl	:	out	std_logic_vector(1 downto 0) := "00";
		pldhclkin	:	in	std_logic := '0';
		pldltr	:	in	std_logic := '0';
		pldnfrzdrv	:	out	std_logic := '0';
		pldoffcaldone	:	in	std_logic := '0';
		pldoffcaldonein	:	in	std_logic := '0';
		pldoffcaldoneout	:	out	std_logic := '0';
		pldoffcalen	:	out	std_logic := '0';
		pldpartialreconfigin	:	in	std_logic := '0';
		pldpartialreconfigout	:	out	std_logic := '0';
		pldpcspmaifrefclkdig	:	in	std_logic := '0';
		pldrate	:	in	std_logic_vector(1 downto 0) := "00";
		pldreservedin	:	in	std_logic_vector(11 downto 0) := "000000000000";
		pldreservedout	:	out	std_logic_vector(10 downto 0) := "00000000000";
		pldscanmoden	:	in	std_logic := '0';
		pldscanshiftn	:	in	std_logic := '0';
		pldtestdata	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		plniotri	:	in	std_logic := '0';
		pmaclklow	:	in	std_logic := '0';
		pmafref	:	in	std_logic := '0';
		pmaoffcalen	:	in	std_logic := '0';
		rstsel	:	out	std_logic := '0';
		usermode	:	in	std_logic := '0';
		usrrstsel	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_common_pld_pcs_interface_encrypted
	generic map	(
		pld_side_reserved_source9	=>	pld_side_reserved_source9,
		usrmode_sel4rst	=>	usrmode_sel4rst,
		pld_side_reserved_source0	=>	pld_side_reserved_source0,
		pld_side_reserved_source5	=>	pld_side_reserved_source5,
		pld_side_reserved_source2	=>	pld_side_reserved_source2,
		pld_side_reserved_source3	=>	pld_side_reserved_source3,
		data_source	=>	data_source,
		testbus_sel	=>	testbus_sel,
		hrdrstctrl_en_cfg	=>	hrdrstctrl_en_cfg,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		pld_side_reserved_source4	=>	pld_side_reserved_source4,
		hrdrstctrl_en_cfgusr	=>	hrdrstctrl_en_cfgusr,
		user_base_address	=>	user_base_address,
		pld_side_reserved_source10	=>	pld_side_reserved_source10,
		pld_side_reserved_source6	=>	pld_side_reserved_source6,
		use_default_base_address	=>	use_default_base_address,
		pld_side_reserved_source1	=>	pld_side_reserved_source1,
		pld_side_reserved_source8	=>	pld_side_reserved_source8,
		pld_side_reserved_source11	=>	pld_side_reserved_source11,
		pld_side_reserved_source7	=>	pld_side_reserved_source7,
		emsip_enable	=>	emsip_enable
	)
	port map	(
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		emsipcomclkout	=>	emsipcomclkout,
		emsipcomin	=>	emsipcomin,
		emsipcomout	=>	emsipcomout,
		emsipcomspecialin	=>	emsipcomspecialin,
		emsipcomspecialout	=>	emsipcomspecialout,
		emsipenablediocsrrdydly	=>	emsipenablediocsrrdydly,
		entest	=>	entest,
		frzreg	=>	frzreg,
		iocsrrdydly	=>	iocsrrdydly,
		nfrzdrv	=>	nfrzdrv,
		npor	=>	npor,
		pcs10gextrain	=>	pcs10gextrain,
		pcs10gextraout	=>	pcs10gextraout,
		pcs10ghardreset	=>	pcs10ghardreset,
		pcs10ghardresetn	=>	pcs10ghardresetn,
		pcs10grefclkdig	=>	pcs10grefclkdig,
		pcs10gtestdata	=>	pcs10gtestdata,
		pcs10gtestsi	=>	pcs10gtestsi,
		pcs10gtestso	=>	pcs10gtestso,
		pcs8gchnltestbusout	=>	pcs8gchnltestbusout,
		pcs8geidleinfersel	=>	pcs8geidleinfersel,
		pcs8ghardreset	=>	pcs8ghardreset,
		pcs8ghardresetn	=>	pcs8ghardresetn,
		pcs8gltr	=>	pcs8gltr,
		pcs8gphystatus	=>	pcs8gphystatus,
		pcs8gpldextrain	=>	pcs8gpldextrain,
		pcs8gpldextraout	=>	pcs8gpldextraout,
		pcs8gpowerdown	=>	pcs8gpowerdown,
		pcs8gprbsciden	=>	pcs8gprbsciden,
		pcs8grate	=>	pcs8grate,
		pcs8grefclkdig	=>	pcs8grefclkdig,
		pcs8grefclkdig2	=>	pcs8grefclkdig2,
		pcs8grxelecidle	=>	pcs8grxelecidle,
		pcs8grxpolarity	=>	pcs8grxpolarity,
		pcs8grxstatus	=>	pcs8grxstatus,
		pcs8grxvalid	=>	pcs8grxvalid,
		pcs8gscanmoden	=>	pcs8gscanmoden,
		pcs8gtestsi	=>	pcs8gtestsi,
		pcs8gtestso	=>	pcs8gtestso,
		pcs8gtxdeemph	=>	pcs8gtxdeemph,
		pcs8gtxdetectrxloopback	=>	pcs8gtxdetectrxloopback,
		pcs8gtxelecidle	=>	pcs8gtxelecidle,
		pcs8gtxmargin	=>	pcs8gtxmargin,
		pcs8gtxswing	=>	pcs8gtxswing,
		pcsaggrefclkdig	=>	pcsaggrefclkdig,
		pcsaggtestsi	=>	pcsaggtestsi,
		pcsaggtestso	=>	pcsaggtestso,
		pcsgen3currentcoeff	=>	pcsgen3currentcoeff,
		pcsgen3currentrxpreset	=>	pcsgen3currentrxpreset,
		pcsgen3eidleinfersel	=>	pcsgen3eidleinfersel,
		pcsgen3extrain	=>	pcsgen3extrain,
		pcsgen3extraout	=>	pcsgen3extraout,
		pcsgen3hardreset	=>	pcsgen3hardreset,
		pcsgen3masktxpll	=>	pcsgen3masktxpll,
		pcsgen3pldltr	=>	pcsgen3pldltr,
		pcsgen3rate	=>	pcsgen3rate,
		pcsgen3rxdeemph	=>	pcsgen3rxdeemph,
		pcsgen3rxeqctrl	=>	pcsgen3rxeqctrl,
		pcsgen3scanmoden	=>	pcsgen3scanmoden,
		pcsgen3testout	=>	pcsgen3testout,
		pcsgen3testsi	=>	pcsgen3testsi,
		pcsgen3testso	=>	pcsgen3testso,
		pcspcspmaifrefclkdig	=>	pcspcspmaifrefclkdig,
		pcspcspmaifscanmoden	=>	pcspcspmaifscanmoden,
		pcspcspmaifscanshiftn	=>	pcspcspmaifscanshiftn,
		pcspmaifhardreset	=>	pcspmaifhardreset,
		pcspmaiftestbusout	=>	pcspmaiftestbusout,
		pcspmaiftestsi	=>	pcspmaiftestsi,
		pcspmaiftestso	=>	pcspmaiftestso,
		pld10grefclkdig	=>	pld10grefclkdig,
		pld8gphystatus	=>	pld8gphystatus,
		pld8gpowerdown	=>	pld8gpowerdown,
		pld8gprbsciden	=>	pld8gprbsciden,
		pld8grefclkdig	=>	pld8grefclkdig,
		pld8grefclkdig2	=>	pld8grefclkdig2,
		pld8grxelecidle	=>	pld8grxelecidle,
		pld8grxpolarity	=>	pld8grxpolarity,
		pld8grxstatus	=>	pld8grxstatus,
		pld8grxvalid	=>	pld8grxvalid,
		pld8gtxdeemph	=>	pld8gtxdeemph,
		pld8gtxdetectrxloopback	=>	pld8gtxdetectrxloopback,
		pld8gtxelecidle	=>	pld8gtxelecidle,
		pld8gtxmargin	=>	pld8gtxmargin,
		pld8gtxswing	=>	pld8gtxswing,
		pldaggrefclkdig	=>	pldaggrefclkdig,
		pldclklow	=>	pldclklow,
		pldeidleinfersel	=>	pldeidleinfersel,
		pldfref	=>	pldfref,
		pldgen3currentcoeff	=>	pldgen3currentcoeff,
		pldgen3currentrxpreset	=>	pldgen3currentrxpreset,
		pldgen3masktxpll	=>	pldgen3masktxpll,
		pldgen3rxdeemph	=>	pldgen3rxdeemph,
		pldgen3rxeqctrl	=>	pldgen3rxeqctrl,
		pldhclkin	=>	pldhclkin,
		pldltr	=>	pldltr,
		pldnfrzdrv	=>	pldnfrzdrv,
		pldoffcaldone	=>	pldoffcaldone,
		pldoffcaldonein	=>	pldoffcaldonein,
		pldoffcaldoneout	=>	pldoffcaldoneout,
		pldoffcalen	=>	pldoffcalen,
		pldpartialreconfigin	=>	pldpartialreconfigin,
		pldpartialreconfigout	=>	pldpartialreconfigout,
		pldpcspmaifrefclkdig	=>	pldpcspmaifrefclkdig,
		pldrate	=>	pldrate,
		pldreservedin	=>	pldreservedin,
		pldreservedout	=>	pldreservedout,
		pldscanmoden	=>	pldscanmoden,
		pldscanshiftn	=>	pldscanshiftn,
		pldtestdata	=>	pldtestdata,
		plniotri	=>	plniotri,
		pmaclklow	=>	pmaclklow,
		pmafref	=>	pmafref,
		pmaoffcalen	=>	pmaoffcalen,
		rstsel	=>	rstsel,
		usermode	=>	usermode,
		usrrstsel	=>	usrrstsel
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_rx_pcs_pma_interface	is
	generic	(
		user_base_address	:	integer	:=	0;
		prot_mode	:	string	:=	"other_protocols";
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		clkslip_sel	:	string	:=	"pld";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkoutto10gpcs	:	out	std_logic := '0';
		clockinfrompma	:	in	std_logic := '0';
		clockoutto8gpcs	:	out	std_logic := '0';
		clockouttogen3pcs	:	out	std_logic := '0';
		datainfrompma	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataoutto10gpcs	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataoutto8gpcs	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		dataouttogen3pcs	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcs10gclkdiv33txorrx	:	out	std_logic := '0';
		pcs10grxclkiqout	:	in	std_logic := '0';
		pcs10gsignalok	:	out	std_logic := '0';
		pcs8grxclkiqout	:	in	std_logic := '0';
		pcs8grxclkslip	:	in	std_logic := '0';
		pcs8gsigdetni	:	out	std_logic := '0';
		pcsemsiprxclkiqout	:	in	std_logic := '0';
		pcsgen3eyemonitorin	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3eyemonitorout	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsgen3pmasignaldet	:	out	std_logic := '0';
		pldrxclkslip	:	in	std_logic := '0';
		pldrxpmarstb	:	in	std_logic := '0';
		pmaclkdiv33txorrxin	:	in	std_logic := '0';
		pmaclkdiv33txorrxout	:	out	std_logic := '0';
		pmaeyemonitorin	:	in	std_logic_vector(1 downto 0) := "00";
		pmaeyemonitorout	:	out	std_logic_vector(7 downto 0) := "00000000";
		pmareservedin	:	in	std_logic_vector(4 downto 0) := "00000";
		pmareservedout	:	out	std_logic_vector(4 downto 0) := "00000";
		pmarxclkout	:	out	std_logic := '0';
		pmarxclkslip	:	out	std_logic := '0';
		pmarxpllphaselockin	:	in	std_logic := '0';
		pmarxpllphaselockout	:	out	std_logic := '0';
		pmarxpmarstb	:	out	std_logic := '0';
		pmasigdet	:	in	std_logic := '0';
		pmasignalok	:	in	std_logic := '0';
		reset	:	out	std_logic := '0'
	);
end	stratixv_hssi_rx_pcs_pma_interface;

architecture behavior of stratixv_hssi_rx_pcs_pma_interface is

component	stratixv_hssi_rx_pcs_pma_interface_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		prot_mode	:	string	:=	"other_protocols";
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		clkslip_sel	:	string	:=	"pld"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkoutto10gpcs	:	out	std_logic := '0';
		clockinfrompma	:	in	std_logic := '0';
		clockoutto8gpcs	:	out	std_logic := '0';
		clockouttogen3pcs	:	out	std_logic := '0';
		datainfrompma	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataoutto10gpcs	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		dataoutto8gpcs	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		dataouttogen3pcs	:	out	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		pcs10gclkdiv33txorrx	:	out	std_logic := '0';
		pcs10grxclkiqout	:	in	std_logic := '0';
		pcs10gsignalok	:	out	std_logic := '0';
		pcs8grxclkiqout	:	in	std_logic := '0';
		pcs8grxclkslip	:	in	std_logic := '0';
		pcs8gsigdetni	:	out	std_logic := '0';
		pcsemsiprxclkiqout	:	in	std_logic := '0';
		pcsgen3eyemonitorin	:	out	std_logic_vector(1 downto 0) := "00";
		pcsgen3eyemonitorout	:	in	std_logic_vector(7 downto 0) := "00000000";
		pcsgen3pmasignaldet	:	out	std_logic := '0';
		pldrxclkslip	:	in	std_logic := '0';
		pldrxpmarstb	:	in	std_logic := '0';
		pmaclkdiv33txorrxin	:	in	std_logic := '0';
		pmaclkdiv33txorrxout	:	out	std_logic := '0';
		pmaeyemonitorin	:	in	std_logic_vector(1 downto 0) := "00";
		pmaeyemonitorout	:	out	std_logic_vector(7 downto 0) := "00000000";
		pmareservedin	:	in	std_logic_vector(4 downto 0) := "00000";
		pmareservedout	:	out	std_logic_vector(4 downto 0) := "00000";
		pmarxclkout	:	out	std_logic := '0';
		pmarxclkslip	:	out	std_logic := '0';
		pmarxpllphaselockin	:	in	std_logic := '0';
		pmarxpllphaselockout	:	out	std_logic := '0';
		pmarxpmarstb	:	out	std_logic := '0';
		pmasigdet	:	in	std_logic := '0';
		pmasignalok	:	in	std_logic := '0';
		reset	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_rx_pcs_pma_interface_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		prot_mode	=>	prot_mode,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		selectpcs	=>	selectpcs,
		use_default_base_address	=>	use_default_base_address,
		clkslip_sel	=>	clkslip_sel
	)
	port map	(
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clkoutto10gpcs	=>	clkoutto10gpcs,
		clockinfrompma	=>	clockinfrompma,
		clockoutto8gpcs	=>	clockoutto8gpcs,
		clockouttogen3pcs	=>	clockouttogen3pcs,
		datainfrompma	=>	datainfrompma,
		dataoutto10gpcs	=>	dataoutto10gpcs,
		dataoutto8gpcs	=>	dataoutto8gpcs,
		dataouttogen3pcs	=>	dataouttogen3pcs,
		pcs10gclkdiv33txorrx	=>	pcs10gclkdiv33txorrx,
		pcs10grxclkiqout	=>	pcs10grxclkiqout,
		pcs10gsignalok	=>	pcs10gsignalok,
		pcs8grxclkiqout	=>	pcs8grxclkiqout,
		pcs8grxclkslip	=>	pcs8grxclkslip,
		pcs8gsigdetni	=>	pcs8gsigdetni,
		pcsemsiprxclkiqout	=>	pcsemsiprxclkiqout,
		pcsgen3eyemonitorin	=>	pcsgen3eyemonitorin,
		pcsgen3eyemonitorout	=>	pcsgen3eyemonitorout,
		pcsgen3pmasignaldet	=>	pcsgen3pmasignaldet,
		pldrxclkslip	=>	pldrxclkslip,
		pldrxpmarstb	=>	pldrxpmarstb,
		pmaclkdiv33txorrxin	=>	pmaclkdiv33txorrxin,
		pmaclkdiv33txorrxout	=>	pmaclkdiv33txorrxout,
		pmaeyemonitorin	=>	pmaeyemonitorin,
		pmaeyemonitorout	=>	pmaeyemonitorout,
		pmareservedin	=>	pmareservedin,
		pmareservedout	=>	pmareservedout,
		pmarxclkout	=>	pmarxclkout,
		pmarxclkslip	=>	pmarxclkslip,
		pmarxpllphaselockin	=>	pmarxpllphaselockin,
		pmarxpllphaselockout	=>	pmarxpllphaselockout,
		pmarxpmarstb	=>	pmarxpmarstb,
		pmasigdet	=>	pmasigdet,
		pmasignalok	=>	pmasignalok,
		reset	=>	reset
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_rx_pld_pcs_interface	is
	generic	(
		user_base_address	:	integer	:=	0;
		data_source	:	string	:=	"pld";
		is_10g_0ppm	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		is_8g_0ppm	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrom10gpcs	:	in	std_logic := '0';
		clockinfrom8gpcs	:	in	std_logic := '0';
		datainfrom10gpcs	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		datainfrom8gpcs	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataouttopld	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		emsipenablediocsrrdydly	:	in	std_logic := '0';
		emsiprxclkin	:	in	std_logic_vector(2 downto 0) := "000";
		emsiprxclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsiprxin	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsiprxout	:	out	std_logic_vector(128 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		emsiprxspecialin	:	in	std_logic_vector(12 downto 0) := "0000000000000";
		emsiprxspecialout	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcs10grxalignclr	:	out	std_logic := '0';
		pcs10grxalignen	:	out	std_logic := '0';
		pcs10grxalignval	:	in	std_logic := '0';
		pcs10grxbitslip	:	out	std_logic := '0';
		pcs10grxblklock	:	in	std_logic := '0';
		pcs10grxclrbercount	:	out	std_logic := '0';
		pcs10grxclrerrblkcnt	:	out	std_logic := '0';
		pcs10grxcontrol	:	in	std_logic_vector(9 downto 0) := "0000000000";
		pcs10grxcrc32err	:	in	std_logic := '0';
		pcs10grxdatavalid	:	in	std_logic := '0';
		pcs10grxdiagerr	:	in	std_logic := '0';
		pcs10grxdiagstatus	:	in	std_logic_vector(1 downto 0) := "00";
		pcs10grxdispclr	:	out	std_logic := '0';
		pcs10grxempty	:	in	std_logic := '0';
		pcs10grxfifodel	:	in	std_logic := '0';
		pcs10grxfifoinsert	:	in	std_logic := '0';
		pcs10grxframelock	:	in	std_logic := '0';
		pcs10grxhiber	:	in	std_logic := '0';
		pcs10grxmfrmerr	:	in	std_logic := '0';
		pcs10grxoflwerr	:	in	std_logic := '0';
		pcs10grxpempty	:	in	std_logic := '0';
		pcs10grxpfull	:	in	std_logic := '0';
		pcs10grxpldclk	:	out	std_logic := '0';
		pcs10grxpldrstn	:	out	std_logic := '0';
		pcs10grxprbserr	:	in	std_logic := '0';
		pcs10grxprbserrclr	:	out	std_logic := '0';
		pcs10grxpyldins	:	in	std_logic := '0';
		pcs10grxrden	:	out	std_logic := '0';
		pcs10grxrdnegsts	:	in	std_logic := '0';
		pcs10grxrdpossts	:	in	std_logic := '0';
		pcs10grxrxframe	:	in	std_logic := '0';
		pcs10grxscrmerr	:	in	std_logic := '0';
		pcs10grxsherr	:	in	std_logic := '0';
		pcs10grxskiperr	:	in	std_logic := '0';
		pcs10grxskipins	:	in	std_logic := '0';
		pcs10grxsyncerr	:	in	std_logic := '0';
		pcs8ga1a2k1k2flag	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8ga1a2size	:	out	std_logic := '0';
		pcs8galignstatus	:	in	std_logic := '0';
		pcs8gbistdone	:	in	std_logic := '0';
		pcs8gbisterr	:	in	std_logic := '0';
		pcs8gbitlocreven	:	out	std_logic := '0';
		pcs8gbitslip	:	out	std_logic := '0';
		pcs8gbyteordflag	:	in	std_logic := '0';
		pcs8gbytereven	:	out	std_logic := '0';
		pcs8gbytordpld	:	out	std_logic := '0';
		pcs8gcmpfifourst	:	out	std_logic := '0';
		pcs8gemptyrmf	:	in	std_logic := '0';
		pcs8gemptyrx	:	in	std_logic := '0';
		pcs8gencdt	:	out	std_logic := '0';
		pcs8gfullrmf	:	in	std_logic := '0';
		pcs8gfullrx	:	in	std_logic := '0';
		pcs8gphfifourstrx	:	out	std_logic := '0';
		pcs8gphystatus	:	in	std_logic := '0';
		pcs8gpldrxclk	:	out	std_logic := '0';
		pcs8gpolinvrx	:	out	std_logic := '0';
		pcs8grdenablermf	:	out	std_logic := '0';
		pcs8grdenablerx	:	out	std_logic := '0';
		pcs8grlvlt	:	in	std_logic := '0';
		pcs8grxblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8grxdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8grxelecidle	:	in	std_logic := '0';
		pcs8grxstatus	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8grxsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		pcs8grxurstpcs	:	out	std_logic := '0';
		pcs8grxvalid	:	in	std_logic := '0';
		pcs8gsignaldetectout	:	in	std_logic := '0';
		pcs8gsyncsmenoutput	:	out	std_logic := '0';
		pcs8gwaboundary	:	in	std_logic_vector(4 downto 0) := "00000";
		pcs8gwrdisablerx	:	out	std_logic := '0';
		pcs8gwrenablermf	:	out	std_logic := '0';
		pcsgen3rxrst	:	out	std_logic := '0';
		pcsgen3rxrstn	:	out	std_logic := '0';
		pcsgen3rxupdatefc	:	out	std_logic := '0';
		pcsgen3syncsmen	:	out	std_logic := '0';
		pld10grxalignclr	:	in	std_logic := '0';
		pld10grxalignen	:	in	std_logic := '0';
		pld10grxalignval	:	out	std_logic := '0';
		pld10grxbitslip	:	in	std_logic := '0';
		pld10grxblklock	:	out	std_logic := '0';
		pld10grxclkout	:	out	std_logic := '0';
		pld10grxclrbercount	:	in	std_logic := '0';
		pld10grxclrerrblkcnt	:	in	std_logic := '0';
		pld10grxcontrol	:	out	std_logic_vector(9 downto 0) := "0000000000";
		pld10grxcrc32err	:	out	std_logic := '0';
		pld10grxdatavalid	:	out	std_logic := '0';
		pld10grxdiagerr	:	out	std_logic := '0';
		pld10grxdiagstatus	:	out	std_logic_vector(1 downto 0) := "00";
		pld10grxdispclr	:	in	std_logic := '0';
		pld10grxempty	:	out	std_logic := '0';
		pld10grxfifodel	:	out	std_logic := '0';
		pld10grxfifoinsert	:	out	std_logic := '0';
		pld10grxframelock	:	out	std_logic := '0';
		pld10grxhiber	:	out	std_logic := '0';
		pld10grxmfrmerr	:	out	std_logic := '0';
		pld10grxoflwerr	:	out	std_logic := '0';
		pld10grxpempty	:	out	std_logic := '0';
		pld10grxpfull	:	out	std_logic := '0';
		pld10grxpldclk	:	in	std_logic := '0';
		pld10grxpldrstn	:	in	std_logic := '0';
		pld10grxprbserr	:	out	std_logic := '0';
		pld10grxprbserrclr	:	in	std_logic := '0';
		pld10grxpyldins	:	out	std_logic := '0';
		pld10grxrden	:	in	std_logic := '0';
		pld10grxrdnegsts	:	out	std_logic := '0';
		pld10grxrdpossts	:	out	std_logic := '0';
		pld10grxrxframe	:	out	std_logic := '0';
		pld10grxscrmerr	:	out	std_logic := '0';
		pld10grxsherr	:	out	std_logic := '0';
		pld10grxskiperr	:	out	std_logic := '0';
		pld10grxskipins	:	out	std_logic := '0';
		pld10grxsyncerr	:	out	std_logic := '0';
		pld8ga1a2k1k2flag	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8ga1a2size	:	in	std_logic := '0';
		pld8galignstatus	:	out	std_logic := '0';
		pld8gbistdone	:	out	std_logic := '0';
		pld8gbisterr	:	out	std_logic := '0';
		pld8gbitlocreven	:	in	std_logic := '0';
		pld8gbitslip	:	in	std_logic := '0';
		pld8gbyteordflag	:	out	std_logic := '0';
		pld8gbytereven	:	in	std_logic := '0';
		pld8gbytordpld	:	in	std_logic := '0';
		pld8gcmpfifourstn	:	in	std_logic := '0';
		pld8gemptyrmf	:	out	std_logic := '0';
		pld8gemptyrx	:	out	std_logic := '0';
		pld8gencdt	:	in	std_logic := '0';
		pld8gfullrmf	:	out	std_logic := '0';
		pld8gfullrx	:	out	std_logic := '0';
		pld8gphfifourstrxn	:	in	std_logic := '0';
		pld8gpldrxclk	:	in	std_logic := '0';
		pld8gpolinvrx	:	in	std_logic := '0';
		pld8grdenablermf	:	in	std_logic := '0';
		pld8grdenablerx	:	in	std_logic := '0';
		pld8grlvlt	:	out	std_logic := '0';
		pld8grxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8grxclkout	:	out	std_logic := '0';
		pld8grxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8grxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		pld8grxurstpcsn	:	in	std_logic := '0';
		pld8gsignaldetectout	:	out	std_logic := '0';
		pld8gsyncsmeninput	:	in	std_logic := '0';
		pld8gwaboundary	:	out	std_logic_vector(4 downto 0) := "00000";
		pld8gwrdisablerx	:	in	std_logic := '0';
		pld8gwrenablermf	:	in	std_logic := '0';
		pldclkdiv33txorrx	:	out	std_logic := '0';
		pldgen3rxrstn	:	in	std_logic := '0';
		pldgen3rxupdatefc	:	in	std_logic := '0';
		pldrxclkslipin	:	in	std_logic := '0';
		pldrxclkslipout	:	out	std_logic := '0';
		pldrxiqclkout	:	out	std_logic := '0';
		pldrxpmarstbin	:	in	std_logic := '0';
		pldrxpmarstbout	:	out	std_logic := '0';
		pmaclkdiv33txorrx	:	in	std_logic := '0';
		pmarxplllock	:	in	std_logic := '0';
		reset	:	out	std_logic := '0';
		rstsel	:	in	std_logic := '0';
		usrrstsel	:	in	std_logic := '0'
	);
end	stratixv_hssi_rx_pld_pcs_interface;

architecture behavior of stratixv_hssi_rx_pld_pcs_interface is

component	stratixv_hssi_rx_pld_pcs_interface_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		data_source	:	string	:=	"pld";
		is_10g_0ppm	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		is_8g_0ppm	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrom10gpcs	:	in	std_logic := '0';
		clockinfrom8gpcs	:	in	std_logic := '0';
		datainfrom10gpcs	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		datainfrom8gpcs	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataouttopld	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		emsipenablediocsrrdydly	:	in	std_logic := '0';
		emsiprxclkin	:	in	std_logic_vector(2 downto 0) := "000";
		emsiprxclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsiprxin	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		emsiprxout	:	out	std_logic_vector(128 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		emsiprxspecialin	:	in	std_logic_vector(12 downto 0) := "0000000000000";
		emsiprxspecialout	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcs10grxalignclr	:	out	std_logic := '0';
		pcs10grxalignen	:	out	std_logic := '0';
		pcs10grxalignval	:	in	std_logic := '0';
		pcs10grxbitslip	:	out	std_logic := '0';
		pcs10grxblklock	:	in	std_logic := '0';
		pcs10grxclrbercount	:	out	std_logic := '0';
		pcs10grxclrerrblkcnt	:	out	std_logic := '0';
		pcs10grxcontrol	:	in	std_logic_vector(9 downto 0) := "0000000000";
		pcs10grxcrc32err	:	in	std_logic := '0';
		pcs10grxdatavalid	:	in	std_logic := '0';
		pcs10grxdiagerr	:	in	std_logic := '0';
		pcs10grxdiagstatus	:	in	std_logic_vector(1 downto 0) := "00";
		pcs10grxdispclr	:	out	std_logic := '0';
		pcs10grxempty	:	in	std_logic := '0';
		pcs10grxfifodel	:	in	std_logic := '0';
		pcs10grxfifoinsert	:	in	std_logic := '0';
		pcs10grxframelock	:	in	std_logic := '0';
		pcs10grxhiber	:	in	std_logic := '0';
		pcs10grxmfrmerr	:	in	std_logic := '0';
		pcs10grxoflwerr	:	in	std_logic := '0';
		pcs10grxpempty	:	in	std_logic := '0';
		pcs10grxpfull	:	in	std_logic := '0';
		pcs10grxpldclk	:	out	std_logic := '0';
		pcs10grxpldrstn	:	out	std_logic := '0';
		pcs10grxprbserr	:	in	std_logic := '0';
		pcs10grxprbserrclr	:	out	std_logic := '0';
		pcs10grxpyldins	:	in	std_logic := '0';
		pcs10grxrden	:	out	std_logic := '0';
		pcs10grxrdnegsts	:	in	std_logic := '0';
		pcs10grxrdpossts	:	in	std_logic := '0';
		pcs10grxrxframe	:	in	std_logic := '0';
		pcs10grxscrmerr	:	in	std_logic := '0';
		pcs10grxsherr	:	in	std_logic := '0';
		pcs10grxskiperr	:	in	std_logic := '0';
		pcs10grxskipins	:	in	std_logic := '0';
		pcs10grxsyncerr	:	in	std_logic := '0';
		pcs8ga1a2k1k2flag	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8ga1a2size	:	out	std_logic := '0';
		pcs8galignstatus	:	in	std_logic := '0';
		pcs8gbistdone	:	in	std_logic := '0';
		pcs8gbisterr	:	in	std_logic := '0';
		pcs8gbitlocreven	:	out	std_logic := '0';
		pcs8gbitslip	:	out	std_logic := '0';
		pcs8gbyteordflag	:	in	std_logic := '0';
		pcs8gbytereven	:	out	std_logic := '0';
		pcs8gbytordpld	:	out	std_logic := '0';
		pcs8gcmpfifourst	:	out	std_logic := '0';
		pcs8gemptyrmf	:	in	std_logic := '0';
		pcs8gemptyrx	:	in	std_logic := '0';
		pcs8gencdt	:	out	std_logic := '0';
		pcs8gfullrmf	:	in	std_logic := '0';
		pcs8gfullrx	:	in	std_logic := '0';
		pcs8gphfifourstrx	:	out	std_logic := '0';
		pcs8gphystatus	:	in	std_logic := '0';
		pcs8gpldrxclk	:	out	std_logic := '0';
		pcs8gpolinvrx	:	out	std_logic := '0';
		pcs8grdenablermf	:	out	std_logic := '0';
		pcs8grdenablerx	:	out	std_logic := '0';
		pcs8grlvlt	:	in	std_logic := '0';
		pcs8grxblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8grxdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		pcs8grxelecidle	:	in	std_logic := '0';
		pcs8grxstatus	:	in	std_logic_vector(2 downto 0) := "000";
		pcs8grxsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		pcs8grxurstpcs	:	out	std_logic := '0';
		pcs8grxvalid	:	in	std_logic := '0';
		pcs8gsignaldetectout	:	in	std_logic := '0';
		pcs8gsyncsmenoutput	:	out	std_logic := '0';
		pcs8gwaboundary	:	in	std_logic_vector(4 downto 0) := "00000";
		pcs8gwrdisablerx	:	out	std_logic := '0';
		pcs8gwrenablermf	:	out	std_logic := '0';
		pcsgen3rxrst	:	out	std_logic := '0';
		pcsgen3rxrstn	:	out	std_logic := '0';
		pcsgen3rxupdatefc	:	out	std_logic := '0';
		pcsgen3syncsmen	:	out	std_logic := '0';
		pld10grxalignclr	:	in	std_logic := '0';
		pld10grxalignen	:	in	std_logic := '0';
		pld10grxalignval	:	out	std_logic := '0';
		pld10grxbitslip	:	in	std_logic := '0';
		pld10grxblklock	:	out	std_logic := '0';
		pld10grxclkout	:	out	std_logic := '0';
		pld10grxclrbercount	:	in	std_logic := '0';
		pld10grxclrerrblkcnt	:	in	std_logic := '0';
		pld10grxcontrol	:	out	std_logic_vector(9 downto 0) := "0000000000";
		pld10grxcrc32err	:	out	std_logic := '0';
		pld10grxdatavalid	:	out	std_logic := '0';
		pld10grxdiagerr	:	out	std_logic := '0';
		pld10grxdiagstatus	:	out	std_logic_vector(1 downto 0) := "00";
		pld10grxdispclr	:	in	std_logic := '0';
		pld10grxempty	:	out	std_logic := '0';
		pld10grxfifodel	:	out	std_logic := '0';
		pld10grxfifoinsert	:	out	std_logic := '0';
		pld10grxframelock	:	out	std_logic := '0';
		pld10grxhiber	:	out	std_logic := '0';
		pld10grxmfrmerr	:	out	std_logic := '0';
		pld10grxoflwerr	:	out	std_logic := '0';
		pld10grxpempty	:	out	std_logic := '0';
		pld10grxpfull	:	out	std_logic := '0';
		pld10grxpldclk	:	in	std_logic := '0';
		pld10grxpldrstn	:	in	std_logic := '0';
		pld10grxprbserr	:	out	std_logic := '0';
		pld10grxprbserrclr	:	in	std_logic := '0';
		pld10grxpyldins	:	out	std_logic := '0';
		pld10grxrden	:	in	std_logic := '0';
		pld10grxrdnegsts	:	out	std_logic := '0';
		pld10grxrdpossts	:	out	std_logic := '0';
		pld10grxrxframe	:	out	std_logic := '0';
		pld10grxscrmerr	:	out	std_logic := '0';
		pld10grxsherr	:	out	std_logic := '0';
		pld10grxskiperr	:	out	std_logic := '0';
		pld10grxskipins	:	out	std_logic := '0';
		pld10grxsyncerr	:	out	std_logic := '0';
		pld8ga1a2k1k2flag	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8ga1a2size	:	in	std_logic := '0';
		pld8galignstatus	:	out	std_logic := '0';
		pld8gbistdone	:	out	std_logic := '0';
		pld8gbisterr	:	out	std_logic := '0';
		pld8gbitlocreven	:	in	std_logic := '0';
		pld8gbitslip	:	in	std_logic := '0';
		pld8gbyteordflag	:	out	std_logic := '0';
		pld8gbytereven	:	in	std_logic := '0';
		pld8gbytordpld	:	in	std_logic := '0';
		pld8gcmpfifourstn	:	in	std_logic := '0';
		pld8gemptyrmf	:	out	std_logic := '0';
		pld8gemptyrx	:	out	std_logic := '0';
		pld8gencdt	:	in	std_logic := '0';
		pld8gfullrmf	:	out	std_logic := '0';
		pld8gfullrx	:	out	std_logic := '0';
		pld8gphfifourstrxn	:	in	std_logic := '0';
		pld8gpldrxclk	:	in	std_logic := '0';
		pld8gpolinvrx	:	in	std_logic := '0';
		pld8grdenablermf	:	in	std_logic := '0';
		pld8grdenablerx	:	in	std_logic := '0';
		pld8grlvlt	:	out	std_logic := '0';
		pld8grxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8grxclkout	:	out	std_logic := '0';
		pld8grxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		pld8grxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		pld8grxurstpcsn	:	in	std_logic := '0';
		pld8gsignaldetectout	:	out	std_logic := '0';
		pld8gsyncsmeninput	:	in	std_logic := '0';
		pld8gwaboundary	:	out	std_logic_vector(4 downto 0) := "00000";
		pld8gwrdisablerx	:	in	std_logic := '0';
		pld8gwrenablermf	:	in	std_logic := '0';
		pldclkdiv33txorrx	:	out	std_logic := '0';
		pldgen3rxrstn	:	in	std_logic := '0';
		pldgen3rxupdatefc	:	in	std_logic := '0';
		pldrxclkslipin	:	in	std_logic := '0';
		pldrxclkslipout	:	out	std_logic := '0';
		pldrxiqclkout	:	out	std_logic := '0';
		pldrxpmarstbin	:	in	std_logic := '0';
		pldrxpmarstbout	:	out	std_logic := '0';
		pmaclkdiv33txorrx	:	in	std_logic := '0';
		pmarxplllock	:	in	std_logic := '0';
		reset	:	out	std_logic := '0';
		rstsel	:	in	std_logic := '0';
		usrrstsel	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_rx_pld_pcs_interface_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		data_source	=>	data_source,
		is_10g_0ppm	=>	is_10g_0ppm,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		selectpcs	=>	selectpcs,
		use_default_base_address	=>	use_default_base_address,
		is_8g_0ppm	=>	is_8g_0ppm,
		silicon_rev	=>	silicon_rev
	)
	port map	(
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clockinfrom10gpcs	=>	clockinfrom10gpcs,
		clockinfrom8gpcs	=>	clockinfrom8gpcs,
		datainfrom10gpcs	=>	datainfrom10gpcs,
		datainfrom8gpcs	=>	datainfrom8gpcs,
		dataouttopld	=>	dataouttopld,
		emsipenablediocsrrdydly	=>	emsipenablediocsrrdydly,
		emsiprxclkin	=>	emsiprxclkin,
		emsiprxclkout	=>	emsiprxclkout,
		emsiprxin	=>	emsiprxin,
		emsiprxout	=>	emsiprxout,
		emsiprxspecialin	=>	emsiprxspecialin,
		emsiprxspecialout	=>	emsiprxspecialout,
		pcs10grxalignclr	=>	pcs10grxalignclr,
		pcs10grxalignen	=>	pcs10grxalignen,
		pcs10grxalignval	=>	pcs10grxalignval,
		pcs10grxbitslip	=>	pcs10grxbitslip,
		pcs10grxblklock	=>	pcs10grxblklock,
		pcs10grxclrbercount	=>	pcs10grxclrbercount,
		pcs10grxclrerrblkcnt	=>	pcs10grxclrerrblkcnt,
		pcs10grxcontrol	=>	pcs10grxcontrol,
		pcs10grxcrc32err	=>	pcs10grxcrc32err,
		pcs10grxdatavalid	=>	pcs10grxdatavalid,
		pcs10grxdiagerr	=>	pcs10grxdiagerr,
		pcs10grxdiagstatus	=>	pcs10grxdiagstatus,
		pcs10grxdispclr	=>	pcs10grxdispclr,
		pcs10grxempty	=>	pcs10grxempty,
		pcs10grxfifodel	=>	pcs10grxfifodel,
		pcs10grxfifoinsert	=>	pcs10grxfifoinsert,
		pcs10grxframelock	=>	pcs10grxframelock,
		pcs10grxhiber	=>	pcs10grxhiber,
		pcs10grxmfrmerr	=>	pcs10grxmfrmerr,
		pcs10grxoflwerr	=>	pcs10grxoflwerr,
		pcs10grxpempty	=>	pcs10grxpempty,
		pcs10grxpfull	=>	pcs10grxpfull,
		pcs10grxpldclk	=>	pcs10grxpldclk,
		pcs10grxpldrstn	=>	pcs10grxpldrstn,
		pcs10grxprbserr	=>	pcs10grxprbserr,
		pcs10grxprbserrclr	=>	pcs10grxprbserrclr,
		pcs10grxpyldins	=>	pcs10grxpyldins,
		pcs10grxrden	=>	pcs10grxrden,
		pcs10grxrdnegsts	=>	pcs10grxrdnegsts,
		pcs10grxrdpossts	=>	pcs10grxrdpossts,
		pcs10grxrxframe	=>	pcs10grxrxframe,
		pcs10grxscrmerr	=>	pcs10grxscrmerr,
		pcs10grxsherr	=>	pcs10grxsherr,
		pcs10grxskiperr	=>	pcs10grxskiperr,
		pcs10grxskipins	=>	pcs10grxskipins,
		pcs10grxsyncerr	=>	pcs10grxsyncerr,
		pcs8ga1a2k1k2flag	=>	pcs8ga1a2k1k2flag,
		pcs8ga1a2size	=>	pcs8ga1a2size,
		pcs8galignstatus	=>	pcs8galignstatus,
		pcs8gbistdone	=>	pcs8gbistdone,
		pcs8gbisterr	=>	pcs8gbisterr,
		pcs8gbitlocreven	=>	pcs8gbitlocreven,
		pcs8gbitslip	=>	pcs8gbitslip,
		pcs8gbyteordflag	=>	pcs8gbyteordflag,
		pcs8gbytereven	=>	pcs8gbytereven,
		pcs8gbytordpld	=>	pcs8gbytordpld,
		pcs8gcmpfifourst	=>	pcs8gcmpfifourst,
		pcs8gemptyrmf	=>	pcs8gemptyrmf,
		pcs8gemptyrx	=>	pcs8gemptyrx,
		pcs8gencdt	=>	pcs8gencdt,
		pcs8gfullrmf	=>	pcs8gfullrmf,
		pcs8gfullrx	=>	pcs8gfullrx,
		pcs8gphfifourstrx	=>	pcs8gphfifourstrx,
		pcs8gphystatus	=>	pcs8gphystatus,
		pcs8gpldrxclk	=>	pcs8gpldrxclk,
		pcs8gpolinvrx	=>	pcs8gpolinvrx,
		pcs8grdenablermf	=>	pcs8grdenablermf,
		pcs8grdenablerx	=>	pcs8grdenablerx,
		pcs8grlvlt	=>	pcs8grlvlt,
		pcs8grxblkstart	=>	pcs8grxblkstart,
		pcs8grxdatavalid	=>	pcs8grxdatavalid,
		pcs8grxelecidle	=>	pcs8grxelecidle,
		pcs8grxstatus	=>	pcs8grxstatus,
		pcs8grxsynchdr	=>	pcs8grxsynchdr,
		pcs8grxurstpcs	=>	pcs8grxurstpcs,
		pcs8grxvalid	=>	pcs8grxvalid,
		pcs8gsignaldetectout	=>	pcs8gsignaldetectout,
		pcs8gsyncsmenoutput	=>	pcs8gsyncsmenoutput,
		pcs8gwaboundary	=>	pcs8gwaboundary,
		pcs8gwrdisablerx	=>	pcs8gwrdisablerx,
		pcs8gwrenablermf	=>	pcs8gwrenablermf,
		pcsgen3rxrst	=>	pcsgen3rxrst,
		pcsgen3rxrstn	=>	pcsgen3rxrstn,
		pcsgen3rxupdatefc	=>	pcsgen3rxupdatefc,
		pcsgen3syncsmen	=>	pcsgen3syncsmen,
		pld10grxalignclr	=>	pld10grxalignclr,
		pld10grxalignen	=>	pld10grxalignen,
		pld10grxalignval	=>	pld10grxalignval,
		pld10grxbitslip	=>	pld10grxbitslip,
		pld10grxblklock	=>	pld10grxblklock,
		pld10grxclkout	=>	pld10grxclkout,
		pld10grxclrbercount	=>	pld10grxclrbercount,
		pld10grxclrerrblkcnt	=>	pld10grxclrerrblkcnt,
		pld10grxcontrol	=>	pld10grxcontrol,
		pld10grxcrc32err	=>	pld10grxcrc32err,
		pld10grxdatavalid	=>	pld10grxdatavalid,
		pld10grxdiagerr	=>	pld10grxdiagerr,
		pld10grxdiagstatus	=>	pld10grxdiagstatus,
		pld10grxdispclr	=>	pld10grxdispclr,
		pld10grxempty	=>	pld10grxempty,
		pld10grxfifodel	=>	pld10grxfifodel,
		pld10grxfifoinsert	=>	pld10grxfifoinsert,
		pld10grxframelock	=>	pld10grxframelock,
		pld10grxhiber	=>	pld10grxhiber,
		pld10grxmfrmerr	=>	pld10grxmfrmerr,
		pld10grxoflwerr	=>	pld10grxoflwerr,
		pld10grxpempty	=>	pld10grxpempty,
		pld10grxpfull	=>	pld10grxpfull,
		pld10grxpldclk	=>	pld10grxpldclk,
		pld10grxpldrstn	=>	pld10grxpldrstn,
		pld10grxprbserr	=>	pld10grxprbserr,
		pld10grxprbserrclr	=>	pld10grxprbserrclr,
		pld10grxpyldins	=>	pld10grxpyldins,
		pld10grxrden	=>	pld10grxrden,
		pld10grxrdnegsts	=>	pld10grxrdnegsts,
		pld10grxrdpossts	=>	pld10grxrdpossts,
		pld10grxrxframe	=>	pld10grxrxframe,
		pld10grxscrmerr	=>	pld10grxscrmerr,
		pld10grxsherr	=>	pld10grxsherr,
		pld10grxskiperr	=>	pld10grxskiperr,
		pld10grxskipins	=>	pld10grxskipins,
		pld10grxsyncerr	=>	pld10grxsyncerr,
		pld8ga1a2k1k2flag	=>	pld8ga1a2k1k2flag,
		pld8ga1a2size	=>	pld8ga1a2size,
		pld8galignstatus	=>	pld8galignstatus,
		pld8gbistdone	=>	pld8gbistdone,
		pld8gbisterr	=>	pld8gbisterr,
		pld8gbitlocreven	=>	pld8gbitlocreven,
		pld8gbitslip	=>	pld8gbitslip,
		pld8gbyteordflag	=>	pld8gbyteordflag,
		pld8gbytereven	=>	pld8gbytereven,
		pld8gbytordpld	=>	pld8gbytordpld,
		pld8gcmpfifourstn	=>	pld8gcmpfifourstn,
		pld8gemptyrmf	=>	pld8gemptyrmf,
		pld8gemptyrx	=>	pld8gemptyrx,
		pld8gencdt	=>	pld8gencdt,
		pld8gfullrmf	=>	pld8gfullrmf,
		pld8gfullrx	=>	pld8gfullrx,
		pld8gphfifourstrxn	=>	pld8gphfifourstrxn,
		pld8gpldrxclk	=>	pld8gpldrxclk,
		pld8gpolinvrx	=>	pld8gpolinvrx,
		pld8grdenablermf	=>	pld8grdenablermf,
		pld8grdenablerx	=>	pld8grdenablerx,
		pld8grlvlt	=>	pld8grlvlt,
		pld8grxblkstart	=>	pld8grxblkstart,
		pld8grxclkout	=>	pld8grxclkout,
		pld8grxdatavalid	=>	pld8grxdatavalid,
		pld8grxsynchdr	=>	pld8grxsynchdr,
		pld8grxurstpcsn	=>	pld8grxurstpcsn,
		pld8gsignaldetectout	=>	pld8gsignaldetectout,
		pld8gsyncsmeninput	=>	pld8gsyncsmeninput,
		pld8gwaboundary	=>	pld8gwaboundary,
		pld8gwrdisablerx	=>	pld8gwrdisablerx,
		pld8gwrenablermf	=>	pld8gwrenablermf,
		pldclkdiv33txorrx	=>	pldclkdiv33txorrx,
		pldgen3rxrstn	=>	pldgen3rxrstn,
		pldgen3rxupdatefc	=>	pldgen3rxupdatefc,
		pldrxclkslipin	=>	pldrxclkslipin,
		pldrxclkslipout	=>	pldrxclkslipout,
		pldrxiqclkout	=>	pldrxiqclkout,
		pldrxpmarstbin	=>	pldrxpmarstbin,
		pldrxpmarstbout	=>	pldrxpmarstbout,
		pmaclkdiv33txorrx	=>	pmaclkdiv33txorrx,
		pmarxplllock	=>	pmarxplllock,
		reset	=>	reset,
		rstsel	=>	rstsel,
		usrrstsel	=>	usrrstsel
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_tx_pcs_pma_interface	is
	generic	(
		user_base_address	:	integer	:=	0;
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrompma	:	in	std_logic := '0';
		clockoutto10gpcs	:	out	std_logic := '0';
		clockoutto8gpcs	:	out	std_logic := '0';
		datainfrom10gpcs	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		datainfrom8gpcs	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		datainfromgen3pcs	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataouttopma	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pcs10gclkdiv33lc	:	out	std_logic := '0';
		pcs10gtxclkiqout	:	in	std_logic := '0';
		pcs8gtxclkiqout	:	in	std_logic := '0';
		pcsemsiptxclkiqout	:	in	std_logic := '0';
		pcsgen3gen3datasel	:	in	std_logic := '0';
		pldtxpmasyncpfbkp	:	in	std_logic := '0';
		pmaclkdiv33lcin	:	in	std_logic := '0';
		pmaclkdiv33lcout	:	out	std_logic := '0';
		pmarxfreqtxcmuplllockin	:	in	std_logic := '0';
		pmarxfreqtxcmuplllockout	:	out	std_logic := '0';
		pmatxclkout	:	out	std_logic := '0';
		pmatxlcplllockin	:	in	std_logic := '0';
		pmatxlcplllockout	:	out	std_logic := '0';
		pmatxpmasyncpfbkp	:	out	std_logic := '0';
		reset	:	out	std_logic := '0'
	);
end	stratixv_hssi_tx_pcs_pma_interface;

architecture behavior of stratixv_hssi_tx_pcs_pma_interface is

component	stratixv_hssi_tx_pcs_pma_interface_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		avmm_group_channel_index	:	integer	:=	0;
		selectpcs	:	string	:=	"eight_g_pcs";
		use_default_base_address	:	string	:=	"true"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrompma	:	in	std_logic := '0';
		clockoutto10gpcs	:	out	std_logic := '0';
		clockoutto8gpcs	:	out	std_logic := '0';
		datainfrom10gpcs	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		datainfrom8gpcs	:	in	std_logic_vector(19 downto 0) := "00000000000000000000";
		datainfromgen3pcs	:	in	std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		dataouttopma	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pcs10gclkdiv33lc	:	out	std_logic := '0';
		pcs10gtxclkiqout	:	in	std_logic := '0';
		pcs8gtxclkiqout	:	in	std_logic := '0';
		pcsemsiptxclkiqout	:	in	std_logic := '0';
		pcsgen3gen3datasel	:	in	std_logic := '0';
		pldtxpmasyncpfbkp	:	in	std_logic := '0';
		pmaclkdiv33lcin	:	in	std_logic := '0';
		pmaclkdiv33lcout	:	out	std_logic := '0';
		pmarxfreqtxcmuplllockin	:	in	std_logic := '0';
		pmarxfreqtxcmuplllockout	:	out	std_logic := '0';
		pmatxclkout	:	out	std_logic := '0';
		pmatxlcplllockin	:	in	std_logic := '0';
		pmatxlcplllockout	:	out	std_logic := '0';
		pmatxpmasyncpfbkp	:	out	std_logic := '0';
		reset	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_tx_pcs_pma_interface_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		selectpcs	=>	selectpcs,
		use_default_base_address	=>	use_default_base_address
	)
	port map	(
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clockinfrompma	=>	clockinfrompma,
		clockoutto10gpcs	=>	clockoutto10gpcs,
		clockoutto8gpcs	=>	clockoutto8gpcs,
		datainfrom10gpcs	=>	datainfrom10gpcs,
		datainfrom8gpcs	=>	datainfrom8gpcs,
		datainfromgen3pcs	=>	datainfromgen3pcs,
		dataouttopma	=>	dataouttopma,
		pcs10gclkdiv33lc	=>	pcs10gclkdiv33lc,
		pcs10gtxclkiqout	=>	pcs10gtxclkiqout,
		pcs8gtxclkiqout	=>	pcs8gtxclkiqout,
		pcsemsiptxclkiqout	=>	pcsemsiptxclkiqout,
		pcsgen3gen3datasel	=>	pcsgen3gen3datasel,
		pldtxpmasyncpfbkp	=>	pldtxpmasyncpfbkp,
		pmaclkdiv33lcin	=>	pmaclkdiv33lcin,
		pmaclkdiv33lcout	=>	pmaclkdiv33lcout,
		pmarxfreqtxcmuplllockin	=>	pmarxfreqtxcmuplllockin,
		pmarxfreqtxcmuplllockout	=>	pmarxfreqtxcmuplllockout,
		pmatxclkout	=>	pmatxclkout,
		pmatxlcplllockin	=>	pmatxlcplllockin,
		pmatxlcplllockout	=>	pmatxlcplllockout,
		pmatxpmasyncpfbkp	=>	pmatxpmasyncpfbkp,
		reset	=>	reset
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_tx_pld_pcs_interface	is
	generic	(
		user_base_address	:	integer	:=	0;
		data_source	:	string	:=	"pld";
		is_10g_0ppm	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		use_default_base_address	:	string	:=	"true";
		is_8g_0ppm	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrom10gpcs	:	in	std_logic := '0';
		clockinfrom8gpcs	:	in	std_logic := '0';
		datainfrompld	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataoutto10gpcs	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataoutto8gpcs	:	out	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		emsipenablediocsrrdydly	:	in	std_logic := '0';
		emsippcstxclkin	:	in	std_logic_vector(2 downto 0) := "000";
		emsippcstxclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsiptxin	:	in	std_logic_vector(103 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		emsiptxout	:	out	std_logic_vector(11 downto 0) := "000000000000";
		emsiptxspecialin	:	in	std_logic_vector(12 downto 0) := "0000000000000";
		emsiptxspecialout	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcs10gtxbitslip	:	out	std_logic_vector(6 downto 0) := "0000000";
		pcs10gtxbursten	:	out	std_logic := '0';
		pcs10gtxburstenexe	:	in	std_logic := '0';
		pcs10gtxcontrol	:	out	std_logic_vector(8 downto 0) := "000000000";
		pcs10gtxdatavalid	:	out	std_logic := '0';
		pcs10gtxdiagstatus	:	out	std_logic_vector(1 downto 0) := "00";
		pcs10gtxempty	:	in	std_logic := '0';
		pcs10gtxfifodel	:	in	std_logic := '0';
		pcs10gtxfifoinsert	:	in	std_logic := '0';
		pcs10gtxframe	:	in	std_logic := '0';
		pcs10gtxfull	:	in	std_logic := '0';
		pcs10gtxpempty	:	in	std_logic := '0';
		pcs10gtxpfull	:	in	std_logic := '0';
		pcs10gtxpldclk	:	out	std_logic := '0';
		pcs10gtxpldrstn	:	out	std_logic := '0';
		pcs10gtxwordslip	:	out	std_logic := '0';
		pcs10gtxwordslipexe	:	in	std_logic := '0';
		pcs8gemptytx	:	in	std_logic := '0';
		pcs8gfulltx	:	in	std_logic := '0';
		pcs8gphfifoursttx	:	out	std_logic := '0';
		pcs8gpldtxclk	:	out	std_logic := '0';
		pcs8gpolinvtx	:	out	std_logic := '0';
		pcs8grddisabletx	:	out	std_logic := '0';
		pcs8grevloopbk	:	out	std_logic := '0';
		pcs8gtxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gtxboundarysel	:	out	std_logic_vector(4 downto 0) := "00000";
		pcs8gtxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gtxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		pcs8gtxurstpcs	:	out	std_logic := '0';
		pcs8gwrenabletx	:	out	std_logic := '0';
		pcsgen3txrst	:	out	std_logic := '0';
		pcsgen3txrstn	:	out	std_logic := '0';
		pld10gtxbitslip	:	in	std_logic_vector(6 downto 0) := "0000000";
		pld10gtxbursten	:	in	std_logic := '0';
		pld10gtxburstenexe	:	out	std_logic := '0';
		pld10gtxclkout	:	out	std_logic := '0';
		pld10gtxcontrol	:	in	std_logic_vector(8 downto 0) := "000000000";
		pld10gtxdatavalid	:	in	std_logic := '0';
		pld10gtxdiagstatus	:	in	std_logic_vector(1 downto 0) := "00";
		pld10gtxempty	:	out	std_logic := '0';
		pld10gtxfifodel	:	out	std_logic := '0';
		pld10gtxfifoinsert	:	out	std_logic := '0';
		pld10gtxframe	:	out	std_logic := '0';
		pld10gtxfull	:	out	std_logic := '0';
		pld10gtxpempty	:	out	std_logic := '0';
		pld10gtxpfull	:	out	std_logic := '0';
		pld10gtxpldclk	:	in	std_logic := '0';
		pld10gtxpldrstn	:	in	std_logic := '0';
		pld10gtxwordslip	:	in	std_logic := '0';
		pld10gtxwordslipexe	:	out	std_logic := '0';
		pld8gemptytx	:	out	std_logic := '0';
		pld8gfulltx	:	out	std_logic := '0';
		pld8gphfifoursttxn	:	in	std_logic := '0';
		pld8gpldtxclk	:	in	std_logic := '0';
		pld8gpolinvtx	:	in	std_logic := '0';
		pld8grddisabletx	:	in	std_logic := '0';
		pld8grevloopbk	:	in	std_logic := '0';
		pld8gtxblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		pld8gtxboundarysel	:	in	std_logic_vector(4 downto 0) := "00000";
		pld8gtxclkout	:	out	std_logic := '0';
		pld8gtxdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		pld8gtxsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		pld8gtxurstpcsn	:	in	std_logic := '0';
		pld8gwrenabletx	:	in	std_logic := '0';
		pldclkdiv33lc	:	out	std_logic := '0';
		pldgen3txrstn	:	in	std_logic := '0';
		pldlccmurstbout	:	out	std_logic := '0';
		pldtxiqclkout	:	out	std_logic := '0';
		pldtxpmasyncpfbkpout	:	out	std_logic := '0';
		pmaclkdiv33lc	:	in	std_logic := '0';
		pmatxcmuplllock	:	in	std_logic := '0';
		pmatxlcplllock	:	in	std_logic := '0';
		reset	:	out	std_logic := '0';
		rstsel	:	in	std_logic := '0';
		usrrstsel	:	in	std_logic := '0'
	);
end	stratixv_hssi_tx_pld_pcs_interface;

architecture behavior of stratixv_hssi_tx_pld_pcs_interface is

component	stratixv_hssi_tx_pld_pcs_interface_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		data_source	:	string	:=	"pld";
		is_10g_0ppm	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		use_default_base_address	:	string	:=	"true";
		is_8g_0ppm	:	string	:=	"false"
	);
	port	(
		asynchdatain	:	out	std_logic := '0';
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clockinfrom10gpcs	:	in	std_logic := '0';
		clockinfrom8gpcs	:	in	std_logic := '0';
		datainfrompld	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataoutto10gpcs	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dataoutto8gpcs	:	out	std_logic_vector(43 downto 0) := "00000000000000000000000000000000000000000000";
		emsipenablediocsrrdydly	:	in	std_logic := '0';
		emsippcstxclkin	:	in	std_logic_vector(2 downto 0) := "000";
		emsippcstxclkout	:	out	std_logic_vector(2 downto 0) := "000";
		emsiptxin	:	in	std_logic_vector(103 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		emsiptxout	:	out	std_logic_vector(11 downto 0) := "000000000000";
		emsiptxspecialin	:	in	std_logic_vector(12 downto 0) := "0000000000000";
		emsiptxspecialout	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		pcs10gtxbitslip	:	out	std_logic_vector(6 downto 0) := "0000000";
		pcs10gtxbursten	:	out	std_logic := '0';
		pcs10gtxburstenexe	:	in	std_logic := '0';
		pcs10gtxcontrol	:	out	std_logic_vector(8 downto 0) := "000000000";
		pcs10gtxdatavalid	:	out	std_logic := '0';
		pcs10gtxdiagstatus	:	out	std_logic_vector(1 downto 0) := "00";
		pcs10gtxempty	:	in	std_logic := '0';
		pcs10gtxfifodel	:	in	std_logic := '0';
		pcs10gtxfifoinsert	:	in	std_logic := '0';
		pcs10gtxframe	:	in	std_logic := '0';
		pcs10gtxfull	:	in	std_logic := '0';
		pcs10gtxpempty	:	in	std_logic := '0';
		pcs10gtxpfull	:	in	std_logic := '0';
		pcs10gtxpldclk	:	out	std_logic := '0';
		pcs10gtxpldrstn	:	out	std_logic := '0';
		pcs10gtxwordslip	:	out	std_logic := '0';
		pcs10gtxwordslipexe	:	in	std_logic := '0';
		pcs8gemptytx	:	in	std_logic := '0';
		pcs8gfulltx	:	in	std_logic := '0';
		pcs8gphfifoursttx	:	out	std_logic := '0';
		pcs8gpldtxclk	:	out	std_logic := '0';
		pcs8gpolinvtx	:	out	std_logic := '0';
		pcs8grddisabletx	:	out	std_logic := '0';
		pcs8grevloopbk	:	out	std_logic := '0';
		pcs8gtxblkstart	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gtxboundarysel	:	out	std_logic_vector(4 downto 0) := "00000";
		pcs8gtxdatavalid	:	out	std_logic_vector(3 downto 0) := "0000";
		pcs8gtxsynchdr	:	out	std_logic_vector(1 downto 0) := "00";
		pcs8gtxurstpcs	:	out	std_logic := '0';
		pcs8gwrenabletx	:	out	std_logic := '0';
		pcsgen3txrst	:	out	std_logic := '0';
		pcsgen3txrstn	:	out	std_logic := '0';
		pld10gtxbitslip	:	in	std_logic_vector(6 downto 0) := "0000000";
		pld10gtxbursten	:	in	std_logic := '0';
		pld10gtxburstenexe	:	out	std_logic := '0';
		pld10gtxclkout	:	out	std_logic := '0';
		pld10gtxcontrol	:	in	std_logic_vector(8 downto 0) := "000000000";
		pld10gtxdatavalid	:	in	std_logic := '0';
		pld10gtxdiagstatus	:	in	std_logic_vector(1 downto 0) := "00";
		pld10gtxempty	:	out	std_logic := '0';
		pld10gtxfifodel	:	out	std_logic := '0';
		pld10gtxfifoinsert	:	out	std_logic := '0';
		pld10gtxframe	:	out	std_logic := '0';
		pld10gtxfull	:	out	std_logic := '0';
		pld10gtxpempty	:	out	std_logic := '0';
		pld10gtxpfull	:	out	std_logic := '0';
		pld10gtxpldclk	:	in	std_logic := '0';
		pld10gtxpldrstn	:	in	std_logic := '0';
		pld10gtxwordslip	:	in	std_logic := '0';
		pld10gtxwordslipexe	:	out	std_logic := '0';
		pld8gemptytx	:	out	std_logic := '0';
		pld8gfulltx	:	out	std_logic := '0';
		pld8gphfifoursttxn	:	in	std_logic := '0';
		pld8gpldtxclk	:	in	std_logic := '0';
		pld8gpolinvtx	:	in	std_logic := '0';
		pld8grddisabletx	:	in	std_logic := '0';
		pld8grevloopbk	:	in	std_logic := '0';
		pld8gtxblkstart	:	in	std_logic_vector(3 downto 0) := "0000";
		pld8gtxboundarysel	:	in	std_logic_vector(4 downto 0) := "00000";
		pld8gtxclkout	:	out	std_logic := '0';
		pld8gtxdatavalid	:	in	std_logic_vector(3 downto 0) := "0000";
		pld8gtxsynchdr	:	in	std_logic_vector(1 downto 0) := "00";
		pld8gtxurstpcsn	:	in	std_logic := '0';
		pld8gwrenabletx	:	in	std_logic := '0';
		pldclkdiv33lc	:	out	std_logic := '0';
		pldgen3txrstn	:	in	std_logic := '0';
		pldlccmurstbout	:	out	std_logic := '0';
		pldtxiqclkout	:	out	std_logic := '0';
		pldtxpmasyncpfbkpout	:	out	std_logic := '0';
		pmaclkdiv33lc	:	in	std_logic := '0';
		pmatxcmuplllock	:	in	std_logic := '0';
		pmatxlcplllock	:	in	std_logic := '0';
		reset	:	out	std_logic := '0';
		rstsel	:	in	std_logic := '0';
		usrrstsel	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_tx_pld_pcs_interface_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		data_source	=>	data_source,
		is_10g_0ppm	=>	is_10g_0ppm,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		use_default_base_address	=>	use_default_base_address,
		is_8g_0ppm	=>	is_8g_0ppm
	)
	port map	(
		asynchdatain	=>	asynchdatain,
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clockinfrom10gpcs	=>	clockinfrom10gpcs,
		clockinfrom8gpcs	=>	clockinfrom8gpcs,
		datainfrompld	=>	datainfrompld,
		dataoutto10gpcs	=>	dataoutto10gpcs,
		dataoutto8gpcs	=>	dataoutto8gpcs,
		emsipenablediocsrrdydly	=>	emsipenablediocsrrdydly,
		emsippcstxclkin	=>	emsippcstxclkin,
		emsippcstxclkout	=>	emsippcstxclkout,
		emsiptxin	=>	emsiptxin,
		emsiptxout	=>	emsiptxout,
		emsiptxspecialin	=>	emsiptxspecialin,
		emsiptxspecialout	=>	emsiptxspecialout,
		pcs10gtxbitslip	=>	pcs10gtxbitslip,
		pcs10gtxbursten	=>	pcs10gtxbursten,
		pcs10gtxburstenexe	=>	pcs10gtxburstenexe,
		pcs10gtxcontrol	=>	pcs10gtxcontrol,
		pcs10gtxdatavalid	=>	pcs10gtxdatavalid,
		pcs10gtxdiagstatus	=>	pcs10gtxdiagstatus,
		pcs10gtxempty	=>	pcs10gtxempty,
		pcs10gtxfifodel	=>	pcs10gtxfifodel,
		pcs10gtxfifoinsert	=>	pcs10gtxfifoinsert,
		pcs10gtxframe	=>	pcs10gtxframe,
		pcs10gtxfull	=>	pcs10gtxfull,
		pcs10gtxpempty	=>	pcs10gtxpempty,
		pcs10gtxpfull	=>	pcs10gtxpfull,
		pcs10gtxpldclk	=>	pcs10gtxpldclk,
		pcs10gtxpldrstn	=>	pcs10gtxpldrstn,
		pcs10gtxwordslip	=>	pcs10gtxwordslip,
		pcs10gtxwordslipexe	=>	pcs10gtxwordslipexe,
		pcs8gemptytx	=>	pcs8gemptytx,
		pcs8gfulltx	=>	pcs8gfulltx,
		pcs8gphfifoursttx	=>	pcs8gphfifoursttx,
		pcs8gpldtxclk	=>	pcs8gpldtxclk,
		pcs8gpolinvtx	=>	pcs8gpolinvtx,
		pcs8grddisabletx	=>	pcs8grddisabletx,
		pcs8grevloopbk	=>	pcs8grevloopbk,
		pcs8gtxblkstart	=>	pcs8gtxblkstart,
		pcs8gtxboundarysel	=>	pcs8gtxboundarysel,
		pcs8gtxdatavalid	=>	pcs8gtxdatavalid,
		pcs8gtxsynchdr	=>	pcs8gtxsynchdr,
		pcs8gtxurstpcs	=>	pcs8gtxurstpcs,
		pcs8gwrenabletx	=>	pcs8gwrenabletx,
		pcsgen3txrst	=>	pcsgen3txrst,
		pcsgen3txrstn	=>	pcsgen3txrstn,
		pld10gtxbitslip	=>	pld10gtxbitslip,
		pld10gtxbursten	=>	pld10gtxbursten,
		pld10gtxburstenexe	=>	pld10gtxburstenexe,
		pld10gtxclkout	=>	pld10gtxclkout,
		pld10gtxcontrol	=>	pld10gtxcontrol,
		pld10gtxdatavalid	=>	pld10gtxdatavalid,
		pld10gtxdiagstatus	=>	pld10gtxdiagstatus,
		pld10gtxempty	=>	pld10gtxempty,
		pld10gtxfifodel	=>	pld10gtxfifodel,
		pld10gtxfifoinsert	=>	pld10gtxfifoinsert,
		pld10gtxframe	=>	pld10gtxframe,
		pld10gtxfull	=>	pld10gtxfull,
		pld10gtxpempty	=>	pld10gtxpempty,
		pld10gtxpfull	=>	pld10gtxpfull,
		pld10gtxpldclk	=>	pld10gtxpldclk,
		pld10gtxpldrstn	=>	pld10gtxpldrstn,
		pld10gtxwordslip	=>	pld10gtxwordslip,
		pld10gtxwordslipexe	=>	pld10gtxwordslipexe,
		pld8gemptytx	=>	pld8gemptytx,
		pld8gfulltx	=>	pld8gfulltx,
		pld8gphfifoursttxn	=>	pld8gphfifoursttxn,
		pld8gpldtxclk	=>	pld8gpldtxclk,
		pld8gpolinvtx	=>	pld8gpolinvtx,
		pld8grddisabletx	=>	pld8grddisabletx,
		pld8grevloopbk	=>	pld8grevloopbk,
		pld8gtxblkstart	=>	pld8gtxblkstart,
		pld8gtxboundarysel	=>	pld8gtxboundarysel,
		pld8gtxclkout	=>	pld8gtxclkout,
		pld8gtxdatavalid	=>	pld8gtxdatavalid,
		pld8gtxsynchdr	=>	pld8gtxsynchdr,
		pld8gtxurstpcsn	=>	pld8gtxurstpcsn,
		pld8gwrenabletx	=>	pld8gwrenabletx,
		pldclkdiv33lc	=>	pldclkdiv33lc,
		pldgen3txrstn	=>	pldgen3txrstn,
		pldlccmurstbout	=>	pldlccmurstbout,
		pldtxiqclkout	=>	pldtxiqclkout,
		pldtxpmasyncpfbkpout	=>	pldtxpmasyncpfbkpout,
		pmaclkdiv33lc	=>	pmaclkdiv33lc,
		pmatxcmuplllock	=>	pmatxcmuplllock,
		pmatxlcplllock	=>	pmatxlcplllock,
		reset	=>	reset,
		rstsel	=>	rstsel,
		usrrstsel	=>	usrrstsel
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_10g_rx_pcs	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		stretch_en	:	string	:=	"stretch_en";
		rxfifo_empty	:	integer	:=	0;
		rx_sm_pipeln	:	string	:=	"rx_sm_pipeln_dis";
		bit_reverse	:	string	:=	"bit_reverse_dis";
		rx_testbus_sel	:	string	:=	"crc32_chk_testbus1";
		rx_signal_ok_sel	:	string	:=	"synchronized_ver";
		force_align	:	string	:=	"force_align_dis";
		rx_scrm_width	:	string	:=	"bit64";
		lpbk_mode	:	string	:=	"lpbk_dis";
		ber_xus_timer_window_user	:	bit_vector	:=	B"100110001001010";
		frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
		blksync_bypass	:	string	:=	"blksync_bypass_dis";
		rx_true_b2b	:	string	:=	"b2b";
		wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
		gb_rx_idwidth	:	string	:=	"width_32";
		descrm_clken	:	string	:=	"descrm_clk_dis";
		ber_xus_timer_window	:	string	:=	"xus_timer_window_10g";
		frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
		rx_sm_hiber	:	string	:=	"rx_sm_hiber_en";
		frmsync_flag_type	:	string	:=	"all_framing_words";
		blksync_pipeln	:	string	:=	"blksync_pipeln_dis";
		rx_polarity_inv	:	string	:=	"invert_disable";
		prbs_clken	:	string	:=	"prbs_clk_dis";
		ber_clken	:	string	:=	"ber_clk_dis";
		rand_clken	:	string	:=	"rand_clk_dis";
		rxfifo_mode	:	string	:=	"phase_comp";
		rx_dfx_lpbk	:	string	:=	"dfx_lpbk_dis";
		rxfifo_pfull	:	integer	:=	23;
		gb_sel_mode	:	string	:=	"internal";
		bitslip_wait_cnt_user	:	integer	:=	1;
		blksync_bitslip_type	:	string	:=	"bitslip_comb";
		ber_bit_err_total_cnt	:	string	:=	"bit_err_total_cnt_10g";
		align_del	:	string	:=	"align_del_en";
		test_bus_mode	:	string	:=	"tx";
		sup_mode	:	string	:=	"user_mode";
		dispchk_rd_level_user	:	bit_vector	:=	B"1100000";
		dis_signal_ok	:	string	:=	"dis_signal_ok_dis";
		frmsync_clken	:	string	:=	"frmsync_clk_dis";
		use_default_base_address	:	string	:=	"true";
		frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
		iqtxrx_clkout_sel	:	string	:=	"iq_rx_clk_out";
		frmsync_pipeln	:	string	:=	"frmsync_pipeln_dis";
		descrm_mode	:	string	:=	"async";
		rxfifo_full	:	integer	:=	31;
		fast_path	:	string	:=	"fast_path_dis";
		dispchk_bypass	:	string	:=	"dispchk_bypass_dis";
		rx_prbs_mask	:	string	:=	"prbsmask128";
		rxfifo_pempty	:	integer	:=	7;
		master_clk_sel	:	string	:=	"master_rx_pma_clk";
		frmsync_enum_sync	:	string	:=	"enum_sync_default";
		crcchk_clken	:	string	:=	"crcchk_clk_dis";
		blksync_bitslip_wait_cnt	:	string	:=	"bitslip_wait_cnt_min";
		skip_ctrl	:	string	:=	"skip_ctrl_default";
		gbexp_clken	:	string	:=	"gbexp_clk_dis";
		dispchk_rd_level	:	string	:=	"dispchk_rd_level_min";
		frmsync_bypass	:	string	:=	"frmsync_bypass_dis";
		blksync_bitslip_wait_type	:	string	:=	"bitslip_match";
		rx_sh_location	:	string	:=	"lsb";
		frmsync_knum_sync	:	string	:=	"knum_sync_default";
		dec64b66b_clken	:	string	:=	"dec64b66b_clk_dis";
		user_base_address	:	integer	:=	0;
		descrm_bypass	:	string	:=	"descrm_bypass_en";
		frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
		frmsync_mfrm_length	:	string	:=	"frmsync_mfrm_length_min";
		blksync_clken	:	string	:=	"blksync_clk_dis";
		crcchk_bypass	:	string	:=	"crcchk_bypass_dis";
		frmsync_mfrm_length_user	:	integer	:=	2048;
		rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
		crcchk_inv	:	string	:=	"crcchk_inv_dis";
		blksync_knum_sh_cnt_prelock	:	string	:=	"knum_sh_cnt_prelock_10g";
		blksync_knum_sh_cnt_postlock	:	string	:=	"knum_sh_cnt_postlock_10g";
		dispchk_clken	:	string	:=	"dispchk_clk_dis";
		dispchk_pipeln	:	string	:=	"dispchk_pipeln_dis";
		crcflag_pipeln	:	string	:=	"crcflag_pipeln_dis";
		avmm_group_channel_index	:	integer	:=	0;
		gb_rx_odwidth	:	string	:=	"width_66";
		stretch_num_stages	:	string	:=	"zero_stage";
		control_del	:	string	:=	"control_del_all";
		blksync_enum_invalid_sh_cnt	:	string	:=	"enum_invalid_sh_cnt_10g";
		dec_64b66b_rxsm_bypass	:	string	:=	"dec_64b66b_rxsm_bypass_dis";
		channel_number	:	integer	:=	0;
		crcchk_init_user	:	string	:=	"11111111111111111111111111111111";
		rd_clk_sel	:	string	:=	"rd_rx_pma_clk";
		frmsync_enum_scrm	:	string	:=	"enum_scrm_default";
		crcchk_pipeln	:	string	:=	"crcchk_pipeln_dis";
		test_mode	:	string	:=	"test_off";
		prot_mode	:	string	:=	"disable_mode";
		crcchk_init	:	string	:=	"crcchk_init_user_setting";
		rx_fifo_write_ctrl	:	string	:=	"blklock_stops";
		bitslip_mode	:	string	:=	"bitslip_dis";
		rx_sm_bypass	:	string	:=	"rx_sm_bypass_dis";
		silicon_rev	:	string	:=	"reve";
		stretch_type	:	string	:=	"stretch_auto";
		full_flag_type	:	string	:=	"full_wr_side";
		ctrl_bit_reverse	:	string	:=	"ctrl_bit_reverse_dis";
		empty_flag_type	:	string	:=	"empty_rd_side";
		fifo_stop_wr	:	string	:=	"n_wr_full";
		blksync_bitslip_wait_cnt_user	:	bit_vector	:=	B"1";
		pfull_flag_type	:	string	:=	"pfull_wr_side";
		pempty_flag_type	:	string	:=	"pempty_rd_side";
		data_bit_reverse	:	string	:=	"data_bit_reverse_dis";
		fifo_stop_rd	:	string	:=	"n_rd_empty"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		dfxlpbkcontrolin	:	in	std_logic_vector(9 downto 0) := "0000000000";
		dfxlpbkdatain	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dfxlpbkdatavalidin	:	in	std_logic := '0';
		hardresetn	:	in	std_logic := '0';
		lpbkdatain	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pmaclkdiv33txorrx	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		rxalignclr	:	in	std_logic := '0';
		rxalignen	:	in	std_logic := '0';
		rxalignval	:	out	std_logic := '0';
		rxbitslip	:	in	std_logic := '0';
		rxblocklock	:	out	std_logic := '0';
		rxclkiqout	:	out	std_logic := '0';
		rxclkout	:	out	std_logic := '0';
		rxclrbercount	:	in	std_logic := '0';
		rxclrerrorblockcount	:	in	std_logic := '0';
		rxcontrol	:	out	std_logic_vector(9 downto 0) := "0000000000";
		rxcrc32error	:	out	std_logic := '0';
		rxdata	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		rxdatavalid	:	out	std_logic := '0';
		rxdiagnosticerror	:	out	std_logic := '0';
		rxdiagnosticstatus	:	out	std_logic_vector(1 downto 0) := "00";
		rxdisparityclr	:	in	std_logic := '0';
		rxfifodel	:	out	std_logic := '0';
		rxfifoempty	:	out	std_logic := '0';
		rxfifofull	:	out	std_logic := '0';
		rxfifoinsert	:	out	std_logic := '0';
		rxfifopartialempty	:	out	std_logic := '0';
		rxfifopartialfull	:	out	std_logic := '0';
		rxframelock	:	out	std_logic := '0';
		rxhighber	:	out	std_logic := '0';
		rxmetaframeerror	:	out	std_logic := '0';
		rxpayloadinserted	:	out	std_logic := '0';
		rxpldclk	:	in	std_logic := '0';
		rxpldrstn	:	in	std_logic := '0';
		rxpmaclk	:	in	std_logic := '0';
		rxpmadata	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		rxpmadatavalid	:	in	std_logic := '0';
		rxprbsdone	:	out	std_logic := '0';
		rxprbserr	:	out	std_logic := '0';
		rxprbserrorclr	:	in	std_logic := '0';
		rxrden	:	in	std_logic := '0';
		rxrdnegsts	:	out	std_logic := '0';
		rxrdpossts	:	out	std_logic := '0';
		rxrxframe	:	out	std_logic := '0';
		rxscramblererror	:	out	std_logic := '0';
		rxskipinserted	:	out	std_logic := '0';
		rxskipworderror	:	out	std_logic := '0';
		rxsyncheadererror	:	out	std_logic := '0';
		rxsyncworderror	:	out	std_logic := '0';
		rxtestdata	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
		syncdatain	:	out	std_logic := '0';
		txpmaclk	:	in	std_logic := '0'
	);
end	stratixv_hssi_10g_rx_pcs;

architecture behavior of stratixv_hssi_10g_rx_pcs is

constant ber_xus_timer_window_user_int	:	integer	:= bin2int(ber_xus_timer_window_user);
constant dispchk_rd_level_user_int	:	integer	:= bin2int(dispchk_rd_level_user);
constant blksync_bitslip_wait_cnt_user_int	:	integer	:=bin2int(blksync_bitslip_wait_cnt_user);

-- ES component declaration
component	stratixv_hssi_10g_rx_pcs_encrypted_ES
generic	(
	enable_debug_info	:	string	:=	"false";
	stretch_en	:	string	:=	"stretch_en";
	rxfifo_empty	:	integer	:=	0;
	rx_sm_pipeln	:	string	:=	"rx_sm_pipeln_dis";
	bit_reverse	:	string	:=	"bit_reverse_dis";
	rx_testbus_sel	:	string	:=	"crc32_chk_testbus1";
	rx_signal_ok_sel	:	string	:=	"synchronized_ver";
	force_align	:	string	:=	"force_align_dis";
	rx_scrm_width	:	string	:=	"bit64";
	lpbk_mode	:	string	:=	"lpbk_dis";
	ber_xus_timer_window_user	:	integer	:=	19530;
	frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
	blksync_bypass	:	string	:=	"blksync_bypass_dis";
	rx_true_b2b	:	string	:=	"b2b";
	wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
	gb_rx_idwidth	:	string	:=	"width_32";
	descrm_clken	:	string	:=	"descrm_clk_dis";
	ber_xus_timer_window	:	string	:=	"xus_timer_window_10g";
	frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
	rx_sm_hiber	:	string	:=	"rx_sm_hiber_en";
	frmsync_flag_type	:	string	:=	"all_framing_words";
	blksync_pipeln	:	string	:=	"blksync_pipeln_dis";
	rx_polarity_inv	:	string	:=	"invert_disable";
	prbs_clken	:	string	:=	"prbs_clk_dis";
	ber_clken	:	string	:=	"ber_clk_dis";
	rand_clken	:	string	:=	"rand_clk_dis";
	rxfifo_mode	:	string	:=	"phase_comp";
	rx_dfx_lpbk	:	string	:=	"dfx_lpbk_dis";
	rxfifo_pfull	:	integer	:=	23;
	gb_sel_mode	:	string	:=	"internal";
	bitslip_wait_cnt_user	:	integer	:=	1;
	blksync_bitslip_type	:	string	:=	"bitslip_comb";
	ber_bit_err_total_cnt	:	string	:=	"bit_err_total_cnt_10g";
	align_del	:	string	:=	"align_del_en";
	test_bus_mode	:	string	:=	"tx";
	sup_mode	:	string	:=	"user_mode";
	dispchk_rd_level_user	:	integer	:=	96;
	dis_signal_ok	:	string	:=	"dis_signal_ok_dis";
	frmsync_clken	:	string	:=	"frmsync_clk_dis";
	use_default_base_address	:	string	:=	"true";
	frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
	iqtxrx_clkout_sel	:	string	:=	"iq_rx_clk_out";
	frmsync_pipeln	:	string	:=	"frmsync_pipeln_dis";
	descrm_mode	:	string	:=	"async";
	rxfifo_full	:	integer	:=	31;
	fast_path	:	string	:=	"fast_path_dis";
	dispchk_bypass	:	string	:=	"dispchk_bypass_dis";
	rx_prbs_mask	:	string	:=	"prbsmask128";
	rxfifo_pempty	:	integer	:=	7;
	master_clk_sel	:	string	:=	"master_rx_pma_clk";
	frmsync_enum_sync	:	string	:=	"enum_sync_default";
	crcchk_clken	:	string	:=	"crcchk_clk_dis";
	blksync_bitslip_wait_cnt	:	string	:=	"bitslip_wait_cnt_min";
	skip_ctrl	:	string	:=	"skip_ctrl_default";
	gbexp_clken	:	string	:=	"gbexp_clk_dis";
	dispchk_rd_level	:	string	:=	"dispchk_rd_level_min";
	frmsync_bypass	:	string	:=	"frmsync_bypass_dis";
	blksync_bitslip_wait_type	:	string	:=	"bitslip_match";
	rx_sh_location	:	string	:=	"lsb";
	frmsync_knum_sync	:	string	:=	"knum_sync_default";
	dec64b66b_clken	:	string	:=	"dec64b66b_clk_dis";
	user_base_address	:	integer	:=	0;
	descrm_bypass	:	string	:=	"descrm_bypass_en";
	frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
	frmsync_mfrm_length	:	string	:=	"frmsync_mfrm_length_min";
	blksync_clken	:	string	:=	"blksync_clk_dis";
	crcchk_bypass	:	string	:=	"crcchk_bypass_dis";
	frmsync_mfrm_length_user	:	integer	:=	2048;
	rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
	crcchk_inv	:	string	:=	"crcchk_inv_dis";
	blksync_knum_sh_cnt_prelock	:	string	:=	"knum_sh_cnt_prelock_10g";
	blksync_knum_sh_cnt_postlock	:	string	:=	"knum_sh_cnt_postlock_10g";
	dispchk_clken	:	string	:=	"dispchk_clk_dis";
	dispchk_pipeln	:	string	:=	"dispchk_pipeln_dis";
	crcflag_pipeln	:	string	:=	"crcflag_pipeln_dis";
	avmm_group_channel_index	:	integer	:=	0;
	gb_rx_odwidth	:	string	:=	"width_66";
	stretch_num_stages	:	string	:=	"zero_stage";
	control_del	:	string	:=	"control_del_all";
	blksync_enum_invalid_sh_cnt	:	string	:=	"enum_invalid_sh_cnt_10g";
	dec_64b66b_rxsm_bypass	:	string	:=	"dec_64b66b_rxsm_bypass_dis";
	channel_number	:	integer	:=	0;
	crcchk_init_user	:	string	:=	"11111111111111111111111111111111";
	rd_clk_sel	:	string	:=	"rd_rx_pma_clk";
	frmsync_enum_scrm	:	string	:=	"enum_scrm_default";
	crcchk_pipeln	:	string	:=	"crcchk_pipeln_dis";
	test_mode	:	string	:=	"test_off";
	prot_mode	:	string	:=	"disable_mode";
	crcchk_init	:	string	:=	"crcchk_init_user_setting";
	rx_fifo_write_ctrl	:	string	:=	"blklock_stops";
	bitslip_mode	:	string	:=	"bitslip_dis";
	rx_sm_bypass	:	string	:=	"rx_sm_bypass_dis"
);
port	(
	avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
	avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
	avmmclk	:	in	std_logic := '0';
	avmmread	:	in	std_logic := '0';
	avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
	avmmrstn	:	in	std_logic := '0';
	avmmwrite	:	in	std_logic := '0';
	avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
	blockselect	:	out	std_logic := '0';
	dfxlpbkcontrolin	:	in	std_logic_vector(9 downto 0) := "0000000000";
	dfxlpbkdatain	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
	dfxlpbkdatavalidin	:	in	std_logic := '0';
	hardresetn	:	in	std_logic := '0';
	lpbkdatain	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
	pmaclkdiv33txorrx	:	in	std_logic := '0';
	refclkdig	:	in	std_logic := '0';
	rxalignclr	:	in	std_logic := '0';
	rxalignen	:	in	std_logic := '0';
	rxalignval	:	out	std_logic := '0';
	rxbitslip	:	in	std_logic := '0';
	rxblocklock	:	out	std_logic := '0';
	rxclkiqout	:	out	std_logic := '0';
	rxclkout	:	out	std_logic := '0';
	rxclrbercount	:	in	std_logic := '0';
	rxclrerrorblockcount	:	in	std_logic := '0';
	rxcontrol	:	out	std_logic_vector(9 downto 0) := "0000000000";
	rxcrc32error	:	out	std_logic := '0';
	rxdata	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
	rxdatavalid	:	out	std_logic := '0';
	rxdiagnosticerror	:	out	std_logic := '0';
	rxdiagnosticstatus	:	out	std_logic_vector(1 downto 0) := "00";
	rxdisparityclr	:	in	std_logic := '0';
	rxfifodel	:	out	std_logic := '0';
	rxfifoempty	:	out	std_logic := '0';
	rxfifofull	:	out	std_logic := '0';
	rxfifoinsert	:	out	std_logic := '0';
	rxfifopartialempty	:	out	std_logic := '0';
	rxfifopartialfull	:	out	std_logic := '0';
	rxframelock	:	out	std_logic := '0';
	rxhighber	:	out	std_logic := '0';
	rxmetaframeerror	:	out	std_logic := '0';
	rxpayloadinserted	:	out	std_logic := '0';
	rxpldclk	:	in	std_logic := '0';
	rxpldrstn	:	in	std_logic := '0';
	rxpmaclk	:	in	std_logic := '0';
	rxpmadata	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
	rxpmadatavalid	:	in	std_logic := '0';
	rxprbsdone	:	out	std_logic := '0';
	rxprbserr	:	out	std_logic := '0';
	rxprbserrorclr	:	in	std_logic := '0';
	rxrden	:	in	std_logic := '0';
	rxrdnegsts	:	out	std_logic := '0';
	rxrdpossts	:	out	std_logic := '0';
	rxrxframe	:	out	std_logic := '0';
	rxscramblererror	:	out	std_logic := '0';
	rxskipinserted	:	out	std_logic := '0';
	rxskipworderror	:	out	std_logic := '0';
	rxsyncheadererror	:	out	std_logic := '0';
	rxsyncworderror	:	out	std_logic := '0';
	rxtestdata	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
	syncdatain	:	out	std_logic := '0';
	txpmaclk	:	in	std_logic := '0'
);
end component;
-- End ES component declaration

-- REVE component declaration
component	stratixv_hssi_10g_rx_pcs_encrypted
generic	(
	enable_debug_info	:	string	:=	"false";
	stretch_en	:	string	:=	"stretch_en";
	rxfifo_empty	:	integer	:=	0;
	rx_sm_pipeln	:	string	:=	"rx_sm_pipeln_dis";
	bit_reverse	:	string	:=	"bit_reverse_dis";
	rx_testbus_sel	:	string	:=	"crc32_chk_testbus1";
	rx_signal_ok_sel	:	string	:=	"synchronized_ver";
	force_align	:	string	:=	"force_align_dis";
	rx_scrm_width	:	string	:=	"bit64";
	lpbk_mode	:	string	:=	"lpbk_dis";
	ber_xus_timer_window_user	:	integer	:=	19530;
	frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
	blksync_bypass	:	string	:=	"blksync_bypass_dis";
	rx_true_b2b	:	string	:=	"b2b";
	wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
	gb_rx_idwidth	:	string	:=	"width_32";
	descrm_clken	:	string	:=	"descrm_clk_dis";
	ber_xus_timer_window	:	string	:=	"xus_timer_window_10g";
	frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
	rx_sm_hiber	:	string	:=	"rx_sm_hiber_en";
	frmsync_flag_type	:	string	:=	"all_framing_words";
	blksync_pipeln	:	string	:=	"blksync_pipeln_dis";
	rx_polarity_inv	:	string	:=	"invert_disable";
	prbs_clken	:	string	:=	"prbs_clk_dis";
	ber_clken	:	string	:=	"ber_clk_dis";
	rand_clken	:	string	:=	"rand_clk_dis";
	rxfifo_mode	:	string	:=	"phase_comp";
	rx_dfx_lpbk	:	string	:=	"dfx_lpbk_dis";
	rxfifo_pfull	:	integer	:=	23;
	gb_sel_mode	:	string	:=	"internal";
	bitslip_wait_cnt_user	:	integer	:=	1;
	blksync_bitslip_type	:	string	:=	"bitslip_comb";
	ber_bit_err_total_cnt	:	string	:=	"bit_err_total_cnt_10g";
	align_del	:	string	:=	"align_del_en";
	test_bus_mode	:	string	:=	"tx";
	sup_mode	:	string	:=	"user_mode";
	dispchk_rd_level_user	:	integer	:=	96;
	dis_signal_ok	:	string	:=	"dis_signal_ok_dis";
	frmsync_clken	:	string	:=	"frmsync_clk_dis";
	use_default_base_address	:	string	:=	"true";
	frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
	iqtxrx_clkout_sel	:	string	:=	"iq_rx_clk_out";
	frmsync_pipeln	:	string	:=	"frmsync_pipeln_dis";
	descrm_mode	:	string	:=	"async";
	rxfifo_full	:	integer	:=	31;
	fast_path	:	string	:=	"fast_path_dis";
	dispchk_bypass	:	string	:=	"dispchk_bypass_dis";
	rx_prbs_mask	:	string	:=	"prbsmask128";
	rxfifo_pempty	:	integer	:=	7;
	master_clk_sel	:	string	:=	"master_rx_pma_clk";
	frmsync_enum_sync	:	string	:=	"enum_sync_default";
	crcchk_clken	:	string	:=	"crcchk_clk_dis";
	blksync_bitslip_wait_cnt	:	string	:=	"bitslip_wait_cnt_min";
	skip_ctrl	:	string	:=	"skip_ctrl_default";
	gbexp_clken	:	string	:=	"gbexp_clk_dis";
	dispchk_rd_level	:	string	:=	"dispchk_rd_level_min";
	frmsync_bypass	:	string	:=	"frmsync_bypass_dis";
	blksync_bitslip_wait_type	:	string	:=	"bitslip_match";
	rx_sh_location	:	string	:=	"lsb";
	frmsync_knum_sync	:	string	:=	"knum_sync_default";
	dec64b66b_clken	:	string	:=	"dec64b66b_clk_dis";
	user_base_address	:	integer	:=	0;
	descrm_bypass	:	string	:=	"descrm_bypass_en";
	frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
	frmsync_mfrm_length	:	string	:=	"frmsync_mfrm_length_min";
	blksync_clken	:	string	:=	"blksync_clk_dis";
	crcchk_bypass	:	string	:=	"crcchk_bypass_dis";
	frmsync_mfrm_length_user	:	integer	:=	2048;
	rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
	crcchk_inv	:	string	:=	"crcchk_inv_dis";
	blksync_knum_sh_cnt_prelock	:	string	:=	"knum_sh_cnt_prelock_10g";
	blksync_knum_sh_cnt_postlock	:	string	:=	"knum_sh_cnt_postlock_10g";
	dispchk_clken	:	string	:=	"dispchk_clk_dis";
	dispchk_pipeln	:	string	:=	"dispchk_pipeln_dis";
	crcflag_pipeln	:	string	:=	"crcflag_pipeln_dis";
	avmm_group_channel_index	:	integer	:=	0;
	gb_rx_odwidth	:	string	:=	"width_66";
	stretch_num_stages	:	string	:=	"zero_stage";
	control_del	:	string	:=	"control_del_all";
	blksync_enum_invalid_sh_cnt	:	string	:=	"enum_invalid_sh_cnt_10g";
	dec_64b66b_rxsm_bypass	:	string	:=	"dec_64b66b_rxsm_bypass_dis";
	channel_number	:	integer	:=	0;
	crcchk_init_user	:	string	:=	"11111111111111111111111111111111";
	rd_clk_sel	:	string	:=	"rd_rx_pma_clk";
	frmsync_enum_scrm	:	string	:=	"enum_scrm_default";
	crcchk_pipeln	:	string	:=	"crcchk_pipeln_dis";
	test_mode	:	string	:=	"test_off";
	prot_mode	:	string	:=	"disable_mode";
	crcchk_init	:	string	:=	"crcchk_init_user_setting";
	rx_fifo_write_ctrl	:	string	:=	"blklock_stops";
	bitslip_mode	:	string	:=	"bitslip_dis";
	rx_sm_bypass	:	string	:=	"rx_sm_bypass_dis";
	stretch_type	:	string	:=	"stretch_auto";
	full_flag_type	:	string	:=	"full_wr_side";
	ctrl_bit_reverse	:	string	:=	"ctrl_bit_reverse_dis";
	empty_flag_type	:	string	:=	"empty_rd_side";
	fifo_stop_wr	:	string	:=	"n_wr_full";
	blksync_bitslip_wait_cnt_user	:	integer	:=	1;
	pfull_flag_type	:	string	:=	"pfull_wr_side";
	pempty_flag_type	:	string	:=	"pempty_rd_side";
	data_bit_reverse	:	string	:=	"data_bit_reverse_dis";
	fifo_stop_rd	:	string	:=	"n_rd_empty"
);
port	(
	avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
	avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
	avmmclk	:	in	std_logic := '0';
	avmmread	:	in	std_logic := '0';
	avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
	avmmrstn	:	in	std_logic := '0';
	avmmwrite	:	in	std_logic := '0';
	avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
	blockselect	:	out	std_logic := '0';
	dfxlpbkcontrolin	:	in	std_logic_vector(9 downto 0) := "0000000000";
	dfxlpbkdatain	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
	dfxlpbkdatavalidin	:	in	std_logic := '0';
	hardresetn	:	in	std_logic := '0';
	lpbkdatain	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
	pmaclkdiv33txorrx	:	in	std_logic := '0';
	refclkdig	:	in	std_logic := '0';
	rxalignclr	:	in	std_logic := '0';
	rxalignen	:	in	std_logic := '0';
	rxalignval	:	out	std_logic := '0';
	rxbitslip	:	in	std_logic := '0';
	rxblocklock	:	out	std_logic := '0';
	rxclkiqout	:	out	std_logic := '0';
	rxclkout	:	out	std_logic := '0';
	rxclrbercount	:	in	std_logic := '0';
	rxclrerrorblockcount	:	in	std_logic := '0';
	rxcontrol	:	out	std_logic_vector(9 downto 0) := "0000000000";
	rxcrc32error	:	out	std_logic := '0';
	rxdata	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
	rxdatavalid	:	out	std_logic := '0';
	rxdiagnosticerror	:	out	std_logic := '0';
	rxdiagnosticstatus	:	out	std_logic_vector(1 downto 0) := "00";
	rxdisparityclr	:	in	std_logic := '0';
	rxfifodel	:	out	std_logic := '0';
	rxfifoempty	:	out	std_logic := '0';
	rxfifofull	:	out	std_logic := '0';
	rxfifoinsert	:	out	std_logic := '0';
	rxfifopartialempty	:	out	std_logic := '0';
	rxfifopartialfull	:	out	std_logic := '0';
	rxframelock	:	out	std_logic := '0';
	rxhighber	:	out	std_logic := '0';
	rxmetaframeerror	:	out	std_logic := '0';
	rxpayloadinserted	:	out	std_logic := '0';
	rxpldclk	:	in	std_logic := '0';
	rxpldrstn	:	in	std_logic := '0';
	rxpmaclk	:	in	std_logic := '0';
	rxpmadata	:	in	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
	rxpmadatavalid	:	in	std_logic := '0';
	rxprbsdone	:	out	std_logic := '0';
	rxprbserr	:	out	std_logic := '0';
	rxprbserrorclr	:	in	std_logic := '0';
	rxrden	:	in	std_logic := '0';
	rxrdnegsts	:	out	std_logic := '0';
	rxrdpossts	:	out	std_logic := '0';
	rxrxframe	:	out	std_logic := '0';
	rxscramblererror	:	out	std_logic := '0';
	rxskipinserted	:	out	std_logic := '0';
	rxskipworderror	:	out	std_logic := '0';
	rxsyncheadererror	:	out	std_logic := '0';
	rxsyncworderror	:	out	std_logic := '0';
	rxtestdata	:	out	std_logic_vector(19 downto 0) := "00000000000000000000";
	syncdatain	:	out	std_logic := '0';
	txpmaclk	:	in	std_logic := '0'
);
end component;
-- End REVE component declaration

begin

-- ES instantiation
ES : if ((silicon_rev = "es") or (silicon_rev = "ES")) generate begin
	inst : stratixv_hssi_10g_rx_pcs_encrypted_ES
		generic map	(
			enable_debug_info	=>	enable_debug_info,
			stretch_en	=>	stretch_en,
			rxfifo_empty	=>	rxfifo_empty,
			rx_sm_pipeln	=>	rx_sm_pipeln,
			bit_reverse	=>	bit_reverse,
			rx_testbus_sel	=>	rx_testbus_sel,
			rx_signal_ok_sel	=>	rx_signal_ok_sel,
			force_align	=>	force_align,
			rx_scrm_width	=>	rx_scrm_width,
			lpbk_mode	=>	lpbk_mode,
			ber_xus_timer_window_user	=>	ber_xus_timer_window_user_int,
			frmgen_scrm_word	=>	frmgen_scrm_word,
			blksync_bypass	=>	blksync_bypass,
			rx_true_b2b	=>	rx_true_b2b,
			wrfifo_clken	=>	wrfifo_clken,
			gb_rx_idwidth	=>	gb_rx_idwidth,
			descrm_clken	=>	descrm_clken,
			ber_xus_timer_window	=>	ber_xus_timer_window,
			frmgen_diag_word	=>	frmgen_diag_word,
			rx_sm_hiber	=>	rx_sm_hiber,
			frmsync_flag_type	=>	frmsync_flag_type,
			blksync_pipeln	=>	blksync_pipeln,
			rx_polarity_inv	=>	rx_polarity_inv,
			prbs_clken	=>	prbs_clken,
			ber_clken	=>	ber_clken,
			rand_clken	=>	rand_clken,
			rxfifo_mode	=>	rxfifo_mode,
			rx_dfx_lpbk	=>	rx_dfx_lpbk,
			rxfifo_pfull	=>	rxfifo_pfull,
			gb_sel_mode	=>	gb_sel_mode,
			bitslip_wait_cnt_user	=>	bitslip_wait_cnt_user,
			blksync_bitslip_type	=>	blksync_bitslip_type,
			ber_bit_err_total_cnt	=>	ber_bit_err_total_cnt,
			align_del	=>	align_del,
			test_bus_mode	=>	test_bus_mode,
			sup_mode	=>	sup_mode,
			dispchk_rd_level_user	=>	dispchk_rd_level_user_int,
			dis_signal_ok	=>	dis_signal_ok,
			frmsync_clken	=>	frmsync_clken,
			use_default_base_address	=>	use_default_base_address,
			frmgen_sync_word	=>	frmgen_sync_word,
			iqtxrx_clkout_sel	=>	iqtxrx_clkout_sel,
			frmsync_pipeln	=>	frmsync_pipeln,
			descrm_mode	=>	descrm_mode,
			rxfifo_full	=>	rxfifo_full,
			fast_path	=>	fast_path,
			dispchk_bypass	=>	dispchk_bypass,
			rx_prbs_mask	=>	rx_prbs_mask,
			rxfifo_pempty	=>	rxfifo_pempty,
			master_clk_sel	=>	master_clk_sel,
			frmsync_enum_sync	=>	frmsync_enum_sync,
			crcchk_clken	=>	crcchk_clken,
			blksync_bitslip_wait_cnt	=>	blksync_bitslip_wait_cnt,
			skip_ctrl	=>	skip_ctrl,
			gbexp_clken	=>	gbexp_clken,
			dispchk_rd_level	=>	dispchk_rd_level,
			frmsync_bypass	=>	frmsync_bypass,
			blksync_bitslip_wait_type	=>	blksync_bitslip_wait_type,
			rx_sh_location	=>	rx_sh_location,
			frmsync_knum_sync	=>	frmsync_knum_sync,
			dec64b66b_clken	=>	dec64b66b_clken,
			user_base_address	=>	user_base_address,
			descrm_bypass	=>	descrm_bypass,
			frmgen_skip_word	=>	frmgen_skip_word,
			frmsync_mfrm_length	=>	frmsync_mfrm_length,
			blksync_clken	=>	blksync_clken,
			crcchk_bypass	=>	crcchk_bypass,
			frmsync_mfrm_length_user	=>	frmsync_mfrm_length_user,
			rdfifo_clken	=>	rdfifo_clken,
			crcchk_inv	=>	crcchk_inv,
			blksync_knum_sh_cnt_prelock	=>	blksync_knum_sh_cnt_prelock,
			blksync_knum_sh_cnt_postlock	=>	blksync_knum_sh_cnt_postlock,
			dispchk_clken	=>	dispchk_clken,
			dispchk_pipeln	=>	dispchk_pipeln,
			crcflag_pipeln	=>	crcflag_pipeln,
			avmm_group_channel_index	=>	avmm_group_channel_index,
			gb_rx_odwidth	=>	gb_rx_odwidth,
			stretch_num_stages	=>	stretch_num_stages,
			control_del	=>	control_del,
			blksync_enum_invalid_sh_cnt	=>	blksync_enum_invalid_sh_cnt,
			dec_64b66b_rxsm_bypass	=>	dec_64b66b_rxsm_bypass,
			channel_number	=>	channel_number,
			crcchk_init_user	=>	crcchk_init_user,
			rd_clk_sel	=>	rd_clk_sel,
			frmsync_enum_scrm	=>	frmsync_enum_scrm,
			crcchk_pipeln	=>	crcchk_pipeln,
			test_mode	=>	test_mode,
			prot_mode	=>	prot_mode,
			crcchk_init	=>	crcchk_init,
			rx_fifo_write_ctrl	=>	rx_fifo_write_ctrl,
			bitslip_mode	=>	bitslip_mode,
			rx_sm_bypass	=>	rx_sm_bypass
		)
		port map	(
			avmmaddress	=>	avmmaddress,
			avmmbyteen	=>	avmmbyteen,
			avmmclk	=>	avmmclk,
			avmmread	=>	avmmread,
			avmmreaddata	=>	avmmreaddata,
			avmmrstn	=>	avmmrstn,
			avmmwrite	=>	avmmwrite,
			avmmwritedata	=>	avmmwritedata,
			blockselect	=>	blockselect,
			dfxlpbkcontrolin	=>	dfxlpbkcontrolin,
			dfxlpbkdatain	=>	dfxlpbkdatain,
			dfxlpbkdatavalidin	=>	dfxlpbkdatavalidin,
			hardresetn	=>	hardresetn,
			lpbkdatain	=>	lpbkdatain,
			pmaclkdiv33txorrx	=>	pmaclkdiv33txorrx,
			refclkdig	=>	refclkdig,
			rxalignclr	=>	rxalignclr,
			rxalignen	=>	rxalignen,
			rxalignval	=>	rxalignval,
			rxbitslip	=>	rxbitslip,
			rxblocklock	=>	rxblocklock,
			rxclkiqout	=>	rxclkiqout,
			rxclkout	=>	rxclkout,
			rxclrbercount	=>	rxclrbercount,
			rxclrerrorblockcount	=>	rxclrerrorblockcount,
			rxcontrol	=>	rxcontrol,
			rxcrc32error	=>	rxcrc32error,
			rxdata	=>	rxdata,
			rxdatavalid	=>	rxdatavalid,
			rxdiagnosticerror	=>	rxdiagnosticerror,
			rxdiagnosticstatus	=>	rxdiagnosticstatus,
			rxdisparityclr	=>	rxdisparityclr,
			rxfifodel	=>	rxfifodel,
			rxfifoempty	=>	rxfifoempty,
			rxfifofull	=>	rxfifofull,
			rxfifoinsert	=>	rxfifoinsert,
			rxfifopartialempty	=>	rxfifopartialempty,
			rxfifopartialfull	=>	rxfifopartialfull,
			rxframelock	=>	rxframelock,
			rxhighber	=>	rxhighber,
			rxmetaframeerror	=>	rxmetaframeerror,
			rxpayloadinserted	=>	rxpayloadinserted,
			rxpldclk	=>	rxpldclk,
			rxpldrstn	=>	rxpldrstn,
			rxpmaclk	=>	rxpmaclk,
			rxpmadata	=>	rxpmadata,
			rxpmadatavalid	=>	rxpmadatavalid,
			rxprbsdone	=>	rxprbsdone,
			rxprbserr	=>	rxprbserr,
			rxprbserrorclr	=>	rxprbserrorclr,
			rxrden	=>	rxrden,
			rxrdnegsts	=>	rxrdnegsts,
			rxrdpossts	=>	rxrdpossts,
			rxrxframe	=>	rxrxframe,
			rxscramblererror	=>	rxscramblererror,
			rxskipinserted	=>	rxskipinserted,
			rxskipworderror	=>	rxskipworderror,
			rxsyncheadererror	=>	rxsyncheadererror,
			rxsyncworderror	=>	rxsyncworderror,
			rxtestdata	=>	rxtestdata,
			syncdatain	=>	syncdatain,
			txpmaclk	=>	txpmaclk
		);
END generate;
-- End ES instantiation

-- REVE instantiation
REVE : if ((silicon_rev = "reve") or (silicon_rev = "REVE")) generate begin
	inst : stratixv_hssi_10g_rx_pcs_encrypted
		generic map	(
			enable_debug_info	=>	enable_debug_info,
			stretch_en	=>	stretch_en,
			rxfifo_empty	=>	rxfifo_empty,
			rx_sm_pipeln	=>	rx_sm_pipeln,
			bit_reverse	=>	bit_reverse,
			rx_testbus_sel	=>	rx_testbus_sel,
			rx_signal_ok_sel	=>	rx_signal_ok_sel,
			force_align	=>	force_align,
			rx_scrm_width	=>	rx_scrm_width,
			lpbk_mode	=>	lpbk_mode,
			ber_xus_timer_window_user	=>	ber_xus_timer_window_user_int,
			frmgen_scrm_word	=>	frmgen_scrm_word,
			blksync_bypass	=>	blksync_bypass,
			rx_true_b2b	=>	rx_true_b2b,
			wrfifo_clken	=>	wrfifo_clken,
			gb_rx_idwidth	=>	gb_rx_idwidth,
			descrm_clken	=>	descrm_clken,
			ber_xus_timer_window	=>	ber_xus_timer_window,
			frmgen_diag_word	=>	frmgen_diag_word,
			rx_sm_hiber	=>	rx_sm_hiber,
			frmsync_flag_type	=>	frmsync_flag_type,
			blksync_pipeln	=>	blksync_pipeln,
			rx_polarity_inv	=>	rx_polarity_inv,
			prbs_clken	=>	prbs_clken,
			ber_clken	=>	ber_clken,
			rand_clken	=>	rand_clken,
			rxfifo_mode	=>	rxfifo_mode,
			rx_dfx_lpbk	=>	rx_dfx_lpbk,
			rxfifo_pfull	=>	rxfifo_pfull,
			gb_sel_mode	=>	gb_sel_mode,
			bitslip_wait_cnt_user	=>	bitslip_wait_cnt_user,
			blksync_bitslip_type	=>	blksync_bitslip_type,
			ber_bit_err_total_cnt	=>	ber_bit_err_total_cnt,
			align_del	=>	align_del,
			test_bus_mode	=>	test_bus_mode,
			sup_mode	=>	sup_mode,
			dispchk_rd_level_user	=>	dispchk_rd_level_user_int,
			dis_signal_ok	=>	dis_signal_ok,
			frmsync_clken	=>	frmsync_clken,
			use_default_base_address	=>	use_default_base_address,
			frmgen_sync_word	=>	frmgen_sync_word,
			iqtxrx_clkout_sel	=>	iqtxrx_clkout_sel,
			frmsync_pipeln	=>	frmsync_pipeln,
			descrm_mode	=>	descrm_mode,
			rxfifo_full	=>	rxfifo_full,
			fast_path	=>	fast_path,
			dispchk_bypass	=>	dispchk_bypass,
			rx_prbs_mask	=>	rx_prbs_mask,
			rxfifo_pempty	=>	rxfifo_pempty,
			master_clk_sel	=>	master_clk_sel,
			frmsync_enum_sync	=>	frmsync_enum_sync,
			crcchk_clken	=>	crcchk_clken,
			blksync_bitslip_wait_cnt	=>	blksync_bitslip_wait_cnt,
			skip_ctrl	=>	skip_ctrl,
			gbexp_clken	=>	gbexp_clken,
			dispchk_rd_level	=>	dispchk_rd_level,
			frmsync_bypass	=>	frmsync_bypass,
			blksync_bitslip_wait_type	=>	blksync_bitslip_wait_type,
			rx_sh_location	=>	rx_sh_location,
			frmsync_knum_sync	=>	frmsync_knum_sync,
			dec64b66b_clken	=>	dec64b66b_clken,
			user_base_address	=>	user_base_address,
			descrm_bypass	=>	descrm_bypass,
			frmgen_skip_word	=>	frmgen_skip_word,
			frmsync_mfrm_length	=>	frmsync_mfrm_length,
			blksync_clken	=>	blksync_clken,
			crcchk_bypass	=>	crcchk_bypass,
			frmsync_mfrm_length_user	=>	frmsync_mfrm_length_user,
			rdfifo_clken	=>	rdfifo_clken,
			crcchk_inv	=>	crcchk_inv,
			blksync_knum_sh_cnt_prelock	=>	blksync_knum_sh_cnt_prelock,
			blksync_knum_sh_cnt_postlock	=>	blksync_knum_sh_cnt_postlock,
			dispchk_clken	=>	dispchk_clken,
			dispchk_pipeln	=>	dispchk_pipeln,
			crcflag_pipeln	=>	crcflag_pipeln,
			avmm_group_channel_index	=>	avmm_group_channel_index,
			gb_rx_odwidth	=>	gb_rx_odwidth,
			stretch_num_stages	=>	stretch_num_stages,
			control_del	=>	control_del,
			blksync_enum_invalid_sh_cnt	=>	blksync_enum_invalid_sh_cnt,
			dec_64b66b_rxsm_bypass	=>	dec_64b66b_rxsm_bypass,
			channel_number	=>	channel_number,
			crcchk_init_user	=>	crcchk_init_user,
			rd_clk_sel	=>	rd_clk_sel,
			frmsync_enum_scrm	=>	frmsync_enum_scrm,
			crcchk_pipeln	=>	crcchk_pipeln,
			test_mode	=>	test_mode,
			prot_mode	=>	prot_mode,
			crcchk_init	=>	crcchk_init,
			rx_fifo_write_ctrl	=>	rx_fifo_write_ctrl,
			bitslip_mode	=>	bitslip_mode,
			rx_sm_bypass	=>	rx_sm_bypass,
			stretch_type	=>	stretch_type,
			full_flag_type	=>	full_flag_type,
			ctrl_bit_reverse	=>	ctrl_bit_reverse,
			empty_flag_type	=>	empty_flag_type,
			fifo_stop_wr	=>	fifo_stop_wr,
			blksync_bitslip_wait_cnt_user	=>	blksync_bitslip_wait_cnt_user_int,
			pfull_flag_type	=>	pfull_flag_type,
			pempty_flag_type	=>	pempty_flag_type,
			data_bit_reverse	=>	data_bit_reverse,
			fifo_stop_rd	=>	fifo_stop_rd
		)
		port map	(
			avmmaddress	=>	avmmaddress,
			avmmbyteen	=>	avmmbyteen,
			avmmclk	=>	avmmclk,
			avmmread	=>	avmmread,
			avmmreaddata	=>	avmmreaddata,
			avmmrstn	=>	avmmrstn,
			avmmwrite	=>	avmmwrite,
			avmmwritedata	=>	avmmwritedata,
			blockselect	=>	blockselect,
			dfxlpbkcontrolin	=>	dfxlpbkcontrolin,
			dfxlpbkdatain	=>	dfxlpbkdatain,
			dfxlpbkdatavalidin	=>	dfxlpbkdatavalidin,
			hardresetn	=>	hardresetn,
			lpbkdatain	=>	lpbkdatain,
			pmaclkdiv33txorrx	=>	pmaclkdiv33txorrx,
			refclkdig	=>	refclkdig,
			rxalignclr	=>	rxalignclr,
			rxalignen	=>	rxalignen,
			rxalignval	=>	rxalignval,
			rxbitslip	=>	rxbitslip,
			rxblocklock	=>	rxblocklock,
			rxclkiqout	=>	rxclkiqout,
			rxclkout	=>	rxclkout,
			rxclrbercount	=>	rxclrbercount,
			rxclrerrorblockcount	=>	rxclrerrorblockcount,
			rxcontrol	=>	rxcontrol,
			rxcrc32error	=>	rxcrc32error,
			rxdata	=>	rxdata,
			rxdatavalid	=>	rxdatavalid,
			rxdiagnosticerror	=>	rxdiagnosticerror,
			rxdiagnosticstatus	=>	rxdiagnosticstatus,
			rxdisparityclr	=>	rxdisparityclr,
			rxfifodel	=>	rxfifodel,
			rxfifoempty	=>	rxfifoempty,
			rxfifofull	=>	rxfifofull,
			rxfifoinsert	=>	rxfifoinsert,
			rxfifopartialempty	=>	rxfifopartialempty,
			rxfifopartialfull	=>	rxfifopartialfull,
			rxframelock	=>	rxframelock,
			rxhighber	=>	rxhighber,
			rxmetaframeerror	=>	rxmetaframeerror,
			rxpayloadinserted	=>	rxpayloadinserted,
			rxpldclk	=>	rxpldclk,
			rxpldrstn	=>	rxpldrstn,
			rxpmaclk	=>	rxpmaclk,
			rxpmadata	=>	rxpmadata,
			rxpmadatavalid	=>	rxpmadatavalid,
			rxprbsdone	=>	rxprbsdone,
			rxprbserr	=>	rxprbserr,
			rxprbserrorclr	=>	rxprbserrorclr,
			rxrden	=>	rxrden,
			rxrdnegsts	=>	rxrdnegsts,
			rxrdpossts	=>	rxrdpossts,
			rxrxframe	=>	rxrxframe,
			rxscramblererror	=>	rxscramblererror,
			rxskipinserted	=>	rxskipinserted,
			rxskipworderror	=>	rxskipworderror,
			rxsyncheadererror	=>	rxsyncheadererror,
			rxsyncworderror	=>	rxsyncworderror,
			rxtestdata	=>	rxtestdata,
			syncdatain	=>	syncdatain,
			txpmaclk	=>	txpmaclk
		);
END generate;
-- End REVE instantiation

end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_10g_tx_pcs	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		stretch_en	:	string	:=	"stretch_en";
		dispgen_pipeln	:	string	:=	"dispgen_pipeln_dis";
		pseudo_seed_a_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		tx_polarity_inv	:	string	:=	"invert_disable";
		bit_reverse	:	string	:=	"bit_reverse_dis";
		ctrl_plane_bonding	:	string	:=	"individual";
		crcgen_bypass	:	string	:=	"crcgen_bypass_dis";
		frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
		tx_true_b2b	:	string	:=	"b2b";
		distdwn_bypass_pipeln	:	string	:=	"distdwn_bypass_pipeln_dis";
		wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
		frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
		pmagate_en	:	string	:=	"pmagate_dis";
		tx_scrm_width	:	string	:=	"bit64";
		scrm_bypass	:	string	:=	"scrm_bypass_dis";
		wr_clk_sel	:	string	:=	"wr_tx_pma_clk";
		prbs_clken	:	string	:=	"prbs_clk_dis";
		tx_testbus_sel	:	string	:=	"crc32_gen_testbus1";
		scrm_seed_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		pseudo_seed_b	:	string	:=	"pseudo_seed_b_user_setting";
		sqwgen_clken	:	string	:=	"sqwgen_clk_dis";
		distup_bypass_pipeln	:	string	:=	"distup_bypass_pipeln_dis";
		sh_err	:	string	:=	"sh_err_dis";
		gb_sel_mode	:	string	:=	"internal";
		pseudo_seed_b_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		frmgen_wordslip	:	string	:=	"frmgen_wordslip_dis";
		tx_sh_location	:	string	:=	"lsb";
		fastpath	:	string	:=	"fastpath_dis";
		test_bus_mode	:	string	:=	"tx";
		sup_mode	:	string	:=	"user_mode";
		dispgen_clken	:	string	:=	"dispgen_clk_dis";
		txfifo_pempty	:	integer	:=	7;
		scrm_seed	:	string	:=	"scram_seed_user_setting";
		gbred_clken	:	string	:=	"gbred_clk_dis";
		use_default_base_address	:	string	:=	"true";
		tx_scrm_err	:	string	:=	"scrm_err_dis";
		frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
		txfifo_full	:	integer	:=	31;
		frmgen_bypass	:	string	:=	"frmgen_bypass_dis";
		iqtxrx_clkout_sel	:	string	:=	"iq_tx_pma_clk";
		bitslip_en	:	string	:=	"bitslip_dis";
		tx_sm_pipeln	:	string	:=	"tx_sm_pipeln_dis";
		sq_wave	:	string	:=	"sq_wave_4";
		comp_del_sel_agg	:	string	:=	"data_agg_del0";
		master_clk_sel	:	string	:=	"master_tx_pma_clk";
		distup_master	:	string	:=	"distup_master_en";
		txfifo_pfull	:	integer	:=	23;
		skip_ctrl	:	string	:=	"skip_ctrl_default";
		enc64b66b_txsm_clken	:	string	:=	"enc64b66b_txsm_clk_dis";
		comp_cnt	:	string	:=	"comp_cnt_00";
		distdwn_master	:	string	:=	"distdwn_master_en";
		txfifo_empty	:	integer	:=	0;
		phcomp_rd_del	:	string	:=	"phcomp_rd_del1";
		gb_tx_odwidth	:	string	:=	"width_32";
		distdwn_bypass_pipeln_agg	:	string	:=	"distdwn_bypass_pipeln_agg_dis";
		crcgen_err	:	string	:=	"crcgen_err_dis";
		user_base_address	:	integer	:=	0;
		scrm_mode	:	string	:=	"async";
		frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
		txfifo_mode	:	string	:=	"phase_comp";
		crcgen_init	:	string	:=	"crcgen_init_user_setting";
		crcgen_init_user	:	string	:=	"11111111111111111111111111111111";
		frmgen_pipeln	:	string	:=	"frmgen_pipeln_dis";
		frmgen_mfrm_length	:	string	:=	"frmgen_mfrm_length_min";
		rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
		crcgen_inv	:	string	:=	"crcgen_inv_dis";
		scrm_clken	:	string	:=	"scrm_clk_dis";
		enc_64b66b_txsm_bypass	:	string	:=	"enc_64b66b_txsm_bypass_dis";
		frmgen_pyld_ins	:	string	:=	"frmgen_pyld_ins_dis";
		frmgen_burst	:	string	:=	"frmgen_burst_dis";
		indv	:	string	:=	"indv_en";
		pseudo_seed_a	:	string	:=	"pseudo_seed_a_user_setting";
		avmm_group_channel_index	:	integer	:=	0;
		compin_sel	:	string	:=	"compin_master";
		gb_tx_idwidth	:	string	:=	"width_50";
		stretch_num_stages	:	string	:=	"zero_stage";
		pseudo_random	:	string	:=	"all_0";
		channel_number	:	integer	:=	0;
		dispgen_err	:	string	:=	"dispgen_err_dis";
		dispgen_bypass	:	string	:=	"dispgen_bypass_dis";
		tx_sm_bypass	:	string	:=	"tx_sm_bypass_dis";
		test_mode	:	string	:=	"test_off";
		crcgen_clken	:	string	:=	"crcgen_clk_dis";
		frmgen_mfrm_length_user	:	integer	:=	5;
		distup_bypass_pipeln_agg	:	string	:=	"distup_bypass_pipeln_agg_dis";
		prot_mode	:	string	:=	"disable_mode";
		frmgen_clken	:	string	:=	"frmgen_clk_dis";
		silicon_rev	:	string	:=	"reve";
		stretch_type	:	string	:=	"stretch_auto";
		full_flag_type	:	string	:=	"full_wr_side";
		distup_master_agg	:	string	:=	"distup_master_agg_en";
		ctrl_bit_reverse	:	string	:=	"ctrl_bit_reverse_dis";
		empty_flag_type	:	string	:=	"empty_rd_side";
		data_agg_comp	:	string	:=	"data_agg_del0";
		fifo_stop_wr	:	string	:=	"n_wr_full";
		pfull_flag_type	:	string	:=	"pfull_wr_side";
		distdwn_master_agg	:	string	:=	"distdwn_master_agg_en";
		compin_sel_agg	:	string	:=	"compin_agg_master";
		pempty_flag_type	:	string	:=	"pempty_rd_side";
		data_bit_reverse	:	string	:=	"data_bit_reverse_dis";
		fifo_stop_rd	:	string	:=	"n_rd_empty";
		data_agg_bonding	:	string	:=	"agg_individual";
		del_sel_frame_gen	:	string	:=	"del_sel_frame_gen_del0"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		dfxlpbkcontrolout	:	out	std_logic_vector(8 downto 0) := "000000000";
		dfxlpbkdataout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dfxlpbkdatavalidout	:	out	std_logic := '0';
		distdwnindv	:	in	std_logic := '0';
		distdwninintlknrden	:	in	std_logic := '0';
		distdwninrden	:	in	std_logic := '0';
		distdwninrdpfull	:	in	std_logic := '0';
		distdwninwren	:	in	std_logic := '0';
		distdwnoutdv	:	out	std_logic := '0';
		distdwnoutintlknrden	:	out	std_logic := '0';
		distdwnoutrden	:	out	std_logic := '0';
		distdwnoutrdpfull	:	out	std_logic := '0';
		distdwnoutwren	:	out	std_logic := '0';
		distupindv	:	in	std_logic := '0';
		distupinintlknrden	:	in	std_logic := '0';
		distupinrden	:	in	std_logic := '0';
		distupinrdpfull	:	in	std_logic := '0';
		distupinwren	:	in	std_logic := '0';
		distupoutdv	:	out	std_logic := '0';
		distupoutintlknrden	:	out	std_logic := '0';
		distupoutrden	:	out	std_logic := '0';
		distupoutrdpfull	:	out	std_logic := '0';
		distupoutwren	:	out	std_logic := '0';
		hardresetn	:	in	std_logic := '1';
		lpbkdataout	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pmaclkdiv33lc	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		txbitslip	:	in	std_logic_vector(6 downto 0) := "0000000";
		txbursten	:	in	std_logic := '0';
		txburstenexe	:	out	std_logic := '0';
		txclkiqout	:	out	std_logic := '0';
		txclkout	:	out	std_logic := '0';
		txcontrol	:	in	std_logic_vector(8 downto 0) := "000000000";
		txdata	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		txdatavalid	:	in	std_logic := '0';
		txdiagnosticstatus	:	in	std_logic_vector(1 downto 0) := "00";
		txdisparityclr	:	in	std_logic := '0';
		txfifodel	:	out	std_logic := '0';
		txfifoempty	:	out	std_logic := '0';
		txfifofull	:	out	std_logic := '0';
		txfifoinsert	:	out	std_logic := '0';
		txfifopartialempty	:	out	std_logic := '0';
		txfifopartialfull	:	out	std_logic := '0';
		txframe	:	out	std_logic := '0';
		txpldclk	:	in	std_logic := '0';
		txpldrstn	:	in	std_logic := '1';
		txpmaclk	:	in	std_logic := '0';
		txpmadata	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		txwordslip	:	in	std_logic := '0';
		txwordslipexe	:	out	std_logic := '0'
	);
end	stratixv_hssi_10g_tx_pcs;

architecture behavior of stratixv_hssi_10g_tx_pcs is

-- ES component declaration
component	stratixv_hssi_10g_tx_pcs_encrypted_ES
	generic	(
		enable_debug_info	:	string	:=	"false";
		stretch_en	:	string	:=	"stretch_en";
		dispgen_pipeln	:	string	:=	"dispgen_pipeln_dis";
		pseudo_seed_a_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		tx_polarity_inv	:	string	:=	"invert_disable";
		bit_reverse	:	string	:=	"bit_reverse_dis";
		ctrl_plane_bonding	:	string	:=	"individual";
		crcgen_bypass	:	string	:=	"crcgen_bypass_dis";
		frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
		tx_true_b2b	:	string	:=	"b2b";
		distdwn_bypass_pipeln	:	string	:=	"distdwn_bypass_pipeln_dis";
		wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
		frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
		pmagate_en	:	string	:=	"pmagate_dis";
		tx_scrm_width	:	string	:=	"bit64";
		scrm_bypass	:	string	:=	"scrm_bypass_dis";
		wr_clk_sel	:	string	:=	"wr_tx_pma_clk";
		prbs_clken	:	string	:=	"prbs_clk_dis";
		tx_testbus_sel	:	string	:=	"crc32_gen_testbus1";
		scrm_seed_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		pseudo_seed_b	:	string	:=	"pseudo_seed_b_user_setting";
		sqwgen_clken	:	string	:=	"sqwgen_clk_dis";
		distup_bypass_pipeln	:	string	:=	"distup_bypass_pipeln_dis";
		sh_err	:	string	:=	"sh_err_dis";
		gb_sel_mode	:	string	:=	"internal";
		pseudo_seed_b_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		frmgen_wordslip	:	string	:=	"frmgen_wordslip_dis";
		tx_sh_location	:	string	:=	"lsb";
		fastpath	:	string	:=	"fastpath_dis";
		test_bus_mode	:	string	:=	"tx";
		sup_mode	:	string	:=	"user_mode";
		dispgen_clken	:	string	:=	"dispgen_clk_dis";
		txfifo_pempty	:	integer	:=	7;
		scrm_seed	:	string	:=	"scram_seed_user_setting";
		gbred_clken	:	string	:=	"gbred_clk_dis";
		use_default_base_address	:	string	:=	"true";
		tx_scrm_err	:	string	:=	"scrm_err_dis";
		frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
		txfifo_full	:	integer	:=	31;
		frmgen_bypass	:	string	:=	"frmgen_bypass_dis";
		iqtxrx_clkout_sel	:	string	:=	"iq_tx_pma_clk";
		bitslip_en	:	string	:=	"bitslip_dis";
		tx_sm_pipeln	:	string	:=	"tx_sm_pipeln_dis";
		sq_wave	:	string	:=	"sq_wave_4";
		comp_del_sel_agg	:	string	:=	"data_agg_del0";
		master_clk_sel	:	string	:=	"master_tx_pma_clk";
		distup_master	:	string	:=	"distup_master_en";
		txfifo_pfull	:	integer	:=	23;
		skip_ctrl	:	string	:=	"skip_ctrl_default";
		enc64b66b_txsm_clken	:	string	:=	"enc64b66b_txsm_clk_dis";
		comp_cnt	:	string	:=	"comp_cnt_00";
		distdwn_master	:	string	:=	"distdwn_master_en";
		txfifo_empty	:	integer	:=	0;
		phcomp_rd_del	:	string	:=	"phcomp_rd_del1";
		gb_tx_odwidth	:	string	:=	"width_32";
		distdwn_bypass_pipeln_agg	:	string	:=	"distdwn_bypass_pipeln_agg_dis";
		crcgen_err	:	string	:=	"crcgen_err_dis";
		user_base_address	:	integer	:=	0;
		scrm_mode	:	string	:=	"async";
		frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
		txfifo_mode	:	string	:=	"phase_comp";
		crcgen_init	:	string	:=	"crcgen_init_user_setting";
		crcgen_init_user	:	string	:=	"11111111111111111111111111111111";
		frmgen_pipeln	:	string	:=	"frmgen_pipeln_dis";
		frmgen_mfrm_length	:	string	:=	"frmgen_mfrm_length_min";
		rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
		crcgen_inv	:	string	:=	"crcgen_inv_dis";
		scrm_clken	:	string	:=	"scrm_clk_dis";
		enc_64b66b_txsm_bypass	:	string	:=	"enc_64b66b_txsm_bypass_dis";
		frmgen_pyld_ins	:	string	:=	"frmgen_pyld_ins_dis";
		frmgen_burst	:	string	:=	"frmgen_burst_dis";
		indv	:	string	:=	"indv_en";
		pseudo_seed_a	:	string	:=	"pseudo_seed_a_user_setting";
		avmm_group_channel_index	:	integer	:=	0;
		compin_sel	:	string	:=	"compin_master";
		gb_tx_idwidth	:	string	:=	"width_50";
		stretch_num_stages	:	string	:=	"zero_stage";
		pseudo_random	:	string	:=	"all_0";
		channel_number	:	integer	:=	0;
		dispgen_err	:	string	:=	"dispgen_err_dis";
		dispgen_bypass	:	string	:=	"dispgen_bypass_dis";
		tx_sm_bypass	:	string	:=	"tx_sm_bypass_dis";
		test_mode	:	string	:=	"test_off";
		crcgen_clken	:	string	:=	"crcgen_clk_dis";
		frmgen_mfrm_length_user	:	integer	:=	5;
		distup_bypass_pipeln_agg	:	string	:=	"distup_bypass_pipeln_agg_dis";
		prot_mode	:	string	:=	"disable_mode";
		frmgen_clken	:	string	:=	"frmgen_clk_dis"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		dfxlpbkcontrolout	:	out	std_logic_vector(8 downto 0) := "000000000";
		dfxlpbkdataout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dfxlpbkdatavalidout	:	out	std_logic := '0';
		distdwnindv	:	in	std_logic := '0';
		distdwninintlknrden	:	in	std_logic := '0';
		distdwninrden	:	in	std_logic := '0';
		distdwninrdpfull	:	in	std_logic := '0';
		distdwninwren	:	in	std_logic := '0';
		distdwnoutdv	:	out	std_logic := '0';
		distdwnoutintlknrden	:	out	std_logic := '0';
		distdwnoutrden	:	out	std_logic := '0';
		distdwnoutrdpfull	:	out	std_logic := '0';
		distdwnoutwren	:	out	std_logic := '0';
		distupindv	:	in	std_logic := '0';
		distupinintlknrden	:	in	std_logic := '0';
		distupinrden	:	in	std_logic := '0';
		distupinrdpfull	:	in	std_logic := '0';
		distupinwren	:	in	std_logic := '0';
		distupoutdv	:	out	std_logic := '0';
		distupoutintlknrden	:	out	std_logic := '0';
		distupoutrden	:	out	std_logic := '0';
		distupoutrdpfull	:	out	std_logic := '0';
		distupoutwren	:	out	std_logic := '0';
		hardresetn	:	in	std_logic := '1';
		lpbkdataout	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pmaclkdiv33lc	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		txbitslip	:	in	std_logic_vector(6 downto 0) := "0000000";
		txbursten	:	in	std_logic := '0';
		txburstenexe	:	out	std_logic := '0';
		txclkiqout	:	out	std_logic := '0';
		txclkout	:	out	std_logic := '0';
		txcontrol	:	in	std_logic_vector(8 downto 0) := "000000000";
		txdata	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		txdatavalid	:	in	std_logic := '0';
		txdiagnosticstatus	:	in	std_logic_vector(1 downto 0) := "00";
		txdisparityclr	:	in	std_logic := '0';
		txfifodel	:	out	std_logic := '0';
		txfifoempty	:	out	std_logic := '0';
		txfifofull	:	out	std_logic := '0';
		txfifoinsert	:	out	std_logic := '0';
		txfifopartialempty	:	out	std_logic := '0';
		txfifopartialfull	:	out	std_logic := '0';
		txframe	:	out	std_logic := '0';
		txpldclk	:	in	std_logic := '0';
		txpldrstn	:	in	std_logic := '1';
		txpmaclk	:	in	std_logic := '0';
		txpmadata	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		txwordslip	:	in	std_logic := '0';
		txwordslipexe	:	out	std_logic := '0'
	);
end component;
-- End ES component declaration

-- REVE component declaration
component	stratixv_hssi_10g_tx_pcs_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		stretch_en	:	string	:=	"stretch_en";
		dispgen_pipeln	:	string	:=	"dispgen_pipeln_dis";
		pseudo_seed_a_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		tx_polarity_inv	:	string	:=	"invert_disable";
		bit_reverse	:	string	:=	"bit_reverse_dis";
		ctrl_plane_bonding	:	string	:=	"individual";
		crcgen_bypass	:	string	:=	"crcgen_bypass_dis";
		frmgen_scrm_word	:	string	:=	"0010100000000000000000000000000000000000000000000000000000000000";
		tx_true_b2b	:	string	:=	"b2b";
		distdwn_bypass_pipeln	:	string	:=	"distdwn_bypass_pipeln_dis";
		wrfifo_clken	:	string	:=	"wrfifo_clk_dis";
		frmgen_diag_word	:	string	:=	"0000000000000000000000000000000000000000000000000000000000000000";
		pmagate_en	:	string	:=	"pmagate_dis";
		tx_scrm_width	:	string	:=	"bit64";
		scrm_bypass	:	string	:=	"scrm_bypass_dis";
		wr_clk_sel	:	string	:=	"wr_tx_pma_clk";
		prbs_clken	:	string	:=	"prbs_clk_dis";
		tx_testbus_sel	:	string	:=	"crc32_gen_testbus1";
		scrm_seed_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		pseudo_seed_b	:	string	:=	"pseudo_seed_b_user_setting";
		sqwgen_clken	:	string	:=	"sqwgen_clk_dis";
		distup_bypass_pipeln	:	string	:=	"distup_bypass_pipeln_dis";
		sh_err	:	string	:=	"sh_err_dis";
		gb_sel_mode	:	string	:=	"internal";
		pseudo_seed_b_user	:	string	:=	"1111111111111111111111111111111111111111111111111111111111";
		frmgen_wordslip	:	string	:=	"frmgen_wordslip_dis";
		tx_sh_location	:	string	:=	"lsb";
		fastpath	:	string	:=	"fastpath_dis";
		test_bus_mode	:	string	:=	"tx";
		sup_mode	:	string	:=	"user_mode";
		dispgen_clken	:	string	:=	"dispgen_clk_dis";
		txfifo_pempty	:	integer	:=	7;
		scrm_seed	:	string	:=	"scram_seed_user_setting";
		gbred_clken	:	string	:=	"gbred_clk_dis";
		use_default_base_address	:	string	:=	"true";
		tx_scrm_err	:	string	:=	"scrm_err_dis";
		frmgen_sync_word	:	string	:=	"0111100011110110011110001111011001111000111101100111100011110110";
		txfifo_full	:	integer	:=	31;
		frmgen_bypass	:	string	:=	"frmgen_bypass_dis";
		iqtxrx_clkout_sel	:	string	:=	"iq_tx_pma_clk";
		bitslip_en	:	string	:=	"bitslip_dis";
		tx_sm_pipeln	:	string	:=	"tx_sm_pipeln_dis";
		sq_wave	:	string	:=	"sq_wave_4";
		comp_del_sel_agg	:	string	:=	"data_agg_del0";
		master_clk_sel	:	string	:=	"master_tx_pma_clk";
		distup_master	:	string	:=	"distup_master_en";
		txfifo_pfull	:	integer	:=	23;
		skip_ctrl	:	string	:=	"skip_ctrl_default";
		enc64b66b_txsm_clken	:	string	:=	"enc64b66b_txsm_clk_dis";
		comp_cnt	:	string	:=	"comp_cnt_00";
		distdwn_master	:	string	:=	"distdwn_master_en";
		txfifo_empty	:	integer	:=	0;
		phcomp_rd_del	:	string	:=	"phcomp_rd_del1";
		gb_tx_odwidth	:	string	:=	"width_32";
		distdwn_bypass_pipeln_agg	:	string	:=	"distdwn_bypass_pipeln_agg_dis";
		crcgen_err	:	string	:=	"crcgen_err_dis";
		user_base_address	:	integer	:=	0;
		scrm_mode	:	string	:=	"async";
		frmgen_skip_word	:	string	:=	"0001111000011110000111100001111000011110000111100001111000011110";
		txfifo_mode	:	string	:=	"phase_comp";
		crcgen_init	:	string	:=	"crcgen_init_user_setting";
		crcgen_init_user	:	string	:=	"11111111111111111111111111111111";
		frmgen_pipeln	:	string	:=	"frmgen_pipeln_dis";
		frmgen_mfrm_length	:	string	:=	"frmgen_mfrm_length_min";
		rdfifo_clken	:	string	:=	"rdfifo_clk_dis";
		crcgen_inv	:	string	:=	"crcgen_inv_dis";
		scrm_clken	:	string	:=	"scrm_clk_dis";
		enc_64b66b_txsm_bypass	:	string	:=	"enc_64b66b_txsm_bypass_dis";
		frmgen_pyld_ins	:	string	:=	"frmgen_pyld_ins_dis";
		frmgen_burst	:	string	:=	"frmgen_burst_dis";
		indv	:	string	:=	"indv_en";
		pseudo_seed_a	:	string	:=	"pseudo_seed_a_user_setting";
		avmm_group_channel_index	:	integer	:=	0;
		compin_sel	:	string	:=	"compin_master";
		gb_tx_idwidth	:	string	:=	"width_50";
		stretch_num_stages	:	string	:=	"zero_stage";
		pseudo_random	:	string	:=	"all_0";
		channel_number	:	integer	:=	0;
		dispgen_err	:	string	:=	"dispgen_err_dis";
		dispgen_bypass	:	string	:=	"dispgen_bypass_dis";
		tx_sm_bypass	:	string	:=	"tx_sm_bypass_dis";
		test_mode	:	string	:=	"test_off";
		crcgen_clken	:	string	:=	"crcgen_clk_dis";
		frmgen_mfrm_length_user	:	integer	:=	5;
		distup_bypass_pipeln_agg	:	string	:=	"distup_bypass_pipeln_agg_dis";
		prot_mode	:	string	:=	"disable_mode";
		frmgen_clken	:	string	:=	"frmgen_clk_dis";
		stretch_type	:	string	:=	"stretch_auto";
		full_flag_type	:	string	:=	"full_wr_side";
		distup_master_agg	:	string	:=	"distup_master_agg_en";
		ctrl_bit_reverse	:	string	:=	"ctrl_bit_reverse_dis";
		empty_flag_type	:	string	:=	"empty_rd_side";
		data_agg_comp	:	string	:=	"data_agg_del0";
		fifo_stop_wr	:	string	:=	"n_wr_full";
		pfull_flag_type	:	string	:=	"pfull_wr_side";
		distdwn_master_agg	:	string	:=	"distdwn_master_agg_en";
		compin_sel_agg	:	string	:=	"compin_agg_master";
		pempty_flag_type	:	string	:=	"pempty_rd_side";
		data_bit_reverse	:	string	:=	"data_bit_reverse_dis";
		fifo_stop_rd	:	string	:=	"n_rd_empty";
		data_agg_bonding	:	string	:=	"agg_individual";
		del_sel_frame_gen	:	string	:=	"del_sel_frame_gen_del0"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '1';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		dfxlpbkcontrolout	:	out	std_logic_vector(8 downto 0) := "000000000";
		dfxlpbkdataout	:	out	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		dfxlpbkdatavalidout	:	out	std_logic := '0';
		distdwnindv	:	in	std_logic := '0';
		distdwninintlknrden	:	in	std_logic := '0';
		distdwninrden	:	in	std_logic := '0';
		distdwninrdpfull	:	in	std_logic := '0';
		distdwninwren	:	in	std_logic := '0';
		distdwnoutdv	:	out	std_logic := '0';
		distdwnoutintlknrden	:	out	std_logic := '0';
		distdwnoutrden	:	out	std_logic := '0';
		distdwnoutrdpfull	:	out	std_logic := '0';
		distdwnoutwren	:	out	std_logic := '0';
		distupindv	:	in	std_logic := '0';
		distupinintlknrden	:	in	std_logic := '0';
		distupinrden	:	in	std_logic := '0';
		distupinrdpfull	:	in	std_logic := '0';
		distupinwren	:	in	std_logic := '0';
		distupoutdv	:	out	std_logic := '0';
		distupoutintlknrden	:	out	std_logic := '0';
		distupoutrden	:	out	std_logic := '0';
		distupoutrdpfull	:	out	std_logic := '0';
		distupoutwren	:	out	std_logic := '0';
		hardresetn	:	in	std_logic := '1';
		lpbkdataout	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		pmaclkdiv33lc	:	in	std_logic := '0';
		refclkdig	:	in	std_logic := '0';
		syncdatain	:	out	std_logic := '0';
		txbitslip	:	in	std_logic_vector(6 downto 0) := "0000000";
		txbursten	:	in	std_logic := '0';
		txburstenexe	:	out	std_logic := '0';
		txclkiqout	:	out	std_logic := '0';
		txclkout	:	out	std_logic := '0';
		txcontrol	:	in	std_logic_vector(8 downto 0) := "000000000";
		txdata	:	in	std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
		txdatavalid	:	in	std_logic := '0';
		txdiagnosticstatus	:	in	std_logic_vector(1 downto 0) := "00";
		txdisparityclr	:	in	std_logic := '0';
		txfifodel	:	out	std_logic := '0';
		txfifoempty	:	out	std_logic := '0';
		txfifofull	:	out	std_logic := '0';
		txfifoinsert	:	out	std_logic := '0';
		txfifopartialempty	:	out	std_logic := '0';
		txfifopartialfull	:	out	std_logic := '0';
		txframe	:	out	std_logic := '0';
		txpldclk	:	in	std_logic := '0';
		txpldrstn	:	in	std_logic := '1';
		txpmaclk	:	in	std_logic := '0';
		txpmadata	:	out	std_logic_vector(79 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
		txwordslip	:	in	std_logic := '0';
		txwordslipexe	:	out	std_logic := '0'
	);
end component;
-- End REVE component declaration

begin

-- ES instantiation
ES : if ((silicon_rev = "es") or (silicon_rev = "ES")) generate begin
inst : stratixv_hssi_10g_tx_pcs_encrypted_ES
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		stretch_en	=>	stretch_en,
		dispgen_pipeln	=>	dispgen_pipeln,
		pseudo_seed_a_user	=>	pseudo_seed_a_user,
		tx_polarity_inv	=>	tx_polarity_inv,
		bit_reverse	=>	bit_reverse,
		ctrl_plane_bonding	=>	ctrl_plane_bonding,
		crcgen_bypass	=>	crcgen_bypass,
		frmgen_scrm_word	=>	frmgen_scrm_word,
		tx_true_b2b	=>	tx_true_b2b,
		distdwn_bypass_pipeln	=>	distdwn_bypass_pipeln,
		wrfifo_clken	=>	wrfifo_clken,
		frmgen_diag_word	=>	frmgen_diag_word,
		pmagate_en	=>	pmagate_en,
		tx_scrm_width	=>	tx_scrm_width,
		scrm_bypass	=>	scrm_bypass,
		wr_clk_sel	=>	wr_clk_sel,
		prbs_clken	=>	prbs_clken,
		tx_testbus_sel	=>	tx_testbus_sel,
		scrm_seed_user	=>	scrm_seed_user,
		pseudo_seed_b	=>	pseudo_seed_b,
		sqwgen_clken	=>	sqwgen_clken,
		distup_bypass_pipeln	=>	distup_bypass_pipeln,
		sh_err	=>	sh_err,
		gb_sel_mode	=>	gb_sel_mode,
		pseudo_seed_b_user	=>	pseudo_seed_b_user,
		frmgen_wordslip	=>	frmgen_wordslip,
		tx_sh_location	=>	tx_sh_location,
		fastpath	=>	fastpath,
		test_bus_mode	=>	test_bus_mode,
		sup_mode	=>	sup_mode,
		dispgen_clken	=>	dispgen_clken,
		txfifo_pempty	=>	txfifo_pempty,
		scrm_seed	=>	scrm_seed,
		gbred_clken	=>	gbred_clken,
		use_default_base_address	=>	use_default_base_address,
		tx_scrm_err	=>	tx_scrm_err,
		frmgen_sync_word	=>	frmgen_sync_word,
		txfifo_full	=>	txfifo_full,
		frmgen_bypass	=>	frmgen_bypass,
		iqtxrx_clkout_sel	=>	iqtxrx_clkout_sel,
		bitslip_en	=>	bitslip_en,
		tx_sm_pipeln	=>	tx_sm_pipeln,
		sq_wave	=>	sq_wave,
		comp_del_sel_agg	=>	comp_del_sel_agg,
		master_clk_sel	=>	master_clk_sel,
		distup_master	=>	distup_master,
		txfifo_pfull	=>	txfifo_pfull,
		skip_ctrl	=>	skip_ctrl,
		enc64b66b_txsm_clken	=>	enc64b66b_txsm_clken,
		comp_cnt	=>	comp_cnt,
		distdwn_master	=>	distdwn_master,
		txfifo_empty	=>	txfifo_empty,
		phcomp_rd_del	=>	phcomp_rd_del,
		gb_tx_odwidth	=>	gb_tx_odwidth,
		distdwn_bypass_pipeln_agg	=>	distdwn_bypass_pipeln_agg,
		crcgen_err	=>	crcgen_err,
		user_base_address	=>	user_base_address,
		scrm_mode	=>	scrm_mode,
		frmgen_skip_word	=>	frmgen_skip_word,
		txfifo_mode	=>	txfifo_mode,
		crcgen_init	=>	crcgen_init,
		crcgen_init_user	=>	crcgen_init_user,
		frmgen_pipeln	=>	frmgen_pipeln,
		frmgen_mfrm_length	=>	frmgen_mfrm_length,
		rdfifo_clken	=>	rdfifo_clken,
		crcgen_inv	=>	crcgen_inv,
		scrm_clken	=>	scrm_clken,
		enc_64b66b_txsm_bypass	=>	enc_64b66b_txsm_bypass,
		frmgen_pyld_ins	=>	frmgen_pyld_ins,
		frmgen_burst	=>	frmgen_burst,
		indv	=>	indv,
		pseudo_seed_a	=>	pseudo_seed_a,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		compin_sel	=>	compin_sel,
		gb_tx_idwidth	=>	gb_tx_idwidth,
		stretch_num_stages	=>	stretch_num_stages,
		pseudo_random	=>	pseudo_random,
		channel_number	=>	channel_number,
		dispgen_err	=>	dispgen_err,
		dispgen_bypass	=>	dispgen_bypass,
		tx_sm_bypass	=>	tx_sm_bypass,
		test_mode	=>	test_mode,
		crcgen_clken	=>	crcgen_clken,
		frmgen_mfrm_length_user	=>	frmgen_mfrm_length_user,
		distup_bypass_pipeln_agg	=>	distup_bypass_pipeln_agg,
		prot_mode	=>	prot_mode,
		frmgen_clken	=>	frmgen_clken
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		dfxlpbkcontrolout	=>	dfxlpbkcontrolout,
		dfxlpbkdataout	=>	dfxlpbkdataout,
		dfxlpbkdatavalidout	=>	dfxlpbkdatavalidout,
		distdwnindv	=>	distdwnindv,
		distdwninintlknrden	=>	distdwninintlknrden,
		distdwninrden	=>	distdwninrden,
		distdwninrdpfull	=>	distdwninrdpfull,
		distdwninwren	=>	distdwninwren,
		distdwnoutdv	=>	distdwnoutdv,
		distdwnoutintlknrden	=>	distdwnoutintlknrden,
		distdwnoutrden	=>	distdwnoutrden,
		distdwnoutrdpfull	=>	distdwnoutrdpfull,
		distdwnoutwren	=>	distdwnoutwren,
		distupindv	=>	distupindv,
		distupinintlknrden	=>	distupinintlknrden,
		distupinrden	=>	distupinrden,
		distupinrdpfull	=>	distupinrdpfull,
		distupinwren	=>	distupinwren,
		distupoutdv	=>	distupoutdv,
		distupoutintlknrden	=>	distupoutintlknrden,
		distupoutrden	=>	distupoutrden,
		distupoutrdpfull	=>	distupoutrdpfull,
		distupoutwren	=>	distupoutwren,
		hardresetn	=>	hardresetn,
		lpbkdataout	=>	lpbkdataout,
		pmaclkdiv33lc	=>	pmaclkdiv33lc,
		refclkdig	=>	refclkdig,
		syncdatain	=>	syncdatain,
		txbitslip	=>	txbitslip,
		txbursten	=>	txbursten,
		txburstenexe	=>	txburstenexe,
		txclkiqout	=>	txclkiqout,
		txclkout	=>	txclkout,
		txcontrol	=>	txcontrol,
		txdata	=>	txdata,
		txdatavalid	=>	txdatavalid,
		txdiagnosticstatus	=>	txdiagnosticstatus,
		txdisparityclr	=>	txdisparityclr,
		txfifodel	=>	txfifodel,
		txfifoempty	=>	txfifoempty,
		txfifofull	=>	txfifofull,
		txfifoinsert	=>	txfifoinsert,
		txfifopartialempty	=>	txfifopartialempty,
		txfifopartialfull	=>	txfifopartialfull,
		txframe	=>	txframe,
		txpldclk	=>	txpldclk,
		txpldrstn	=>	txpldrstn,
		txpmaclk	=>	txpmaclk,
		txpmadata	=>	txpmadata,
		txwordslip	=>	txwordslip,
		txwordslipexe	=>	txwordslipexe
	);
END generate;
-- End ES instantiation

-- REVE instantiation
REVE : if ((silicon_rev = "reve") or (silicon_rev = "REVE")) generate begin
inst : stratixv_hssi_10g_tx_pcs_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		stretch_en	=>	stretch_en,
		dispgen_pipeln	=>	dispgen_pipeln,
		pseudo_seed_a_user	=>	pseudo_seed_a_user,
		tx_polarity_inv	=>	tx_polarity_inv,
		bit_reverse	=>	bit_reverse,
		ctrl_plane_bonding	=>	ctrl_plane_bonding,
		crcgen_bypass	=>	crcgen_bypass,
		frmgen_scrm_word	=>	frmgen_scrm_word,
		tx_true_b2b	=>	tx_true_b2b,
		distdwn_bypass_pipeln	=>	distdwn_bypass_pipeln,
		wrfifo_clken	=>	wrfifo_clken,
		frmgen_diag_word	=>	frmgen_diag_word,
		pmagate_en	=>	pmagate_en,
		tx_scrm_width	=>	tx_scrm_width,
		scrm_bypass	=>	scrm_bypass,
		wr_clk_sel	=>	wr_clk_sel,
		prbs_clken	=>	prbs_clken,
		tx_testbus_sel	=>	tx_testbus_sel,
		scrm_seed_user	=>	scrm_seed_user,
		pseudo_seed_b	=>	pseudo_seed_b,
		sqwgen_clken	=>	sqwgen_clken,
		distup_bypass_pipeln	=>	distup_bypass_pipeln,
		sh_err	=>	sh_err,
		gb_sel_mode	=>	gb_sel_mode,
		pseudo_seed_b_user	=>	pseudo_seed_b_user,
		frmgen_wordslip	=>	frmgen_wordslip,
		tx_sh_location	=>	tx_sh_location,
		fastpath	=>	fastpath,
		test_bus_mode	=>	test_bus_mode,
		sup_mode	=>	sup_mode,
		dispgen_clken	=>	dispgen_clken,
		txfifo_pempty	=>	txfifo_pempty,
		scrm_seed	=>	scrm_seed,
		gbred_clken	=>	gbred_clken,
		use_default_base_address	=>	use_default_base_address,
		tx_scrm_err	=>	tx_scrm_err,
		frmgen_sync_word	=>	frmgen_sync_word,
		txfifo_full	=>	txfifo_full,
		frmgen_bypass	=>	frmgen_bypass,
		iqtxrx_clkout_sel	=>	iqtxrx_clkout_sel,
		bitslip_en	=>	bitslip_en,
		tx_sm_pipeln	=>	tx_sm_pipeln,
		sq_wave	=>	sq_wave,
		comp_del_sel_agg	=>	comp_del_sel_agg,
		master_clk_sel	=>	master_clk_sel,
		distup_master	=>	distup_master,
		txfifo_pfull	=>	txfifo_pfull,
		skip_ctrl	=>	skip_ctrl,
		enc64b66b_txsm_clken	=>	enc64b66b_txsm_clken,
		comp_cnt	=>	comp_cnt,
		distdwn_master	=>	distdwn_master,
		txfifo_empty	=>	txfifo_empty,
		phcomp_rd_del	=>	phcomp_rd_del,
		gb_tx_odwidth	=>	gb_tx_odwidth,
		distdwn_bypass_pipeln_agg	=>	distdwn_bypass_pipeln_agg,
		crcgen_err	=>	crcgen_err,
		user_base_address	=>	user_base_address,
		scrm_mode	=>	scrm_mode,
		frmgen_skip_word	=>	frmgen_skip_word,
		txfifo_mode	=>	txfifo_mode,
		crcgen_init	=>	crcgen_init,
		crcgen_init_user	=>	crcgen_init_user,
		frmgen_pipeln	=>	frmgen_pipeln,
		frmgen_mfrm_length	=>	frmgen_mfrm_length,
		rdfifo_clken	=>	rdfifo_clken,
		crcgen_inv	=>	crcgen_inv,
		scrm_clken	=>	scrm_clken,
		enc_64b66b_txsm_bypass	=>	enc_64b66b_txsm_bypass,
		frmgen_pyld_ins	=>	frmgen_pyld_ins,
		frmgen_burst	=>	frmgen_burst,
		indv	=>	indv,
		pseudo_seed_a	=>	pseudo_seed_a,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		compin_sel	=>	compin_sel,
		gb_tx_idwidth	=>	gb_tx_idwidth,
		stretch_num_stages	=>	stretch_num_stages,
		pseudo_random	=>	pseudo_random,
		channel_number	=>	channel_number,
		dispgen_err	=>	dispgen_err,
		dispgen_bypass	=>	dispgen_bypass,
		tx_sm_bypass	=>	tx_sm_bypass,
		test_mode	=>	test_mode,
		crcgen_clken	=>	crcgen_clken,
		frmgen_mfrm_length_user	=>	frmgen_mfrm_length_user,
		distup_bypass_pipeln_agg	=>	distup_bypass_pipeln_agg,
		prot_mode	=>	prot_mode,
		frmgen_clken	=>	frmgen_clken,
		stretch_type	=>	stretch_type,
		full_flag_type	=>	full_flag_type,
		distup_master_agg	=>	distup_master_agg,
		ctrl_bit_reverse	=>	ctrl_bit_reverse,
		empty_flag_type	=>	empty_flag_type,
		data_agg_comp	=>	data_agg_comp,
		fifo_stop_wr	=>	fifo_stop_wr,
		pfull_flag_type	=>	pfull_flag_type,
		distdwn_master_agg	=>	distdwn_master_agg,
		compin_sel_agg	=>	compin_sel_agg,
		pempty_flag_type	=>	pempty_flag_type,
		data_bit_reverse	=>	data_bit_reverse,
		fifo_stop_rd	=>	fifo_stop_rd,
		data_agg_bonding	=>	data_agg_bonding,
		del_sel_frame_gen	=>	del_sel_frame_gen
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		dfxlpbkcontrolout	=>	dfxlpbkcontrolout,
		dfxlpbkdataout	=>	dfxlpbkdataout,
		dfxlpbkdatavalidout	=>	dfxlpbkdatavalidout,
		distdwnindv	=>	distdwnindv,
		distdwninintlknrden	=>	distdwninintlknrden,
		distdwninrden	=>	distdwninrden,
		distdwninrdpfull	=>	distdwninrdpfull,
		distdwninwren	=>	distdwninwren,
		distdwnoutdv	=>	distdwnoutdv,
		distdwnoutintlknrden	=>	distdwnoutintlknrden,
		distdwnoutrden	=>	distdwnoutrden,
		distdwnoutrdpfull	=>	distdwnoutrdpfull,
		distdwnoutwren	=>	distdwnoutwren,
		distupindv	=>	distupindv,
		distupinintlknrden	=>	distupinintlknrden,
		distupinrden	=>	distupinrden,
		distupinrdpfull	=>	distupinrdpfull,
		distupinwren	=>	distupinwren,
		distupoutdv	=>	distupoutdv,
		distupoutintlknrden	=>	distupoutintlknrden,
		distupoutrden	=>	distupoutrden,
		distupoutrdpfull	=>	distupoutrdpfull,
		distupoutwren	=>	distupoutwren,
		hardresetn	=>	hardresetn,
		lpbkdataout	=>	lpbkdataout,
		pmaclkdiv33lc	=>	pmaclkdiv33lc,
		refclkdig	=>	refclkdig,
		syncdatain	=>	syncdatain,
		txbitslip	=>	txbitslip,
		txbursten	=>	txbursten,
		txburstenexe	=>	txburstenexe,
		txclkiqout	=>	txclkiqout,
		txclkout	=>	txclkout,
		txcontrol	=>	txcontrol,
		txdata	=>	txdata,
		txdatavalid	=>	txdatavalid,
		txdiagnosticstatus	=>	txdiagnosticstatus,
		txdisparityclr	=>	txdisparityclr,
		txfifodel	=>	txfifodel,
		txfifoempty	=>	txfifoempty,
		txfifofull	=>	txfifofull,
		txfifoinsert	=>	txfifoinsert,
		txfifopartialempty	=>	txfifopartialempty,
		txfifopartialfull	=>	txfifopartialfull,
		txframe	=>	txframe,
		txpldclk	=>	txpldclk,
		txpldrstn	=>	txpldrstn,
		txpmaclk	=>	txpmaclk,
		txpmadata	=>	txpmadata,
		txwordslip	=>	txwordslip,
		txwordslipexe	=>	txwordslipexe
	);
END generate;
-- End REVE instantiation


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_avmm_interface	is
	generic	(
		num_ch0_atoms	:	integer	:=	0;
		num_ch1_atoms	:	integer	:=	0;
		num_ch2_atoms	:	integer	:=	0
	);
	port	(
		avmmrstn	:	in	std_logic := '0';
		avmmclk	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	in	std_logic_vector(89 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		readdatachnl	:	in	std_logic_vector(1439 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		clkchnl	:	out	std_logic := '0';
		rstnchnl	:	out	std_logic := '0';
		writedatachnl	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		regaddrchnl	:	out	std_logic_vector(10 downto 0) := "00000000000";
		writechnl	:	out	std_logic := '0';
		readchnl	:	out	std_logic := '0';
		byteenchnl	:	out	std_logic_vector(1 downto 0) := "00";
		refclkdig	:	in	std_logic := '0';
		avmmreservedin	:	in	std_logic := '0';
		avmmreservedout	:	out	std_logic := '0';
		dpriorstntop	:	out	std_logic := '0';
		dprioclktop	:	out	std_logic := '0';
		mdiodistopchnl	:	out	std_logic := '0';
		dpriorstnmid	:	out	std_logic := '0';
		dprioclkmid	:	out	std_logic := '0';
		mdiodismidchnl	:	out	std_logic := '0';
		dpriorstnbot	:	out	std_logic := '0';
		dprioclkbot	:	out	std_logic := '0';
		mdiodisbotchnl	:	out	std_logic := '0';
		dpriotestsitopchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		dpriotestsimidchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		dpriotestsibotchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		pmatestbussel	:	in	std_logic_vector(11 downto 0) := "000000000000";
		pmatestbus	:	out	std_logic_vector(23 downto 0) := "000000000000000000000000";
		scanmoden	:	in	std_logic := '0';
		scanshiftn	:	in	std_logic := '0';
		interfacesel	:	in	std_logic := '0';
		sershiftload	:	in	std_logic := '0'
	);
end	stratixv_hssi_avmm_interface;

architecture behavior of stratixv_hssi_avmm_interface is

component	stratixv_hssi_avmm_interface_encrypted
	generic	(
		num_ch0_atoms	:	integer	:=	0;
		num_ch1_atoms	:	integer	:=	0;
		num_ch2_atoms	:	integer	:=	0
	);
	port	(
		avmmrstn	:	in	std_logic := '0';
		avmmclk	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	in	std_logic_vector(89 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		readdatachnl	:	in	std_logic_vector(1439 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		clkchnl	:	out	std_logic := '0';
		rstnchnl	:	out	std_logic := '0';
		writedatachnl	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		regaddrchnl	:	out	std_logic_vector(10 downto 0) := "00000000000";
		writechnl	:	out	std_logic := '0';
		readchnl	:	out	std_logic := '0';
		byteenchnl	:	out	std_logic_vector(1 downto 0) := "00";
		refclkdig	:	in	std_logic := '0';
		avmmreservedin	:	in	std_logic := '0';
		avmmreservedout	:	out	std_logic := '0';
		dpriorstntop	:	out	std_logic := '0';
		dprioclktop	:	out	std_logic := '0';
		mdiodistopchnl	:	out	std_logic := '0';
		dpriorstnmid	:	out	std_logic := '0';
		dprioclkmid	:	out	std_logic := '0';
		mdiodismidchnl	:	out	std_logic := '0';
		dpriorstnbot	:	out	std_logic := '0';
		dprioclkbot	:	out	std_logic := '0';
		mdiodisbotchnl	:	out	std_logic := '0';
		dpriotestsitopchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		dpriotestsimidchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		dpriotestsibotchnl	:	out	std_logic_vector(3 downto 0) := "0000";
		pmatestbussel	:	in	std_logic_vector(11 downto 0) := "000000000000";
		pmatestbus	:	out	std_logic_vector(23 downto 0) := "000000000000000000000000";
		scanmoden	:	in	std_logic := '0';
		scanshiftn	:	in	std_logic := '0';
		interfacesel	:	in	std_logic := '0';
		sershiftload	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_avmm_interface_encrypted
	generic map	(
		num_ch0_atoms	=>	num_ch0_atoms,
		num_ch1_atoms	=>	num_ch1_atoms,
		num_ch2_atoms	=>	num_ch2_atoms
	)
	port map	(
		avmmrstn	=>	avmmrstn,
		avmmclk	=>	avmmclk,
		avmmwrite	=>	avmmwrite,
		avmmread	=>	avmmread,
		avmmbyteen	=>	avmmbyteen,
		avmmaddress	=>	avmmaddress,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		readdatachnl	=>	readdatachnl,
		avmmreaddata	=>	avmmreaddata,
		clkchnl	=>	clkchnl,
		rstnchnl	=>	rstnchnl,
		writedatachnl	=>	writedatachnl,
		regaddrchnl	=>	regaddrchnl,
		writechnl	=>	writechnl,
		readchnl	=>	readchnl,
		byteenchnl	=>	byteenchnl,
		refclkdig	=>	refclkdig,
		avmmreservedin	=>	avmmreservedin,
		avmmreservedout	=>	avmmreservedout,
		dpriorstntop	=>	dpriorstntop,
		dprioclktop	=>	dprioclktop,
		mdiodistopchnl	=>	mdiodistopchnl,
		dpriorstnmid	=>	dpriorstnmid,
		dprioclkmid	=>	dprioclkmid,
		mdiodismidchnl	=>	mdiodismidchnl,
		dpriorstnbot	=>	dpriorstnbot,
		dprioclkbot	=>	dprioclkbot,
		mdiodisbotchnl	=>	mdiodisbotchnl,
		dpriotestsitopchnl	=>	dpriotestsitopchnl,
		dpriotestsimidchnl	=>	dpriotestsimidchnl,
		dpriotestsibotchnl	=>	dpriotestsibotchnl,
		pmatestbussel	=>	pmatestbussel,
		pmatestbus	=>	pmatestbus,
		scanmoden	=>	scanmoden,
		scanshiftn	=>	scanshiftn,
		interfacesel	=>	interfacesel,
		sershiftload	=>	sershiftload
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_pma_aux	is
	generic	(
		user_base_address	:	integer	:=	0;
		pm_aux_cal_clk_test_sel	:	bit	:=	'0';
		cal_result_status	:	string	:=	"pm_aux_result_status_tx";
		test_counter_enable	:	string	:=	"false";
		tx_imp	:	string	:=	"cal_imp_46_ohm";
		use_default_base_address	:	string	:=	"true";
		rx_cal_override_value_enable	:	string	:=	"false";
		cal_clk_sel	:	string	:=	"pm_aux_iqclk_cal_clk_sel_cal_clk";
		rx_cal_override_value	:	integer	:=	0;
		tx_cal_override_value	:	integer	:=	0;
		rx_imp	:	string	:=	"cal_imp_46_ohm";
		tx_cal_override_value_enable	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		continuous_calibration	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		calclk	:	in	std_logic := '0';
		calpdb	:	in	std_logic := '0';
		nonusertoio	:	out	std_logic := '0';
		refiqclk	:	in	std_logic_vector(10 downto 0) := "00000000000";
		testcntl	:	in	std_logic := '0';
		zrxtx50	:	out	std_logic_vector(4 downto 0) := "00000"
	);
end	stratixv_hssi_pma_aux;

architecture behavior of stratixv_hssi_pma_aux is

constant pm_aux_cal_clk_test_sel_int	:	integer	:= bin2int(pm_aux_cal_clk_test_sel);

component	stratixv_hssi_pma_aux_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		pm_aux_cal_clk_test_sel	:	integer	:=	0;
		cal_result_status	:	string	:=	"pm_aux_result_status_tx";
		test_counter_enable	:	string	:=	"false";
		tx_imp	:	string	:=	"cal_imp_46_ohm";
		use_default_base_address	:	string	:=	"true";
		rx_cal_override_value_enable	:	string	:=	"false";
		cal_clk_sel	:	string	:=	"pm_aux_iqclk_cal_clk_sel_cal_clk";
		rx_cal_override_value	:	integer	:=	0;
		tx_cal_override_value	:	integer	:=	0;
		rx_imp	:	string	:=	"cal_imp_46_ohm";
		tx_cal_override_value_enable	:	string	:=	"false";
		avmm_group_channel_index	:	integer	:=	0;
		continuous_calibration	:	string	:=	"false"
	);
	port	(
		calclk	:	in	std_logic := '0';
		calpdb	:	in	std_logic := '0';
		nonusertoio	:	out	std_logic := '0';
		refiqclk	:	in	std_logic_vector(10 downto 0) := "00000000000";
		testcntl	:	in	std_logic := '0';
		zrxtx50	:	out	std_logic_vector(4 downto 0) := "00000"
	);
end component;

begin

inst : stratixv_hssi_pma_aux_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		pm_aux_cal_clk_test_sel	=>	pm_aux_cal_clk_test_sel_int,
		cal_result_status	=>	cal_result_status,
		test_counter_enable	=>	test_counter_enable,
		tx_imp	=>	tx_imp,
		use_default_base_address	=>	use_default_base_address,
		rx_cal_override_value_enable	=>	rx_cal_override_value_enable,
		cal_clk_sel	=>	cal_clk_sel,
		rx_cal_override_value	=>	rx_cal_override_value,
		tx_cal_override_value	=>	tx_cal_override_value,
		rx_imp	=>	rx_imp,
		tx_cal_override_value_enable	=>	tx_cal_override_value_enable,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		continuous_calibration	=>	continuous_calibration
	)
	port map	(
		calclk	=>	calclk,
		calpdb	=>	calpdb,
		nonusertoio	=>	nonusertoio,
		refiqclk	=>	refiqclk,
		testcntl	=>	testcntl,
		zrxtx50	=>	zrxtx50
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_refclk_divider	is
	generic	(
		user_base_address	:	integer	:=	0;
		divide_by	:	integer	:=	1;
		avmm_group_channel_index	:	integer	:=	0;
		use_default_base_address	:	string	:=	"true";
		refclk_coupling_termination	:	string	:=	"cdb_cdr_refclk_coupling_oct_normal_100_ohm_oct";
		enabled	:	string	:=	"false";
		reference_clock_frequency	:	string	:=	"";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		refclkin	:	in	std_logic := '0';
		refclkout	:	out	std_logic := '0'
	);
end	stratixv_hssi_refclk_divider;

architecture behavior of stratixv_hssi_refclk_divider is

component	stratixv_hssi_refclk_divider_encrypted
	generic	(
		user_base_address	:	integer	:=	0;
		divide_by	:	integer	:=	1;
		avmm_group_channel_index	:	integer	:=	0;
		use_default_base_address	:	string	:=	"true";
		refclk_coupling_termination	:	string	:=	"cdb_cdr_refclk_coupling_oct_normal_100_ohm_oct";
		enabled	:	string	:=	"false";
		reference_clock_frequency	:	string	:=	""
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		refclkin	:	in	std_logic := '0';
		refclkout	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_refclk_divider_encrypted
	generic map	(
		user_base_address	=>	user_base_address,
		divide_by	=>	divide_by,
		avmm_group_channel_index	=>	avmm_group_channel_index,
		use_default_base_address	=>	use_default_base_address,
		refclk_coupling_termination	=>	refclk_coupling_termination,
		enabled	=>	enabled,
		reference_clock_frequency	=>	reference_clock_frequency
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		nonuserfrompmaux	=>	nonuserfrompmaux,
		refclkin	=>	refclkin,
		refclkout	=>	refclkout
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.STRATIXV_HSSI_COMPONENTS.all;


entity	stratixv_hssi_pma_cdr_att	is
	generic	(
		enable_debug_info	:	string	:=	"false";        
        refclk_sel   :   string  :=  "refclk";
		bbpd_salatch_offset_ctrl_clk90	:	string	:=	"offset_0mv";
		pd_l_counter	:	integer	:=	1;
		rxpll_pd_bw_ctrl	:	integer	:=	320;
		output_clock_frequency	:	string	:=	"";
		ripple_cap_ctrl	:	string	:=	"none";
		reverse_serial_lpbk	:	string	:=	"false";
		ref_clk_div	:	integer	:=	-1;
		ignore_phslock	:	string	:=	"false";
		pd_charge_pump_current_ctrl	:	integer	:=	5;
		bbpd_salatch_offset_ctrl_clk180	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk270	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk0	:	string	:=	"offset_0mv";
		diag_rev_lpbk	:	string	:=	"false";
		replica_bias_ctrl	:	string	:=	"true";
		m_counter	:	integer	:=	-1;
		pfd_charge_pump_current_ctrl	:	integer	:=	20;
		clklow_fref_to_ppm_div_sel	:	integer	:=	4;
		reverse_loopback	:	string	:=	"reverse_lpbk_cdr";
		charge_pump_current_test	:	string	:=	"enable_ch_pump_normal";
		cdr_atb_select	:	string	:=	"atb_disable";
		rxpll_pfd_bw_ctrl	:	integer	:=	3200;
		powerdown	:	bit	:=	'1';
		pfd_l_counter	:	integer	:=	1;
		fast_lock_mode	:	string	:=	"false";
		regulator_volt_inc	:	string	:=	"0";
		bypass_cp_rgla	:	string	:=	"false";
		fb_sel	:	string	:=	"vcoclk";
		force_vco_const	:	string	:=	"v1p39";
		bbpd_salatch_sel	:	string	:=	"normal";
		reference_clock_frequency	:	string	:=	"";
		hs_levshift_power_supply_setting	:	integer	:=	1;
		ppmsel	:	string	:=	"ppmsel_100";
		ppm_lock_sel	:	string	:=	"pcs_ppm_lock";
		silicon_rev	:	string	:=	"reve";
		cdr_or_eyeq_sel	:	string	:=	"normal_cdr_path"
	);
	port	(
		ck0pd	:	out	std_logic := '0';
		ck180pd	:	out	std_logic := '0';
		ck270pd	:	out	std_logic := '0';
		ck90pd	:	out	std_logic := '0';
		clk270bout	:	out	std_logic := '0';
		clk90bout	:	out	std_logic := '0';
		clklow	:	out	std_logic := '0';
		crurstb	:	in	std_logic := '0';
		devenadiv2p	:	out	std_logic := '0';
		devenbdiv2p	:	out	std_logic := '0';
		devenout	:	out	std_logic := '0';
		div2270	:	out	std_logic := '0';
		doddadiv2p	:	out	std_logic := '0';
		doddbdiv2p	:	out	std_logic := '0';
		doddout	:	out	std_logic := '0';
		fref	:	out	std_logic := '0';
		ltd	:	in	std_logic := '0';
		ltr	:	in	std_logic := '0';
		pdof	:	out	std_logic_vector(3 downto 0) := "0000";
		pfdmodelock	:	out	std_logic := '0';
		ppmlock	:	in	std_logic := '0';
		refclk	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxp	:	in	std_logic := '0';
		rxplllock	:	out	std_logic := '0';
		txrlpbk	:	out	std_logic := '0';
		discdrreset	:	in	std_logic := '0';
		pldclkatt	:	in	std_logic := '0';
		refclkatt	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_cdr_att;

architecture behavior of stratixv_hssi_pma_cdr_att is

constant powerdown_int  :       integer := bin2int(powerdown);

component	stratixv_hssi_pma_cdr_att_encrypted
	generic	(
        enable_debug_info   :   string  :=  "false";      
        refclk_sel   :   string  :=  "refclk";
		bbpd_salatch_offset_ctrl_clk90	:	string	:=	"offset_0mv";
		pd_l_counter	:	integer	:=	1;
		rxpll_pd_bw_ctrl	:	integer	:=	320;
		output_clock_frequency	:	string	:=	"";
		ripple_cap_ctrl	:	string	:=	"none";
		reverse_serial_lpbk	:	string	:=	"false";
		ref_clk_div	:	integer	:=	-1;
		ignore_phslock	:	string	:=	"false";
		pd_charge_pump_current_ctrl	:	integer	:=	5;
		bbpd_salatch_offset_ctrl_clk180	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk270	:	string	:=	"offset_0mv";
		bbpd_salatch_offset_ctrl_clk0	:	string	:=	"offset_0mv";
		diag_rev_lpbk	:	string	:=	"false";
		replica_bias_ctrl	:	string	:=	"true";
		m_counter	:	integer	:=	-1;
		pfd_charge_pump_current_ctrl	:	integer	:=	20;
		clklow_fref_to_ppm_div_sel	:	integer	:=	4;
		reverse_loopback	:	string	:=	"reverse_lpbk_cdr";
		charge_pump_current_test	:	string	:=	"enable_ch_pump_normal";
		cdr_atb_select	:	string	:=	"atb_disable";
		rxpll_pfd_bw_ctrl	:	integer	:=	3200;
		powerdown	:	integer	:=	1;
		pfd_l_counter	:	integer	:=	1;
		fast_lock_mode	:	string	:=	"false";
		regulator_volt_inc	:	string	:=	"0";
		bypass_cp_rgla	:	string	:=	"false";
		fb_sel	:	string	:=	"vcoclk";
		force_vco_const	:	string	:=	"v1p39";
		bbpd_salatch_sel	:	string	:=	"normal";
		reference_clock_frequency	:	string	:=	"";
		hs_levshift_power_supply_setting	:	integer	:=	1;
		ppmsel	:	string	:=	"ppmsel_100";
		ppm_lock_sel	:	string	:=	"pcs_ppm_lock"
	);
	port	(
		ck0pd	:	out	std_logic := '0';
		ck180pd	:	out	std_logic := '0';
		ck270pd	:	out	std_logic := '0';
		ck90pd	:	out	std_logic := '0';
		clk270bout	:	out	std_logic := '0';
		clk90bout	:	out	std_logic := '0';
		clklow	:	out	std_logic := '0';
		crurstb	:	in	std_logic := '0';
		devenadiv2p	:	out	std_logic := '0';
		devenbdiv2p	:	out	std_logic := '0';
		devenout	:	out	std_logic := '0';
		div2270	:	out	std_logic := '0';
		doddadiv2p	:	out	std_logic := '0';
		doddbdiv2p	:	out	std_logic := '0';
		doddout	:	out	std_logic := '0';
		fref	:	out	std_logic := '0';
		ltd	:	in	std_logic := '0';
		ltr	:	in	std_logic := '0';
		pdof	:	out	std_logic_vector(3 downto 0) := "0000";
		pfdmodelock	:	out	std_logic := '0';
		ppmlock	:	in	std_logic := '0';
		refclk	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rxp	:	in	std_logic := '0';
		rxplllock	:	out	std_logic := '0';
		txrlpbk	:	out	std_logic := '0';
		discdrreset	:	in	std_logic := '0';
		pldclkatt	:	in	std_logic := '0';
		refclkatt	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_cdr_att_encrypted
	generic map	(
        enable_debug_info   =>  enable_debug_info,  
        refclk_sel   =>  refclk_sel,      
		bbpd_salatch_offset_ctrl_clk90	=>	bbpd_salatch_offset_ctrl_clk90,
		pd_l_counter	=>	pd_l_counter,
		rxpll_pd_bw_ctrl	=>	rxpll_pd_bw_ctrl,
		output_clock_frequency	=>	output_clock_frequency,
		ripple_cap_ctrl	=>	ripple_cap_ctrl,
		reverse_serial_lpbk	=>	reverse_serial_lpbk,
		ref_clk_div	=>	ref_clk_div,
		ignore_phslock	=>	ignore_phslock,
		pd_charge_pump_current_ctrl	=>	pd_charge_pump_current_ctrl,
		bbpd_salatch_offset_ctrl_clk180	=>	bbpd_salatch_offset_ctrl_clk180,
		bbpd_salatch_offset_ctrl_clk270	=>	bbpd_salatch_offset_ctrl_clk270,
		bbpd_salatch_offset_ctrl_clk0	=>	bbpd_salatch_offset_ctrl_clk0,
		diag_rev_lpbk	=>	diag_rev_lpbk,
		replica_bias_ctrl	=>	replica_bias_ctrl,
		m_counter	=>	m_counter,
		pfd_charge_pump_current_ctrl	=>	pfd_charge_pump_current_ctrl,
		clklow_fref_to_ppm_div_sel	=>	clklow_fref_to_ppm_div_sel,
		reverse_loopback	=>	reverse_loopback,
		charge_pump_current_test	=>	charge_pump_current_test,
		cdr_atb_select	=>	cdr_atb_select,
		rxpll_pfd_bw_ctrl	=>	rxpll_pfd_bw_ctrl,
		powerdown	=>	powerdown_int,
		pfd_l_counter	=>	pfd_l_counter,
		fast_lock_mode	=>	fast_lock_mode,
		regulator_volt_inc	=>	regulator_volt_inc,
		bypass_cp_rgla	=>	bypass_cp_rgla,
		fb_sel	=>	fb_sel,
		force_vco_const	=>	force_vco_const,
		bbpd_salatch_sel	=>	bbpd_salatch_sel,
		reference_clock_frequency	=>	reference_clock_frequency,
		hs_levshift_power_supply_setting	=>	hs_levshift_power_supply_setting,
		ppmsel	=>	ppmsel,
		ppm_lock_sel	=>	ppm_lock_sel
	)
	port map	(
		ck0pd	=>	ck0pd,
		ck180pd	=>	ck180pd,
		ck270pd	=>	ck270pd,
		ck90pd	=>	ck90pd,
		clk270bout	=>	clk270bout,
		clk90bout	=>	clk90bout,
		clklow	=>	clklow,
		crurstb	=>	crurstb,
		devenadiv2p	=>	devenadiv2p,
		devenbdiv2p	=>	devenbdiv2p,
		devenout	=>	devenout,
		div2270	=>	div2270,
		doddadiv2p	=>	doddadiv2p,
		doddbdiv2p	=>	doddbdiv2p,
		doddout	=>	doddout,
		fref	=>	fref,
		ltd	=>	ltd,
		ltr	=>	ltr,
		pdof	=>	pdof,
		pfdmodelock	=>	pfdmodelock,
		ppmlock	=>	ppmlock,
		refclk	=>	refclk,
		rstn	=>	rstn,
		rxp	=>	rxp,
		rxplllock	=>	rxplllock,
		txrlpbk	=>	txrlpbk,
		discdrreset	=>	discdrreset,
		pldclkatt	=>	pldclkatt,
		refclkatt	=>	refclkatt
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_deser_att	is
	generic	(
		vcobypass	:	string	:=	"clk_divrx";
		enable_debug_info	:	string	:=	"false";
		silicon_rev	:	string	:=	"reve";
		serializer_clk_inv	:	string	:=	"non_inv_clk"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkdivrx	:	out	std_logic := '0';
		dataout	:	out	std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		devenadiv2n	:	in	std_logic := '0';
		devenadiv2p	:	in	std_logic := '0';
		devenbdiv2n	:	in	std_logic := '0';
		devenbdiv2p	:	in	std_logic := '0';
		div2270	:	in	std_logic := '0';
		div2270n	:	in	std_logic := '0';
		doddadiv2n	:	in	std_logic := '0';
		doddadiv2p	:	in	std_logic := '0';
		doddbdiv2n	:	in	std_logic := '0';
		doddbdiv2p	:	in	std_logic := '0';
		observableasyncdata	:	out	std_logic := '0';
		observableintclk	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_deser_att;

architecture behavior of stratixv_hssi_pma_deser_att is

component	stratixv_hssi_pma_deser_att_encrypted
	generic	(
		vcobypass	:	string	:=	"clk_divrx";
		enable_debug_info	:	string	:=	"false"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clkdivrx	:	out	std_logic := '0';
		dataout	:	out	std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		devenadiv2n	:	in	std_logic := '0';
		devenadiv2p	:	in	std_logic := '0';
		devenbdiv2n	:	in	std_logic := '0';
		devenbdiv2p	:	in	std_logic := '0';
		div2270	:	in	std_logic := '0';
		div2270n	:	in	std_logic := '0';
		doddadiv2n	:	in	std_logic := '0';
		doddadiv2p	:	in	std_logic := '0';
		doddbdiv2n	:	in	std_logic := '0';
		doddbdiv2p	:	in	std_logic := '0';
		observableintclk	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_deser_att_encrypted
	generic map	(
		vcobypass	=>	vcobypass,
		enable_debug_info	=>	enable_debug_info
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clkdivrx	=>	clkdivrx,
		dataout	=>	dataout,
		devenadiv2n	=>	devenadiv2n,
		devenadiv2p	=>	devenadiv2p,
		devenbdiv2n	=>	devenbdiv2n,
		devenbdiv2p	=>	devenbdiv2p,
		div2270	=>	div2270,
		div2270n	=>	div2270n,
		doddadiv2n	=>	doddadiv2n,
		doddadiv2p	=>	doddadiv2p,
		doddbdiv2n	=>	doddbdiv2n,
		doddbdiv2p	=>	doddbdiv2p,
		observableintclk	=>	observableintclk,
		rstn	=>	rstn
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_rx_att	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		var_bulk1	:	string	:=	"eq1_var_bulk0";
		vcm_pdnb	:	string	:=	"lsb_lo_vcm_current";
		offcomp_cmref	:	string	:=	"off_comp_vcm0";
		var_gate2	:	string	:=	"eq2_var_gate0";
		var_bulk0	:	string	:=	"eq0_var_bulk0";
		eq_bias_adj	:	string	:=	"i_eqbias_def";
		atb_sel	:	string	:=	"atb_off";
		eq1_dc_gain	:	string	:=	"eq1_gain_min";
		vcm_pup	:	string	:=	"msb_lo_vcm_current";
		off_filter_cap	:	string	:=	"off_filt_cap0";
		rx_pdb	:	string	:=	"power_down_rx";
		var_gate1	:	string	:=	"eq1_var_gate0";
		diag_rev_lpbk	:	string	:=	"no_diag_rev_loopback";
		eqz3_pd	:	string	:=	"eqz3shrt_dis";
		eq2_dc_gain	:	string	:=	"eq2_gain_min";
		offcomp_igain	:	string	:=	"off_comp_ig0";
		var_bulk2	:	string	:=	"eq2_var_bulk0";
		offset_correct	:	string	:=	"offcorr_dis";
		rload_shunt	:	string	:=	"rld000";
		rxterm_ctl	:	string	:=	"rxterm_dis";
		rx_vcm	:	string	:=	"vtt_0p7v";
		off_filter_res	:	string	:=	"off_filt_res0";
		eq0_dc_gain	:	string	:=	"eq0_gain_min";
		rxterm_set	:	string	:=	"def_rterm";
		rzero_shunt	:	string	:=	"rz0";
		diag_loopbk_bias	:	string	:=	"dlb_bw0";
		var_gate0	:	string	:=	"eq0_var_gate0";
		offset_cancellation_ctrl	:	string	:=	"volt_0mv";
		silicon_rev	:	string	:=	"reve";
		eye_pdb_att	:	string	:=	"power_down_eye";
		vert_threshold_att	:	string	:=	"vert_0mv";
		v_vert_threshold_scaling_att	:	string	:=	"scale_plus_1p0";
		phase_steps_sel_att	:	string	:=	"step20";
		bit_error_check_enable_att	:	string	:=	"bit_err_chk_disable"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		lpbkn	:	in	std_logic := '0';
		lpbkp	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		ocden	:	in	std_logic := '0';
		outnbidirout	:	out	std_logic := '0';
		outpbidirout	:	out	std_logic := '0';
		rdlpbkn	:	out	std_logic := '0';
		rdlpbkp	:	out	std_logic := '0';
		rxnbidirin	:	in	std_logic := '0';
		rxpbidirin	:	in	std_logic := '0';
		slpbk	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_rx_att;

architecture behavior of stratixv_hssi_pma_rx_att is

component	stratixv_hssi_pma_rx_att_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		var_bulk1	:	string	:=	"eq1_var_bulk0";
		vcm_pdnb	:	string	:=	"lsb_lo_vcm_current";
		offcomp_cmref	:	string	:=	"off_comp_vcm0";
		var_gate2	:	string	:=	"eq2_var_gate0";
		var_bulk0	:	string	:=	"eq0_var_bulk0";
		eq_bias_adj	:	string	:=	"i_eqbias_def";
		atb_sel	:	string	:=	"atb_off";
		eq1_dc_gain	:	string	:=	"eq1_gain_min";
		vcm_pup	:	string	:=	"msb_lo_vcm_current";
		off_filter_cap	:	string	:=	"off_filt_cap0";
		rx_pdb	:	string	:=	"power_down_rx";
		var_gate1	:	string	:=	"eq1_var_gate0";
		diag_rev_lpbk	:	string	:=	"no_diag_rev_loopback";
		eqz3_pd	:	string	:=	"eqz3shrt_dis";
		eq2_dc_gain	:	string	:=	"eq2_gain_min";
		offcomp_igain	:	string	:=	"off_comp_ig0";
		var_bulk2	:	string	:=	"eq2_var_bulk0";
		offset_correct	:	string	:=	"offcorr_dis";
		rload_shunt	:	string	:=	"rld000";
		rxterm_ctl	:	string	:=	"rxterm_dis";
		rx_vcm	:	string	:=	"vtt_0p7v";
		off_filter_res	:	string	:=	"off_filt_res0";
		eq0_dc_gain	:	string	:=	"eq0_gain_min";
		rxterm_set	:	string	:=	"def_rterm";
		rzero_shunt	:	string	:=	"rz0";
		diag_loopbk_bias	:	string	:=	"dlb_bw0";
		var_gate0	:	string	:=	"eq0_var_gate0";
		offset_cancellation_ctrl	:	string	:=	"volt_0mv"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		lpbkn	:	in	std_logic := '0';
		lpbkp	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		ocden	:	in	std_logic := '0';
		outnbidirout	:	out	std_logic := '0';
		outpbidirout	:	out	std_logic := '0';
		rdlpbkn	:	out	std_logic := '0';
		rdlpbkp	:	out	std_logic := '0';
		rxnbidirin	:	in	std_logic := '0';
		rxpbidirin	:	in	std_logic := '0';
		slpbk	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_rx_att_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		var_bulk1	=>	var_bulk1,
		vcm_pdnb	=>	vcm_pdnb,
		offcomp_cmref	=>	offcomp_cmref,
		var_gate2	=>	var_gate2,
		var_bulk0	=>	var_bulk0,
		eq_bias_adj	=>	eq_bias_adj,
		atb_sel	=>	atb_sel,
		eq1_dc_gain	=>	eq1_dc_gain,
		vcm_pup	=>	vcm_pup,
		off_filter_cap	=>	off_filter_cap,
		rx_pdb	=>	rx_pdb,
		var_gate1	=>	var_gate1,
		diag_rev_lpbk	=>	diag_rev_lpbk,
		eqz3_pd	=>	eqz3_pd,
		eq2_dc_gain	=>	eq2_dc_gain,
		offcomp_igain	=>	offcomp_igain,
		var_bulk2	=>	var_bulk2,
		offset_correct	=>	offset_correct,
		rload_shunt	=>	rload_shunt,
		rxterm_ctl	=>	rxterm_ctl,
		rx_vcm	=>	rx_vcm,
		off_filter_res	=>	off_filter_res,
		eq0_dc_gain	=>	eq0_dc_gain,
		rxterm_set	=>	rxterm_set,
		rzero_shunt	=>	rzero_shunt,
		diag_loopbk_bias	=>	diag_loopbk_bias,
		var_gate0	=>	var_gate0,
		offset_cancellation_ctrl	=>	offset_cancellation_ctrl
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		lpbkn	=>	lpbkn,
		lpbkp	=>	lpbkp,
		nonuserfrompmaux	=>	nonuserfrompmaux,
		ocden	=>	ocden,
		outnbidirout	=>	outnbidirout,
		outpbidirout	=>	outpbidirout,
		rdlpbkn	=>	rdlpbkn,
		rdlpbkp	=>	rdlpbkp,
		rxnbidirin	=>	rxnbidirin,
		rxpbidirin	=>	rxpbidirin,
		slpbk	=>	slpbk
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_ser_att	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		ser_loopback	:	string	:=	"loopback_disable";
		ser_pdb	:	string	:=	"power_down";
		silicon_rev	:	string	:=	"reve"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clk0	:	in	std_logic := '0';
		clk180	:	in	std_logic := '0';
		clkdivtxtop	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		lbvon	:	out	std_logic := '0';
		lbvop	:	out	std_logic := '0';
		observableasyncdatain	:	out	std_logic := '0';
		observableintclk	:	out	std_logic := '0';
		observablesyncdatain	:	out	std_logic := '0';
		oe	:	out	std_logic := '0';
		oeb	:	out	std_logic := '0';
		oo	:	out	std_logic := '0';
		oob	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		slpbk	:	in	std_logic := '0'
	);
end	stratixv_hssi_pma_ser_att;

architecture behavior of stratixv_hssi_pma_ser_att is

component	stratixv_hssi_pma_ser_att_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		ser_loopback	:	string	:=	"loopback_disable";
		ser_pdb	:	string	:=	"power_down"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clk0	:	in	std_logic := '0';
		clk180	:	in	std_logic := '0';
		clkdivtxtop	:	out	std_logic := '0';
		datain	:	in	std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		lbvon	:	out	std_logic := '0';
		lbvop	:	out	std_logic := '0';
		observableasyncdatain	:	out	std_logic := '0';
		observableintclk	:	out	std_logic := '0';
		observablesyncdatain	:	out	std_logic := '0';
		oe	:	out	std_logic := '0';
		oeb	:	out	std_logic := '0';
		oo	:	out	std_logic := '0';
		oob	:	out	std_logic := '0';
		rstn	:	in	std_logic := '0';
		slpbk	:	in	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_ser_att_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		ser_loopback	=>	ser_loopback,
		ser_pdb	=>	ser_pdb
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clk0	=>	clk0,
		clk180	=>	clk180,
		clkdivtxtop	=>	clkdivtxtop,
		datain	=>	datain,
		lbvon	=>	lbvon,
		lbvop	=>	lbvop,
		observableasyncdatain	=>	observableasyncdatain,
		observableintclk	=>	observableintclk,
		observablesyncdatain	=>	observablesyncdatain,
		oe	=>	oe,
		oeb	=>	oeb,
		oo	=>	oo,
		oob	=>	oob,
		rstn	=>	rstn,
		slpbk	=>	slpbk
	);


end behavior;

library IEEE;
use IEEE.std_logic_1164.all;


entity	stratixv_hssi_pma_tx_att	is
	generic	(
		enable_debug_info	:	string	:=	"false";
		main_driver_switch_en_2	:	string	:=	"enable_main_switch_2";
		pre_emp_ctrl_post_tap_level	:	string	:=	"fir_post_disabled";
		post_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_post_1";
		main_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_main_0";
		clock_monitor	:	string	:=	"disable_clk_mon";
		main_driver_switch_en_1	:	string	:=	"enable_main_switch_1";
		vcm_current_addl	:	string	:=	"low_current";
		post_driver_switch_en_0	:	string	:=	"disable_post_switch_0";
		term_sel	:	string	:=	"r_setting_7";
		pre_driver_switch_en_0	:	string	:=	"disable_pre_switch_0";
		rev_ser_lb_en	:	string	:=	"disable_rev_ser_lb";
		pre_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_pre_0";
		high_vccehtx	:	string	:=	"volt_1p5v";
		vod_ctrl_main_tap_level	:	string	:=	"vod_0ma";
		sig_inv_pre_tap	:	string	:=	"non_inv_pre_tap";
		main_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_main_1";
		lst	:	string	:=	"atb_disabled";
		pre_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_pre_1";
		post_driver_switch_en_1	:	string	:=	"disable_post_switch_1";
		pre_driver_switch_en_1	:	string	:=	"disable_pre_switch_1";
		tx_powerdown	:	string	:=	"normal_tx_on";
		revlb_select	:	string	:=	"sel_met_lb";
		pre_emp_ctrl_pre_tap_level	:	string	:=	"fir_pre_disabled";
		post_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_post_0";
		main_driver_switch_en_3	:	string	:=	"disable_main_switch_3";
		main_driver_switch_en_0	:	string	:=	"enable_main_switch_0";
		common_mode_driver_sel	:	string	:=	"volt_0p65v";
		silicon_rev	:	string	:=	"reve";
		enable_icdr	:	string	:=	"sel_metalic_lb";
		termination_en	:	string	:=	"enable_termination"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clk270bout	:	in	std_logic := '0';
		clk90bout	:	in	std_logic := '0';
		devenbout	:	in	std_logic := '0';
		devenout	:	in	std_logic := '0';
		doddbout	:	in	std_logic := '0';
		doddout	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		oe	:	in	std_logic := '0';
		oeb	:	in	std_logic := '0';
		oo	:	in	std_logic := '0';
		oob	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rtxrlpbk	:	in	std_logic := '0';
		rxrlpbkn	:	in	std_logic := '0';
		rxrlpbkp	:	in	std_logic := '0';
		vonbidirin	:	in	std_logic := '0';
		vonbidirout	:	out	std_logic := '0';
		vopbidirin	:	in	std_logic := '0';
		vopbidirout	:	out	std_logic := '0'
	);
end	stratixv_hssi_pma_tx_att;

architecture behavior of stratixv_hssi_pma_tx_att is

component	stratixv_hssi_pma_tx_att_encrypted
	generic	(
		enable_debug_info	:	string	:=	"false";
		main_driver_switch_en_2	:	string	:=	"enable_main_switch_2";
		pre_emp_ctrl_post_tap_level	:	string	:=	"fir_post_disabled";
		post_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_post_1";
		main_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_main_0";
		clock_monitor	:	string	:=	"disable_clk_mon";
		main_driver_switch_en_1	:	string	:=	"enable_main_switch_1";
		vcm_current_addl	:	string	:=	"low_current";
		post_driver_switch_en_0	:	string	:=	"disable_post_switch_0";
		term_sel	:	string	:=	"r_setting_7";
		pre_driver_switch_en_0	:	string	:=	"disable_pre_switch_0";
		rev_ser_lb_en	:	string	:=	"disable_rev_ser_lb";
		pre_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_pre_0";
		high_vccehtx	:	string	:=	"volt_1p5v";
		vod_ctrl_main_tap_level	:	string	:=	"vod_0ma";
		sig_inv_pre_tap	:	string	:=	"non_inv_pre_tap";
		main_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_main_1";
		lst	:	string	:=	"atb_disabled";
		pre_tap_lowpass_filter_en_1	:	string	:=	"enable_lp_pre_1";
		post_driver_switch_en_1	:	string	:=	"disable_post_switch_1";
		pre_driver_switch_en_1	:	string	:=	"disable_pre_switch_1";
		tx_powerdown	:	string	:=	"normal_tx_on";
		revlb_select	:	string	:=	"sel_met_lb";
		pre_emp_ctrl_pre_tap_level	:	string	:=	"fir_pre_disabled";
		post_tap_lowpass_filter_en_0	:	string	:=	"enable_lp_post_0";
		main_driver_switch_en_3	:	string	:=	"disable_main_switch_3";
		main_driver_switch_en_0	:	string	:=	"enable_main_switch_0";
		common_mode_driver_sel	:	string	:=	"volt_0p65v";
		enable_icdr	:	string	:=	"sel_metalic_lb";
		termination_en	:	string	:=	"enable_termination"
	);
	port	(
		avmmaddress	:	in	std_logic_vector(10 downto 0) := "00000000000";
		avmmbyteen	:	in	std_logic_vector(1 downto 0) := "00";
		avmmclk	:	in	std_logic := '0';
		avmmread	:	in	std_logic := '0';
		avmmreaddata	:	out	std_logic_vector(15 downto 0) := "0000000000000000";
		avmmrstn	:	in	std_logic := '0';
		avmmwrite	:	in	std_logic := '0';
		avmmwritedata	:	in	std_logic_vector(15 downto 0) := "0000000000000000";
		blockselect	:	out	std_logic := '0';
		clk270bout	:	in	std_logic := '0';
		clk90bout	:	in	std_logic := '0';
		devenbout	:	in	std_logic := '0';
		devenout	:	in	std_logic := '0';
		doddbout	:	in	std_logic := '0';
		doddout	:	in	std_logic := '0';
		nonuserfrompmaux	:	in	std_logic := '0';
		oe	:	in	std_logic := '0';
		oeb	:	in	std_logic := '0';
		oo	:	in	std_logic := '0';
		oob	:	in	std_logic := '0';
		rstn	:	in	std_logic := '0';
		rtxrlpbk	:	in	std_logic := '0';
		rxrlpbkn	:	in	std_logic := '0';
		rxrlpbkp	:	in	std_logic := '0';
		vonbidirin	:	in	std_logic := '0';
		vonbidirout	:	out	std_logic := '0';
		vopbidirin	:	in	std_logic := '0';
		vopbidirout	:	out	std_logic := '0'
	);
end component;

begin


inst : stratixv_hssi_pma_tx_att_encrypted
	generic map	(
		enable_debug_info	=>	enable_debug_info,
		main_driver_switch_en_2	=>	main_driver_switch_en_2,
		pre_emp_ctrl_post_tap_level	=>	pre_emp_ctrl_post_tap_level,
		post_tap_lowpass_filter_en_1	=>	post_tap_lowpass_filter_en_1,
		main_tap_lowpass_filter_en_0	=>	main_tap_lowpass_filter_en_0,
		clock_monitor	=>	clock_monitor,
		main_driver_switch_en_1	=>	main_driver_switch_en_1,
		vcm_current_addl	=>	vcm_current_addl,
		post_driver_switch_en_0	=>	post_driver_switch_en_0,
		term_sel	=>	term_sel,
		pre_driver_switch_en_0	=>	pre_driver_switch_en_0,
		rev_ser_lb_en	=>	rev_ser_lb_en,
		pre_tap_lowpass_filter_en_0	=>	pre_tap_lowpass_filter_en_0,
		high_vccehtx	=>	high_vccehtx,
		vod_ctrl_main_tap_level	=>	vod_ctrl_main_tap_level,
		sig_inv_pre_tap	=>	sig_inv_pre_tap,
		main_tap_lowpass_filter_en_1	=>	main_tap_lowpass_filter_en_1,
		lst	=>	lst,
		pre_tap_lowpass_filter_en_1	=>	pre_tap_lowpass_filter_en_1,
		post_driver_switch_en_1	=>	post_driver_switch_en_1,
		pre_driver_switch_en_1	=>	pre_driver_switch_en_1,
		tx_powerdown	=>	tx_powerdown,
		revlb_select	=>	revlb_select,
		pre_emp_ctrl_pre_tap_level	=>	pre_emp_ctrl_pre_tap_level,
		post_tap_lowpass_filter_en_0	=>	post_tap_lowpass_filter_en_0,
		main_driver_switch_en_3	=>	main_driver_switch_en_3,
		main_driver_switch_en_0	=>	main_driver_switch_en_0,
		common_mode_driver_sel	=>	common_mode_driver_sel,
		enable_icdr	=>	enable_icdr,
		termination_en	=>	termination_en
	)
	port map	(
		avmmaddress	=>	avmmaddress,
		avmmbyteen	=>	avmmbyteen,
		avmmclk	=>	avmmclk,
		avmmread	=>	avmmread,
		avmmreaddata	=>	avmmreaddata,
		avmmrstn	=>	avmmrstn,
		avmmwrite	=>	avmmwrite,
		avmmwritedata	=>	avmmwritedata,
		blockselect	=>	blockselect,
		clk270bout	=>	clk270bout,
		clk90bout	=>	clk90bout,
		devenbout	=>	devenbout,
		devenout	=>	devenout,
		doddbout	=>	doddbout,
		doddout	=>	doddout,
		nonuserfrompmaux	=>	nonuserfrompmaux,
		oe	=>	oe,
		oeb	=>	oeb,
		oo	=>	oo,
		oob	=>	oob,
		rstn	=>	rstn,
		rtxrlpbk	=>	rtxrlpbk,
		rxrlpbkn	=>	rxrlpbkn,
		rxrlpbkp	=>	rxrlpbkp,
		vonbidirin	=>	vonbidirin,
		vonbidirout	=>	vonbidirout,
		vopbidirin	=>	vopbidirin,
		vopbidirout	=>	vopbidirout
	);


end behavior;

