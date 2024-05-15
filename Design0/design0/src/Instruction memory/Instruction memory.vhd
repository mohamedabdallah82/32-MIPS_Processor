---------------------------------------------------------------------------------------------------
--Title       : InstructionMemory
-- Design     : Design0
--Author      : Mohamed Abdallah
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
	                                                
                   x"02119001", -- 0x0040 0000: and    $s0,   $s1,   $s2         
                   x"0253a002", -- 0x0040 0004: or     $s2,   $s3,   $s4 
                   x"02b6b804", -- 0x0040 0008: nor    $s5,   $s6,   $s7 
                   x"01095008", -- 0x0040 000C: xor    $t0,   $t1,   $t2
                   x"016c6810", -- 0x0040 0010: add    $t3,   $t4,   $t5
                   x"018e7820", -- 0x0040 0014: sub    $t4,   $t6,   $t6  
                   x"8e320030", -- 0x0040 0018: lw     $s2,   48($s1)   
                   x"aeb40020", -- 0x0040 001C: sw     $s4,   32($s5)   
                   x"1276ffef", -- 0x0040 0020: beq    $s3,   $s6,   L1 (0x0040 0000)  
                   x"adaf0018", -- 0x0040 0024: sw     $t7,   24($t5)      
                   x"02919801", -- 0x0040 0028: and    $s4,   $s1,   $s3  
                   x"8dec000c", -- 0x0040 002C: lw     $t4,   12($t7)   
                   x"0810000c", -- 0x0040 0030: J      Jump to instruction(02b6b804)  
                   x"02e99008", -- 0x0040 0034: xor    $s7,   $t1,   $s2  
                   x"01a85810", -- 0x0040 0038: add    $t5,   $t0,   $t3 
                   x"02515020"  -- 0x0040 003C: sub    $s2,   $s1,   $t2 
                   );
    BEGIN
		-- Note: 4194304 = 0x0040 0000	 ( the First address of the instruction memory)
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
END Behavioral;
