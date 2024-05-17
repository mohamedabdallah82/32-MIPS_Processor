---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\mux-32bit_block.vhd
-- Generated   : Fri May 17 02:47:14 2024
-- From        : E:\Study\3rd\Data\2nd\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\MUX\mux-32bit_block.bde
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


entity \mux-32bit\ is 
end \mux-32bit\;

architecture \mux-32bit\ of \mux-32bit\ is

---- Component declarations -----

component MUX_32bit
  port (
       input_0 : in STD_LOGIC_VECTOR(31 downto 0);
       input_1 : in STD_LOGIC_VECTOR(31 downto 0);
       sel : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : MUX_32bit
  port map(
       input_0(0) => Dangling_Input_Signal,
       input_0(1) => Dangling_Input_Signal,
       input_0(2) => Dangling_Input_Signal,
       input_0(3) => Dangling_Input_Signal,
       input_0(4) => Dangling_Input_Signal,
       input_0(5) => Dangling_Input_Signal,
       input_0(6) => Dangling_Input_Signal,
       input_0(7) => Dangling_Input_Signal,
       input_0(8) => Dangling_Input_Signal,
       input_0(9) => Dangling_Input_Signal,
       input_0(10) => Dangling_Input_Signal,
       input_0(11) => Dangling_Input_Signal,
       input_0(12) => Dangling_Input_Signal,
       input_0(13) => Dangling_Input_Signal,
       input_0(14) => Dangling_Input_Signal,
       input_0(15) => Dangling_Input_Signal,
       input_0(16) => Dangling_Input_Signal,
       input_0(17) => Dangling_Input_Signal,
       input_0(18) => Dangling_Input_Signal,
       input_0(19) => Dangling_Input_Signal,
       input_0(20) => Dangling_Input_Signal,
       input_0(21) => Dangling_Input_Signal,
       input_0(22) => Dangling_Input_Signal,
       input_0(23) => Dangling_Input_Signal,
       input_0(24) => Dangling_Input_Signal,
       input_0(25) => Dangling_Input_Signal,
       input_0(26) => Dangling_Input_Signal,
       input_0(27) => Dangling_Input_Signal,
       input_0(28) => Dangling_Input_Signal,
       input_0(29) => Dangling_Input_Signal,
       input_0(30) => Dangling_Input_Signal,
       input_0(31) => Dangling_Input_Signal,
       input_1(0) => Dangling_Input_Signal,
       input_1(1) => Dangling_Input_Signal,
       input_1(2) => Dangling_Input_Signal,
       input_1(3) => Dangling_Input_Signal,
       input_1(4) => Dangling_Input_Signal,
       input_1(5) => Dangling_Input_Signal,
       input_1(6) => Dangling_Input_Signal,
       input_1(7) => Dangling_Input_Signal,
       input_1(8) => Dangling_Input_Signal,
       input_1(9) => Dangling_Input_Signal,
       input_1(10) => Dangling_Input_Signal,
       input_1(11) => Dangling_Input_Signal,
       input_1(12) => Dangling_Input_Signal,
       input_1(13) => Dangling_Input_Signal,
       input_1(14) => Dangling_Input_Signal,
       input_1(15) => Dangling_Input_Signal,
       input_1(16) => Dangling_Input_Signal,
       input_1(17) => Dangling_Input_Signal,
       input_1(18) => Dangling_Input_Signal,
       input_1(19) => Dangling_Input_Signal,
       input_1(20) => Dangling_Input_Signal,
       input_1(21) => Dangling_Input_Signal,
       input_1(22) => Dangling_Input_Signal,
       input_1(23) => Dangling_Input_Signal,
       input_1(24) => Dangling_Input_Signal,
       input_1(25) => Dangling_Input_Signal,
       input_1(26) => Dangling_Input_Signal,
       input_1(27) => Dangling_Input_Signal,
       input_1(28) => Dangling_Input_Signal,
       input_1(29) => Dangling_Input_Signal,
       input_1(30) => Dangling_Input_Signal,
       input_1(31) => Dangling_Input_Signal,
       sel => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end \mux-32bit\;
