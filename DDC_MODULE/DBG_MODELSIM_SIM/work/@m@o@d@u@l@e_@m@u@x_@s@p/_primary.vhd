library verilog;
use verilog.vl_types.all;
entity MODULE_MUX_SP is
    generic(
        INPUT_WIDTH     : integer := 24;
        OUTPUT_WIDTH    : integer := 24;
        DATA_OUT_CLK_NUM: integer := 4;
        SP_DATA_OUT_CLK_NUM: vl_notype
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        Data_In         : in     vl_logic_vector;
        Data_In_Valid   : in     vl_logic;
        Data_In_ChIdx   : in     vl_logic_vector(3 downto 0);
        Data_Out_I      : out    vl_logic_vector;
        Data_Out_I_Valid: out    vl_logic;
        Data_Out_Q      : out    vl_logic_vector;
        Data_Out_Q_Valid: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_OUT_CLK_NUM : constant is 1;
    attribute mti_svvh_generic_type of SP_DATA_OUT_CLK_NUM : constant is 3;
end MODULE_MUX_SP;
