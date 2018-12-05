library verilog;
use verilog.vl_types.all;
entity MODULE_MUX_CLK_ADJ is
    generic(
        INPUT_WIDTH     : integer := 24;
        OUTPUT_WIDTH    : integer := 24;
        CLK_DELAY_PERIOD: integer := 28
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        Data_In         : in     vl_logic_vector;
        Data_In_Valid   : in     vl_logic;
        Data_In_ChIdx   : in     vl_logic_vector(3 downto 0);
        Data_Out        : out    vl_logic_vector;
        Data_Out_Valid  : out    vl_logic;
        Data_Out_ChIdx  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CLK_DELAY_PERIOD : constant is 1;
end MODULE_MUX_CLK_ADJ;
