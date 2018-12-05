library verilog;
use verilog.vl_types.all;
entity MODULE_CIC_CICC is
    generic(
        INPUT_WIDTH     : integer := 16;
        OUTPUT_WIDTH    : integer := 24;
        CONFIG_WIDTH    : integer := 32;
        CIC_MIDDLE_WIDTH: integer := 37;
        CIC_MAX_CHANNELS: integer := 2;
        CICC_MAX_CHANNELS: integer := 2;
        CLK_DELAY_PERIOD: integer := 0;
        CIC_CONFIG_DATA_WIDTH: integer := 16;
        CIC_MAX_DCEF    : integer := 16;
        CIC_MAX_DIFFD   : integer := 1;
        CIC_MAX_NUMSECS : integer := 16;
        CICC_COEFF_WIDTH: integer := 24;
        CICC_FILTER_MULTER_NUM: integer := 32;
        CICC_MULT_ITERATION_NUM: integer := 4;
        CICC_FILTER_MAX_ORDER: integer := 256;
        CIC_CONFIG_DATA_NUM: integer := 3;
        CICC_CONFIG_DATA_NUM: integer := 259
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_In         : in     vl_logic_vector;
        Data_In_Valid   : in     vl_logic;
        Data_In_ChIdx   : in     vl_logic_vector(3 downto 0);
        Data_Out        : out    vl_logic_vector;
        Data_Out_Valid  : out    vl_logic;
        Data_Out_ChIdx  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MIDDLE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of CICC_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of CLK_DELAY_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DCEF : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DIFFD : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_NUMSECS : constant is 1;
    attribute mti_svvh_generic_type of CICC_COEFF_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CICC_FILTER_MULTER_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC_MULT_ITERATION_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC_FILTER_MAX_ORDER : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC_CONFIG_DATA_NUM : constant is 1;
end MODULE_CIC_CICC;
