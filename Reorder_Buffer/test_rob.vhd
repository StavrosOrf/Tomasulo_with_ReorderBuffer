--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:27:15 11/28/2018
-- Design Name:   
-- Module Name:   E:/Xillinx projects/Tomasulo_lab1v2. 3/v2/Tomasulo_lab1/Reorder_Buffer/test_rob.vhd
-- Project Name:  Reorder_Buffer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reorder_Buffer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_rob IS
END test_rob;
 
ARCHITECTURE behavior OF test_rob IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reorder_Buffer
    PORT(
         PC : IN  std_logic_vector(31 downto 0);
         Exception_status : IN  std_logic_vector(11 downto 0);
         Instruction : IN  std_logic_vector(31 downto 0);
         Rd_in : IN  std_logic_vector(4 downto 0);
         CDB_V : IN  std_logic_vector(31 downto 0);
         CDB_Q : IN  std_logic_vector(4 downto 0);
         CLK : IN  std_logic;
         Reset : IN  std_logic;
         Issue_input : IN  std_logic;
         Ready : OUT  std_logic;
         Rd_out : OUT  std_logic_vector(4 downto 0);
         Value_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC : std_logic_vector(31 downto 0) := (others => '0');
   signal Exception_status : std_logic_vector(11 downto 0) := (others => '0');
   signal Instruction : std_logic_vector(31 downto 0) := (others => '0');
   signal Rd_in : std_logic_vector(4 downto 0) := (others => '0');
   signal CDB_V : std_logic_vector(31 downto 0) := (others => '0');
   signal CDB_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Issue_input : std_logic := '0';

 	--Outputs
   signal Ready : std_logic;
   signal Rd_out : std_logic_vector(4 downto 0);
   signal Value_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reorder_Buffer PORT MAP (
          PC => PC,
          Exception_status => Exception_status,
          Instruction => Instruction,
          Rd_in => Rd_in,
          CDB_V => CDB_V,
          CDB_Q => CDB_Q,
          CLK => CLK,
          Reset => Reset,
          Issue_input => Issue_input,
          Ready => Ready,
          Rd_out => Rd_out,
          Value_out => Value_out
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
			wait for CLK_period;	
			PC <="00000000000000000000000000000000";
         Exception_status <="000000000000";
         Instruction <="00000000000000000000000000000110";
         Rd_in <= "00001";
         CDB_V <="00000000000000000000000000000000";
         CDB_Q <="11111";
         
         Issue_input <='1';
			
			wait for CLK_period;	
			PC <="00000000000000000000000000000010";
         Exception_status <="000000000000";
         Instruction <="00000000000000000000000000000111";
         Rd_in <= "00010";
         CDB_V <="00000000000000000000000000000001";
         CDB_Q <="00000";
         
         Issue_input <='1';
			
			wait for CLK_period;	
			PC <="00000000000000000000000000000000";
         Exception_status <="000000000000";
         Instruction <="00000000000000000000000000000110";
         Rd_in <= "00001";
         CDB_V <="00000000000000000000000000000000";
         CDB_Q <="11111";
         
         Issue_input <='0';
			
		

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
