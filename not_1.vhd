--simple NOT gate

library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity not_1 is
	port(x: in std_logic; f: out std_logic);
end not_1;

architecture eqns of not_1 is
  begin
  f <= NOT x;
end eqns;