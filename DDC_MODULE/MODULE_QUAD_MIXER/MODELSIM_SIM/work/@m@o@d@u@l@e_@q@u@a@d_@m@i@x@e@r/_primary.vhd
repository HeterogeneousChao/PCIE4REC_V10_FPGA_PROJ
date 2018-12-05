library verilog;
use verilog.vl_types.all;
entity MODULE_QUAD_MIXER is
    generic(
        INPUT_WIDTH     : integer := 16;
        OUTPUT_WIDTH    : integer := 16;
        MULT_OUTPUT_WIDTH: integer := 32;
        NCO_CONFIT_WIDTH: integer := 32;
        NCO_FRE_MOD_WIDTH: integer := 32;
        NCO_PHA_MOD_WIDTH: integer := 32;
        NCO_CONFIT_CTL_WIDTH: integer := 4;
        NCO_OUTPUT_WIDTH: integer := 16;
        NCO_ACCUMULATE_WIDTH: integer := 32;
        NCO_ROM_ADDR_WIDTH: integer := 16;
        NCO_ROM_DATA_WIDTH: integer := 16;
        NCO_DEFAULT_INC_PHA_MOD: integer := 429496728
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_In         : in     vl_logic_vector;
        Data_Out_I      : out    vl_logic_vector;
        Data_Out_Q      : out    vl_logic_vector;
        NCO_Data_Out_I  : out    vl_logic_vector;
        NCO_Data_Out_Q  : out    vl_logic_vector;
        Data_In_Valid   : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MULT_OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_CONFIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_FRE_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_PHA_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_CONFIT_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_ACCUMULATE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_ROM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_ROM_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_DEFAULT_INC_PHA_MOD : constant is 1;
end MODULE_QUAD_MIXER;
