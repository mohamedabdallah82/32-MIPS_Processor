---------------------------------------------------------------------------------------------------

--

-- Title       : 	  And Gate
 
-- Design      : 	  MIPS Processor

 
-- Author      : 	  Mahmoud AbuElsalhen


-- File        : 	  MUX.vhd

--
------------------------------------------------------------------------------------------------

-- Description :  	  And Gate
--

--------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE is
	port( 
	input_0 , input_1 : in std_logic;
	output: out std_logic);	
	
end AND_GATE;

architecture Behavioral of AND_GATE  is

begin 
	output <= input_0 and input_1;
	
end Behavioral;
