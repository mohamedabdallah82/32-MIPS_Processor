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
	signal reg_array : register_file :=( x"00000000", --$zero
		                                 x"11111111", --$at
		                                 x"22222222", --$v0
		                                 x"33333333", --$v1
		                                 x"44444444", --$a0
		                                 x"55555555", --$a1
		                                 x"66666666", --$a2
		                                 x"77777777", --$a3
		                                 x"88888888", --$t0
		                                 x"99999999", --$t1
		                                 x"aaaaaaaa", --$t2
		                                 x"bbbbbbbb", --$t3
		                                 x"cccccccc", --$t4
		                                 x"dddddddd", --$t5
		                                 x"eeeeeeee", --$t6
		                                 x"ffffffff", --$t7
		                                 x"00000000", --$s0
		                                 x"11111111", --$s1
		                                 x"22222222", --$s2
		                                 x"33333333", --$s3
		                                 x"44444444", --$s4
		                                 x"55555555", --$s5
		                                 x"66666666", --$s6
		                                 x"77777777", --$s7
		                                 x"88888888", --$t8
		                                 x"99999999", --$t9
		                                 x"aaaaaaaa", --$k0
		                                 x"bbbbbbbb", --$k1
		                                 x"10008000", --$global pointer
		                                 x"7FFFF1EC", --$stack pointer
		                                 x"eeeeeeee", --$frame pointer
		                                 x"ffffffff" --$return address
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
