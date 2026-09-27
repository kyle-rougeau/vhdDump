library ieee; 
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity mplx421_tb is  
end mplx421_tb;

architecture mplx421_tbarch of mplx421_tb is

--Using unsigned vectors to facilitate iteration
signal v_vec: unsigned(3 downto 0):= "0000";
signal s_vec: unsigned(1 downto 0):= "00";
signal w: STD_LOGIC;

begin

--Have to convert unisgned vectors to normal vectors here
DUT: entity work.mplx421 port map (v_vec => STD_LOGIC_VECTOR(v_vec), s_vec => STD_LOGIC_VECTOR(s_vec), w => w);

stm_proc: process
begin

for dummy in 0 to 15 loop
for index in 0 to 3 loop
wait for 10 ps;

assert (w = v_vec(index))
report "Error"
severity error;

s_vec <= s_vec + 1;
end loop;

v_vec <= v_vec + 1;

end loop;

wait;
end process;
end mplx421_tbarch;
