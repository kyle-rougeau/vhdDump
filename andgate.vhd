library IEEE;
use IEEE.std_logic_1164.all;

entity ANDGATE is
port( a,b: in std_logic; z: out std_logic );
end ANDGATE;

architecture ANDARCH of ANDGATE is
begin
z<= a and b;
end ANDARCH;
