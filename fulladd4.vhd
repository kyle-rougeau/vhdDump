library ieee;
use ieee.std_logic_1164.all;

entity adder4 is 
Port (mode   : in STD_LOGIC;
      a_vec : in STD_LOGIC_VECTOR(3 downto 0);
      b_vec : in STD_LOGIC_VECTOR(3 downto 0);
      sum_vec : out STD_LOGIC_VECTOR(3 downto 0);
      cOut  : out STD_LOGIC);
end adder4;

architecture add4arch of adder4 is

signal xorSig_vec: STD_LOGIC_VECTOR(3 downto 0);
signal cSig_vec: STD_LOGIC_VECTOR(2 downto 0);

begin

xorSig_vec <= b_vec xor (xorSig_vec'range => mode);

FA0: entity work.fulladder port map (a => a_vec(0), b => xorSig_vec(0), cin => mode,         co => cSig_vec(0), sum => sum_vec(0));
FA1: entity work.fulladder port map (a => a_vec(1), b => xorSig_vec(1), cin => cSig_vec(0), co => cSig_vec(1), sum => sum_vec(1));
FA2: entity work.fulladder port map (a => a_vec(2), b => xorSig_vec(2), cin => cSig_vec(1), co => cSig_vec(2), sum => sum_vec(2));
FA3: entity work.fulladder port map (a => a_vec(3), b => xorSig_vec(3), cin => cSig_vec(2), co => cOut,        sum => sum_vec(3));

end add4arch;