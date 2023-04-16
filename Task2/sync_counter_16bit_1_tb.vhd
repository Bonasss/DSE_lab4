-- testbench for the 16 bit counter

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sync_counter_16bit_1_tb IS
GENERIC(bits: integer  := 16);
END sync_counter_16bit_1_tb;

ARCHITECTURE mytest OF sync_counter_16bit_1_tb IS

COMPONENT sync_counter_16bit_1 IS
GENERIC (num_bits: integer := 16);
PORT(SW: IN std_logic_vector(1 downto 0);
     KEY: IN std_logic_vector(3 downto 0);
     HEX0,HEX1,HEX2, HEX3: OUT std_logic_vector(0 TO 6));
END component;

SIGNAL SW_tb: std_logic_vector(1 downto 0);
SIGNAL KEY_tb: std_logic_vector(3 downto 0):=(OTHERS=>'1');
SIGNAL HEX0_tb, HEX1_tb, HEX2_tb, HEX3_tb: std_logic_vector(0 TO 6);

BEGIN
uut: sync_counter_16bit_1 GENERIC MAP(num_bits => 16)
                         PORT MAP(SW => SW_tb, KEY => KEY_tb, HEX0 => HEX0_tb, HEX1 => HEX1_tb, HEX2 => HEX2_tb, HEX3 => HEX3_tb);
clock_process: PROCESS
BEGIN
for i in 0 to 256 loop
KEY_tb(0) <= '0';
WAIT FOR 0.5 ns;
KEY_tb(0) <= '1';
WAIT FOR 0.5 ns;
END loop;
WAIT;
END process clock_process;

P2: PROCESS
BEGIN
SW_tb(1) <= '1'; --enable on
SW_tb(0) <= '0'; --clear off
WAIT FOR 200 ns;
SW_tb(1) <= '0'; --enable off;
WAIT FOR 36 ns;
SW_tb(1) <= '1'; --enable on
SW_tb(0) <= '1'; --clear on
WAIT FOR 20 ns;
WAIT;
end process P2;
END mytest; 

