library verilog;
use verilog.vl_types.all;
entity DDC_CHANNEL_MUX_FILTERS_CTL is
    generic(
        CONFIG_WIDTH    : integer := 32;
        CIC_CONFIG_DATA_NUM: integer := 3;
        CICC_CONFIG_DATA_NUM: integer := 259;
        MHBF_CONFIG_DATA_NUM: integer := 176;
        DFIR_CONFIG_DATA_NUM: integer := 516;
        CIC_CICC_CONFIG_DATA_NUM: vl_notype
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        isConfig_CIC_CICC: out    vl_logic;
        Data_Config_Out_CIC_CICC: out    vl_logic_vector;
        isConfigACK_CIC_CICC: in     vl_logic;
        isConfigDone_CIC_CICC: in     vl_logic;
        isConfig_MHBF   : out    vl_logic;
        Data_Config_Out_MHBF: out    vl_logic_vector;
        isConfigACK_MHBF: in     vl_logic;
        isConfigDone_MHBF: in     vl_logic;
        isConfig_DFIR   : out    vl_logic;
        Data_Config_Out_DFIR: out    vl_logic_vector;
        isConfigACK_DFIR: in     vl_logic;
        isConfigDone_DFIR: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of MHBF_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of DFIR_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC_CICC_CONFIG_DATA_NUM : constant is 3;
end DDC_CHANNEL_MUX_FILTERS_CTL;
