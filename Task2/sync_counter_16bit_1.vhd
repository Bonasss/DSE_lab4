-- 16 bit counter for DE1

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sync_counter_16bit_1 IS
GENERIC (num_bits: integer := 16);
PORT(SW: IN std_logic_vector(1 downto 0);
     KEY: IN std_logic_vector(3 downto 0);
	HEX0,HEX1,HEX2, HEX3: OUT std_logic_vector(0 to 6));
END sync_counter_16bit_1;

ARCHITECTURE structural OF sync_counter_16bit_1 IS

COMPONENT display_7seg IS
PORT(input: IN std_logic_vector(3 downto 0); output: OUT std_logic_vector(0 to 6));
END component;

COMPONENT up_counter IS
GENERIC(n_bits: integer range 2 to 32:=16);
PORT(en, clock, clear: IN std_logic; 
     Q_tot: OUT std_logic_vector(n_bits-1 downto 0));
END component;
SIGNAL Q_tmp: std_logic_vector(num_bits-1 downto 0);
BEGIN
COUNTER: up_counter GENERIC MAP(n_bits => 16)
                    PORT MAP(en => SW(1), clear => SW(0), clock => KEY(0), Q_tot => Q_tmp);
D0: display_7seg PORT MAP(input => Q_tmp(3 downto 0), output => HEX0);
D1: display_7seg PORT MAP(input => Q_tmp(7 downto 4), output => HEX1);
D2: display_7seg PORT MAP(input => Q_tmp(11 downto 8), output => HEX2);
D3: display_7seg PORT MAP(input => Q_tmp(15 downto 12), output => HEX3);
END structural;