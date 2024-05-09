---------------------------------------------------------------------------------------------------
--
-- Title       : Control 
-- Design      : MIPS Processor
-- Author      : Mohamed Abdallah																   
-- File        : controlUnit.vhd
-- Generated   : Tue May  7 21:47:06 2024
--
---------------------------------------------------------------------------------------------------
--
-- Description : take an input from instruction[31-26](opcode) and out control signals to circuit.
-- truth table : 
--			   Inputs: instr. opcode bits 	Outputs: control signals
-- Instr-type  31 	30	 29	 28	 27	 26		RegDst | Jump | Branch | MemRead | MemtoReg |  MemWrite | ALUSrc | RegWrite | ALOOp1 | ALUOp2
--		R      0 	0 	 0 	 0 	 0 	 0		  1	   |  0   |	  0    |	0	 |	  0	    |	  0     |	0	 |	  1     |	1	 |	 0
--		lw 	   1 	0 	 0 	 0 	 1 	 1 		  0	   |  0   |	  0    |	1	 |	  1	    |	  0     |	1	 |	  1     |	0	 |	 0
--		sw 	   1 	0 	 1 	 0 	 1 	 1 		  x	   |  0   |	  0    |	0	 |	  x	    |     1     |	1	 |    0     |	0	 |	 0
--		beq    0 	0 	 0 	 1 	 0 	 0 		  x	   |  0   |	  1    |	0	 |	  x 	|	  0     |	0	 |	  0     |	0	 |	 1
--		j 	   0 	0 	 0 	 0 	 1 	 0		  x	   |  1   |	  x    |	x	 |	  x     |	  0	    |	x	 |	  0     |	x	 |	 x
--
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity control is
	port(
	opcode : in std_logic_vector(5 downto 0);
	RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: out std_logic;
	ALUOp : out std_logic_vector(1 downto 0));
end control;

architecture beh of control is
-- RegDst => output(9), Jump => output(8), Branch => output(7), MemRead => output(6), MemtoReg => output(5)
-- MemWrite => output(4), ALUSrc => output(3), RegWrite => output(2), ALUOp => output(1 downto 0)
signal output : std_logic_vector(9 downto 0);
begin
	process(opcode)
	begin
		case opcode is
			when "000000" => -- R-type 
			output <= "1000000110";
			when "100011" => -- lw-type
			output <= "0001101100";
			when "101011" => -- sw-type
			output <= "0000011000"; -- x000x11000
			when "000100" => -- beq-type
			output <= "1010100001"; -- x010x00001
			when "000010" => -- j-type
			output <= "0110100010"; -- x1xxx0x0xx
			when others => -- again
			output <= "0000000011";
		end case;
	end process;
	-- 
	RegDst <= output(9);
	Jump <= output(8);
	Branch <= output(7);
	MemRead <= output(6);
	MemtoReg <= output(5);
	MemWrite <= output(4);
	AluSrc <= output(3);
	RegWrite <= output(2);
	Aluop <= output(1 downto 0);
end beh;
