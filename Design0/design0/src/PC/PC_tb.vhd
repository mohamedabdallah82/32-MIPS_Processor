library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC_tb is
end PC_tb;

architecture Behavioral of PC_tb is

    -- Constants
    constant WIDTH : integer := 32;

    -- Signals
    signal input : std_logic_vector(WIDTH - 1 downto 0);
    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    signal pc_out : std_logic_vector(WIDTH - 1 downto 0);

begin

    -- Component instantiation
    UUT : entity work.PC
       -- generic map (
           -- n => WIDTH
       -- )
        port map (
            input => input,
            reset => reset,
            clk => clk,
            pc_out => pc_out
        );

    -- Clock process
    clk_process: process
    begin
        while now < 100 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process clk_process;

    -- Stimulus process
    stimulus: process
    begin
        -- Reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Set PC value 
        input <= "10101010101010101010101010101010";
        wait for 10 ns;

        -- Set PC value 
        input <= "00001111000011110000111100001111";
        wait for 10 ns;
		
		-- Reset
		reset <= '1';
        wait for 20 ns;
        reset <= '0'; 
		
        -- Set PC value 
        input <= "10101010101010101010101010100000";
        wait for 10 ns;

        wait;
    end process ;

end Behavioral;
