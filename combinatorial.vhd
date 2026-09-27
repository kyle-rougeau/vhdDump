library ieee; 
use ieee.std_logic_1164.all;

entity combial is
port (in_vec: in STD_LOGIC_VECTOR(5 downto 0);
      output: out STD_LOGIC);
end combial;

architecture combialarch of combial is
begin

output <= (in_vec(3) or in_vec(4)) or not(( not in_vec(5) and not in_vec(2) and not in_vec(1) and     in_vec(0) ) or
                                          ( not in_vec(5) and     in_vec(2) and not in_vec(1) and     in_vec(0) ) or
                                          (     in_vec(5) and not in_vec(2) and     in_vec(1) and not in_vec(0) ));
end combialarch;