library verilog;
use verilog.vl_types.all;
entity MBF_DECIMATE is
    generic(
        DATA_WIDTH      : integer := 24;
        MBF_MAX_CHANNELS: integer := 2;
        MBF_DCEF_DEFAULT: integer := 2;
        MBF_CONFIG_DATA_WIDTH: integer := 16;
        MBF_DECEF_DATA_OUT_VALID_SHIFT: integer := 2
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        isConfigDone    : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        Data_In         : in     vl_logic_vector;
        Data_In_Valid   : in     vl_logic;
        Data_In_ChIdx   : in     vl_logic_vector(3 downto 0);
        Data_Out        : out    vl_logic_vector;
        Data_Out_Valid  : out    vl_logic;
        Data_Out_ChIdx  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MBF_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of MBF_DCEF_DEFAULT : constant is 1;
    attribute mti_svvh_generic_type of MBF_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MBF_DECEF_DATA_OUT_VALID_SHIFT : constant is 1;
end MBF_DECIMATE;
