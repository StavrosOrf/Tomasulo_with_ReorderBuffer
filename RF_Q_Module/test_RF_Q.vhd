--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:53:43 10/23/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/RF_Q_Module/test_RF_Q.vhd
-- Project Name:  RF_Q_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF_Module_Q
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
 
ENTITY test_RF_Q IS
END test_RF_Q;
 
ARCHITECTURE behavior OF test_RF_Q IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF_Module_Q
    PORT(
         Read_Register1 : IN  std_logic_vector(4 downto 0);
         Read_Register2 : IN  std_logic_vector(4 downto 0);
         Write_Register : IN  std_logic_vector(4 downto 0);
         Write_Data : IN  std_logic_vector(4 downto 0);
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         RF_WrEn : IN  std_logic;
         Read_Data1 : OUT  std_logic_vector(4 downto 0);
         Read_Data2 : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Read_Register1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Read_Register2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_Register : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_Data : std_logic_vector(4 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal RF_WrEn : std_logic := '0';

 	--Outputs
   signal Read_Data1 : std_logic_vector(4 downto 0);
   signal Read_Data2 : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_Module_Q PORT MAP (
          Read_Register1 => Read_Register1,
          Read_Register2 => Read_Register2,
          Write_Register => Write_Register,
          Write_Data => Write_Data,
          Clk => Clk,
          Reset => Reset,
          RF_WrEn => RF_WrEn,
          Read_Data1 => Read_Data1,
          Read_Data2 => Read_Data2
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
		
			Read_Register1 <="00000";
         Read_Register2 <="00000";
         Write_Register <="00001";
         Write_Data <="00010";
         Reset <='1';
         RF_WrEn <='0';
      wait for 100 ns;	
			Read_Register1 <="00000";
         Read_Register2 <="00000";
         Write_Register <="00001";
         Write_Data <="00010";
         Reset <='0';
         RF_WrEn <='1';
      wait for 100 ns;	
			Read_Register1 <="00001";
         Read_Register2 <="00000";
         Write_Register <="00011";
         Write_Data <="00011";
         Reset <='0';
         RF_WrEn <='1';
      wait for 100 ns;	
			Read_Register1 <="00001";
         Read_Register2 <="00011";
         Write_Register <="00111";
         Write_Data <="00111";
         Reset <='0';
         RF_WrEn <='0';
      wait for 100 ns;	
			Read_Register1 <="00111";
         Read_Register2 <="00011";
         Write_Register <="00111";
         Write_Data <="00101";
         Reset <='0';
         RF_WrEn <='1';
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
