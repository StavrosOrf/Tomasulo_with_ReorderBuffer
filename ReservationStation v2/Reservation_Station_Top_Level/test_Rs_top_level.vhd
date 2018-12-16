--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:12 10/28/2018
-- Design Name:   
-- Module Name:   /home/ise/XilinxShareVm/Tomasulo_lab1/Reservation_Station_Top_Level/test_Rs_top_level.vhd
-- Project Name:  Reservation_Station_Top_Level
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reservation_Station_Top_Level
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
 
ENTITY test_Rs_top_level IS
END test_Rs_top_level;
 
ARCHITECTURE behavior OF test_Rs_top_level IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reservation_Station_Top_Level
    PORT(
         Op : IN  std_logic_vector(1 downto 0);
         CDB_V : IN  std_logic_vector(31 downto 0);
         CDB_Q : IN  std_logic_vector(4 downto 0);
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         Issue : IN  std_logic;
         Rj_V : IN  std_logic_vector(31 downto 0);
         Rj_Q : IN  std_logic_vector(4 downto 0);
         Rk_V : IN  std_logic_vector(31 downto 0);
         Rk_Q : IN  std_logic_vector(4 downto 0);
         Busy_out : OUT  std_logic;
         Vj_out : OUT  std_logic_vector(31 downto 0);
         Vk_out : OUT  std_logic_vector(31 downto 0);
         Qj_out : OUT  std_logic_vector(4 downto 0);
         Qk_out : OUT  std_logic_vector(4 downto 0);
         Op_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal CDB_V : std_logic_vector(31 downto 0) := (others => '0');
   signal CDB_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Issue : std_logic := '0';
   signal Rj_V : std_logic_vector(31 downto 0) := (others => '0');
   signal Rj_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal Rk_V : std_logic_vector(31 downto 0) := (others => '0');
   signal Rk_Q : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Busy_out : std_logic;
   signal Vj_out : std_logic_vector(31 downto 0);
   signal Vk_out : std_logic_vector(31 downto 0);
   signal Qj_out : std_logic_vector(4 downto 0);
   signal Qk_out : std_logic_vector(4 downto 0);
   signal Op_out : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reservation_Station_Top_Level PORT MAP (
          Op => Op,
          CDB_V => CDB_V,
          CDB_Q => CDB_Q,
          Reset => Reset,
          CLK => CLK,
          Issue => Issue,
          Rj_V => Rj_V,
          Rj_Q => Rj_Q,
          Rk_V => Rk_V,
          Rk_Q => Rk_Q,
          Busy_out => Busy_out,
          Vj_out => Vj_out,
          Vk_out => Vk_out,
          Qj_out => Qj_out,
          Qk_out => Qk_out,
          Op_out => Op_out
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
		Reset <= '1';
      
      wait for CLK_period/2 ;	
			Reset <= '0';
		
			
			Issue <= '1';
         Rj_V <="00000000000000000000000000000011";
         Rk_V <="00000000000000000000000000000000";
        
         Op <= "01";
         CDB_V <="00000000000000000000000000000001";
         CDB_Q <= "11111";
			Rj_Q <="00000";
         Rk_Q <="00010";
			wait for CLK_period;
			
			
			Issue <= '0';
			
         Rk_Q <="00010";
			
			CDB_Q <= "00010";
			wait for CLK_period;
			CDB_Q <= "00001";
			wait for CLK_period;
			
			Reset <= '1';
			Issue <= '1';
			wait for CLK_period;
			Reset <= '0';
			
			Issue <= '0';
         Rj_V <="00000000000000000000000000000000";
         Rk_V <="00000000000000000000000000000000";
         Rj_Q <="00000";
         Rk_Q <="00000";
         Op <= "01";
         CDB_V <="00000000000000000000000000000001";
         CDB_Q <= "11111";
			Rj_Q <="00001";
         Rk_Q <="00010";
			wait for CLK_period;
			
			
			Issue <= '0';
			Rj_Q <="00001";
         Rk_Q <="00010";
			
			CDB_Q <= "00010";
			
			wait for CLK_period;
			Reset <= '1';
			
			wait for CLK_period;
			Reset <= '0';
			

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
