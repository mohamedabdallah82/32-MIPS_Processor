---------------------------------------------------------------------------------------------------
--
-- Title       : Control Unit
-- Design      : MIPS Processor
-- Author      : Mohamed Abdallah																   
-- File        : controlUnit.vhd
-- Generated   : Tue May  7 21:47:06 2024
--
---------------------------------------------------------------------------------------------------
--
-- Description : select operation of alu.
-- funt : 
--		  000001 => and, 000010 => or, 000100 => nor, 001000 => xor, 010000 => add, 100000 => sub
-- operationSel : 
-- 				  000 => and, 001 => or, 010 => nor, 011 => xor, 100 => add, 101 => sub
--
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity aluControl is
	port(
	ALUOp : in std_logic_vector(1 downto 0);
	funct : in std_logic_vector(5 downto 0);
	opSel : out std_logic_vector(2 downto 0));
end aluControl;

architecture beh of aluControl is
begin
	process(ALUOp, funct)
	begin
		case ALUOp is
			when "10" => -- R-type
			
			case funct is
				when "000001" => -- and
				opSel <= "000";
				when "000010" => -- or
				opSel <= "001";
				when "000100" => -- nor
				opSel <= "010";
				when "001000" => -- xor
				opSel <= "011";
				when "010000" => -- add
				opSel <= "100";
				when "100000" => -- sub
				opSel <= "101";
				when others => -- 
				opSel <= "111";
			end case;
		
			when "00" => -- lw-type or sw-type		==> add operation
			opSel <= "100";
			when "01" => -- beq-type				==> sub operation
			opSel <= "101"; 
			when others => -- 
			opSel <= "111"; 
		end case;
	end process;
end beh;
