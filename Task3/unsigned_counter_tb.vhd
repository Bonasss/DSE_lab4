LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY unsigned_counter_tb IS
END unsigned_counter_tb;

ARCHITECTURE test OF unsigned_counter_tb IS

SIGNAL clk, clr, en: STD_LOGIC:='1';
SIGNAL q_out: UNSIGNED(15 DOWNTO 0);
constant num_cycles: integer:=50;

COMPONENT synchronous_counter IS 
PORT (enable, clock, clear: IN STD_LOGIC;
Q: OUT UNSIGNED(15 DOWNTO 0));
END COMPONENT;

BEGIN
uut: synchronous_counter PORT MAP (enable => en, clock => clk, clear => clr, Q=>q_out);

PROCESS
BEGIN
    WAIT FOR 150 ns;
    en <= '0';
    WAIT FOR 50 ns;
    clr <= '0';
    WAIT FOR 50 ns;
    clr <= '1';
    WAIT FOR 10 ns;
    en <= '1';
    WAIT FOR 100 ns;
    WAIT;
END PROCESS;

process
-- Clock with 20ns period, 0.5 DC 
begin
    WAIT FOR 5 ns;
    for i in 1 to num_cycles loop
        clk <= not clk;
        wait for 10 ns;
        clk <= not clk;
        wait for 10 ns;
    -- clock period = 20 ns
    end loop;
    wait;  -- simulation stops here
end process;

END test;