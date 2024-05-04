Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity Shift_Left_2 is
    port ( 
           input_data : in STD_LOGIC_VECTOR(31 downto 0);  
           shifted_data : out STD_LOGIC_VECTOR(31 downto 0) 
          );
end Shift_Left_2;

Architecture Behavioral of Shift_Left_2 is
begin
    Process(input_data)
    begin      
        shifted_data <= (input_data(29 downto 0) & "00"); 
    end process;
end Behavioral;
