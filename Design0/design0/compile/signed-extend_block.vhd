---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\signed-extend_block.vhd
-- Generated   : Tue May 14 23:22:29 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Signed-extend\signed-extend_block.bde
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


entity \signed-extend_block\ is 
end \signed-extend_block\;

architecture \signed-extend_block\ of \signed-extend_block\ is

---- Component declarations -----

component Sign_Extend
  port (
       se_in : in STD_LOGIC_VECTOR(15 downto 0);
       se_out : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : Sign_Extend
  port map(
       se_in(0) => Dangling_Input_Signal,
       se_in(1) => Dangling_Input_Signal,
       se_in(2) => Dangling_Input_Signal,
       se_in(3) => Dangling_Input_Signal,
       se_in(4) => Dangling_Input_Signal,
       se_in(5) => Dangling_Input_Signal,
       se_in(6) => Dangling_Input_Signal,
       se_in(7) => Dangling_Input_Signal,
       se_in(8) => Dangling_Input_Signal,
       se_in(9) => Dangling_Input_Signal,
       se_in(10) => Dangling_Input_Signal,
       se_in(11) => Dangling_Input_Signal,
       se_in(12) => Dangling_Input_Signal,
       se_in(13) => Dangling_Input_Signal,
       se_in(14) => Dangling_Input_Signal,
       se_in(15) => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end \signed-extend_block\;
