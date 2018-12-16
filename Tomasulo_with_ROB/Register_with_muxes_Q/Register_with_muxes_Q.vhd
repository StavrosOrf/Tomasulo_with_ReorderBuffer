----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:29 05/07/2018 
-- Design Name: 
-- Module Name:    Register_with_muxes - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_with_muxes_Q is
Port ( 	  q_match_reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  LDEn : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (4 downto 0);
           Output : out  STD_LOGIC_VECTOR (4 downto 0)
		);
end Register_with_muxes_Q;

architecture Behavioral of Register_with_muxes_Q is

SIGNAL tmp_mux_2x1_out,tmp_reset : STD_LOGIC;
SIGNAL tmp_mux_2x1_5b : STD_LOGIC_VECTOR(4 DOWNTO 0);

begin

Inst_Mux_2x1:entity work.Mux_2x1_Q
port map(
           A      => LDEn,
           B      => '1',
           Sel    => Reset,
           Output => tmp_mux_2x1_out
         );
			
Inst_Mux_2x1_32b:entity work.Mux_2x1_5b
port map(
         A       =>  Din,
         B       => "00000",
		   PC_Sel  => Reset,
         mux_out => tmp_mux_2x1_5b
         );
			
Inst_Register:entity work.Register_Q
port map(
         clk => clk,
			WrEn => tmp_mux_2x1_out,
			Din => tmp_mux_2x1_5b,
			reset => tmp_reset,
			Dout => Output
         );

tmp_reset <= q_match_reset or Reset;
end Behavioral;


