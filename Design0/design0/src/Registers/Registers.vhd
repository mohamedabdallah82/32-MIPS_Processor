---------------------------------------------------------------------------------------------------
-- Title       : Register_File
-- Design      : design0
-- Author      : Reham Hamdi
-- File        : Register_File.vhd	
---------------------------------------------------------------------------------------------------
-- Description : VHDL code for Register File of the MIPS processor
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

entity Register_File is
	port(	  
	     clk : in std_logic;
		 RD1 : in STD_LOGIC_VECTOR(4 downto 0);
		 RD2 : in STD_LOGIC_VECTOR(4 downto 0);
		 WData_add : in STD_LOGIC_VECTOR(4 downto 0);
		 WData : in STD_LOGIC_VECTOR(31 downto 0); 
		 RegWrit : in STD_LOGIC;
		 RD1_Data : out STD_LOGIC_VECTOR(31 downto 0);
		 RD2_Data : out STD_LOGIC_VECTOR(31 downto 0) 
	     );
end Register_File;

architecture Behavioural  of Register_File is 
type register_file is array (0 to 31) of 	--creating 2D array containing 32 register where each register is 32-bit  
	STD_LOGIC_VECTOR(31 downto 0);
	signal reg_array : register_file :=( 
	                                    --Data 32-bit, Register name , Register number 
	                                     x"00000000",      --$zero 		0=>00000
		                                 x"00000004",      --$at        1=>00001
		                                 x"00000002",      --$v0	    2=>00010
		                                 x"00000006",      --$v1		3=>00011
		                                 x"0000000A",      --$a0		4=>00100
		                                 x"0000000C",      --$a1		5=>00101
		                                 x"00000010",      --$a2		6=>00110
		                                 x"00000012",      --$a3		7=>00111
		                                 x"00000016",      --$t0		8=>01000
		                                 x"00000014",      --$t1		9=>01001
		                                 x"00000018",      --$t2		10=>01010
		                                 x"00000020",      --$t3		11=>01011
		                                 x"00000024",      --$t4		12=>01100
		                                 x"00000028",      --$t5		13=>01101
		                                 x"0000002C",      --$t6		14=>01110
		                                 x"00000034",      --$t7		15=>01111
		                                 x"00000030",      --$s0		16=>10000
		                                 x"00000040",      --$s1		17=>10001
		                                 x"00000032",      --$s2		18=>10010
		                                 x"00000036",      --$s3		19=>10011
		                                 x"0000000C",      --$s4		20=>10100
		                                 x"0000003E",      --$s5		21=>10101
		                                 x"00000042",      --$s6		22=>10110
		                                 x"00000046",      --$s7		23=>10111
		                                 x"00000044",      --$t8		24=>11000
		                                 x"0000003C",      --$t9		25=>11001
		                                 x"00000040",      --$k0		26=>11010
		                                 x"00000044",      --$k1		27=>11011
		                                 x"0000003A",      --$gp		28=>11100
		                                 x"00000046",      --$sp		29=>11101
		                                 x"0000004A",      --$fp		30=>11110
						 x"0000002C"       --$ra		31=>11111
										 ); 
	
begin
     
	 
    --writing in file register
     process(clk)
     begin	
	 if(rising_edge(clk)) then
		 if(RegWrit='1')then
			 reg_array(to_integer(unsigned( WData_add))) <= WData;	 
		 end if;
	 end if;
     end process;
	 
	 -- reading register
     RD1_Data<= reg_array(to_integer(unsigned( RD1))); 	  
     RD2_Data <= reg_array(to_integer(unsigned( RD2)));
  
end Behavioural ;
