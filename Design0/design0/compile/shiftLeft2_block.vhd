---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\shiftLeft2_block.vhd
-- Generated   : Tue May 14 15:30:05 2024
-- From        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\shiftLeft2_block.bde
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


entity shiftLeft2_block is 
end shiftLeft2_block;

architecture shiftLeft2_block of shiftLeft2_block is

---- Component declarations -----

component Shift_Left_2
  port (
       input_data : in STD_LOGIC_VECTOR(31 downto 0);
       shifted_data : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : Shift_Left_2
  port map(
       input_data(0) => Dangling_Input_Signal,
       input_data(1) => Dangling_Input_Signal,
       input_data(2) => Dangling_Input_Signal,
       input_data(3) => Dangling_Input_Signal,
       input_data(4) => Dangling_Input_Signal,
       input_data(5) => Dangling_Input_Signal,
       input_data(6) => Dangling_Input_Signal,
       input_data(7) => Dangling_Input_Signal,
       input_data(8) => Dangling_Input_Signal,
       input_data(9) => Dangling_Input_Signal,
       input_data(10) => Dangling_Input_Signal,
       input_data(11) => Dangling_Input_Signal,
       input_data(12) => Dangling_Input_Signal,
       input_data(13) => Dangling_Input_Signal,
       input_data(14) => Dangling_Input_Signal,
       input_data(15) => Dangling_Input_Signal,
       input_data(16) => Dangling_Input_Signal,
       input_data(17) => Dangling_Input_Signal,
       input_data(18) => Dangling_Input_Signal,
       input_data(19) => Dangling_Input_Signal,
       input_data(20) => Dangling_Input_Signal,
       input_data(21) => Dangling_Input_Signal,
       input_data(22) => Dangling_Input_Signal,
       input_data(23) => Dangling_Input_Signal,
       input_data(24) => Dangling_Input_Signal,
       input_data(25) => Dangling_Input_Signal,
       input_data(26) => Dangling_Input_Signal,
       input_data(27) => Dangling_Input_Signal,
       input_data(28) => Dangling_Input_Signal,
       input_data(29) => Dangling_Input_Signal,
       input_data(30) => Dangling_Input_Signal,
       input_data(31) => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end shiftLeft2_block;
