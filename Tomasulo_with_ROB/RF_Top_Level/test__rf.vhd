--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:34:52 10/23/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/RF_Top_Level/test__rf.vhd
-- Project Name:  RF_Top_Level
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF_Top_Level
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
 
ENTITY test_rf IS
END test_rf;
 
ARCHITECTURE behavior OF test_rf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF_Top_Level
    PORT(
         Rs : IN  std_logic_vector(4 downto 0);
         Rt : IN  std_logic_vector(4 downto 0);
         Issue : IN  std_logic;
         Issue_Valid : IN  std_logic;
         Issue_Dest : IN  std_logic_vector(4 downto 0);
         CDB_V : IN  std_logic_vector(31 downto 0);
         CDB_Q : IN  std_logic_vector(4 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Issue_Q : IN  std_logic_vector(4 downto 0);
         RsOut_V : OUT  std_logic_vector(31 downto 0);
         RsOut_Q : OUT  std_logic_vector(4 downto 0);
         RtOut_V : OUT  std_logic_vector(31 downto 0);
         RtOut_Q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs : std_logic_vector(4 downto 0) := (others => '0');
   signal Rt : std_logic_vector(4 downto 0) := (others => '0');
   signal Issue : std_logic := '0';
   signal Issue_Valid : std_logic := '0';
   signal Issue_Dest : std_logic_vector(4 downto 0) := (others => '0');
   signal CDB_V : std_logic_vector(31 downto 0) := (others => '0');
   signal CDB_Q : std_logic_vector(4 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Issue_Q : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal RsOut_V : std_logic_vector(31 downto 0);
   signal RsOut_Q : std_logic_vector(4 downto 0);
   signal RtOut_V : std_logic_vector(31 downto 0);
   signal RtOut_Q : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_Top_Level PORT MAP (
          Rs => Rs,
          Rt => Rt,
          Issue => Issue,
          Issue_Valid => Issue_Valid,
          Issue_Dest => Issue_Dest,
          CDB_V => CDB_V,
          CDB_Q => CDB_Q,
          RST => RST,
          CLK => CLK,
          Issue_Q => Issue_Q,
          RsOut_V => RsOut_V,
          RsOut_Q => RsOut_Q,
          RtOut_V => RtOut_V,
          RtOut_Q => RtOut_Q
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
			Issue_Valid <= '0';
			rt <= "00101";
         Issue_Dest <="00000";
			Issue_Q <= "00000";
         CDB_V <= "00000000000000000000000000000000";
         CDB_Q <= "11111";
         RST <= '1';
			
      wait for 100 ns;	
			Issue_Valid <= '1';
         Issue_Dest <="00101";
			Issue_Q <= "00001";
         CDB_V <= "00000000000000000000000000000000";
         CDB_Q <= "11111";
         RST <= '0';
			
      wait for 100 ns;	
			Issue_Valid <= '0';
         Issue_Dest <="00000";
			Issue_Q <= "00000";
         CDB_V <= "00000000000000000000000000000011";
         CDB_Q <= "00001";
         
			
      wait for 100 ns;	
			
			Issue_Valid <= '0';
         Issue_Dest <="00000";
			Issue_Q <= "00000";
         CDB_V <= "00000000000000000000000000000000";
         CDB_Q <= "11111";
         
			
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
