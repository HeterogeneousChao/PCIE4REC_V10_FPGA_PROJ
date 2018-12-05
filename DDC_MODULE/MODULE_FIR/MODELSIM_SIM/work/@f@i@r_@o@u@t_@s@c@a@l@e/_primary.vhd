library verilog;
use verilog.vl_types.all;
entity FIR_OUT_SCALE is
    generic(
        MIDDLE_WIDTH    : integer := 64;
        OUTPUT_WIDTH    : integer := 24;
        FIR_CONFIG_DATA_WIDTH: integer := 24;
        FIR_SCALE_DATA_OUT_VALID_SHIFT: integer := 3
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        isConfigDone    : out    vl_logic;
        isCOnfigACK     : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        Data_In         : in     vl_logic_vector;
        Data_In_Valid   : in     vl_logic;
        Data_In_ChIdx   : in     vl_logic_vector(3 downto 0);
        Data_Out        : out    vl_logic_vector;
        Data_Out_Valid  : out    vl_logic;
        Data_Out_ChIdx  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MIDDLE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FIR_CONFIG_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FIR_SCALE_DATA_OUT_VALID_SHIFT : constant is 1;
end FIR_OUT_SCALE;
