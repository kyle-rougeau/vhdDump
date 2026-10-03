constant N : integer := 7; -- means you can you take 7 test cases/inputs
type bv_arr is array(1 to N) of bit_vector(3 downto 0);
type bit_arr is array(1 to N) of bit;
constant addend_array : bv_arr :=
("0111", "1101??????
);
constant augend_array : bv_arr :=
("0101", "0101", ?????..
");
constant cin_array : bit_arr :=
('0',
);
constant sum_array : bv_arr :=
("0000", "0010", ?.. );
constant cout_array : bit_arr :=
('0', '1', '1'?? );
signal addend, augend, sum : bit_vector(3 downto 0);
signal cin, cout : bit;
