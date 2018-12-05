library verilog;
use verilog.vl_types.all;
entity MODULE_DDC_1CHANNEL is
    generic(
        INPUT_WIDTH     : integer := 16;
        OUTPUT_WIDTH    : integer := 24;
        CONFIG_WIDTH    : integer := 32;
        MIXER_OUTPUT_WIDTH: integer := 16;
        INPUT_DATA_SHIFT_NUM: integer := 1;
        QMIXER_CONFIG_DATA_NUM: integer := 2;
        NCO_CONFIT_WIDTH: integer := 32;
        NCO_DEFAULT_INC_PHA_MOD: integer := 429496728;
        NCO_ACCUMULATE_WIDTH: integer := 32;
        NCO_PHA_MOD_WIDTH: integer := 32;
        NCO_FRE_MOD_WIDTH: integer := 32;
        NCO_CONFIT_CTL_WIDTH: integer := 4;
        CIC1_CONFIG_DATA_NUM: integer := 3;
        CICC1_CONFIG_DATA_NUM: integer := 259;
        CIC2_CONFIG_DATA_NUM: integer := 3;
        CICC2_CONFIG_DATA_NUM: integer := 259;
        MHBF_CONFIG_DATA_NUM: integer := 176;
        DFIR_CONFIG_DATA_NUM: integer := 516
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
        Data_Out_I_Valid: out    vl_logic;
        Data_Out_Q      : out    vl_logic_vector;
        Data_Out_Q_Valid: out    vl_logic;
        Data_In_Valid   : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MIXER_OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of INPUT_DATA_SHIFT_NUM : constant is 1;
    attribute mti_svvh_generic_type of QMIXER_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of NCO_CONFIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_DEFAULT_INC_PHA_MOD : constant is 1;
    attribute mti_svvh_generic_type of NCO_ACCUMULATE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_PHA_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_FRE_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NCO_CONFIT_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC1_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC1_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC2_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC2_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of MHBF_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of DFIR_CONFIG_DATA_NUM : constant is 1;
end MODULE_DDC_1CHANNEL;
