library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Arith.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADD_ALU_tb is
end ADD_ALU_tb;

architecture Behavioral of ADD_ALU_tb is

    -- Constants
    constant WIDTH : integer := 32;

    -- Signals
    signal A, B, result : std_logic_vector(WIDTH - 1 downto 0);

begin

    -- Component instantiation
    UUT : entity work.ADD_ALU
      --generic map (
          --n => WIDTH
        --)
        port map (
            A => A,
            B => B,
            result => result
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1
        A <= "10101010101010101010101010101010";
        B <= "00001111000011111111111100001111";
        wait for 10 ns;

        -- Test case 2
        A <= "10101010101111101010101010101010";
        B <= "00001111000011110000111100001111";
        wait for 10 ns;

        -- Test case 3
        A <= "10101010101011101010101010101010";
        B <= "00001111110011110000111100001111";
        wait for 10 ns;

        -- Test case 4
        A <= "10101010100000101010101010101010";
        B <= "00001111000001110000111100001111";
        wait for 10 ns;	 
		
		-- Test case 5
        A <= "00000010101010101010101010101010";
        B <= "00000011000011110000111100001111";
        wait for 10 ns;
        
        wait;
    end process ;

end Behavioral;
