---------------------------------------------------------------------------------------------------
--
-- Title       : Shift Left 2 Test Beanch 
-- Design      : MIPS Processor
-- Author      : Abdulrahman Dahshan																   
-- File        : Shift_left_2_tb.vhd
--
---------------------------------------------------------------------------------------------------
--
-- Description : Test beanch for Shift Left 2
--
---------------------------------------------------------------------------------------------------

Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity Shift_Left_2_tb is
end Shift_Left_2_tb;

architecture Behavioral of Shift_Left_2_tb is
    
    component Shift_Left_2
        port (
            input_data    : in STD_LOGIC_VECTOR(31 downto 0);
            shifted_data  : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    
    signal input_data : STD_LOGIC_VECTOR(31 downto 0);
   
    signal shifted_data : STD_LOGIC_VECTOR(31 downto 0);

begin
    
    uut: Shift_Left_2 port map (
        input_data    => input_data,
        shifted_data  => shifted_data
    );

    
    stimulus: process
    begin
        
        input_data <= "00000000000000000000000000000001"; -- 1
        wait for 10 ns;
        
        input_data <= "00000000000000000000000000000010"; -- 2
        wait for 10 ns;
		
        input_data <= "11000000000000000000000000000000"; -- C000 0000
        wait for 10 ns;

        input_data <= "11001100110011001100110011001100"; -- CCCC CCCC
        wait for 10 ns;
			
        input_data <= "11111111111111111111111111111111"; -- FFFF FFFF 
        wait for 10 ns;
        
        wait;
    end process;

end Behavioral;
