library verilog;
use verilog.vl_types.all;
entity decoder_5bit is
    port(
        code            : in     vl_logic_vector(4 downto 0);
        selection       : out    vl_logic_vector(31 downto 0)
    );
end decoder_5bit;
