library verilog;
use verilog.vl_types.all;
entity file_register_low is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        rst_all         : in     vl_logic;
        read0_addr      : in     vl_logic_vector(4 downto 0);
        read1_addr      : in     vl_logic_vector(4 downto 0);
        write_addr      : in     vl_logic_vector(4 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        read0_data      : out    vl_logic_vector(31 downto 0);
        read1_data      : out    vl_logic_vector(31 downto 0)
    );
end file_register_low;
