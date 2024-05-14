---------------------------------------------------------------------------------------------------
--
-- Title       : MIPS Processor
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\MIPS.vhd
-- Generated   : Wed May 15 02:40:10 2024
-- From        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\MIPS.bde
-- By          : Bde2Vhdl ver. 2.6
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


entity MIPS is
  port(
       Input0 : in STD_LOGIC;
       clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       j : out STD_LOGIC
  );
end MIPS;

architecture MIPS of MIPS is

---- Component declarations -----

component add_alu
  port (
       A : in STD_LOGIC_VECTOR(31 downto 0);
       B : in STD_LOGIC_VECTOR(31 downto 0);
       result : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component ALU
  port (
       a : in STD_LOGIC_VECTOR(31 downto 0);
       alu_control : in STD_LOGIC_VECTOR(2 downto 0);
       b : in STD_LOGIC_VECTOR(31 downto 0);
       result : out STD_LOGIC_VECTOR(31 downto 0);
       zf : out STD_LOGIC
  );
end component;
component aluControl
  port (
       ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
       funct : in STD_LOGIC_VECTOR(5 downto 0);
       opSel : out STD_LOGIC_VECTOR(2 downto 0)
  );
end component;
component control
  port (
       opcode : in STD_LOGIC_VECTOR(5 downto 0);
       ALUOp : out STD_LOGIC_VECTOR(1 downto 0);
       ALUSrc : out STD_LOGIC;
       Branch : out STD_LOGIC;
       Jump : out STD_LOGIC;
       MemRead : out STD_LOGIC;
       MemWrite : out STD_LOGIC;
       MemtoReg : out STD_LOGIC;
       RegDst : out STD_LOGIC;
       RegWrite : out STD_LOGIC
  );
end component;
component data_memory
  port (
       addr : in STD_LOGIC_VECTOR(31 downto 0);
       clk : in STD_LOGIC;
       memRead : in STD_LOGIC;
       memWrite : in STD_LOGIC;
       wr_Data : in STD_LOGIC_VECTOR(31 downto 0);
       Data_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component instructionmemory
  port (
       clk : in STD_LOGIC;
       inst_addr : in STD_LOGIC_VECTOR(31 downto 0);
       instruction : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component MUX_32bit
  port (
       input_0 : in STD_LOGIC_VECTOR(31 downto 0);
       input_1 : in STD_LOGIC_VECTOR(31 downto 0);
       sel : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component MUX_5bit
  port (
       input_0 : in STD_LOGIC_VECTOR(4 downto 0);
       input_1 : in STD_LOGIC_VECTOR(4 downto 0);
       sel : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component pc
  port (
       clk : in STD_LOGIC;
       input : in STD_LOGIC_VECTOR(31 downto 0);
       reset : in STD_LOGIC;
       pc_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component register_file
  port (
       RD1 : in STD_LOGIC_VECTOR(4 downto 0);
       RD2 : in STD_LOGIC_VECTOR(4 downto 0);
       RegWrit : in STD_LOGIC;
       WData : in STD_LOGIC_VECTOR(31 downto 0);
       WData_add : in STD_LOGIC_VECTOR(4 downto 0);
       clk : in STD_LOGIC;
       RD1_Data : out STD_LOGIC_VECTOR(31 downto 0);
       RD2_Data : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component Shift_Left_2
  port (
       input_data : in STD_LOGIC_VECTOR(31 downto 0);
       shifted_data : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component Sign_Extend
  port (
       se_in : in STD_LOGIC_VECTOR(15 downto 0);
       se_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal NET109 : STD_LOGIC;
signal NET153 : STD_LOGIC;
signal NET165 : STD_LOGIC;
signal NET168 : STD_LOGIC;
signal NET180 : STD_LOGIC;
signal NET216 : STD_LOGIC;
signal NET221 : STD_LOGIC;
signal NET223 : STD_LOGIC;
signal NET259 : STD_LOGIC;
signal BUS107 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS129 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS133 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS149 : STD_LOGIC_VECTOR (1 downto 0);
signal BUS178 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS198 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS200 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS214 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS227 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS232 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS238 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS243 : STD_LOGIC_VECTOR (2 downto 0);
signal BUS247 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS254 : STD_LOGIC_VECTOR (31 downto 0);
signal BUS280 : STD_LOGIC_VECTOR (31 downto 0);
signal Instruction : STD_LOGIC_VECTOR (31 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : add_alu
  port map(
       A => BUS254,
       B(0) => Dangling_Input_Signal,
       B(1) => Dangling_Input_Signal,
       B(2) => Dangling_Input_Signal,
       B(3) => Dangling_Input_Signal,
       B(4) => Dangling_Input_Signal,
       B(5) => Dangling_Input_Signal,
       B(6) => Dangling_Input_Signal,
       B(7) => Dangling_Input_Signal,
       B(8) => Dangling_Input_Signal,
       B(9) => Dangling_Input_Signal,
       B(10) => Dangling_Input_Signal,
       B(11) => Dangling_Input_Signal,
       B(12) => Dangling_Input_Signal,
       B(13) => Dangling_Input_Signal,
       B(14) => Dangling_Input_Signal,
       B(15) => Dangling_Input_Signal,
       B(16) => Dangling_Input_Signal,
       B(17) => Dangling_Input_Signal,
       B(18) => Dangling_Input_Signal,
       B(19) => Dangling_Input_Signal,
       B(20) => Dangling_Input_Signal,
       B(21) => Dangling_Input_Signal,
       B(22) => Dangling_Input_Signal,
       B(23) => Dangling_Input_Signal,
       B(24) => Dangling_Input_Signal,
       B(25) => Dangling_Input_Signal,
       B(26) => Dangling_Input_Signal,
       B(27) => Dangling_Input_Signal,
       B(28) => Dangling_Input_Signal,
       B(29) => Dangling_Input_Signal,
       B(30) => Dangling_Input_Signal,
       B(31) => Input0,
       result => BUS200
  );

U10 : Sign_Extend
  port map(
       se_in(0) => instruction(0),
       se_in(1) => instruction(1),
       se_in(2) => instruction(2),
       se_in(3) => instruction(3),
       se_in(4) => instruction(4),
       se_in(5) => instruction(5),
       se_in(6) => instruction(6),
       se_in(7) => instruction(7),
       se_in(8) => instruction(8),
       se_in(9) => instruction(9),
       se_in(10) => instruction(10),
       se_in(11) => instruction(11),
       se_in(12) => instruction(12),
       se_in(13) => instruction(13),
       se_in(14) => instruction(14),
       se_in(15) => instruction(15),
       se_out => BUS232
  );

U11 : MUX_5bit
  port map(
       input_0(0) => instruction(16),
       input_0(1) => instruction(17),
       input_0(2) => instruction(18),
       input_0(3) => instruction(19),
       input_0(4) => instruction(20),
       input_1(0) => instruction(11),
       input_1(1) => instruction(12),
       input_1(2) => instruction(13),
       input_1(3) => instruction(14),
       input_1(4) => instruction(15),
       output => BUS107,
       sel => NET109
  );

U12 : MUX_32bit
  port map(
       input_0 => BUS178,
       input_1 => BUS247,
       output => BUS280,
       sel => NET180
  );

U13 : Shift_Left_2
  port map(
       input_data => BUS232,
       shifted_data => BUS198
  );

U14 : add_alu
  port map(
       A => BUS200,
       B => BUS198,
       result => BUS214
  );

NET216 <= NET221 and NET223;

U16 : MUX_32bit
  port map(
       input_0 => BUS200,
       input_1 => BUS214,
       output => BUS227,
       sel => NET216
  );

U2 : aluControl
  port map(
       ALUOp => BUS149,
       funct(0) => Instruction(0),
       funct(1) => Instruction(1),
       funct(2) => Instruction(2),
       funct(3) => Instruction(3),
       funct(4) => Instruction(4),
       funct(5) => Instruction(5),
       opSel => BUS243
  );

U3 : ALU
  port map(
       a => BUS129,
       alu_control => BUS243,
       b => BUS133,
       result => BUS247,
       zf => NET223
  );

U4 : data_memory
  port map(
       Data_out => BUS178,
       addr => BUS247,
       clk => clk,
       memRead => NET165,
       memWrite => NET168,
       wr_Data => BUS238
  );

U5 : control
  port map(
       ALUOp => BUS149,
       ALUSrc => NET153,
       Branch => NET221,
       Jump => j,
       MemRead => NET165,
       MemWrite => NET168,
       MemtoReg => NET180,
       opcode(0) => instruction(26),
       opcode(1) => instruction(27),
       opcode(2) => instruction(28),
       opcode(3) => instruction(29),
       opcode(4) => instruction(30),
       opcode(5) => instruction(31),
       RegDst => NET109,
       RegWrite => NET259
  );

U6 : MUX_32bit
  port map(
       input_0 => BUS238,
       input_1 => BUS232,
       output => BUS133,
       sel => NET153
  );

U7 : instructionmemory
  port map(
       clk => clk,
       inst_addr => BUS254,
       instruction => instruction
  );

U8 : pc
  port map(
       clk => clk,
       input => BUS227,
       pc_out => BUS254,
       reset => rst
  );

U9 : register_file
  port map(
       RD1(0) => instruction(21),
       RD1(1) => instruction(22),
       RD1(2) => instruction(23),
       RD1(3) => instruction(24),
       RD1(4) => instruction(25),
       RD1_Data => BUS129,
       RD2(0) => instruction(16),
       RD2(1) => instruction(17),
       RD2(2) => instruction(18),
       RD2(3) => instruction(19),
       RD2(4) => instruction(20),
       RD2_Data => BUS238,
       RegWrit => NET259,
       WData => BUS280,
       WData_add => BUS107,
       clk => clk
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end MIPS;
