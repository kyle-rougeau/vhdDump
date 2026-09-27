library ieee;
use ieee.std_logic_1164.all;

entity halfsub is
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       sum : out STD_LOGIC;
       co : out STD_LOGIC);
end halfsub;

architecture halfsubarch of halfsub is
begin

sum <= a xor b;
co  <= (not a) and b;

end halfsubarch;
