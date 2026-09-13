library IEEE;
use IEEE.std_logic_1164.all;

entity NOTGATE is
port( a: in std_logic; z: out std_logic );
end NOTGATE;

architecture NOTARCH of NOTGATE is
begin
z<= not a;
end NOTARCH;
