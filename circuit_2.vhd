library IEEE;
use IEEE.std_logic_1164.all;

entity CIRCUIT_2 is
port( w0,w1,w2,w3,v0,v1: in std_logic; f: out std_logic );
end entity CIRCUIT_2;

architecture CIRC_2ARCH of CIRCUIT_2 is
signal v0Not: std_logic;
signal v1Not: std_logic;
signal and0: std_logic;
signal and1: std_logic;
signal and2: std_logic;
signal and3: std_logic;
begin

N0: entity work.notgate port map (a => v0, z => v0Not);
N1: entity work.notgate port map (a => v1, z => v1Not);
A0: entity work.and3gate port map (a => w0, b => v0Not, c => v1Not, z => and0);
A1: entity work.and3gate port map (a => w1, b => v0Not, c => v1,    z => and1);
A2: entity work.and3gate port map (a => w2, b => v0,    c => v1Not, z => and2);
A3: entity work.and3gate port map (a => w3, b => v0,    c => v1,    z => and3);
O0: entity work.or4gate port map (a => and0, b => and1,  c => and2, d => and3, z => f);

end architecture CIRC_2ARCH;
