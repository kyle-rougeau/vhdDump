library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_2 is
port( a,b: in std_logic; z: out std_logic );
end XOR_2;

architecture XORARCH_2 of XOR_2 is
begin
z<= (a or b) and not(a and b);
end XORARCH_2;
