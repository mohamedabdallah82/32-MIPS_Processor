---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : design0
-- Author      : Mohamed Abdallah
-- Company     : HP inc.
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\compile\regFiles_block.vhd
-- Generated   : Tue May 14 23:22:29 2024
-- From        : D:\mahmoud\Study\2nd Year\2nd Term\Hardware Design\Project\Single-Cycle-Processor\Design0\design0\src\Registers\regFiles_block.bde
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


entity regFiles_block is 
end regFiles_block;

architecture regFiles_block of regFiles_block is

---- Component declarations -----

component register_file
  port (
       RD1 : in STD_LOGIC_VECTOR(4 downto 0);
       RD2 : in STD_LOGIC_VECTOR(4 downto 0);
       RegWrit : in STD_LOGIC;
       WData : in STD_LOGIC_VECTOR(31 downto 0);
       WData_add : in STD_LOGIC_VECTOR(4 downto 0);
       clk : in STD_LOGIC;
       RD1_Data : out STD_LOGIC_VECTOR(31 downto 0);
       RD2_Data : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : register_file
  port map(
       RD1(0) => Dangling_Input_Signal,
       RD1(1) => Dangling_Input_Signal,
       RD1(2) => Dangling_Input_Signal,
       RD1(3) => Dangling_Input_Signal,
       RD1(4) => Dangling_Input_Signal,
       RD2(0) => Dangling_Input_Signal,
       RD2(1) => Dangling_Input_Signal,
       RD2(2) => Dangling_Input_Signal,
       RD2(3) => Dangling_Input_Signal,
       RD2(4) => Dangling_Input_Signal,
       RegWrit => Dangling_Input_Signal,
       WData(0) => Dangling_Input_Signal,
       WData(1) => Dangling_Input_Signal,
       WData(2) => Dangling_Input_Signal,
       WData(3) => Dangling_Input_Signal,
       WData(4) => Dangling_Input_Signal,
       WData(5) => Dangling_Input_Signal,
       WData(6) => Dangling_Input_Signal,
       WData(7) => Dangling_Input_Signal,
       WData(8) => Dangling_Input_Signal,
       WData(9) => Dangling_Input_Signal,
       WData(10) => Dangling_Input_Signal,
       WData(11) => Dangling_Input_Signal,
       WData(12) => Dangling_Input_Signal,
       WData(13) => Dangling_Input_Signal,
       WData(14) => Dangling_Input_Signal,
       WData(15) => Dangling_Input_Signal,
       WData(16) => Dangling_Input_Signal,
       WData(17) => Dangling_Input_Signal,
       WData(18) => Dangling_Input_Signal,
       WData(19) => Dangling_Input_Signal,
       WData(20) => Dangling_Input_Signal,
       WData(21) => Dangling_Input_Signal,
       WData(22) => Dangling_Input_Signal,
       WData(23) => Dangling_Input_Signal,
       WData(24) => Dangling_Input_Signal,
       WData(25) => Dangling_Input_Signal,
       WData(26) => Dangling_Input_Signal,
       WData(27) => Dangling_Input_Signal,
       WData(28) => Dangling_Input_Signal,
       WData(29) => Dangling_Input_Signal,
       WData(30) => Dangling_Input_Signal,
       WData(31) => Dangling_Input_Signal,
       WData_add(0) => Dangling_Input_Signal,
       WData_add(1) => Dangling_Input_Signal,
       WData_add(2) => Dangling_Input_Signal,
       WData_add(3) => Dangling_Input_Signal,
       WData_add(4) => Dangling_Input_Signal,
       clk => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end regFiles_block;
