library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE_tb is
end AND_GATE_tb;

architecture Behavioral of AND_GATE_tb is
    -- Component declaration for the AND_GATE
   

    -- Signals for connecting the testbench to the DUT (Device Under Test)
    signal input_0, input_1: std_logic := '0';
    signal output: std_logic;

begin
    -- Instantiate the AND_GATE component
    UUT: entity work.AND_GATE 
		port map (
        input_0 => input_0,
        input_1 => input_1,
        output => output
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1: input_0 = '0', input_1 = '0'
        input_0 <= '0';
        input_1 <= '0';
        wait for 10 ns;
        
        -- Test case 2: input_0 = '0', input_1 = '1'
        input_0 <= '0';
        input_1 <= '1';
        wait for 10 ns;
        
        -- Test case 3: input_0 = '1', input_1 = '0'
        input_0 <= '1';
        input_1 <= '0';
        wait for 10 ns;
        
        -- Test case 4: input_0 = '1', input_1 = '1'
        input_0 <= '1';
        input_1 <= '1';
        wait for 10 ns;
        
        -- End of testbench
        wait;
    end process stimulus;

end Behavioral;
