---------------------------------------------------------------------------------------------------
--
-- Title       : Test Bench for controlUnit
-- Design      : MIPS Processor
-- Author      : Mohamed Abdallah
-- File        : controlUnit_tb.vhd
--
---------------------------------------------------------------------------------------------------
-- Description : Test Bench of controlUnit.
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CU_tb is
    end CU_tb;

architecture beh of CU_tb is
-- Constants for Control Unit signals
	-- Instr-type 
    constant rType   : std_logic_vector(5 downto 0) := "000000";
	constant lwType  : std_logic_vector(5 downto 0) := "100011";
	constant swType  : std_logic_vector(5 downto 0) := "101011";
	constant beqType : std_logic_vector(5 downto 0) := "000100";
	constant jType   : std_logic_vector(5 downto 0) := "000010";
	-- selector of alu operation
	constant andOP : std_logic_vector(5 downto 0) := "000001";
	constant orOP  : std_logic_vector(5 downto 0) := "000010";
	constant norOP : std_logic_vector(5 downto 0) := "000100";
	constant xorOP : std_logic_vector(5 downto 0) := "001000";
	constant addOP : std_logic_vector(5 downto 0) := "010000";
	constant subOP : std_logic_vector(5 downto 0) := "100000";
	
-- Signals for testbench
	signal opcode : std_logic_vector(5 downto 0);
	signal funct  : std_logic_vector(5 downto 0);
	signal RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: std_logic;
	signal opSel  : std_logic_vector(2 downto 0);

begin
	-- Component instantiation
		UUT : entity work.controlUnit port map (
			opcode => opcode, funct => funct, RegDst => RegDst, Jump => Jump, Branch => Branch, MemRead => MemRead,
		MemtoReg => MemtoReg, MemWrite => MemWrite, ALUSrc => ALUSrc, RegWrite => RegWrite, opSel => opSel);
		
	-- Test sequencer
    STIMULI : process
	begin
		report("Starting simulation.");
        -- Test R-Type andOp
        opcode <= rType;
        funct <= andOp;
        wait for 10 ns;
		
		-- Test R-Type orOp
        opcode <= rType;
        funct <= orOp;
        wait for 10 ns;

        -- Test R-Type norOp
        opcode <= rType;
        funct <= norOp;
        wait for 10 ns;
		
		-- Test R-Type xorOp
        opcode <= rType;
        funct <= xorOp;
        wait for 10 ns;
		
		-- Test R-Type addOp
        opcode <= rType;
        funct <= addOp;
        wait for 10 ns;
		
		-- Test R-Type subOp
        opcode <= rType;
        funct <= subOp;
        wait for 10 ns;
		
		-- Test lw-Type
        opcode <= lwType;
        wait for 10 ns;
		
		-- Test sw-Type
        opcode <= swType;
        wait for 10 ns;
		
		-- Test beq-Type
        opcode <= beqType;
        wait for 10 ns;
		
		-- Test J-Type
        opcode <= jType;
        wait for 10 ns;
		report("End simulation.");
		wait;
	end process;
end beh;