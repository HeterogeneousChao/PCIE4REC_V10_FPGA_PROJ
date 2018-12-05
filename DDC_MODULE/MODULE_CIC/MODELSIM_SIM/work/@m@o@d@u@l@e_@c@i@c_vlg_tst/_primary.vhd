library verilog;
use verilog.vl_types.all;
entity MODULE_CIC_vlg_tst is
    generic(
        clk_period      : integer := 200;
        clk_half_period : vl_notype;
        clk_quarter     : vl_notype;
        clk_period_1M   : vl_notype;
        clk_half_period_1M: vl_notype;
        data_num        : integer := 50000;
        init_config_time: integer := 5000;
        time_sim        : vl_notype;
        INPUT_WIDTH     : integer := 16;
        MIDDLE_WIDTH    : integer := 37;
        OUTPUT_WIDTH    : integer := 24;
        CIC_MAX_DCEF    : integer := 16;
        CIC_MAX_DIFFD   : integer := 1;
        CIC_MAX_NUMSECS : integer := 16;
        CIC_CONFIG_DATA_WIDTH: integer := 16
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of clk_half_period : constant is 3;
    attribute mti_svvh_generic_type of clk_quarter : constant is 3;
    attribute mti_svvh_generic_type of clk_period_1M : constant is 3;
    attribute mti_svvh_generic_type of clk_half_period_1M : constant is 3;
    attribute mti_svvh_generic_type of data_num : constant is 1;
    attribute mti_svvh_generic_type of init_config_time : constant is 1;
    attribute mti_svvh_generic_type of time_sim : constant is 3;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MIDDLE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DCEF : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DIFFD : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_NUMSECS : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_WIDTH : constant is 1;
end MODULE_CIC_vlg_tst;
