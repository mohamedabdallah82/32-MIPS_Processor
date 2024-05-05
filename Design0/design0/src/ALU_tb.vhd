library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU_tb is
    end ALU_tb;

architecture behavior of ALU_tb is
      -- Constants for ALU control signals
    constant AND_OP : std_logic_vector(2 downto 0) := "000";
    constant OR_OP  : std_logic_vector(2 downto 0) := "001";
    constant NOR_OP : std_logic_vector(2 downto 0) := "010";
    constant XOR_OP : std_logic_vector(2 downto 0) := "011";
    constant ADD_OP : std_logic_vector(2 downto 0) := "100";
    constant SUB_OP : std_logic_vector(2 downto 0) := "101";

    -- Signals for testbench
    signal a, b : std_logic_vector(31 downto 0);
    signal alu_control : std_logic_vector(2 downto 0);
    signal result: std_logic_vector(31 downto 0);
    signal zf: std_logic;

begin
    -- Instantiate the ALU
    UUT: entity work.ALU
    port map (
                 a           => a,
                 b           => b,
                 alu_control => alu_control,
                 result      => result,
                 zf          => zf
             );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1: AND operation
        a <= x"FFFFFFFF"; -- All ones
        b <= x"0000FFFF"; -- Lower 16 bits ones
        alu_control <= AND_OP;
        wait for 10 ns;

        -- Test case 2: OR operation
        a <= x"AAAA5555"; 
        b <= x"00FF00FF";
        alu_control <= OR_OP;
        wait for 10 ns;

        -- Test case 3: NOR operation
        a <= x"FFFF000F"; 
        b <= x"00FF00FF";
        alu_control <= NOR_OP;
        wait for 10 ns;
        
        -- Test case 4: XOR operation
        a <= x"AAAA5555"; 
        b <= x"00FF00FF";
        alu_control <= XOR_OP;
        wait for 10 ns;
        
        -- Test case 5: add operation
        a <= x"AAAA5555"; 
        b <= x"00FF00FF";
        alu_control <= ADD_OP;
        wait for 10 ns;
        
        -- Test case 6: sub operation
        a <= x"AAAA5555"; 
        b <= x"00FF00FF";
        alu_control <= SUB_OP;
        wait for 10 ns;
        
        -- Test case 6: sub operation with zf
        a <= x"00FF00FF"; 
        b <= x"00FF00FF";
        alu_control <= SUB_OP;
        wait for 10 ns;
        
        -- Test case 6: null operation 
        a <= x"00FF00FF"; 
        b <= x"00FF00FF";
        alu_control <= "111";
        wait for 10 ns;

        wait;
    end process;

end behavior;
