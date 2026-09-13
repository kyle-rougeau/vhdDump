library IEEE;
use IEEE.std_logic_1164.all;

entity ORGATE is
port( a,b: in std_logic; z: out std_logic );
end ORGATE;

architecture ORARCH of ORGATE is
begin
z<= a or b;
end ORARCH;
