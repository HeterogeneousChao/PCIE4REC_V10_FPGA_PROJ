library verilog;
use verilog.vl_types.all;
entity MODULE_NCO is
    generic(
        CONFIT_WIDTH    : integer := 32;
        FRE_MOD_WIDTH   : integer := 32;
        PHA_MOD_WIDTH   : integer := 32;
        CONFIT_CTL_WIDTH: integer := 4;
        OUTPUT_WIDTH    : integer := 16;
        ACCUMULATE_WIDTH: integer := 32;
        ROM_ADDR_WIDTH  : integer := 16;
        ROM_DATA_WIDTH  : integer := 16;
        DEFAULT_INC_PHA_MOD: integer := 214748364
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        isConfig        : in     vl_logic;
        Data_Config_In  : in     vl_logic_vector;
        configFreqMod   : in     vl_logic_vector;
        configPhasMod   : in     vl_logic_vector;
        configCtl       : in     vl_logic_vector;
        isConfigACK     : out    vl_logic;
        isConfigDone    : out    vl_logic;
        configCurPhaInc : out    vl_logic_vector;
        dataOutValid    : out    vl_logic;
        sin_out         : out    vl_logic_vector;
        cos_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CONFIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FRE_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PHA_MOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CONFIT_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ACCUMULATE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ROM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ROM_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEFAULT_INC_PHA_MOD : constant is 1;
end MODULE_NCO;
