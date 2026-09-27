library ieee; 
use ieee.std_logic_1164.all;

entity mplx221 is
Port (v0, v1, s : in STD_LOGIC;
      w : out STD_LOGIC);
end mplx221;

architecture mplx221arch of mplx221 is
begin

w <= (v0 and (not s)) or (v1 and s);

end mplx221arch;
