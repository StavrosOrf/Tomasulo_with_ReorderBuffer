--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:20:56 11/29/2018
-- Design Name:   
-- Module Name:   C:/Users/Vasilis/Documents/Tomasulo_lab1v2. 3/v2/Tomasulo_lab1/Reorder_Buffer/ieee.vhd
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
 
ENTITY ieee IS
END ieee;
 
ARCHITECTURE behavior OF ieee IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reorder_Buffer
    PORT(
         PC : IN  std_logic_vector(31 downto 0);
         Rd_in : IN  std_logic_vector(4 downto 0);
         Accepted : out  STD_LOGIC;
			Tag_out : out  STD_LOGIC_VECTOR (4 downto 0);
         Issue_input : IN  std_logic;
         CDB_V : IN  std_logic_vector(31 downto 0);
         CDB_Q : IN  std_logic_vector(4 downto 0);
         CLK : IN  std_logic;
         Reset : IN  std_logic;
         Ready : OUT  std_logic;
         Rd_out : OUT  std_logic_vector(4 downto 0);
         Value_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC : std_logic_vector(31 downto 0) := (others => '0');
   signal Rd_in : std_logic_vector(4 downto 0) := (others => '0');
   signal Issue_input : std_logic := '0';
   signal CDB_V : std_logic_vector(31 downto 0) := (others => '0');
   signal CDB_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
	signal Accepted :   STD_LOGIC;
	signal Tag_out :   STD_LOGIC_VECTOR (4 downto 0);
   signal Ready : std_logic;
   signal Rd_out : std_logic_vector(4 downto 0);
   signal Value_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reorder_Buffer PORT MAP (
          PC => PC,
          Rd_in => Rd_in,
          
          Issue_input => Issue_input,
          CDB_V => CDB_V,
          CDB_Q => CDB_Q,
          CLK => CLK,
          Reset => Reset,
          Ready => Ready,
			 Accepted =>Accepted,
			 Tag_out =>Tag_out,
          Rd_out => Rd_out,
          Value_out => Value_out
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '0';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset<='1';
		CDB_Q<="11111";
		wait for CLK_period;	
		Reset<='0';
		PC <= "11100000000000000000000000000111";
		Rd_in <= "00001";
		CDB_Q<="11111";
		Issue_input <= '1';
      wait for CLK_period;
		
		Issue_input <= '0';
      wait for CLK_period;

		Reset<='0';
		PC <= "11100000000000000000000000000111";
		Rd_in <= "00010";
		CDB_Q<="00001";
		CDB_V <= "11100000000000000011100000000111";
		Issue_input <= '1';
      wait for CLK_period;
		
		Reset<='0';
		PC <= "11100000000000000000000000000111";
		Rd_in <= "00011";
		CDB_Q<="11111";
		Issue_input <= '1';
      wait for CLK_period*40;
		
		wait for CLK_period;
		
		Issue_input <= '0';
		
		CDB_Q<="00001";
		CDB_V <= "11100000000000000011111100000111";
		
      wait for CLK_period;
      -- insert stimulus here 

      wait;
   end process;

END;
