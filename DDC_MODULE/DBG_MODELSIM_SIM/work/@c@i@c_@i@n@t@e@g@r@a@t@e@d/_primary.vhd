library verilog;
use verilog.vl_types.all;
entity CIC_INTEGRATED is
    generic(
        INPUT_WIDTH     : integer := 16;
        MIDDLE_WIDTH    : integer := 37;
        CIC_MAX_NUMSECS : integer := 16;
        CIC_MAX_CHANNELS: integer := 16;
        CIC_CONFIG_DATA_WIDTH: integer := 16;
        CIC_INTEGRATED_DATA_OUT_VALID_SHIFT: integer := 5
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
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MIDDLE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_NUMSECS : constant is 1;
    attribute mti_svvh_generic_type of CIC_MAX_CHANNELS : constant is 1;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CIC_INTEGRATED_DATA_OUT_VALID_SHIFT : constant is 1;
end CIC_INTEGRATED;
