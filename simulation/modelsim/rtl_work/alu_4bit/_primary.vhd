library verilog;
use verilog.vl_types.all;
entity alu_4bit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        m               : in     vl_logic;
        cin_re          : in     vl_logic;
        cout_re         : out    vl_logic;
        y               : out    vl_logic_vector(3 downto 0)
    );
end alu_4bit;
