LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY timer_tb is
END timer_tb;

architecture test OF timer_tb is

COMPONENT reaction_timer IS 
PORT (CLOCK_50: IN STD_LOGIC;
KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
SW: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
LEDR: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

constant num_cycles : integer := 5500000;
SIGNAL clock, resetn, stopn, go, led1: STD_LOGIC:='1';
SIGNAL turn_on: STD_LOGIC_VECTOR(7 DOWNTO 0):="00010000"; -- turn-on time: 16ms
SIGNAL key_in: STD_LOGIC_VECTOR(3 DOWNTO 0):=(others=>'1');
SIGNAL HEX0, HEX1, HEX2, HEX3: STD_LOGIC_VECTOR(0 TO 6);

begin
key_in <= stopn & "00" & resetn;
uut: reaction_timer 
        PORT MAP(CLOCK_50=>clock, KEY=>key_in, SW=>turn_on, LEDR(1)=>led1, LEDR(0)=>go, HEX0=>HEX0, HEX1=>HEX1, HEX2=>HEX2, HEX3=>HEX3);

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

PROCESS
begin
    resetn <= '0';
    WAIT FOR 1 ms;
    resetn <= '1';
    WAIT FOR 100 ms;
    stopn <= '0';
    WAIT FOR 1 ms;
    stopn <= '1';
    WAIT;
END PROCESS;
END test;