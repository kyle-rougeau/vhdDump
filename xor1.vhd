library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_1 is
port( a,b: in std_logic; z: out std_logic );
end XOR_1;

architecture XORARCH_1 of XOR_1 is
begin
z<= a xor b;
end XORARCH_1;
