library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is  
	generic	(n : integer :=32);
    Port (
        input_0 : in std_logic_vector( n-1 downto 0 );
        input_1 : in std_logic_vector( n-1 downto 0 );
        sel : in std_logic;    
        output : out std_logic_vector( n-1 downto 0 )
    );
end MUX;

architecture Behavioral of MUX is
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
