library verilog;
use verilog.vl_types.all;
entity div_clock is
    port(
        orig_clk        : in     vl_logic;
        div_clks        : out    vl_logic_vector(31 downto 0)
    );
end div_clock;
