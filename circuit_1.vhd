library IEEE;
use IEEE.std_logic_1164.all;

entity CIRCUIT_1 is
port( w0,w1,v: in std_logic; f: out std_logic );
end entity CIRCUIT_1;

architecture CIRC_1ARCH of CIRCUIT_1 is
signal vNot: std_logic;
signal and0: std_logic;
signal and1: std_logic;
begin

N0: entity work.notgate port map (a => v, z => vNot);
A0: entity work.andgate port map (a => w0, b => vNot, z => and0);
A1: entity work.andgate port map (a => w1, b => v, z => and1);
O0: entity work.orgate port map (a => and0, b => and1, z => f);

end architecture CIRC_1ARCH;
