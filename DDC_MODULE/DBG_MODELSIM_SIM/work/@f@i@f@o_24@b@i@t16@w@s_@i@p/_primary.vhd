library verilog;
use verilog.vl_types.all;
entity FIFO_24BIT16WS_IP is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(23 downto 0);
        rdreq           : in     vl_logic;
        wrreq           : in     vl_logic;
        empty           : out    vl_logic;
        full            : out    vl_logic;
        q               : out    vl_logic_vector(23 downto 0);
        usedw           : out    vl_logic_vector(3 downto 0)
    );
end FIFO_24BIT16WS_IP;
