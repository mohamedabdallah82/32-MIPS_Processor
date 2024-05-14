library	IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_tb is
end MUX_tb;

architecture Behavioral of MUX_tb is
  
    -- Signals
    signal input_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal input_1 : std_logic_vector(31 downto 0) := (others => '1');
    signal sel   : std_logic := '0';
    signal output  : std_logic_vector(31 downto 0);

begin
    -- Instantiate the multiplexer
    UUT: entity work.MUX
        port map (
            input_0=> input_0,
            input_1 => input_1,
            sel  => sel,
            output  => output
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1: select input_0
        sel <= '0';
        input_0 <= "10101010101010101010101010101010"; -- example value for input_1
        input_1 <= "00001111000011110000111100001111"; -- example value for input_2
        wait for 10 ns;

        -- Test case 2: select input_1
        sel <= '1';
        wait for 10 ns;	
		
		-- Test case 3: change the value of input_1
       	input_1 <= "00001111000011110000000000001111";
		wait for 10 ns;	 
		
		-- Test case 4: select input_0 and change the value of input_0	
		sel <= '0';
		input_0 <= "10101010101010101010101010100000";	
		wait for 10 ns;
		
        -- End simulation
        wait;
    end process ;

end Behavioral;
