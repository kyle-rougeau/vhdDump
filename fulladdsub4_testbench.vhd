library ieee; 
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
  
entity fulladdsub_tb is  
end fulladdsub_tb;  
architecture fulladdsub_tbarch of fulladdsub_tb is
signal a_vec: unsigned(3 downto 0):= "0000";
signal b_vec: unsigned(3 downto 0):= "0000";
signal sum_vec: unsigned(3 downto 0):= "0000";
signal mode, co: STD_LOGIC; 
begin 

DUT: entity work.adder4 port map (mode    => mode,
                                  a_vec   => STD_LOGIC_VECTOR(a_vec),
                                  b_vec   => STD_LOGIC_VECTOR(b_vec),
                        unsigned(sum_vec) => sum_vec,
                                  cOut    => co); 

stm_proc: process
begin  

for a in 0 to 7 loop
b_vec <= "0000";
for b in 0 to 7 loop

mode <= '0';
wait for 10 ps;

assert((to_integer(sum_vec) = (a + b)) and ((co = '1') = (a + b > 15)))
report "failed sum"
severity error;

mode <= '1';
wait for 10 ps;

if a < b then
assert((to_integer(sum_vec) = (16 + a - b)) and (co = '0'))
report "failed subtraction with carryover"
severity error;
else
assert(to_integer(sum_vec) = (a - b) and (co = '1'))
report "failed subtraction"
severity error;
end if;

b_vec <= b_vec + 1;
end loop;

a_vec <= a_vec + 1;
end loop;
wait; 
end process; 
end fulladdsub_tbarch; 
