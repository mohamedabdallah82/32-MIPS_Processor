---------------------------------------------------------------------------------------------------
--
-- Title       : datamemory
-- Design      : Design0
-- Author      : Nancy Ayman
-- File        :  datamemory.vhd
 
---------------------------------------------------------------------------------------------------
--
-- Description :  Data Memory VHDL code of MISP Processor
--
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity data_memory_tb is
end data_memory_tb;

architecture TB_ARCHITECTURE of data_memory_tb is
    component data_memory
        port(
            clk         : in  std_logic;                -- Clock input
            addr        : in  std_logic_vector(31 downto 0);
            wr_Data     : in  std_logic_vector(31 downto 0);
            memory_Read : in  std_logic;
            memory_Write: in  std_logic; 
            Data_out    : out std_logic_vector(31 downto 0)
        );
    end component;

    --inputs 
    signal clk           : std_logic := '0';
    signal addr          : std_logic_vector(31 downto 0) := (others => '0');
    signal wr_Data       : std_logic_vector(31 downto 0) := (others => '0');
    signal memory_Read   : std_logic := '0';
    signal memory_Write  : std_logic := '0';

    --  outputs
    signal Data_out  : std_logic_vector(31 downto 0);

 
    -- Clock  period definitions 
	
   Constant	clk_period : Time := 10 ns ;
    begin
        

    -- Unit Under Test port map
    UUT : entity work.data_memory (Behavioral) 
    port map (
        clk          => clk, 
        addr         => addr,
        wr_Data      => wr_Data,
        memory_Read  => memory_Read,
        memory_Write => memory_Write,
        Data_out     => Data_out
    ); 
	-- clock process definitions 
	process	
	begin 
		clk <= '0'; wait for clk_period/2;
		clk <= '1'; wait for clk_period/2;
	end process ;
	
    
    -- Stimulus process
    stimulus_process : process
    begin
        -- write two memory locations
        addr   <= x"10010000";
        wr_Data <= x"11112222";
        memory_Write  <= '0';
        wait for 25 ns;
        memory_Write <= '1';
        wait for 25 ns;
        memory_Write <= '0';
        wait for 25 ns;
		wait for clk_period;

        addr   <= x"10010004";
        wr_Data <= x"33334444";
        memory_Write  <= '0';
        wait for 25 ns;
        memory_Write <= '1';
        wait for 25 ns;
        memory_Write <= '0';
        wait for 25 ns;  
		wait for clk_period;
    
        -- read two memory locations
        addr <= x"10010000";
        memory_Read <= '0';
        wait for 25 ns;
        memory_Read <= '1';
        wait for 25 ns;
        memory_Read <= '0';
        wait for 25 ns;
		wait for clk_period;

        addr <= x"10010004";
        memory_Read <= '0';
        wait for 25 ns;
        memory_Read <= '1';
        wait for 25 ns;
        memory_Read <= '0';
        wait for 25 ns;
		wait for clk_period;

        ASSERT false
            REPORT "END"
            SEVERITY failure;
    end process stimulus_process;
end TB_ARCHITECTURE;
