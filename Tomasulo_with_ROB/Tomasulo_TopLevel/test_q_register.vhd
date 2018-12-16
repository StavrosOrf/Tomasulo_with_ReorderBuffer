--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:41:28 11/09/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/v2/Tomasulo_lab1/Tomasulo_TopLevel/test_q_register.vhd
-- Project Name:  Tomasulo_TopLevel
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_Q
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
 
ENTITY test_q_register IS
END test_q_register;
 
ARCHITECTURE behavior OF test_q_register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_Q
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         WrEn : IN  std_logic;
         Din : IN  std_logic_vector(4 downto 0);
         Dout : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal WrEn : std_logic := '0';
   signal Din : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_Q PORT MAP (
          clk => clk,
          reset => reset,
          WrEn => WrEn,
          Din => Din,
          Dout => Dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			reset <= '1' ;
          WrEn <= '0';
          Din <= "11111";
			 wait for clk_period;
			 reset <= '0' ;
          WrEn <= '0';
          Din <= "11111";
			 wait for clk_period;
			 reset <= '0' ;
          WrEn <= '1';
          Din <= "11111";
			 wait for clk_period;
			 reset <= '1' ;
          WrEn <= '1';
          Din <= "11001";
			 wait for clk_period;
			 reset <= '0' ;
          WrEn <= '0';
          Din <= "11111";
			 wait for clk_period;
          
      
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
