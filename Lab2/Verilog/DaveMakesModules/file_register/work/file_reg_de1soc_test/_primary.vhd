library verilog;
use verilog.vl_types.all;
entity file_reg_de1soc_test is
    generic(
        WRITE_ENABLE    : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi1);
        READ_ENABLE     : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        IDLE_STATE      : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0)
    );
    port(
        CLOCK_50        : in     vl_logic;
        SW              : in     vl_logic_vector(9 downto 0);
        KEY             : in     vl_logic_vector(3 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WRITE_ENABLE : constant is 2;
    attribute mti_svvh_generic_type of READ_ENABLE : constant is 2;
    attribute mti_svvh_generic_type of IDLE_STATE : constant is 2;
end file_reg_de1soc_test;
