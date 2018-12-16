--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:36:27 10/28/2018
-- Design Name:   
-- Module Name:   /home/ise/XilinxShareVm/Tomasulo_lab1/A_L_RS_Module/test_A_L.vhd
-- Project Name:  A_L_RS_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: A_L_RS_Module
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
 
ENTITY test_A_L IS
END test_A_L;
 
ARCHITECTURE behavior OF test_A_L IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT A_L_RS_Module
    PORT(
         RsDest : IN  std_logic_vector(2 downto 0);
         RF_Vj : IN  std_logic_vector(31 downto 0);
         RF_Vk : IN  std_logic_vector(31 downto 0);
         RF_Qj : IN  std_logic_vector(4 downto 0);
         RF_Qk : IN  std_logic_vector(4 downto 0);
         Op : IN  std_logic_vector(1 downto 0);
         CDB_V : IN  std_logic_vector(31 downto 0);
         CDB_Q : IN  std_logic_vector(4 downto 0);
         Reset : IN  std_logic;
         clk : IN  std_logic;
         ba1 : OUT  std_logic;
         ba2 : OUT  std_logic;
         ba3 : OUT  std_logic;
         bl1 : OUT  std_logic;
         bl2 : OUT  std_logic;
         A1_Op : OUT  std_logic_vector(1 downto 0);
         A2_Op : OUT  std_logic_vector(1 downto 0);
         A3_Op : OUT  std_logic_vector(1 downto 0);
         L1_Op : OUT  std_logic_vector(1 downto 0);
         L2_Op : OUT  std_logic_vector(1 downto 0);
         A1_Vj : OUT  std_logic_vector(31 downto 0);
         A2_Vj : OUT  std_logic_vector(31 downto 0);
         A3_Vj : OUT  std_logic_vector(31 downto 0);
         L1_Vj : OUT  std_logic_vector(31 downto 0);
         L2_Vj : OUT  std_logic_vector(31 downto 0);
         A1_Vk : OUT  std_logic_vector(31 downto 0);
         A2_Vk : OUT  std_logic_vector(31 downto 0);
         A3_Vk : OUT  std_logic_vector(31 downto 0);
         L1_Vk : OUT  std_logic_vector(31 downto 0);
         L2_Vk : OUT  std_logic_vector(31 downto 0);
         A1_Qj : OUT  std_logic_vector(4 downto 0);
         A2_Qj : OUT  std_logic_vector(4 downto 0);
         A3_Qj : OUT  std_logic_vector(4 downto 0);
         L1_Qj : OUT  std_logic_vector(4 downto 0);
         L2_Qj : OUT  std_logic_vector(4 downto 0);
         A1_Qk : OUT  std_logic_vector(4 downto 0);
         A2_Qk : OUT  std_logic_vector(4 downto 0);
         A3_Qk : OUT  std_logic_vector(4 downto 0);
         L1_Qk : OUT  std_logic_vector(4 downto 0);
         L2_Qk : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RsDest : std_logic_vector(2 downto 0) := (others => '0');
   signal RF_Vj : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_Vk : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_Qj : std_logic_vector(4 downto 0) := (others => '0');
   signal RF_Qk : std_logic_vector(4 downto 0) := (others => '0');
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal CDB_V : std_logic_vector(31 downto 0) := (others => '0');
   signal CDB_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal ba1 : std_logic;
   signal ba2 : std_logic;
   signal ba3 : std_logic;
   signal bl1 : std_logic;
   signal bl2 : std_logic;
   signal A1_Op : std_logic_vector(1 downto 0);
   signal A2_Op : std_logic_vector(1 downto 0);
   signal A3_Op : std_logic_vector(1 downto 0);
   signal L1_Op : std_logic_vector(1 downto 0);
   signal L2_Op : std_logic_vector(1 downto 0);
   signal A1_Vj : std_logic_vector(31 downto 0);
   signal A2_Vj : std_logic_vector(31 downto 0);
   signal A3_Vj : std_logic_vector(31 downto 0);
   signal L1_Vj : std_logic_vector(31 downto 0);
   signal L2_Vj : std_logic_vector(31 downto 0);
   signal A1_Vk : std_logic_vector(31 downto 0);
   signal A2_Vk : std_logic_vector(31 downto 0);
   signal A3_Vk : std_logic_vector(31 downto 0);
   signal L1_Vk : std_logic_vector(31 downto 0);
   signal L2_Vk : std_logic_vector(31 downto 0);
   signal A1_Qj : std_logic_vector(4 downto 0);
   signal A2_Qj : std_logic_vector(4 downto 0);
   signal A3_Qj : std_logic_vector(4 downto 0);
   signal L1_Qj : std_logic_vector(4 downto 0);
   signal L2_Qj : std_logic_vector(4 downto 0);
   signal A1_Qk : std_logic_vector(4 downto 0);
   signal A2_Qk : std_logic_vector(4 downto 0);
   signal A3_Qk : std_logic_vector(4 downto 0);
   signal L1_Qk : std_logic_vector(4 downto 0);
   signal L2_Qk : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: A_L_RS_Module PORT MAP (
          RsDest => RsDest,
          RF_Vj => RF_Vj,
          RF_Vk => RF_Vk,
          RF_Qj => RF_Qj,
          RF_Qk => RF_Qk,
          Op => Op,
          CDB_V => CDB_V,
          CDB_Q => CDB_Q,
          Reset => Reset,
          clk => clk,
          ba1 => ba1,
          ba2 => ba2,
          ba3 => ba3,
          bl1 => bl1,
          bl2 => bl2,
          A1_Op => A1_Op,
          A2_Op => A2_Op,
          A3_Op => A3_Op,
          L1_Op => L1_Op,
          L2_Op => L2_Op,
          A1_Vj => A1_Vj,
          A2_Vj => A2_Vj,
          A3_Vj => A3_Vj,
          L1_Vj => L1_Vj,
          L2_Vj => L2_Vj,
          A1_Vk => A1_Vk,
          A2_Vk => A2_Vk,
          A3_Vk => A3_Vk,
          L1_Vk => L1_Vk,
          L2_Vk => L2_Vk,
          A1_Qj => A1_Qj,
          A2_Qj => A2_Qj,
          A3_Qj => A3_Qj,
          L1_Qj => L1_Qj,
          L2_Qj => L2_Qj,
          A1_Qk => A1_Qk,
          A2_Qk => A2_Qk,
          A3_Qk => A3_Qk,
          L1_Qk => L1_Qk,
          L2_Qk => L2_Qk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
			RsDest <="001";
         RF_Vj <="00000000000000000000000000000000";
         RF_Vk <="00000000000000000000000000000000";
         RF_Qj <="00001";
         RF_Qk <="00010";
         Op <= "01";
         CDB_V <="00000000000000000000000000000001";
         CDB_Q <= "00010";

      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
