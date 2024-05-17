---------------------------------------------------------------------------------------------------
--
-- Title       : Single Cycle Processor
-- Design      : MIPS Processor
-- Author      : Mohamed Abdallah
-- File        : processor.vhd
--
---------------------------------------------------------------------------------------------------
-- Description : Connection of all components of a processor.
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.component_package.all;

entity processor is
  port(clk : in STD_LOGIC; rst : in STD_LOGIC; j : out STD_LOGIC);
end processor;

architecture beh of processor is

----     Constants     -----
constant num4 : STD_LOGIC_vector(31 downto 0) := x"00000004";

---- Signal declarations used on the diagram ----

signal regDst 	 	 : 	STD_LOGIC;
signal aluSrc 	 	 : 	STD_LOGIC;
signal memRead 	 	 : 	STD_LOGIC;
signal memWrite  	 : 	STD_LOGIC;
signal memToReg  	 : 	STD_LOGIC;
signal addrSel   	 : 	STD_LOGIC;
signal branch 	 	 : 	STD_LOGIC;
signal zf 		 	 : 	STD_LOGIC;
signal regWrite  	 : 	STD_LOGIC;
signal rd        	 : 	STD_LOGIC_VECTOR (4 downto 0);
signal regOutput1 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal regOutput2 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal ALUop 		 : 	STD_LOGIC_VECTOR (1 downto 0);
signal dataMemOutput : 	STD_LOGIC_VECTOR (31 downto 0);
signal offsetX4 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal nextAddr 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal dest 	 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal pc_input 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal offset     	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal dataMemWrData : 	STD_LOGIC_VECTOR (31 downto 0);
signal opSel 		 : 	STD_LOGIC_VECTOR (2 downto 0);
signal aluResult 	 : 	STD_LOGIC_VECTOR (31 downto 0);
signal pcOut 		 : 	STD_LOGIC_VECTOR (31 downto 0);
signal rgfileDataWr  : 	STD_LOGIC_VECTOR (31 downto 0);
signal Instruction 	 : 	STD_LOGIC_VECTOR (31 downto 0);

---- Declaration for Dangling input ----
signal Number4 : STD_LOGIC_vector(31 downto 0);

begin

----  Component instantiations  ----
	U1 : add_alu 
	port map(A => pcOut, B(31 downto 0) => Number4, result => nextAddr);
	
	U2 : aluControl
	port map( ALUOp => ALUop, funct(5 downto 0) => Instruction(5 downto 0), opSel => opSel);
	
	U3 : ALU
	port map(a => regOutput1, alu_control => opSel, b => regOutput2, result => aluResult, zf => zf);
	
	
	U4 : data_memory
	port map(Data_out => dataMemOutput, addr => aluResult, clk => clk, memRead => memread, memWrite => memwrite,
	wr_Data => dataMemWrData);
	
	U5 : control
	port map(ALUOp => ALUop, ALUSrc => aluSrc, Branch => branch, Jump => j, MemRead => memread, MemWrite => memwrite,
	MemtoReg => memtoreg, opcode(5 downto 0) => instruction(31 downto 26), RegDst => regDst, RegWrite => regWrite);
	
	U6 : MUX_32bit
	port map( input_0 => dataMemWrData, input_1 => offset, output => regOutput2, sel => aluSrc);
	
	U7 : instructionmemory
	port map( clk => clk, inst_addr => pcOut, instruction => instruction);
	
	U8 : pc
	port map(clk => clk, input => pc_input, pc_out => pcOut, reset => rst);
	
	U9 : register_file
	port map( RD1(4 downto 0) => instruction(25 downto 21), RD1_Data => regOutput1, clk => clk, WData_add => rd,
	RD2(4 downto 0) => instruction(20 downto 16), RD2_Data => dataMemWrData, RegWrit => regWrite, WData => rgfileDataWr);

	U10 : Sign_Extend
	port map(se_in(15 downto 0) => instruction(15 downto 0), se_out => offset);
	
	U11 : MUX_5bit
	port map(input_0 => instruction(20 downto 16), input_1 => instruction(15 downto 11), output => rd, sel => regDst);
	
	U12 : MUX_32bit
	port map(input_0 => aluResult, input_1 => dataMemOutput, output => rgfileDataWr, sel => memtoreg);
	
	U13 : Shift_Left_2
	port map(input_data => offset, shifted_data => offsetX4);
	
	U14 : add_alu 
	port map(A => nextAddr, B => offsetX4, result => dest);
	
	addrSel <= branch and zf;
	
	U15 : MUX_32bit
	port map(input_0 => nextAddr, input_1 => dest, output => pc_input, sel => addrSel);
	
------- Dangling input signal assignment ----
Number4 <= num4;

end beh;
