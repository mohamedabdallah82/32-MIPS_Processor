---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\CU_block.vhd
-- Generated   : Tue May 14 23:22:30 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Control unit\CU_block.bde
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


entity CU_block is 
end CU_block;

architecture CU_block of CU_block is

---- Component declarations -----

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

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal BUS49 : STD_LOGIC_VECTOR (1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : control
  port map(
       ALUOp => BUS49,
       opcode(0) => Dangling_Input_Signal,
       opcode(1) => Dangling_Input_Signal,
       opcode(2) => Dangling_Input_Signal,
       opcode(3) => Dangling_Input_Signal,
       opcode(4) => Dangling_Input_Signal,
       opcode(5) => Dangling_Input_Signal
  );

U2 : aluControl
  port map(
       ALUOp => BUS49,
       funct(0) => Dangling_Input_Signal,
       funct(1) => Dangling_Input_Signal,
       funct(2) => Dangling_Input_Signal,
       funct(3) => Dangling_Input_Signal,
       funct(4) => Dangling_Input_Signal,
       funct(5) => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end CU_block;
