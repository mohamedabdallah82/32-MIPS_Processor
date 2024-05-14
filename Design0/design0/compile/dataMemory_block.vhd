---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\dataMemory_block.vhd
-- Generated   : Tue May 14 23:22:28 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Data memory\dataMemory_block.bde
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


entity dataMemory_block is 
end dataMemory_block;

architecture dataMemory_block of dataMemory_block is

---- Component declarations -----

component data_memory
  port (
       addr : in STD_LOGIC_VECTOR(31 downto 0);
       clk : in STD_LOGIC;
       memory_Read : in STD_LOGIC;
       memory_Write : in STD_LOGIC;
       wr_Data : in STD_LOGIC_VECTOR(31 downto 0);
       Data_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : data_memory
  port map(
       addr(0) => Dangling_Input_Signal,
       addr(1) => Dangling_Input_Signal,
       addr(2) => Dangling_Input_Signal,
       addr(3) => Dangling_Input_Signal,
       addr(4) => Dangling_Input_Signal,
       addr(5) => Dangling_Input_Signal,
       addr(6) => Dangling_Input_Signal,
       addr(7) => Dangling_Input_Signal,
       addr(8) => Dangling_Input_Signal,
       addr(9) => Dangling_Input_Signal,
       addr(10) => Dangling_Input_Signal,
       addr(11) => Dangling_Input_Signal,
       addr(12) => Dangling_Input_Signal,
       addr(13) => Dangling_Input_Signal,
       addr(14) => Dangling_Input_Signal,
       addr(15) => Dangling_Input_Signal,
       addr(16) => Dangling_Input_Signal,
       addr(17) => Dangling_Input_Signal,
       addr(18) => Dangling_Input_Signal,
       addr(19) => Dangling_Input_Signal,
       addr(20) => Dangling_Input_Signal,
       addr(21) => Dangling_Input_Signal,
       addr(22) => Dangling_Input_Signal,
       addr(23) => Dangling_Input_Signal,
       addr(24) => Dangling_Input_Signal,
       addr(25) => Dangling_Input_Signal,
       addr(26) => Dangling_Input_Signal,
       addr(27) => Dangling_Input_Signal,
       addr(28) => Dangling_Input_Signal,
       addr(29) => Dangling_Input_Signal,
       addr(30) => Dangling_Input_Signal,
       addr(31) => Dangling_Input_Signal,
       wr_Data(0) => Dangling_Input_Signal,
       wr_Data(1) => Dangling_Input_Signal,
       wr_Data(2) => Dangling_Input_Signal,
       wr_Data(3) => Dangling_Input_Signal,
       wr_Data(4) => Dangling_Input_Signal,
       wr_Data(5) => Dangling_Input_Signal,
       wr_Data(6) => Dangling_Input_Signal,
       wr_Data(7) => Dangling_Input_Signal,
       wr_Data(8) => Dangling_Input_Signal,
       wr_Data(9) => Dangling_Input_Signal,
       wr_Data(10) => Dangling_Input_Signal,
       wr_Data(11) => Dangling_Input_Signal,
       wr_Data(12) => Dangling_Input_Signal,
       wr_Data(13) => Dangling_Input_Signal,
       wr_Data(14) => Dangling_Input_Signal,
       wr_Data(15) => Dangling_Input_Signal,
       wr_Data(16) => Dangling_Input_Signal,
       wr_Data(17) => Dangling_Input_Signal,
       wr_Data(18) => Dangling_Input_Signal,
       wr_Data(19) => Dangling_Input_Signal,
       wr_Data(20) => Dangling_Input_Signal,
       wr_Data(21) => Dangling_Input_Signal,
       wr_Data(22) => Dangling_Input_Signal,
       wr_Data(23) => Dangling_Input_Signal,
       wr_Data(24) => Dangling_Input_Signal,
       wr_Data(25) => Dangling_Input_Signal,
       wr_Data(26) => Dangling_Input_Signal,
       wr_Data(27) => Dangling_Input_Signal,
       wr_Data(28) => Dangling_Input_Signal,
       wr_Data(29) => Dangling_Input_Signal,
       wr_Data(30) => Dangling_Input_Signal,
       wr_Data(31) => Dangling_Input_Signal,
       clk => Dangling_Input_Signal,
       memory_Read => Dangling_Input_Signal,
       memory_Write => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end dataMemory_block;
