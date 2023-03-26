LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY flasher IS 
PORT (CLOCK_50: IN STD_LOGIC;
HEX0: OUT STD_LOGIC_VECTOR(0 TO 6));
END flasher;

ARCHITECTURE structure OF flasher IS 

SIGNAL num: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL periods: UNSIGNED(25 DOWNTO 0);
CONSTANT second: UNSIGNED(25 DOWNTO 0):= (24 => '1', 25=>'1', OTHERS=>'0') --around 50 million
SIGNAL resn0, resn1: STD_LOGIC:='1';
SIGNAL en: STD_LOGIC:='0';

COMPONENT synchronous_counter IS 
GENERIC(N: INTEGER:= 16)
PORT (enable, clock, clear: IN STD_LOGIC;
Q: OUT UNSIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT comparator IS 
GENERIC (N: INTEGER:= 4)
PORT (input, threshold: IN UNSIGNED(N-1 DOWNTO 0);
is_equal, is_bigger: OUT STD_LOGIC);
END COMPONENT;

COMPONENT display_7seg IS
PORT(input: IN std_logic_vector(3 downto 0); 
output: OUT std_logic_vector(0 to 6));
END COMPONENT;

BEGIN

sec: synchronous_counter GENERIC MAP(N => 26) --1 second counter based on 50MHz clock
    PORT MAP (enable=>'1', clock=> CLOCK_50, clear=>not resn0, Q=>periods);
cmp0: comparator GENERIC MAP (N => 26) --resets 1 sec counter after 1 sec
    PORT MAP (input => periods, threshold=>second, is_equal=>en, is_bigger=> resn0);
cnt:synchronous_counter GENERIC MAP(N => 4)
    PORT MAP (enable=>en, clock=> CLOCK_50, clear=>not resn1, Q=>num);
cmp1: comparator PORT MAP (input => num, threshold=>"1001", is_equal=>open, is_bigger=>resn1);
dec: display_7seg PORT MAP (input => num, output=> HEX0);

END structure;