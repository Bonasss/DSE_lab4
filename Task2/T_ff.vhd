library IEEE;
use IEEE.std_logic_1164.all;

entity T_ff is
port ( T,cl,CLK: in std_logic;
Q_tff : out std_logic);
end T_ff;

architecture beh of T_ff is
signal t_tmp : std_logic:='0';
begin

process (cl,CLK)
begin
if (rising_edge(CLK) and cl = '1') then
t_tmp <= T XOR t_tmp;
elsif(rising_edge(CLK) and cl = '0') then
t_tmp <= '0';
end if;
end process;
Q_tff <= t_tmp;
end beh;
