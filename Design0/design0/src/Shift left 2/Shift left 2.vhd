---------------------------------------------------------------------------------------------------
--
-- Title       : Shift Left 2
-- Design      : MIPS Processor
-- Author      : Abdulrahman Dahshan																   
-- File        : Shift left 2.vhd
--
---------------------------------------------------------------------------------------------------
--
-- Description : Shift left 2 in a MIPS processor shift the bits of a register operand two positions to the left, 
-- equivalent to multiplying its value by 4.
--
---------------------------------------------------------------------------------------------------

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
