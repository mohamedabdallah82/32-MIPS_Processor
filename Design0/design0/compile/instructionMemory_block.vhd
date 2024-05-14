---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\instructionMemory_block.vhd
-- Generated   : Tue May 14 23:22:28 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Instruction memory\instructionMemory_block.bde
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


entity instructionMemory_block is 
end instructionMemory_block;

architecture instructionMemory_block of instructionMemory_block is

---- Component declarations -----

component instructionmemory
  port (
       clk : in STD_LOGIC;
       inst_addr : in STD_LOGIC_VECTOR(31 downto 0);
       instruction : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : instructionmemory
  port map(
       inst_addr(0) => Dangling_Input_Signal,
       inst_addr(1) => Dangling_Input_Signal,
       inst_addr(2) => Dangling_Input_Signal,
       inst_addr(3) => Dangling_Input_Signal,
       inst_addr(4) => Dangling_Input_Signal,
       inst_addr(5) => Dangling_Input_Signal,
       inst_addr(6) => Dangling_Input_Signal,
       inst_addr(7) => Dangling_Input_Signal,
       inst_addr(8) => Dangling_Input_Signal,
       inst_addr(9) => Dangling_Input_Signal,
       inst_addr(10) => Dangling_Input_Signal,
       inst_addr(11) => Dangling_Input_Signal,
       inst_addr(12) => Dangling_Input_Signal,
       inst_addr(13) => Dangling_Input_Signal,
       inst_addr(14) => Dangling_Input_Signal,
       inst_addr(15) => Dangling_Input_Signal,
       inst_addr(16) => Dangling_Input_Signal,
       inst_addr(17) => Dangling_Input_Signal,
       inst_addr(18) => Dangling_Input_Signal,
       inst_addr(19) => Dangling_Input_Signal,
       inst_addr(20) => Dangling_Input_Signal,
       inst_addr(21) => Dangling_Input_Signal,
       inst_addr(22) => Dangling_Input_Signal,
       inst_addr(23) => Dangling_Input_Signal,
       inst_addr(24) => Dangling_Input_Signal,
       inst_addr(25) => Dangling_Input_Signal,
       inst_addr(26) => Dangling_Input_Signal,
       inst_addr(27) => Dangling_Input_Signal,
       inst_addr(28) => Dangling_Input_Signal,
       inst_addr(29) => Dangling_Input_Signal,
       inst_addr(30) => Dangling_Input_Signal,
       inst_addr(31) => Dangling_Input_Signal,
       clk => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end instructionMemory_block;
