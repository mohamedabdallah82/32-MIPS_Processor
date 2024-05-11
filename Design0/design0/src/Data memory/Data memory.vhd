---------------------------------------------------------------------------------------------------
--
-- Title       : datamemory
-- Design      : Design0
-- Author      : Nancy Ayman
-- File        : datamemory.vhd
-- 	
---------------------------------------------------------------------------------------------------
--
-- Description :  DataMemory VHDL code of MISP Processor
--
---------------------------------------------------------------------------------------------------

 

 LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY data_Memory IS 
	
    PORT (
        clk          : IN  STD_LOGIC;                -- Clock input
        addr         : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
        wr_Data      : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
        memory_Read  : IN  STD_LOGIC;
        memory_Write : IN  STD_LOGIC;
        Data_out     : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
END data_Memory;

ARCHITECTURE Behavioral OF data_Memory IS
    TYPE data_mem IS ARRAY(0 TO 15) OF std_logic_vector(31 DOWNTO 0);
    SIGNAL dm : data_mem := (
        x"00000000",  
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000",
        x"00000000"
    );
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN  -- Process only on rising edge of the clock
            IF (memory_Write = '1') THEN
                dm((to_integer(unsigned(addr)) - 268500992) / 4) <= wr_Data;
            END IF;
            IF (memory_Read = '1') THEN
                Data_out <= dm((to_integer(unsigned(addr)) - 268500992)/4);
            END IF;
        END IF;
    END PROCESS; 
END Behavioral;

