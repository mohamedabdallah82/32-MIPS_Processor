---------------------------------------------------------------------------------------------------
--Title       : InstructionMemory
-- Design     : Design0
--Author      : shahd Elsayed
-- File       : InstructionMemory.vhd
----------------------------------------------------------------------------------------------------
--Description : InstructionMemory VHDL code of MIPS Processor 
---------------------------------------------------------------------------------------------------- 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY InstructionMemory IS
PORT (
      clk : IN STD_LOGIC;
      inst_addr : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      instruction : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
      );

END InstructionMemory; 

ARCHITECTURE Behavioral OF InstructionMemory IS
    TYPE Inst_set IS ARRAY(0 TO 15) OF std_logic_vector(31 DOWNTO 0);
       SIGNAL instr : Inst_set := (
                   x"01285024", -- 0x0040 0000: add     $t2,     $t1,     $t0
                   x"018b6825", -- 0x0040 0004: or      $t5,     $t4,     $t3
                   x"01285020", -- 0x0040 0008: and     $t2,     $t1,     $t0
                   x"01285022", -- 0x0040 000C: sub     $t5,     $t1,     $t0
                   x"0149402a", -- 0x0040 0010: slt     $t0,     $t2,     $t1
                   x"1211fffb", -- 0x0040 0014: beq     $s0,     $s1,     $L1 
                   x"00285024", -- 0x0040 0018: and     $t2,     $t1,     $t0
                   x"008b6825", -- 0x0040 001C: xor     $t5,     $t4,     $t3
                   x"00284120", -- 0x0040 0020: add     $t2,     $t1,     $t0
                   x"00285022", -- 0x0040 0024: sub     $t5,     $t1,     $t0
                   x"0162483a", -- 0x0040 0028: slt     $t0,     $t2,     $t1
                   x"18100000", -- 0x0040 002C: lw      $s0,     28($s1)
                   x"121468ad", -- 0x0040 0030: sw      $s1,     30($s3)
                   x"13a485da", -- 0x0040 0034: lw      $s3,     48($s4)
                   x"00267915", -- 0x0040 0038:	add     $t4,     $t6,     $t7
                   x"1211ffab"  -- 0x0040 003C:	sw      $s4,     12($s6)
                   );
    BEGIN
		-- Note: 4194304 = 0x0040 0000	 ( the beginning address of the instruction memory)
	PROCESS(clk)
      BEGIN
  	     IF (rising_edge(clk)) THEN
	      IF to_integer(unsigned(inst_addr)) >= 4194304 AND to_integer(unsigned(inst_addr)) <= 4194304 + 15 * 4 THEN
	          instruction <= instr((to_integer(unsigned(inst_addr)) - 4194304) / 4);
	      ELSE
	          instruction <= (OTHERS => '0');
	      END IF;
        END IF;
   END PROCESS;
END Behavioral;
