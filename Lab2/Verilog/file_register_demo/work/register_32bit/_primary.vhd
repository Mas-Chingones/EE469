library verilog;
use verilog.vl_types.all;
entity register_32bit is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        rst             : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        Q               : out    vl_logic_vector(31 downto 0)
    );
end register_32bit;
