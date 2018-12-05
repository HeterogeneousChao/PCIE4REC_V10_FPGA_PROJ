library verilog;
use verilog.vl_types.all;
entity FIR_CTL is
    generic(
        FIR_CONFIG_DATA_WIDTH: integer := 16;
        FILTER_MAX_ORDER: integer := 256
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigFIR_Out : out    vl_logic;
        isConfigDoneFIR_Out: in     vl_logic;
        isConfigACKFIR_Out: in     vl_logic;
        Data_ConfigFIR_Out: out    vl_logic_vector;
        isConfigOUTSC_Out: out    vl_logic;
        isConfigDoneOUTSC_Out: in     vl_logic;
        isConfigACKOUTSC_Out: in     vl_logic;
        Data_ConfigOUTSC_Out: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FIR_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FILTER_MAX_ORDER : constant is 1;
end FIR_CTL;
