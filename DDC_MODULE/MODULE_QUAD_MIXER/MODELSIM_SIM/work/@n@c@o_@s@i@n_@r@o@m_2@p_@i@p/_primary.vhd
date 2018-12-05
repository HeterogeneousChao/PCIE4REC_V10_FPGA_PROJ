library verilog;
use verilog.vl_types.all;
entity NCO_SIN_ROM_2P_IP is
    port(
        address_a       : in     vl_logic_vector(15 downto 0);
        address_b       : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        q_a             : out    vl_logic_vector(15 downto 0);
        q_b             : out    vl_logic_vector(15 downto 0)
    );
end NCO_SIN_ROM_2P_IP;
