LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY flasher_tb IS
END flasher_tb;

ARCHITECTURE test OF flasher_tb IS

constant num_cycles : integer := 50;
SIGNAL clock: STD_LOGIC:='0';
SIGNAL reading: STD_LOGIC_VECTOR(0 TO 6);


COMPONENT flasher IS
PORT (CLOCK_50: IN STD_LOGIC;
HEX0: OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

BEGIN
uut: flasher PORT MAP (CLOCK_50=>clock,HEX0=>reading);
-- Clock with 20ns period, 0.5 DC 
process
begin
  WAIT FOR 2 ns;
  for i in 1 to num_cycles loop
    clock <= not clock;
    wait for 10 ns;
    clock <= not clock;
    wait for 10 ns;
    -- clock period = 20 ns
  end loop;
  wait;  -- simulation stops here
end process;
END test;