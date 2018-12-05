library verilog;
use verilog.vl_types.all;
entity MODULE_DDC_4CHANNELS is
    generic(
        INPUT_WIDTH     : integer := 16;
        OUTPUT_WIDTH    : integer := 24;
        CONFIG_WIDTH    : integer := 32
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_In0        : in     vl_logic_vector;
        Data_In0_Valid  : in     vl_logic;
        Data_Out_I0     : out    vl_logic_vector;
        Data_Out_I0_Valid: out    vl_logic;
        Data_Out_Q0     : out    vl_logic_vector;
        Data_Out_Q0_Valid: out    vl_logic;
        Data_In1        : in     vl_logic_vector;
        Data_In1_Valid  : in     vl_logic;
        Data_Out_I1     : out    vl_logic_vector;
        Data_Out_I1_Valid: out    vl_logic;
        Data_Out_Q1     : out    vl_logic_vector;
        Data_Out_Q1_Valid: out    vl_logic;
        Data_In2        : in     vl_logic_vector;
        Data_In2_Valid  : in     vl_logic;
        Data_Out_I2     : out    vl_logic_vector;
        Data_Out_I2_Valid: out    vl_logic;
        Data_Out_Q2     : out    vl_logic_vector;
        Data_Out_Q2_Valid: out    vl_logic;
        Data_In3        : in     vl_logic_vector;
        Data_In3_Valid  : in     vl_logic;
        Data_Out_I3     : out    vl_logic_vector;
        Data_Out_I3_Valid: out    vl_logic;
        Data_Out_Q3     : out    vl_logic_vector;
        Data_Out_Q3_Valid: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIG_WIDTH : constant is 1;
end MODULE_DDC_4CHANNELS;
