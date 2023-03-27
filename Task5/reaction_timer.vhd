LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY reaction_timer IS 
PORT (CLOCK_50: IN STD_LOGIC;
KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
SW: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
LEDR: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(0 TO 6));
END reaction_timer;

ARCHITECTURE structure OF reaction_timer IS

SIGNAL ms, q_sr, delay, en_delay, en_reaction, resn_ms, is_bigger_ms, is_delay: STD_LOGIC;
SIGNAL rn, sn: STD_LOGIC;
SIGNAL Q_ms, Q_reaction: UNSIGNED(15 DOWNTO 0);
SIGNAL Q_delay, th_delay: UNSIGNED (7 DOWNTO 0);
CONSTANT millisecond: UNSIGNED:= "1100001101010000" -- 50'000 clock periods are 1ms

COMPONENT comparator IS 
GENERIC (N: INTEGER:= 4);
PORT (input, threshold: IN UNSIGNED(N-1 DOWNTO 0);
is_equal, is_bigger: OUT STD_LOGIC);
END COMPONENT;

COMPONENT synchronous_counter IS 
GENERIC(N: INTEGER:= 16);
PORT (enable, clock, clear: IN STD_LOGIC;
Q: OUT UNSIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT SR_latch IS 
 PORT ( Clk, R, S : IN STD_LOGIC; 
 Q : OUT STD_LOGIC); 
END COMPONENT;

COMPONENT display_7seg IS
PORT(input: IN UNSIGNED(3 downto 0); 
output: OUT std_logic_vector(0 to 6));
END COMPONENT;

BEGIN
resn_ms <= KEY(0) OR NOT is_bigger_ms;
en_delay<= ms AND NOT is_delay;
th_delay <= UNSIGNED(SW);
LEDR(0)<=is_delay;
en_reaction <= is_delay AND q_sr AND ms;
rn <= NOT KEY(3);
sn <= NOT KEY(0);
msc: synchronous_counter PORT MAP (enable=>'1', clock=>CLOCK_50, clear=>resn_ms, Q=>Q_ms);
cms: comparator GENERIC MAP(N => 16)
    PORT MAP (input=>Q_ms, threshold=>millisecond, is_bigger=>is_bigger_ms, is_equal=>ms);
dlc: synchronous_counter GENERIC MAP (N=>8)
    PORT MAP (enable=>en_delay, clock=> CLOCK_50, clear=>KEY(0), Q=>Q_delay);
cmd: comparator GENERIC MAP (N=>8)
    PORT MAP (input=>Q_delay, threshold=>th_delay, is_equal=> is_delay, is_bigger=>open);
srl: SR_latch PORT MAP (Clk=>CLOCK_50, R=>rn, S=>sn, Q=>q_sr);
crc: synchronous_counter PORT MAP (enable=>en_reaction, clock=>CLOCK_50, clear=>KEY(0), Q=>Q_reaction);
D0: display_7seg PORT MAP (input => Q_reaction(3 downto 0), output => HEX0);
D1: display_7seg PORT MAP (input => Q_reaction(7 downto 4), output => HEX1);
D2: display_7seg PORT MAP (input => Q_reaction(11 downto 8), output => HEX2);
D3: display_7seg PORT MAP (input => Q_reaction(15 downto 12), output => HEX3);
END structure;