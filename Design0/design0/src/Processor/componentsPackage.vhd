library ieee;
use ieee.std_logic_1164.all;

PACKAGE component_package is
	-- ADD_ALU
	component ADD_ALU
		Port (A, B : in std_logic_vector(31 downto 0); result : out std_logic_vector(31 downto 0));
	end component ADD_ALU;
	
	-- ALU
	component ALU 
		port (a: in std_logic_vector(31 downto 0); b: in std_logic_vector(31 downto 0);
		alu_control: in std_logic_vector(2 downto 0); result: out std_logic_vector(31 downto 0); zf: out std_logic);
	end component ALU;
	
	-- AND_GATE
	component AND_GATE 
		port(input_0, input_1 : in std_logic; output: out std_logic);
	end component AND_GATE;
	
	-- data_Memory
	component data_Memory 
		PORT (clk : IN STD_LOGIC; addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0); wr_Data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        memRead : IN STD_LOGIC; memWrite : IN STD_LOGIC; Data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	end component data_Memory;
	
	-- InstructionMemory
	component InstructionMemory 
		PORT(clk : IN STD_LOGIC; inst_addr : IN STD_LOGIC_VECTOR (31 DOWNTO 0); 
		instruction : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	end component InstructionMemory;
	
	-- MUX-32bit
	component MUX_32bit
		Port (input_0 : in std_logic_vector(31 downto 0); input_1 : in std_logic_vector(31 downto 0); sel : in std_logic;
        output : out std_logic_vector(31 downto 0));
	end component MUX_32bit;
	
	-- MUX-5bit
	component MUX_5bit
		Port (input_0 : in std_logic_vector(4 downto 0); input_1 : in std_logic_vector(4 downto 0); sel : in std_logic;
        output : out std_logic_vector(4 downto 0));
	end component MUX_5bit;
	
	-- PC
	component PC
		Port(input : in STD_LOGIC_VECTOR(31 downto 0); reset : in STD_LOGIC; clk : in STD_LOGIC;
		pc_out : out STD_LOGIC_VECTOR(31 downto 0));
	end component PC;
	
	-- Register_File
	component Register_File 
		port(clk : in std_logic; RD1 : in STD_LOGIC_VECTOR(4 downto 0); RD2 : in STD_LOGIC_VECTOR(4 downto 0);
		 WData_add : in STD_LOGIC_VECTOR(4 downto 0); WData : in STD_LOGIC_VECTOR(31 downto 0); 
		 RegWrit : in STD_LOGIC; RD1_Data : out STD_LOGIC_VECTOR(31 downto 0); RD2_Data : out STD_LOGIC_VECTOR(31 downto 0));
	end component Register_File;
	
	-- Shift_Left_2
	component Shift_Left_2 
		port(input_data : in STD_LOGIC_VECTOR(31 downto 0); shifted_data : out STD_LOGIC_VECTOR(31 downto 0));
	end component Shift_Left_2;
	
	-- Sign_Extend
	component Sign_Extend 
		port(se_in : in STD_LOGIC_VECTOR(15 downto 0); se_out  : out STD_LOGIC_VECTOR(31 downto 0));
	end component Sign_Extend;
	
	-- controlUnit
	component controlUnit 
		port(opcode : in std_logic_vector(5 downto 0); funct : in std_logic_vector(5 downto 0);
		RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: out std_logic;
		opSel : out std_logic_vector(2 downto 0));
	end component controlUnit;
	
	-- alucontrol
	component aluControl
	port(ALUOp : in std_logic_vector(1 downto 0); funct : in std_logic_vector(5 downto 0); 
	opSel : out std_logic_vector(2 downto 0));
	end component aluControl;
	
	-- control
	component control
	port(opcode : in std_logic_vector(5 downto 0); ALUOp : out std_logic_vector(1 downto 0);
	RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite: out std_logic);
	end component control;
	
	
end component_package;
