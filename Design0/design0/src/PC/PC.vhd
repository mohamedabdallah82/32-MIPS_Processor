---------------------------------------------------------------------------------------------------
--
-- Title       : 	  Program Counter
-- Design      : 	  MIPS Processor
-- Author      : 	  Mahmoud AbuElsalhen  
-- File        :      PC.vhdl	
--
------------------------------------------------------------------------------------------------	  
--
-- Description :   PC has memory address where program begins and Fetch instruction word from memory address in PC.
--
--------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is							  
	-- generic	( n : integer := 32 );
    Port ( input : in  STD_LOGIC_VECTOR ( 31 downto 0 ) ;       -- Clock input
	reset : in  STD_LOGIC;     -- Reset input   
	clk : in STD_LOGIC;	    -- clock input
    pc_out : out  STD_LOGIC_VECTOR( 31 downto 0 ));  -- Output PC
end PC;

architecture Behavioral of PC is
signal temp : STD_LOGIC_VECTOR( 31 downto 0 ):=x"003FFFFC";
begin
    process(clk, reset)
    begin
        if (reset = '1' or temp = x"0040003C")then  -- Reset condition
            temp <= x"003FFFFC";  -- Reset
		elsif rising_edge(clk) then
			temp <= input;  
        end if;	 
    end process;
	pc_out <= temp;
end Behavioral;
