---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\addAlu_block.vhd
-- Generated   : Fri May 17 02:47:13 2024
-- From        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Add_ALU\addAlu_block.bde
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


entity addAlu_block is 
end addAlu_block;

architecture addAlu_block of addAlu_block is

---- Component declarations -----

component add_alu
  port (
       A : in STD_LOGIC_VECTOR(31 downto 0);
       B : in STD_LOGIC_VECTOR(31 downto 0);
       result : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : add_alu
  port map(
       A(0) => Dangling_Input_Signal,
       A(1) => Dangling_Input_Signal,
       A(2) => Dangling_Input_Signal,
       A(3) => Dangling_Input_Signal,
       A(4) => Dangling_Input_Signal,
       A(5) => Dangling_Input_Signal,
       A(6) => Dangling_Input_Signal,
       A(7) => Dangling_Input_Signal,
       A(8) => Dangling_Input_Signal,
       A(9) => Dangling_Input_Signal,
       A(10) => Dangling_Input_Signal,
       A(11) => Dangling_Input_Signal,
       A(12) => Dangling_Input_Signal,
       A(13) => Dangling_Input_Signal,
       A(14) => Dangling_Input_Signal,
       A(15) => Dangling_Input_Signal,
       A(16) => Dangling_Input_Signal,
       A(17) => Dangling_Input_Signal,
       A(18) => Dangling_Input_Signal,
       A(19) => Dangling_Input_Signal,
       A(20) => Dangling_Input_Signal,
       A(21) => Dangling_Input_Signal,
       A(22) => Dangling_Input_Signal,
       A(23) => Dangling_Input_Signal,
       A(24) => Dangling_Input_Signal,
       A(25) => Dangling_Input_Signal,
       A(26) => Dangling_Input_Signal,
       A(27) => Dangling_Input_Signal,
       A(28) => Dangling_Input_Signal,
       A(29) => Dangling_Input_Signal,
       A(30) => Dangling_Input_Signal,
       A(31) => Dangling_Input_Signal,
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
       B(31) => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end addAlu_block;
