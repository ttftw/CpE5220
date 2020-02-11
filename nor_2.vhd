--simple 2 input NOR gate

library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity nor_2 is
	port(x, y: in std_logic; f: out std_logic);
end nor_2;

architecture eqns of nor_2 is
  begin
  f <= x NOR y;
end eqns;