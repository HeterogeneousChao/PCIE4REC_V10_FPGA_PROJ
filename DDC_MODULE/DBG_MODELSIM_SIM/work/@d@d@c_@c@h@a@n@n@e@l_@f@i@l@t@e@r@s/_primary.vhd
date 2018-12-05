library verilog;
use verilog.vl_types.all;
entity DDC_CHANNEL_FILTERS is
    generic(
        INPUT_WIDTH     : integer := 16;
        OUTPUT_WIDTH    : integer := 24;
        CONFIG_WIDTH    : integer := 32;
        CIC_MIDDLE_WIDTH: integer := 80;
        DDC_FILTER_INPUT_WIDTH: integer := 16;
        DDC_FILTER_OUTPUT_WIDTH: integer := 24;
        DDC_FILTER_CONFIG_WIDTH: integer := 32;
        CIC_MAX_DCEF    : integer := 16;
        CIC_MAX_DIFFD   : integer := 1;
        CIC_MAX_NUMSECS : integer := 16;
        CIC1_MAX_CHANNELS: integer := 1;
        CICC1_MAX_CHANNELS: integer := 1;
        MUX_PS_DATA_OUT_CLK_NUM: integer := 4;
        CIC2_MAX_DCEF   : integer := 16;
        CIC2_MAX_CHANNELS: integer := 2;
        MUX_SP_DATA_OUT_CLK_NUM: integer := 32
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_In_I       : in     vl_logic_vector;
        Data_In_Q       : in     vl_logic_vector;
        Data_In_I_Valid : in     vl_logic;
        Data_In_Q_Valid : in     vl_logic;
        Data_Out_I      : out    vl_logic_vector;
        Data_Out_I_Valid: out    vl_logic;
        Data_Out_Q      : out    vl_logic_vector;
        Data_Out_Q_Valid: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MIDDLE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DDC_FILTER_INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DDC_FILTER_OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DDC_FILTER_CONFIG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DCEF : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_DIFFD : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_NUMSECS : constant is 1;
    attribute mti_svvh_generic_type of CIC1_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of CICC1_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of MUX_PS_DATA_OUT_CLK_NUM : constant is 1;
    attribute mti_svvh_generic_type of CIC2_MAX_DCEF : constant is 1;
    attribute mti_svvh_generic_type of CIC2_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of MUX_SP_DATA_OUT_CLK_NUM : constant is 1;
end DDC_CHANNEL_FILTERS;
