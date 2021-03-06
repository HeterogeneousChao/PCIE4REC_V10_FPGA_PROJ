library verilog;
use verilog.vl_types.all;
entity MODULE_NCO_vlg_tst is
    generic(
        clk_period      : integer := 200;
        clk_half_period : vl_notype;
        clk_period_1M   : vl_notype;
        clk_half_period_1M: vl_notype;
        data_num        : integer := 3000;
        init_config_time: integer := 3000;
        time_sim        : vl_notype;
        CONFIT_WIDTH    : integer := 32;
        FRE_MOD_WIDTH   : integer := 32;
        PHA_MOD_WIDTH   : integer := 32;
        CONFIT_CTL_WIDTH: integer := 4;
        OUTPUT_WIDTH    : integer := 16;
        ACCUMULATE_WIDTH: integer := 32;
        ROM_ADDR_WIDTH  : integer := 16;
        ROM_DATA_WIDTH  : integer := 16;
        INC_PHA_MOD_1MHz: integer := 42949672;
        INC_PHA_MOD_5MHz: integer := 214748364;
        INC_PHA_MOD_10MHz: integer := 429496729;
        ACC_LENGTH      : integer := -1;
        OneFourthsPI    : integer := 536870912;
        HALF_PI         : integer := 1073741824;
        PI              : integer := -2147483648;
        ThreeFourthsPI  : integer := 1610612736
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of clk_half_period : constant is 3;
    attribute mti_svvh_generic_type of clk_period_1M : constant is 3;
    attribute mti_svvh_generic_type of clk_half_period_1M : constant is 3;
    attribute mti_svvh_generic_type of data_num : constant is 1;
    attribute mti_svvh_generic_type of init_config_time : constant is 1;
    attribute mti_svvh_generic_type of time_sim : constant is 3;
    attribute mti_svvh_generic_type of CONFIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FRE_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PHA_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIT_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ACCUMULATE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ROM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ROM_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of INC_PHA_MOD_1MHz : constant is 1;
    attribute mti_svvh_generic_type of INC_PHA_MOD_5MHz : constant is 1;
    attribute mti_svvh_generic_type of INC_PHA_MOD_10MHz : constant is 1;
    attribute mti_svvh_generic_type of ACC_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of OneFourthsPI : constant is 1;
    attribute mti_svvh_generic_type of HALF_PI : constant is 1;
    attribute mti_svvh_generic_type of PI : constant is 1;
    attribute mti_svvh_generic_type of ThreeFourthsPI : constant is 1;
end MODULE_NCO_vlg_tst;
