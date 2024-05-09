Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity Sign_Extend_tb is
end Sign_Extend_tb;

Architecture Behavioral of Sign_Extend_tb is


    Component Sign_Extend
        port (
            se_in   : in STD_LOGIC_VECTOR(15 downto 0);
            se_out  : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
   
    signal se_in : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    
    signal se_out : STD_LOGIC_VECTOR(31 downto 0);

begin
    
    uut: Sign_Extend port map (
        se_in   => se_in,
        se_out  => se_out
    );

    
    stimulus: process
    begin
        
        se_in <= "1111111111111111"; -- FFFF
        wait for 10 ns;

        
        se_in <= "0000000000000000"; -- 0000
        wait for 10 ns;	   
	

        se_in <= "1010101010101010"; -- AAAA
        wait for 10 ns;
		
		
        se_in <= "0101010101010101"; -- 5555
        wait for 10 ns;
		

        se_in <= "0111111111111111"; -- 7FFF
        wait for 10 ns;
        
        wait;
    end process;

end Behavioral;
