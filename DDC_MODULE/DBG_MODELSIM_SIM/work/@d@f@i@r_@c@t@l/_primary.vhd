library verilog;
use verilog.vl_types.all;
entity DFIR_CTL is
    generic(
        FIR_MAX_ORDER   : integer := 256;
        CONFIG_WIDTH    : integer := 32;
        DCEF_CONFIG_DATA_WIDTH: integer := 24;
        FIR_COEFF_WIDTH : integer := 24;
        DCEF_CONFIG_DATA_NUM: integer := 1;
        FIR_CONFIG_DATA_NUM: vl_notype
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        isConfigACK_FIR : in     vl_logic;
        isConfigDone_FIR: in     vl_logic;
        isConfig_FIR    : out    vl_logic;
        Data_Config_Out_FIR: out    vl_logic_vector;
        isConfigACK_DCEF: in     vl_logic;
        isConfigDone_DCEF: in     vl_logic;
        isConfig_DCEF   : out    vl_logic;
        Data_Config_Out_DCEF: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FIR_MAX_ORDER : constant is 1;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DCEF_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FIR_COEFF_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DCEF_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of FIR_CONFIG_DATA_NUM : constant is 3;
end DFIR_CTL;
