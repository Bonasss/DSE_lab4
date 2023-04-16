LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY T_ff_tb is
end T_ff_tb;

architecture mytest of T_ff_tb is

component T_ff is
port ( T,cl,CLK : in std_logic;
Q_tff : out std_logic);
end component;
signal cl_tb, T_tb, CLK_tb, Q_tff_tb: std_logic;
begin
dutest: T_ff port map(T => T_tb, cl => cl_tb, CLK => CLK_tb, Q_tff => Q_tff_tb);

clock_process: PROCESS
BEGIN
for i in 0 to 15 loop
CLK_tb <= '0';
WAIT FOR 5 ns;
CLK_tb <= '1';
WAIT FOR 5 ns;
END loop;
wait;
END process clock_process;

P2: process
begin
T_tb <= '1';
cl_tb <= '0';
WAIT FOR 80 ns;
cl_tb <= '1';
wait for 80 ns;
wait;
end process P2;
end mytest;