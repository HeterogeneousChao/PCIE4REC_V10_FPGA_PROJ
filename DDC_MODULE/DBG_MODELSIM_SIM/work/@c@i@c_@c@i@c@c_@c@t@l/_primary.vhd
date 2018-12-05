library verilog;
use verilog.vl_types.all;
entity CIC_CICC_CTL is
    generic(
        CONFIG_WIDTH    : integer := 32;
        CIC_CONFIG_DATA_WIDTH: integer := 16;
        CICC_COEFF_WIDTH: integer := 24;
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
        isConfigACK_CIC : in     vl_logic;
        isConfigDone_CIC: in     vl_logic;
        isConfig_CIC    : out    vl_logic;
        Data_Config_Out_CIC: out    vl_logic_vector;
        isConfigACK_CICC: in     vl_logic;
        isConfigDone_CICC: in     vl_logic;
        isConfig_CICC   : out    vl_logic;
        Data_Config_Out_CICC: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CICC_COEFF_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC_CONFIG_DATA_NUM : constant is 1;
end CIC_CICC_CTL;
