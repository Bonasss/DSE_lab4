-- A testbench for the gated SR latch implemented in lab 4 part 1
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY latch_tb IS
END latch_tb;

ARCHITECTURE test OF latch_tb IS 

COMPONENT part1 IS
PORT ( Clk, R, S : IN STD_LOGIC; 
Q : OUT STD_LOGIC); 
END COMPONENT; 

SIGNAL clock, r_in, s_in, output: STD_LOGIC:= '0';
constant num_cycles : integer := 50;

BEGIN
-- Clock with 20ns period, 0.5 DC 
process
begin
  for i in 1 to num_cycles loop
    clk <= not clk;
    wait for 10 ns;
    clk <= not clk;
    wait for 10 ns;
    -- clock period = 20 ns
  end loop;
  wait;  -- simulation stops here
end process;

PROCESS
BEGIN
    WAIT FOR 5 ns;
    s_in <= '1';
    WAIT FOR 100 ns;
    s_in <= '0';
    WAIT FOR 100 ns;
    r_in <= '1';
    WAIT FOR 100 ns;
    s_in <= '1';
    WAIT FOR 50 ns;
    r_in <= '0';
    WAIT FOR 100 ns;
    WAIT;
END test;