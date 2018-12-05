library verilog;
use verilog.vl_types.all;
entity MODULE_MUX_PS is
    generic(
        INPUT_WIDTH     : integer := 24;
        OUTPUT_WIDTH    : integer := 24;
        DATA_OUT_CLK_NUM: integer := 8
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        Data_In_I       : in     vl_logic_vector;
        Data_In_I_Valid : in     vl_logic;
        Data_In_Q       : in     vl_logic_vector;
        Data_In_Q_Valid : in     vl_logic;
        Data_Out        : out    vl_logic_vector;
        Data_Out_Valid  : out    vl_logic;
        Data_Out_ChIdx  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_OUT_CLK_NUM : constant is 1;
end MODULE_MUX_PS;
