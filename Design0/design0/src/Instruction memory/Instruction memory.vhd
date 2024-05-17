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
                   x"02119001", -- 0x0040 0000: and    $s2,   $s0,   $s1				-- write on $S2 x"00000000"
                   x"0253a002", -- 0x0040 0004: or     $s4,   $s2,   $s3				-- write on $S4 x"00000036"
                   x"02b6b804", -- 0x0040 0008: nor    $s7,   $s5,   $s6				-- 
                   x"01095008", -- 0x0040 000C: xor    $t2,	  $t0,   $t1				-- 
                   x"8e320030", -- 0x0040 0010: lw     $s2,   48($s1)					-- write on $S2 x"00000000"
                   x"AEB40012", -- 0x0040 0014: sw     $s4,   18($s5)					-- write on 20th location x"00000036"
				   x"8EAC0012", -- 0x0040 0018: lw     $t4,   18($s5)					-- write on $t4 x"00000036"
				   x"12760019", -- 0x0040 001C: beq    $s3,   $s6, 25					-- go to 0x0040 0020 instruction
				   x"02929801", -- 0x0040 0020: and    $s3,   $s4,   $s2				-- write on $S3 x"00000000"
				   x"12720004", -- 0x0040 0024: beq    $s3,   $s2, 4					-- go to 0x0040 0038 instruction
				   x"adaf0018", -- 0x0040 0028: sw     $t7,   24($t5)
				   x"0810000c", -- 0x0040 002C: J      Jump to instruction(02b6b804)
				   x"016c6810", -- 0x0040 0030: add    $t5,   $t3,   $t4
                   x"02515020", -- 0x0040 0034: sub    $t2,   $s2,   $s1
				   x"01a85810", -- 0x0040 0038: add    $t3,   $t5,   $t0				-- write on $t3 x"0000003E"
				   x"018E7820"  -- 0x0040 003C: sub    $t6,   $t4,   $t6				-- write on $t6 x"0000000A"
                   );
    BEGIN
		-- Note: 4194304 = 0x0040 0000	 ( the First address of the instruction memory)
	PROCESS(clk)
	BEGIN
		IF to_integer(unsigned(inst_addr)) >= 4194304 AND to_integer(unsigned(inst_addr)) <= 4194304 + 15 * 4 THEN
			instruction <= instr((to_integer(unsigned(inst_addr)) - 4194304) / 4);
		ELSE
		 	instruction <= (OTHERS => '0');
		END IF;
   END PROCESS;
END Behavioral;
