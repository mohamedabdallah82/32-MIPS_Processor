library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is
  port (
  a: in std_logic_vector(31 downto 0);
  b: in std_logic_vector(31 downto 0);
  alu_control: in std_logic_vector(2 downto 0);

  result: out std_logic_vector(31 downto 0);
  zf: out std_logic -- zero flag
  );
end entity ALU;

architecture behav of ALU is
  signal resultSig : std_logic_vector(31 downto 0);
begin
  process(a, b, alu_control)
  begin
    case alu_control is 
      when "000" => -- AND 
        resultSig <= a and b;
      when "001" => -- OR
        resultSig <= a or b;
      when "010" => -- NOR
        resultSig <= a nor b;
      when "011" => -- XOR 
        resultSig <= a xor b;
      when "100" => -- addition
        resultSig <= std_logic_vector(unsigned(a) + unsigned(b)); 
      when "101" => -- subtraction
        resultSig <= std_logic_vector(unsigned(a) - unsigned(b)); 
      when others => null; -- no operation
        resultSig <= x"00000000";
    end case;
  end process;

-- checking for zero flag
  result <= resultSig;
  zf <= '1' when resultSig = x"00000000" else '0';

end architecture behav;
