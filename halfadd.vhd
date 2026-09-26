library ieee;
use ieee.std_logic_1164.all;

entity halfadder is
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       sum : out STD_LOGIC;
       co : out STD_LOGIC);
end halfadder;

architecture halfarch of halfadder is
begin

sum <= a xor b;
co  <= a and b;

end halfarch;