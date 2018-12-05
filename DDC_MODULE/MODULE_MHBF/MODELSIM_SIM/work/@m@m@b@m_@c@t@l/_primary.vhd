library verilog;
use verilog.vl_types.all;
entity MMBM_CTL is
    generic(
        NMHBF_MAX       : integer := 5;
        COEFF_WIDTH     : integer := 24;
        FILTER_MAX_ORDER: integer := 32;
        DATA_CONFIG_LENGTH: vl_notype
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig_In     : in     vl_logic;
        isConfigACK_In  : out    vl_logic;
        isConfigDone_In : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfig_Out    : out    vl_logic_vector;
        isConfigACK_Out : in     vl_logic_vector;
        isConfigDone_Out: in     vl_logic_vector;
        Data_Config_Out : out    vl_logic_vector;
        MHBF_CTL_Out    : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NMHBF_MAX : constant is 1;
    attribute mti_svvh_generic_type of COEFF_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FILTER_MAX_ORDER : constant is 1;
    attribute mti_svvh_generic_type of DATA_CONFIG_LENGTH : constant is 3;
end MMBM_CTL;
