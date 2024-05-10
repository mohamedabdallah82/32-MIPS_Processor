---------------------------------------------------------------------------------------------------
-- Title       : Test Bench for register_file
-- Design      : design0
-- Author      : Reham Hamdi
-- File        : $DSN\src\TestBench\register_file_TB.vhd

---------------------------------------------------------------------------------------------------
-- Description : Test Bench for Register File
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity register_file_tb is
end register_file_tb;

architecture TB_ARCHITECTURE of register_file_tb is
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : std_logic;
	signal RD1 : std_logic_vector(4 downto 0);
	signal RD2 : std_logic_vector(4 downto 0);
	signal WData_add : std_logic_vector(4 downto 0);
	signal WData : std_logic_vector(31 downto 0);
	signal RegWrit : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal RD1_Data : std_logic_vector(31 downto 0);
	signal RD2_Data : std_logic_vector(31 downto 0);
	-- Clock period definitions
   constant CLK_period : time := 10 ns;

begin

	-- Unit Under Test port map
	UUT : Entity work.register_file(Behavioural)
		port map (
			clk => clk,
			RD1 => RD1,
			RD2 => RD2,
			WData_add => WData_add,
			WData => WData,
			RegWrit => RegWrit,
			RD1_Data => RD1_Data,
			RD2_Data => RD2_Data
		);	 
		
     clk_process: process
      begin
		clk <= '0';
		wait for CLK_period/2;
		clk <= '1';
		wait for CLK_period/2;
     end process;	
   
   Stimulus_process: process
   begin
	   wait for CLK_period*5;
	   --writing in a register with address "00011"
	   WData_add<= "00011";
	   WData <=x"aaaabbbb";
	   RegWrit<='1';
	   wait for 10ns;  
	   RegWrit<='0';
	   
	   wait for CLK_period*5;
	   
	    --reading all 32 registers
	    for k in 0 to 30 loop
		RD1<= std_logic_vector(to_unsigned(k,5)); --read register 0,1,2,3,4,....,31
		RD2<=std_logic_vector(to_unsigned(k+1,5));--read register 1,2,3,4,5,....,32	
		wait for 30ns; 
		end loop; 
	 
	   assert false 
	   report "End"
	   severity failure;
	   end process;
end TB_ARCHITECTURE;

