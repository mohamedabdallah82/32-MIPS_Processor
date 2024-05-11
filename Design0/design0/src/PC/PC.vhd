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
	generic	( n : integer := 32 );
    Port ( input : in  STD_LOGIC_VECTOR ( n-1 downto 0 ) ;       -- Clock input
	reset : in  STD_LOGIC;     -- Reset input   
	clk : in STD_LOGIC;	    -- clock input
    pc_out : out  STD_LOGIC_VECTOR( n-1 downto 0 ));  -- Output PC
end PC;

architecture Behavioral of PC is

begin
    process(reset , input , clk)
    begin
        if reset = '1' then  -- Reset condition
            pc_out <= (others => '0');  -- Reset PC to 0  
		elsif rising_edge(clk) then
			pc_out <= input;  
        end if;	 
    end process;  
end Behavioral;
