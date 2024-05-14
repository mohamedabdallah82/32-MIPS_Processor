---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\and_block.vhd
-- Generated   : Tue May 14 15:24:52 2024
-- From        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\and_block.bde
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


entity and_block is 
end and_block;

architecture and_block of and_block is

---- Component declarations -----

component AND_GATE
  port (
       input_0 : in STD_LOGIC;
       input_1 : in STD_LOGIC;
       output : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : AND_GATE
  port map(
       input_0 => Dangling_Input_Signal,
       input_1 => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end and_block;
