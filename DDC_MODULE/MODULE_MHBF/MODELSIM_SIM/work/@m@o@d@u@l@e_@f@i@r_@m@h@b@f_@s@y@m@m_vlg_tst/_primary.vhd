library verilog;
use verilog.vl_types.all;
entity MODULE_FIR_MHBF_SYMM_vlg_tst is
    generic(
        clk_period      : integer := 10;
        clk_half_period : vl_notype;
        clk_period_1M   : vl_notype;
        clk_half_period_1M: vl_notype;
        data_num        : integer := 10000;
        time_sim        : vl_notype;
        clk_period_data_in_valid_low: vl_notype;
        initial_config_time: integer := 3000;
        FILTER_MAX_ORDER: integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of clk_half_period : constant is 3;
    attribute mti_svvh_generic_type of clk_period_1M : constant is 3;
    attribute mti_svvh_generic_type of clk_half_period_1M : constant is 3;
    attribute mti_svvh_generic_type of data_num : constant is 1;
    attribute mti_svvh_generic_type of time_sim : constant is 3;
    attribute mti_svvh_generic_type of clk_period_data_in_valid_low : constant is 3;
    attribute mti_svvh_generic_type of initial_config_time : constant is 1;
    attribute mti_svvh_generic_type of FILTER_MAX_ORDER : constant is 1;
end MODULE_FIR_MHBF_SYMM_vlg_tst;
