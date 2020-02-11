--simple 2 input XOR gate

library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity xor_2 is
	port(x, y: in std_logic; f: out std_logic);
end xor_2;

architecture eqns of xor_2 is
  begin
  f <= x XOR y;
end eqns;