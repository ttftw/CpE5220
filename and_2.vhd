--simple 2 input AND gate

library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity and_2 is
	port(x, y: in std_logic; f: out std_logic);
end and_2;

architecture eqns of and_2 is
  begin
  f <= x AND y;
end eqns;