---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\pc_block.vhd
-- Generated   : Tue May 14 23:22:29 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\PC\pc_block.bde
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


entity pc_block is 
end pc_block;

architecture pc_block of pc_block is

---- Component declarations -----

component pc
  port (
       clk : in STD_LOGIC;
       input : in STD_LOGIC_VECTOR(31 downto 0);
       reset : in STD_LOGIC;
       pc_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : pc
  port map(
       input(0) => Dangling_Input_Signal,
       input(1) => Dangling_Input_Signal,
       input(2) => Dangling_Input_Signal,
       input(3) => Dangling_Input_Signal,
       input(4) => Dangling_Input_Signal,
       input(5) => Dangling_Input_Signal,
       input(6) => Dangling_Input_Signal,
       input(7) => Dangling_Input_Signal,
       input(8) => Dangling_Input_Signal,
       input(9) => Dangling_Input_Signal,
       input(10) => Dangling_Input_Signal,
       input(11) => Dangling_Input_Signal,
       input(12) => Dangling_Input_Signal,
       input(13) => Dangling_Input_Signal,
       input(14) => Dangling_Input_Signal,
       input(15) => Dangling_Input_Signal,
       input(16) => Dangling_Input_Signal,
       input(17) => Dangling_Input_Signal,
       input(18) => Dangling_Input_Signal,
       input(19) => Dangling_Input_Signal,
       input(20) => Dangling_Input_Signal,
       input(21) => Dangling_Input_Signal,
       input(22) => Dangling_Input_Signal,
       input(23) => Dangling_Input_Signal,
       input(24) => Dangling_Input_Signal,
       input(25) => Dangling_Input_Signal,
       input(26) => Dangling_Input_Signal,
       input(27) => Dangling_Input_Signal,
       input(28) => Dangling_Input_Signal,
       input(29) => Dangling_Input_Signal,
       input(30) => Dangling_Input_Signal,
       input(31) => Dangling_Input_Signal,
       clk => Dangling_Input_Signal,
       reset => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end pc_block;
