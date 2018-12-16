--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:50 10/24/2018
-- Design Name:   
-- Module Name:   D:/Xillinx_Projects/Tomasulo_lab1/Issue_Module/test_issue_moodule.vhd
-- Project Name:  Issue_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Issue_Module
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
 
ENTITY test_issue_moodule IS
END test_issue_moodule;
 
ARCHITECTURE behavior OF test_issue_moodule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Issue_Module
    PORT(
         FU_type : IN  std_logic_vector(1 downto 0);
         Fop : IN  std_logic_vector(1 downto 0);
         Ri : IN  std_logic_vector(4 downto 0);
         Rj : IN  std_logic_vector(4 downto 0);
         Rk : IN  std_logic_vector(4 downto 0);
         Issue : IN  std_logic;
         ba1 : IN  std_logic;
         ba2 : IN  std_logic;
         ba3 : IN  std_logic;
         bl1 : IN  std_logic;
         bl2 : IN  std_logic;
         IssueQ : OUT  std_logic_vector(4 downto 0);
         IssueDest : OUT  std_logic_vector(4 downto 0);
         IssueRs : OUT  std_logic_vector(4 downto 0);
         IssueRt : OUT  std_logic_vector(4 downto 0);
         Accepted : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal FU_type : std_logic_vector(1 downto 0) := (others => '0');
   signal Fop : std_logic_vector(1 downto 0) := (others => '0');
   signal Ri : std_logic_vector(4 downto 0) := (others => '0');
   signal Rj : std_logic_vector(4 downto 0) := (others => '0');
   signal Rk : std_logic_vector(4 downto 0) := (others => '0');
   signal Issue : std_logic := '0';
   signal ba1 : std_logic := '0';
   signal ba2 : std_logic := '0';
   signal ba3 : std_logic := '0';
   signal bl1 : std_logic := '0';
   signal bl2 : std_logic := '0';

 	--Outputs
   signal IssueQ : std_logic_vector(4 downto 0);
   signal IssueDest : std_logic_vector(4 downto 0);
   signal IssueRs : std_logic_vector(4 downto 0);
   signal IssueRt : std_logic_vector(4 downto 0);
   signal Accepted : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Issue_Module PORT MAP (
          FU_type => FU_type,
          Fop => Fop,
          Ri => Ri,
          Rj => Rj,
          Rk => Rk,
          Issue => Issue,
          ba1 => ba1,
          ba2 => ba2,
          ba3 => ba3,
          bl1 => bl1,
          bl2 => bl2,
          IssueQ => IssueQ,
          IssueDest => IssueDest,
          IssueRs => IssueRs,
          IssueRt => IssueRt,
          Accepted => Accepted
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
			FU_type <="01";
         Fop <="00";
         Ri <= "00001";
         Rj <= "00111";
         Rk <= "00011";
         Issue <='1';
         ba1 <= '1';
         ba2 <= '1';
         ba3 <= '1';
         bl1 <= '1';
         bl2 <= '1';
			
	   wait for 10 ns;
		Issue <='0';
		ba1 <= '0';
      ba2 <= '1';
      ba3 <= '1';
      bl1 <= '1';
      bl2 <= '1';
		wait for 10 ns;
		Issue <='1';
		ba1 <= '1';
      ba2 <= '0';
      ba3 <= '1';
      bl1 <= '1';
      bl2 <= '1';
		wait for 10 ns;
		Issue <='1';
		ba1 <= '1';
      ba2 <= '1';
      ba3 <= '1';
      bl1 <= '0';
      bl2 <= '1';
		wait for 10 ns;
	   FU_type<="00";
		Issue <='1';
		ba1 <= '1';
      ba2 <= '1';
      ba3 <= '1';
      bl1 <= '0';
      bl2 <= '1';	
		wait for 10 ns;
		Issue <='0';
		ba1 <= '1';
      ba2 <= '0';
      ba3 <= '1';
      bl1 <= '1';
      bl2 <= '1';	
		wait for 10 ns;

     

      -- insert stimulus here 

      wait;
   end process;

END;
