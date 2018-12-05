library verilog;
use verilog.vl_types.all;
entity DDC_CHANNEL_CTL is
    generic(
        CONFIG_WIDTH    : integer := 32;
        QMIXER_CONFIG_DATA_NUM: integer := 2;
        CIC1_CONFIG_DATA_NUM: integer := 3;
        CICC1_CONFIG_DATA_NUM: integer := 259;
        CIC2_CONFIG_DATA_NUM: integer := 3;
        CICC2_CONFIG_DATA_NUM: integer := 259;
        MHBF_CONFIG_DATA_NUM: integer := 176;
        DFIR_CONFIG_DATA_NUM: integer := 516;
        CIC_CICC1_CONFIG_DATA_NUM: vl_notype;
        CIC_CICC2_CONFIG_DATA_NUM: vl_notype;
        CH_FILTERS_CONFIG_DATA_CNT: vl_notype
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        isConfigACK_MIXER: in     vl_logic;
        isConfigDone_MIXER: in     vl_logic;
        isConfig_MIXER  : out    vl_logic;
        Data_Config_Out_MIXER: out    vl_logic_vector;
        isConfig_DDCF   : out    vl_logic;
        Data_Config_Out_DDCF: out    vl_logic_vector;
        isConfigACK_DDCF: in     vl_logic;
        isConfigDone_DDCF: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of QMIXER_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC1_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC1_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC2_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CICC2_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of MHBF_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of DFIR_CONFIG_DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC_CICC1_CONFIG_DATA_NUM : constant is 3;
    attribute mti_svvh_generic_type of CIC_CICC2_CONFIG_DATA_NUM : constant is 3;
    attribute mti_svvh_generic_type of CH_FILTERS_CONFIG_DATA_CNT : constant is 3;
end DDC_CHANNEL_CTL;
