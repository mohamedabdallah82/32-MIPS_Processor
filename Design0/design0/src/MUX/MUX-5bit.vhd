---------------------------------------------------------------------------------------------------
--
-- Title   : Multiplexer
-- Design  : MIPS Processor
-- Author  : Mahmoud AbuElsalhen
-- File    : MUX.vhd
--
------------------------------------------------------------------------------------------------
--
-- Description : It takes two 5-input and select one of them as 5-output
--
--------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_5bit is  
	-- generic	(n : integer :=32);
    Port (
        input_0 : in std_logic_vector( 4 downto 0 );
        input_1 : in std_logic_vector( 4 downto 0 );
        sel : in std_logic;    
        output : out std_logic_vector( 4 downto 0 )
    );
end MUX_5bit;

architecture Behavioral of MUX_5bit is
begin
    process(input_0, input_1, sel)
    begin
        if sel = '0' then
            output <= input_0;
        else
            output <= input_1;
        end if;
    end process;
end Behavioral;
