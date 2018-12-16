----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:43 10/23/2018 
-- Design Name: 
-- Module Name:    RF_Top_Level - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.my_Package_Vector.All;
use work.my_Package_VectorV.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Top_Level is
    Port ( 
			  --Inputs
			  Rs : in  STD_LOGIC_VECTOR (4 downto 0);
           Rt : in  STD_LOGIC_VECTOR (4 downto 0);
           Issue : in  STD_LOGIC;
           Issue_Valid : in  STD_LOGIC;
           Issue_Dest : in  STD_LOGIC_VECTOR (4 downto 0);
           CDB_V : in  STD_LOGIC_VECTOR (31 downto 0);
           CDB_Q : in  STD_LOGIC_VECTOR (4 downto 0);
			  Rd : in  STD_LOGIC_VECTOR (4 downto 0); 
			  wr_en : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
			   --Outputs
           RsOut_V : out  STD_LOGIC_VECTOR (31 downto 0);
           RsOut_Q : out  STD_LOGIC_VECTOR (4 downto 0);
           RtOut_V : out  STD_LOGIC_VECTOR (31 downto 0);
           RtOut_Q : out  STD_LOGIC_VECTOR (4 downto 0));
end RF_Top_Level;

architecture Behavioral of RF_Top_Level is
SIGNAL tmp_out_compare,tmp_q_match_addr: STD_LOGIC_VECTOR (4 downto 0);
SIGNAL tmp_regQ : Array_of_Reg;
SIGNAL tmp_Q_Match,tmp_Q_Control,tmp_q_match_addr_reset :STD_LOGIC;

begin




Inst_RFQ : entity work.RF_Module_Q
port map(
			  Read_Register1 => Rs,
           Read_Register2 => Rt,
           Write_Register => Issue_Dest,
           Write_Data => Issue_Q,
           Clk => CLK,
			  Reset_Register =>Rd, 
			  Reset  => RST,
           RF_WrEn  => tmp_Q_Control,
           Read_Data1 => RsOut_Q,
           Read_Data2 => RtOut_Q,
			  RF_Q_Out => tmp_regQ
			  );

Inst_RFV : entity work.RF_Module_V
port map(
			  Read_Register1 => Rs,
           Read_Register2 => Rt,
           Write_Register => Rd,
           Write_Data => CDB_V, --- its Rob_value now
           Clk => CLK,
			  Reset  => RST,
           RF_WrEn  => wr_en,
           Read_Data1 => RsOut_V,
           Read_Data2 => RtOut_V
			  );

Inst_Q_Match: entity work.Q_Match_Module
port map(
			Input => tmp_regQ,
			CDB_Q  => "11111",--never Match
			Q_match => tmp_Q_Match,
			Q_match_addr => tmp_q_match_addr);
			

tmp_Q_Control <= tmp_Q_Match or Issue_Valid;

tmp_q_match_addr_reset <= tmp_Q_Match or RST;
end Behavioral;

