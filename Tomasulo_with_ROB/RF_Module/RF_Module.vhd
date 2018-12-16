----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:26 05/07/2018 
-- Design Name: 
-- Module Name:    RF_Module - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use work.my_Package_VectorV.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Module_V is
port (
           Read_Register1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Register2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_Register : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_Data : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           RF_WrEn : in  STD_LOGIC;
           Read_Data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data2 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end RF_Module_V;

architecture Behavioral of RF_Module_V is

SIGNAL tmp_decoder_out,tmp_wren,tmp_out_mux_reg1,tmp_out_mux_reg2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL tmp_reg : Array_of_RegV;
SIGNAL tmp_out_compare1,tmp_out_compare2:STD_LOGIC;

begin

Inst_Decoder:entity work.Decoder
port map(
         input  => Write_Register,
			output => tmp_decoder_out 
         );

Inst_Reg0:entity work.Register_with_muxes
port map(
         clk    => Clk,
			LDEn   => '1',
         Reset  => '0',
		   Din    => "00000000000000000000000000000000",
			Output => tmp_reg(0) 
        );

generate_registers_31_to_1:
   for i in 1 to 31 generate
	  tmp_wren(i) <= RF_WrEn and tmp_decoder_out(i);
	  Inst_Reg31:entity work.Register_with_muxes
	  port map(
	          clk    => Clk,
			    LDEn   => tmp_wren(i),
             Reset  => Reset,
		       Din    => Write_Data,
			    Output => tmp_reg(i) 
	           );
	end generate;
	
Inst_Mux_Reg1:entity work.Mux_Reg
port map(
           Input  => tmp_reg,
			  Sel    => Read_Register1,
           Output => tmp_out_mux_reg1
        );
		  
Inst_Mux_Reg2:entity work.Mux_Reg
port map(
           Input  => tmp_reg,
			  Sel    => Read_Register2,
           Output => tmp_out_mux_reg2
        );
		  
Inst_Compare_Module1:entity work.Compare_Module
port map(
           Awr         => Write_Register,
           Ad          => Read_Register1,
           WrEn        => RF_WrEn,
           Out_compare => tmp_out_compare1
        );
		  
Inst_Compare_Module2:entity work.Compare_Module
port map(
           Awr         => Write_Register,
           Ad          => Read_Register2,
           WrEn        => RF_WrEn,
           Out_compare => tmp_out_compare2
        );

Inst_Mux_2x1_32b_1:entity work.Mux_2x1_32b
port map(
           A       => tmp_out_mux_reg1,
           B       => Write_Data,
			  PC_Sel  => tmp_out_compare1,
           mux_out => Read_Data1
         );
			
Inst_Mux_2x1_32b_2:entity work.Mux_2x1_32b
port map(
           A       => tmp_out_mux_reg2,
           B       => Write_Data,
			  PC_Sel  => tmp_out_compare2,
           mux_out => Read_Data2
         );

end Behavioral;

