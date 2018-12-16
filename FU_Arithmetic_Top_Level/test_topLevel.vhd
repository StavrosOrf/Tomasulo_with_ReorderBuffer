--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:38:44 10/26/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/FU_Arithmetic_Top_Level/test_topLevel.vhd
-- Project Name:  FU_Arithmetic_Top_Level
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FU_Arithmetic_Top_Level
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
 
ENTITY test_topLevel IS
END test_topLevel;
 
ARCHITECTURE behavior OF test_topLevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FU_Arithmetic_Top_Level
    PORT(
         Op1 : IN  std_logic_vector(1 downto 0);
         Op2 : IN  std_logic_vector(1 downto 0);
         Op3 : IN  std_logic_vector(1 downto 0);
         Qj1 : IN  std_logic_vector(4 downto 0);
         Qk1 : IN  std_logic_vector(4 downto 0);
         Qj2 : IN  std_logic_vector(4 downto 0);
         Qk2 : IN  std_logic_vector(4 downto 0);
         Qj3 : IN  std_logic_vector(4 downto 0);
         Qk3 : IN  std_logic_vector(4 downto 0);
         Reset : IN  std_logic;
         Busy1 : IN  std_logic;
         Busy2 : IN  std_logic;
         Busy3 : IN  std_logic;
         L_Grand : IN  std_logic;
         Op : IN  std_logic_vector(1 downto 0);
         Vj1 : IN  std_logic_vector(31 downto 0);
         Vk1 : IN  std_logic_vector(31 downto 0);
         Vj2 : IN  std_logic_vector(31 downto 0);
         Vk2 : IN  std_logic_vector(31 downto 0);
         Vj3 : IN  std_logic_vector(31 downto 0);
         Vk3 : IN  std_logic_vector(31 downto 0);
         Clk : IN  std_logic;
         L_Request : OUT  std_logic;
         Reset_Rs : OUT  std_logic;
         Reset_Sel_ReSt : OUT  std_logic_vector(1 downto 0);
         V_out : OUT  std_logic_vector(31 downto 0);
         Q_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op1 : std_logic_vector(1 downto 0) := (others => '0');
   signal Op2 : std_logic_vector(1 downto 0) := (others => '0');
   signal Op3 : std_logic_vector(1 downto 0) := (others => '0');
   signal Qj1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Qk1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Qj2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Qk2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Qj3 : std_logic_vector(4 downto 0) := (others => '0');
   signal Qk3 : std_logic_vector(4 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal Busy1 : std_logic := '0';
   signal Busy2 : std_logic := '0';
   signal Busy3 : std_logic := '0';
   signal L_Grand : std_logic := '0';
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal Vj1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Vk1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Vj2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Vk2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Vj3 : std_logic_vector(31 downto 0) := (others => '0');
   signal Vk3 : std_logic_vector(31 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal L_Request : std_logic;
   signal Reset_Rs : std_logic;
   signal Reset_Sel_ReSt : std_logic_vector(1 downto 0);
   signal V_out : std_logic_vector(31 downto 0);
   signal Q_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FU_Arithmetic_Top_Level PORT MAP (
          Op1 => Op1,
          Op2 => Op2,
          Op3 => Op3,
          Qj1 => Qj1,
          Qk1 => Qk1,
          Qj2 => Qj2,
          Qk2 => Qk2,
          Qj3 => Qj3,
          Qk3 => Qk3,
          Reset => Reset,
          Busy1 => Busy1,
          Busy2 => Busy2,
          Busy3 => Busy3,
          L_Grand => L_Grand,
          Op => Op,
          Vj1 => Vj1,
          Vk1 => Vk1,
          Vj2 => Vj2,
          Vk2 => Vk2,
          Vj3 => Vj3,
          Vk3 => Vk3,
          Clk => Clk,
          L_Request => L_Request,
          Reset_Rs => Reset_Rs,
          Reset_Sel_ReSt => Reset_Sel_ReSt,
          V_out => V_out,
          Q_out => Q_out
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Reset <= '1';
		Op1 <="00";
		Op2 <="01";
		Op3 <="10";
		Qj1<="00000";
		Qk1<="00000";
		Qj2<="00000";
		Qk2<="00000";
		Qj3<="00000";
		Qk3<="00000";
		Busy1<='0';
		Busy2<='0';
		Busy3<='0';
		
		Vj1 <="00000000000000000000000000000001";
      Vk1 <="00000000000000000000000000000010";
		Vj2 <="00000000000000000000000000000101";
      Vk2 <="00000000000000000000000000000001";
		Vj3 <="00000000000000000000000000001000";
      Vk3 <="00000000000000000000000000001000";
		
		L_Grand<='0';
      wait for Clk_period/2;	
		Reset <= '0';
		
		Busy1<='1';
		Busy2<='0';
		Busy3<='0';
		L_Grand<='0';
      wait for Clk_period;
		
		Busy1<='0';
		Busy2<='1';
		Busy3<='0';
		L_Grand<='0';
      wait for Clk_period;
		
		Busy1<='0';
		Busy2<='0';
		Busy3<='1';
		L_Grand<='0';
      wait for Clk_period;
		
		Busy1<='0';
		Busy2<='0';
		Busy3<='0';
		L_Grand<='1';
      wait for Clk_period;
		
		Busy1<='0';
		Busy2<='0';
		Busy3<='0';
		L_Grand<='1';
      wait for Clk_period;
		
		Busy1<='1';
		Busy2<='0';
		Busy3<='0';
		L_Grand<='1';
      wait for Clk_period*10;
		
		L_Grand<='0';
      wait for Clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
