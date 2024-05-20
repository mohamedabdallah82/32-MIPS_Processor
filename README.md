# Single-Cycle Processor

This repository contains the VHDL code for a 32 bit MIPS single cycle processor. The processor is designed to execute instructions in a single clock cycle. It includes components such as the Instruction Memory, Data Memory, Control Unit, ALU (Arithmetic Logic Unit), and Registers.
## Overview

The Single-Cycle Processor is implemented in VHDL and simulated using tools like ModelSim. It provides support for basic arithmetic and logical operations, as well as memory access and control flow instructions.

## Instruction Set

```vhdl
x"02119001", -- 0x0040 0000: and    $s2,   $s0,   $s1     -- write on $S2 x"00000000"
x"0253a002", -- 0x0040 0004: or     $s4,   $s2,   $s3     -- write on $S4 x"00000036"
x"02b6b804", -- 0x0040 0008: nor    $s7,   $s5,   $s6 
x"01095008", -- 0x0040 000C: xor    $t2,	  $t0,   $t1			
x"8e320030", -- 0x0040 0010: lw     $s2,   48($s1)        -- write on $S2 x"00000000"
x"AEB40012", -- 0x0040 0014: sw     $s4,   18($s5)        -- write on 20th location x"00000036"
x"8EAC0012", -- 0x0040 0018: lw     $t4,   18($s5)        -- write on $t4 x"00000036"
x"12760019", -- 0x0040 001C: beq    $s3,   $s6, 25        -- go to 0x0040 0020 instruction
x"02929801", -- 0x0040 0020: and    $s3,   $s4,   $s2     -- write on $S3 x"00000000"
x"12720004", -- 0x0040 0024: beq    $s3,   $s2, 4         -- go to 0x0040 0038 instruction
x"adaf0018", -- 0x0040 0028: sw     $t7,   24($t5)
x"0810000c", -- 0x0040 002C: J      Jump to instruction(02b6b804)
x"016c6810", -- 0x0040 0030: add    $t5,   $t3,   $t4
x"02515020", -- 0x0040 0034: sub    $t2,   $s2,   $s1
x"01a85810", -- 0x0040 0038: add    $t3,   $t5,   $t0     -- write on $t3 x"0000003E"
x"018E7820"  -- 0x0040 003C: sub    $t6,   $t4,   $t6     -- write on $t6 x"0000000A"
```

## Block Diagram

![block_diagram](https://github.com/mohamedabdallah82/Single-Cycle-Processor/blob/main/docs/block_diagram.png) 
