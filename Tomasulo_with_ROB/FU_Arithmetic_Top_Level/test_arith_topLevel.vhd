--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:23 10/24/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/FU_Arithmetic_Top_Level/test_arith_topLevel.vhd
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
 
ENTITY test_arith_topLevel IS
END test_arith_topLevel;
 
ARCHITECTURE behavior OF test_arith_topLevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FU_Arithmetic_Top_Level
    PORT(
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
         Vj : IN  std_logic_vector(31 downto 0);
         Vk : IN  std_logic_vector(31 downto 0);
         Tag_in : IN  std_logic_vector(4 downto 0);
         Clk : IN  std_logic;
         L_Request : OUT  std_logic;
         Sel_ReSt : OUT  std_logic;
         Sel_ReSt_Mux : OUT  std_logic_vector(1 downto 0);
         Sel_ReSt_Start : OUT  std_logic_vector(1 downto 0);
         V_out : OUT  std_logic_vector(31 downto 0);
         Q_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
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
   signal Vj : std_logic_vector(31 downto 0) := (others => '0');
   signal Vk : std_logic_vector(31 downto 0) := (others => '0');
   signal Tag_in : std_logic_vector(4 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal L_Request : std_logic;
   signal Sel_ReSt : std_logic;
   signal Sel_ReSt_Mux : std_logic_vector(1 downto 0);
   signal Sel_ReSt_Start : std_logic_vector(1 downto 0);
   signal V_out : std_logic_vector(31 downto 0);
   signal Q_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FU_Arithmetic_Top_Level PORT MAP (
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
          Vj => Vj,
          Vk => Vk,
          Tag_in => Tag_in,
          Clk => Clk,
          L_Request => L_Request,
          Sel_ReSt => Sel_ReSt,
          Sel_ReSt_Mux => Sel_ReSt_Mux,
          Sel_ReSt_Start => Sel_ReSt_Start,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		
		 -- hold reset state for 100 ns.
		Reset <='1';
		Qj1<="00000";
		Qk1<="00000";
		Qj2<="00000";
		Qk2<="00000";
		Qj3<="00000";
		Qk3<="00000";
		Busy3<='0';
		Busy1<='0';
		Busy2<='0';
		Op <="00";
		Vj <="00000000000000000000000000000010";
      Vk <="00000000000000000000000000000001";
		L_Grand<='0';
		Tag_in<="00001";
      wait for Clk_period*1;
      
		
	
      wait;
   end process;

END;
