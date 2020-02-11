--simple 2 input OR gate

library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity or_2 is
	port(x, y: in std_logic; f: out std_logic);
end or_2;

architecture eqns of or_2 is
  begin
  f <= x OR y;
end eqns;