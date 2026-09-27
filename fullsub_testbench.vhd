library ieee; 
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
  
entity fullsub_tb is  
end fullsub_tb;  
architecture fullsub_tbarch of fullsub_tb is
constant N: integer:= 7;
constant M: integer:= 1;
type bit_matrix is array(0 to N) of bit_vector(M downto 0);
signal assertion: bit_matrix:= ("00", "01", "11", "00", "11", "00", "10", "11");
--                               000   001   010   011   100   101   110   111
signal input_vec: unsigned(2 downto 0):= "000";
signal sum, co: STD_LOGIC; 
begin 

DUT: entity work.fullsub port map (a => input_vec(0), b => input_vec(1), cin => input_vec(2), sum => sum, co => co); 

stm_proc: process
begin  

for index in 0 to N loop
wait for 10 ps;

if assertion(index)(1) = '0' then
assert co = '0'
report "co shoulda been 0"
severity error;
else
assert co = '1'
report "co shoulda been 1"
severity error;
end if;
if assertion(index)(0) = '0' then
assert sum = '0'
report "sum shoulda been 0"
severity error;
else
assert sum = '1'
report "sum shoulda been 1"
severity error;
end if;

input_vec <= input_vec + 1;
end loop;
wait; 
end process; 
end fullsub_tbarch; 
