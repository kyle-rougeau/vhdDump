library IEEE;
use IEEE.std_logic_1164.all;

entity AND3GATE is
port( a,b,c: in std_logic; z: out std_logic );
end AND3GATE;

architecture AND3ARCH of AND3GATE is
begin
z<= (a and b) and c;
end AND3ARCH;
