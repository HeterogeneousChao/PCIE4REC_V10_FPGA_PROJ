library verilog;
use verilog.vl_types.all;
entity MULT_24BIT25BIT49BIT_IP is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(23 downto 0);
        datab           : in     vl_logic_vector(24 downto 0);
        result          : out    vl_logic_vector(48 downto 0)
    );
end MULT_24BIT25BIT49BIT_IP;
