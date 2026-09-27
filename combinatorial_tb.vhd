library ieee; 
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity combial_tb is  
end combial_tb;

architecture combial_tbarch of combial_tb is

signal in_vec: unsigned(5 downto 0):= "000000";
signal output: STD_LOGIC;

begin

DUT: entity work.combial port map (in_vec => STD_LOGIC_VECTOR(in_vec), output => output);

stm_proc: process
begin

for dummy in 0 to 63 loop
wait for 10 ps;

if (dummy = 1 or dummy = 5 or dummy = 34) then
assert(output = '0')
report "shoulda been 0"
severity error;

else
assert(output = '1')
report "shoulda been 1"
severity error;
end if;

in_vec <= in_vec + 1;

end loop;

wait;
end process;
end combial_tbarch;
