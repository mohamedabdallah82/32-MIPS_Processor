---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\alu_block.vhd
-- Generated   : Tue May 14 23:22:28 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\ALU\alu_block.bde
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


entity alu_block is 
end alu_block;

architecture alu_block of alu_block is

---- Component declarations -----

component ALU
  port (
       a : in STD_LOGIC_VECTOR(31 downto 0);
       alu_control : in STD_LOGIC_VECTOR(2 downto 0);
       b : in STD_LOGIC_VECTOR(31 downto 0);
       result : out STD_LOGIC_VECTOR(31 downto 0);
       zf : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : ALU
  port map(
       a(0) => Dangling_Input_Signal,
       a(1) => Dangling_Input_Signal,
       a(2) => Dangling_Input_Signal,
       a(3) => Dangling_Input_Signal,
       a(4) => Dangling_Input_Signal,
       a(5) => Dangling_Input_Signal,
       a(6) => Dangling_Input_Signal,
       a(7) => Dangling_Input_Signal,
       a(8) => Dangling_Input_Signal,
       a(9) => Dangling_Input_Signal,
       a(10) => Dangling_Input_Signal,
       a(11) => Dangling_Input_Signal,
       a(12) => Dangling_Input_Signal,
       a(13) => Dangling_Input_Signal,
       a(14) => Dangling_Input_Signal,
       a(15) => Dangling_Input_Signal,
       a(16) => Dangling_Input_Signal,
       a(17) => Dangling_Input_Signal,
       a(18) => Dangling_Input_Signal,
       a(19) => Dangling_Input_Signal,
       a(20) => Dangling_Input_Signal,
       a(21) => Dangling_Input_Signal,
       a(22) => Dangling_Input_Signal,
       a(23) => Dangling_Input_Signal,
       a(24) => Dangling_Input_Signal,
       a(25) => Dangling_Input_Signal,
       a(26) => Dangling_Input_Signal,
       a(27) => Dangling_Input_Signal,
       a(28) => Dangling_Input_Signal,
       a(29) => Dangling_Input_Signal,
       a(30) => Dangling_Input_Signal,
       a(31) => Dangling_Input_Signal,
       alu_control(0) => Dangling_Input_Signal,
       alu_control(1) => Dangling_Input_Signal,
       alu_control(2) => Dangling_Input_Signal,
       b(0) => Dangling_Input_Signal,
       b(1) => Dangling_Input_Signal,
       b(2) => Dangling_Input_Signal,
       b(3) => Dangling_Input_Signal,
       b(4) => Dangling_Input_Signal,
       b(5) => Dangling_Input_Signal,
       b(6) => Dangling_Input_Signal,
       b(7) => Dangling_Input_Signal,
       b(8) => Dangling_Input_Signal,
       b(9) => Dangling_Input_Signal,
       b(10) => Dangling_Input_Signal,
       b(11) => Dangling_Input_Signal,
       b(12) => Dangling_Input_Signal,
       b(13) => Dangling_Input_Signal,
       b(14) => Dangling_Input_Signal,
       b(15) => Dangling_Input_Signal,
       b(16) => Dangling_Input_Signal,
       b(17) => Dangling_Input_Signal,
       b(18) => Dangling_Input_Signal,
       b(19) => Dangling_Input_Signal,
       b(20) => Dangling_Input_Signal,
       b(21) => Dangling_Input_Signal,
       b(22) => Dangling_Input_Signal,
       b(23) => Dangling_Input_Signal,
       b(24) => Dangling_Input_Signal,
       b(25) => Dangling_Input_Signal,
       b(26) => Dangling_Input_Signal,
       b(27) => Dangling_Input_Signal,
       b(28) => Dangling_Input_Signal,
       b(29) => Dangling_Input_Signal,
       b(30) => Dangling_Input_Signal,
       b(31) => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end alu_block;
