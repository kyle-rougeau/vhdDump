library IEEE;
use IEEE.std_logic_1164.all;

entity OR4GATE is
port( a,b,c,d: in std_logic; z: out std_logic );
end OR4GATE;

architecture OR4ARCH of OR4GATE is
begin
z<= (a or b) or (c or d);
end OR4ARCH;
