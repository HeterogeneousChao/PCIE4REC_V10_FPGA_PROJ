library verilog;
use verilog.vl_types.all;
entity NCO_INIT_CONFIG is
    generic(
        CONFIT_WIDTH    : integer := 32;
        FRE_MOD_WIDTH   : integer := 32;
        PHA_MOD_WIDTH   : integer := 32;
        CONFIT_CTL_WIDTH: integer := 4;
        OUTPUT_WIDTH    : integer := 16
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        configFreqMod   : out    vl_logic_vector;
        configPhasMod   : out    vl_logic_vector;
        configCtl_ctl   : out    vl_logic_vector(1 downto 0);
        isConfigACK_ctl : in     vl_logic;
        isConfigDone_ctl: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CONFIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FRE_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PHA_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIT_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
end NCO_INIT_CONFIG;
