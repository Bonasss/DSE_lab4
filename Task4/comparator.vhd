LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY comparator IS 
GENERIC (N: INTEGER:= 4)
PORT (input, threshold: IN UNSIGNED(N-1 DOWNTO 0);
is_equal, is_bigger: OUT STD_LOGIC);
END comparator;

ARCHITECTURE behaviour OF comparator IS

BEGIN
PROCESS(input, threshold)
BEGIN
    IF(input < threshold) THEN 
        is_equal<='0';
        is_bigger<='0';
    ELSIF(input = threshold) THEN
        is_equal<='1';
        is_bigger<='0';
    ELSIF(input > threshold) THEN
        is_equal<='0';
        is_bigger<='1';
    END IF;
END behaviour;