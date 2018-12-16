--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:55 10/24/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/CDB_module/test_cdb.vhd
-- Project Name:  CDB_module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CDB_module
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
 
ENTITY test_cdb IS
END test_cdb;
 
ARCHITECTURE behavior OF test_cdb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CDB_module
    PORT(
         V_Ld : IN  std_logic_vector(31 downto 0);
         V_A : IN  std_logic_vector(31 downto 0);
         V_Log : IN  std_logic_vector(31 downto 0);
         Q_Ld : IN  std_logic_vector(4 downto 0);
         Q_A : IN  std_logic_vector(4 downto 0);
         Q_Log : IN  std_logic_vector(4 downto 0);
         R_Ld : IN  std_logic;
         R_A : IN  std_logic;
         R_Log : IN  std_logic;
         G_Ld : OUT  std_logic;
         G_A : OUT  std_logic;
         G_Log : OUT  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         CDB_Q : OUT  std_logic_vector(4 downto 0);
         CDB_V : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal V_Ld : std_logic_vector(31 downto 0) := (others => '0');
   signal V_A : std_logic_vector(31 downto 0) := (others => '0');
   signal V_Log : std_logic_vector(31 downto 0) := (others => '0');
   signal Q_Ld : std_logic_vector(4 downto 0) := (others => '0');
   signal Q_A : std_logic_vector(4 downto 0) := (others => '0');
   signal Q_Log : std_logic_vector(4 downto 0) := (others => '0');
   signal R_Ld : std_logic := '0';
   signal R_A : std_logic := '0';
   signal R_Log : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal G_Ld : std_logic;
   signal G_A : std_logic;
   signal G_Log : std_logic;
   signal CDB_Q : std_logic_vector(4 downto 0);
   signal CDB_V : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CDB_module PORT MAP (
          V_Ld => V_Ld,
          V_A => V_A,
          V_Log => V_Log,
          Q_Ld => Q_Ld,
          Q_A => Q_A,
          Q_Log => Q_Log,
          R_Ld => R_Ld,
          R_A => R_A,
          R_Log => R_Log,
          G_Ld => G_Ld,
          G_A => G_A,
          G_Log => G_Log,
          Clk => Clk,
          Reset => Reset,
          CDB_Q => CDB_Q,
          CDB_V => CDB_V
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '1';
		wait for Clk_period/2;
		Clk <= '0';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1';
      wait for Clk_period ;	
		Reset <= '0';
		V_Log <= "00000000000000000000000000000010";
		V_A <=   "00000000000000000000000000000111";
		Q_Log <= "00010";
		Q_A <= "01011";
		R_A <= '1';
		R_Log <= '0';
		wait for Clk_period;
		R_A <= '0';
		R_Log <= '1';
		wait for Clk_period;
		R_A <= '0';
		R_Log <= '0';
		wait for Clk_period;
		R_A <= '0';
		R_Log <= '1';
		wait for Clk_period;
		R_A <= '1';
		R_Log <= '1';
		wait for Clk_period;
		R_A <= '1';
		R_Log <= '1';
		wait for Clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
