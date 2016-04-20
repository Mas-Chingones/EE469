library verilog;
use verilog.vl_types.all;
entity d_flipflop is
    port(
        q               : out    vl_logic;
        qBar            : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end d_flipflop;
