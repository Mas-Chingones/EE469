library verilog;
use verilog.vl_types.all;
entity file_register is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        re              : in     vl_logic;
        rst             : in     vl_logic;
        read0_addr      : in     vl_logic_vector(4 downto 0);
        read1_addr      : in     vl_logic_vector(4 downto 0);
        write_addr      : in     vl_logic_vector(4 downto 0);
        data_bus        : inout  vl_logic_vector(31 downto 0)
    );
end file_register;
