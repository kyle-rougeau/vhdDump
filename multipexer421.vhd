library ieee; 
use ieee.std_logic_1164.all;

entity mplx421 is
Port (v_vec: in STD_LOGIC_VECTOR(3 downto 0);
      s_vec: in STD_LOGIC_VECTOR(1 downto 0);
      w : out STD_LOGIC);
end mplx421;

architecture mplx421arch of mplx421 is
signal w_sig0, w_sig1: STD_LOGIC;
begin

M0: entity work.mplx221 port map (v0 => v_vec(0), v1 => v_vec(1), s => s_vec(0), w => w_sig0);
M1: entity work.mplx221 port map (v0 => v_vec(2), v1 => v_vec(3), s => s_vec(0), w => w_sig1);
M2: entity work.mplx221 port map (v0 => w_sig0,   v1 => w_sig1,   s => s_vec(1), w => w     );

end mplx421arch;
