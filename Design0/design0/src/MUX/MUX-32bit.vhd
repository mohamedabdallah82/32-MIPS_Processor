---------------------------------------------------------------------------------------------------
--
-- Title   : Multiplexer
-- Design  : MIPS Processor
-- Author  : Mahmoud AbuElsalhen
-- File    : MUX.vhd
--
------------------------------------------------------------------------------------------------
--
-- Description : It takes two 32-input and select one of them as 32-output
--
--------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_32bit is
    Port (
        input_0 : in std_logic_vector( 31 downto 0 );
        input_1 : in std_logic_vector( 31 downto 0 );
        sel : in std_logic;    
        output : out std_logic_vector( 31 downto 0 )
    );
end MUX_32bit;

architecture Behavioral of MUX_32bit is
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
