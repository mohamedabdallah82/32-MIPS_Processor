---------------------------------------------------------------------------------------------------
--Title       : InstructionMemory
-- Design     : Design0
--Author      : shahd Elsayed
-- File       : InstructionMemory.vhd
----------------------------------------------------------------------------------------------------
--Description : InstructionMemory VHDL code of MIPS Processor 
----------------------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;	

ENTITY tb_instructionMemory IS
END tb_instructionMemory;

ARCHITECTURE behavior OF tb_instructionMemory IS
	SIGNAL clk : std_logic := '0';	   -- Clock signal
    SIGNAL tb_readAddress : std_logic_vector(31 DOWNTO 0) := x"003FFFFF";
    SIGNAL tb_instruction : std_logic_vector(31 DOWNTO 0);
   
   
BEGIN
    -- Clock process
       clk_process : PROCESS
       BEGIN
       WAIT FOR 20 ns; 
       clk <= NOT clk; -- Toggle the clock every 20 ns
    END PROCESS;

    Test : ENTITY work.instructionMemory(Behavioral)
         PORT MAP(
                  clk => clk, 
                  inst_addr => tb_readAddress,
                  instruction => tb_instruction
                 );

Stimulus_process : PROCESS
    BEGIN
       -- read 16 commands
       FOR I IN 0 TO 15 LOOP
            tb_readAddress <= x"00400000" OR std_logic_vector(to_unsigned(I * 4, 32));
            WAIT UNTIL rising_edge(clk); -- Wait for the rising edge of the clock
        END LOOP;
        ASSERT false
        REPORT "END"
         SEVERITY failure; 
    END PROCESS;
END;
