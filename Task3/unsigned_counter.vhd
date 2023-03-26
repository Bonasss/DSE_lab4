LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY synchronous_counter IS 
PORT (enable, clock, clear: IN STD_LOGIC;
Q: OUT UNSIGNED(15 DOWNTO 0):= (OTHERS=>'0'));
END synchronous_counter;

ARCHITECTURE behaviour OF synchronous_counter IS

BEGIN
PROCESS
BEGIN
    IF(clear = '0') THEN Q <= OTHERS=>'0';
    ELSIF (clock'event AND clock ='1' AND enable ='1') THEN Q <= Q +1;
    ELSIF (enable ='0') THEN Q <= Q;
    END IF;
END PROCESS

END behaviour;