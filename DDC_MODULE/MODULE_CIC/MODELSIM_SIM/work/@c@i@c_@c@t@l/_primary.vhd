library verilog;
use verilog.vl_types.all;
entity CIC_CTL is
    generic(
        CIC_CONFIG_DATA_WIDTH: integer := 16
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        isConfig_Out    : out    vl_logic;
        isConfigDone_Out: in     vl_logic_vector(3 downto 0);
        isConfigACK_Out : in     vl_logic_vector(3 downto 0);
        Data_Config_Out : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CIC_CONFIG_DATA_WIDTH : constant is 1;
end CIC_CTL;
