--test bench for 4 bit gates

library IEEE; use IEEE.STD_LOGIC_1164.ALL; use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_4bit_0 is
end entity tb_4bit_0;

architecture verify of tb_4bit_0 is
  signal w, x, y, z, f: std_logic;
  signal input: std_logic_vector (3 downto 0) := "0000";

  begin
  duv: entity work.gate_4(nor4_basic)
  -- duv: entity work.gate_4(nor4_primitive)
  -- duv: entity work.gate_4(nor4_behavior)
  -- duv: entity work.gate_4(nor4_equation)

  -- duv: entity work.gate_4(or4_basic)
  -- duv: entity work.gate_4(or4_primitive)
  -- duv: entity work.gate_4(or4_behavior)
  -- duv: entity work.gate_4(or4_equation)

  -- duv: entity work.gate_4(xor4_basic)
  -- duv: entity work.gate_4(xor4_primitive)
  -- duv: entity work.gate_4(xor4_behavior)
  -- duv: entity work.gate_4(xor4_equation)
  
    port map(w => w, x => x, y => y, z => z, f => f);

  apply_test_cases: process is
    procedure apply_test(a, b, c, d: in std_logic) is
      begin
      w <= a;
      x <= b;
      y <= c;
      z <= d;
      wait for 1ms;
    end procedure apply_test;

    begin
      for i in 0 to 16 loop
        apply_test(input(3), input(2), input(1), input(0));
        input <= input + "0001";
      end loop;
    wait;
  end process apply_test_cases;
end architecture verify;