-- counter

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY up_counter IS
GENERIC(n_bits: integer range 2 to 32:=16);

PORT(en, clock, clear: IN std_logic; 
     Q_tot: OUT std_logic_vector(n_bits-1 downto 0));
END up_counter;

ARCHITECTURE structural OF up_counter IS

COMPONENT T_ff IS
PORT(T, CLK, cl: IN std_logic; Q_tff: OUT std_logic);
END component;
SIGNAL t_tmp: std_logic_vector(n_bits-1 downto 0);
SIGNAL Q_tmp: std_logic_vector(n_bits-1 downto 0);
BEGIN 
TFF0: T_ff PORT MAP(T => en, CLK => clock, cl=> clear, Q_tff => Q_tmp(0));
t_tmp(0) <= en;
--TFF1: T_ff PORT MAP(T => t_tmp, CLK => clock, cl=> clear, Q_tff => Q_tmp(1))
F1: FOR i in 1 to n_bits-1 generate
t_tmp(i) <= Q_tmp(i-1) AND t_tmp(i-1);
TFFx: T_ff PORT MAP(T => t_tmp(i), CLK=> clock, cl=> clear, Q_tff => Q_tmp(i));
END generate;
Q_tot <= Q_tmp;
END structural;