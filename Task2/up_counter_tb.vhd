LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY up_counter_tb IS
END up_counter_tb;

ARCHITECTURE mytest OF up_counter_tb IS

COMPONENT up_counter IS
GENERIC(n_bits: integer range 2 to 32:=16);

PORT(en, clock, clear: IN std_logic; 
     Q_tot: OUT std_logic_vector(n_bits-1 downto 0));
END component;

SIGNAL en_tb, clock_tb, clear_tb: std_logic;
SIGNAL Q_tot_tb: std_logic_vector(15 downto 0);

BEGIN
dut: up_counter GENERIC MAP(n_bits => 16)
                PORT MAP(en => en_tb, clock => clock_tb, clear => clear_tb, Q_tot => Q_tot_tb);

clock_process: PROCESS
BEGIN
for i in 0 to 256 loop
clock_tb <= '0';
WAIT FOR 5 ns;
clock_tb <= '1';
WAIT FOR 5 ns;
END loop;
WAIT;
END process clock_process;

P2: PROCESS
BEGIN
en_tb <= '1'; --enable on
clear_tb <= '1'; --clear off
WAIT FOR 2500 ns;
en_tb <= '0'; --enable off;
WAIT FOR 40 ns;
en_tb <= '1'; --enable on
clear_tb <= '0'; --clear on
WAIT FOR 20 ns;
WAIT;
end process P2;
END mytest;