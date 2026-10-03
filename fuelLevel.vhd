library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fuel_detector is
Port (sens_vec : in unsigned(3 downto 0);
      led_vec : out unsigned(3 downto 0));
end fuel_detector;

architecture combinational of fuel_detector is
--1   , 4   , 8   , 12
--0001, 0100, 1000, 1100
begin
led_vec(3) <= sens_vec(3) and sens_vec (2);
led_vec(2) <= sens_vec(3);
led_vec(1) <= sens_vec(2) or sens_vec(3);
led_vec(0) <= sens_vec(0) or sens_vec(1) or sens_vec(2) or sens_vec(3);
end combinational;

architecture sequential of fuel_detector is
begin
process begin
if(to_integer(sens_vec) >= 12) then
led_vec <= "1111";
elsif(to_integer(sens_vec) >= 8) then
led_vec <= "0111";
elsif(to_integer(sens_vec) >= 4) then
led_vec <= "0011";
elsif(to_integer(sens_vec) > 0) then
led_vec <= "0001";
else
led_vec <= "0000";
end if;
wait for 1 ps;
end process;
end sequential;
