------------------------------------------------------------------------------------------------
--
-- Title   :  ADD_ALU
-- Design  :  MIPS Processor
-- Author  :  Mahmoud AbuElsalhen 
-- File    :  ADD_ALU.vhdl
--
------------------------------------------------------------------------------------------------	
--
-- Description : This file adds two 32-input 
--
------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Arith.ALL;

entity ADD_ALU is 
	-- generic	( n : integer := 32);
    Port (
        A, B : in std_logic_vector( 31 downto 0 );  -- Input operands
        result : out std_logic_vector( 31 downto 0 ) -- Result
    );
end ADD_ALU;

architecture Behavioral of ADD_ALU is
begin
    process(A, B)
    begin
          
       result <= unsigned(A) + unsigned(B); -- Addition operation
	   
    end process;
end Behavioral;
