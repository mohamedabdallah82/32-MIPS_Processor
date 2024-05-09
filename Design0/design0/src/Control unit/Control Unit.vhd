---------------------------------------------------------------------------------------------------
--
-- Title       : Control Unit
-- Design      : MIPS Processor
-- Author      : Mohamed Abdallah																   
-- File        : Control Unit.vhd
-- Generated   : Thu May  9 17:04:24 2024
--
---------------------------------------------------------------------------------------------------
--
-- Description : responsible for setting all the control signals so that each instruction is executed properly.
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controlUnit is
	port(
	opcode : in std_logic_vector(5 downto 0);
	funct : in std_logic_vector(5 downto 0);
	RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: out std_logic;
	opSel : out std_logic_vector(2 downto 0));
end controlUnit;


architecture beh of controlUnit is
-- signal from control to aluControl
signal op : std_logic_vector(1 downto 0);

-- control component
component control
	port(opcode : in std_logic_vector(5 downto 0);
	RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: out std_logic;
	ALUOp : out std_logic_vector(1 downto 0));
end component control; 

-- aluControl component
component aluControl
	port(ALUOp : in std_logic_vector(1 downto 0); funct : in std_logic_vector(5 downto 0);
	opSel : out std_logic_vector(2 downto 0));
end component aluControl;

begin
	con : control
	port map(opcode, RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, op);
	alu : aluControl
	port map(op, funct, opSel);
end beh;
