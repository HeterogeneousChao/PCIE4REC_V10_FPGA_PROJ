library verilog;
use verilog.vl_types.all;
entity MODULE_DFIR is
    generic(
        INPUT_WIDTH     : integer := 24;
        OUTPUT_WIDTH    : integer := 24;
        CONFIG_WIDTH    : integer := 32;
        FIR_FILTER_MAX_ORDER: integer := 512;
        DFIR_MAX_DCEF   : integer := 5;
        DCEF_CONFIG_DATA_WIDTH: integer := 24;
        FIR_COEFF_WIDTH : integer := 24;
        DFIR_MAX_CHANNELS: integer := 2;
        FIR_FILTER_MULTER_NUM: integer := 8;
        FIR_MULT_ITERATION_NUM: integer := 32;
        DCEF_CONFIG_DATA_NUM: integer := 1
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
    attribute mti_svvh_generic_type of FIR_FILTER_MAX_ORDER : constant is 1;
    attribute mti_svvh_generic_type of DFIR_MAX_DCEF : constant is 1;
    attribute mti_svvh_generic_type of DCEF_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FIR_COEFF_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DFIR_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of FIR_FILTER_MULTER_NUM : constant is 1;
    attribute mti_svvh_generic_type of FIR_MULT_ITERATION_NUM : constant is 1;
    attribute mti_svvh_generic_type of DCEF_CONFIG_DATA_NUM : constant is 1;
end MODULE_DFIR;
