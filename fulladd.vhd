library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       cin : in STD_LOGIC;
       sum : out STD_LOGIC;
       co : out STD_LOGIC);
end fulladder;

architecture fullarch of fulladder is

signal co1: std_logic;
signal co2: std_logic;
signal sum1: std_logic;

begin

H0: entity work.halfadder port map (a => a, b => b, co => co1, sum => sum1);
H1: entity work.halfadder port map (a => sum1, b => cin, co => co2, sum => sum);

co <= co1 or co2;

end fullarch;