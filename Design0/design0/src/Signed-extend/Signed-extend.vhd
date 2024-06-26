---------------------------------------------------------------------------------------------------
--
-- Title       : Sign Extend
-- Design      : MIPS Processor
-- Author      : Abdulrahman Dahshan																   
-- File        : Signed-extend.vhd
--
---------------------------------------------------------------------------------------------------
--
-- Description : Sign extension in a MIPS processor maintains the sign of a number when expanding its
-- binary representation by copying the most significant bit to additional bits.
--
---------------------------------------------------------------------------------------------------


Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity Sign_Extend is
    port (
        se_in   : in STD_LOGIC_VECTOR(15 downto 0);
        se_out  : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Sign_Extend;

Architecture Behavioral of Sign_Extend is
begin
    Process(se_in)
    begin
        If se_in(15) = '0' then
            se_out <= (15 downto 0 => '0') & se_in;
        else
            se_out <= (15 downto 0 => '1') & se_in;
        end if;
    end process;
end Behavioral;
