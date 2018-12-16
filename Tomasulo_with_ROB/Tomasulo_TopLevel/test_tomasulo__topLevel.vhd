--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:30:11 11/07/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/Tomasulo_TopLevel/test_tomasulo__topLevel.vhd
-- Project Name:  Tomasulo_TopLevel
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Tomasulo_TopLevel
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
 
ENTITY test_tomasulo__topLevel IS
END test_tomasulo__topLevel;
 
ARCHITECTURE behavior OF test_tomasulo__topLevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Tomasulo_TopLevel
    PORT(
         Issue : IN  std_logic;
         FU_type : IN  std_logic_vector(1 downto 0);
         Fop : IN  std_logic_vector(1 downto 0);
         Ri : IN  std_logic_vector(4 downto 0);
         Rj : IN  std_logic_vector(4 downto 0);
         Rk : IN  std_logic_vector(4 downto 0);
         Accepted : OUT  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Issue : std_logic := '0';
   signal FU_type : std_logic_vector(1 downto 0) := (others => '0');
   signal Fop : std_logic_vector(1 downto 0) := (others => '0');
   signal Ri : std_logic_vector(4 downto 0) := (others => '0');
   signal Rj : std_logic_vector(4 downto 0) := (others => '0');
   signal Rk : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Accepted : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tomasulo_TopLevel PORT MAP (
          Issue => Issue,
          FU_type => FU_type,
          Fop => Fop,
          Ri => Ri,
          Rj => Rj,
          Rk => Rk,
          Accepted => Accepted,
          clk => clk,
          reset => reset
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
		
		
		Issue <= '0';
      FU_type <="00";
      Fop <="00";
      Ri <="00000";
      Rj <="00000";
		Rk <="00000";
		reset <= '1';
      wait for clk_period/2 ;	
		reset <= '0';
		
		Issue <= '1';
      FU_type <="01";
      Fop <="11";
      Ri <="00000";
      Rj <="00000";
		Rk <="00001";
		wait for clk_period ;
		Issue <= '0';
        
     

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
