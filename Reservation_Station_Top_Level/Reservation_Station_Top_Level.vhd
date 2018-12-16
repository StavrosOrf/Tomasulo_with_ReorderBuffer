----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:10 10/26/2018 
-- Design Name: 
-- Module Name:    Reservation_Station_Top_Level - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reservation_Station_Top_Level is
port (
			  --Inputs
			  Op : in  STD_LOGIC_VECTOR (1 downto 0);
			  CDB_V : in  STD_LOGIC_VECTOR (31 downto 0);
           CDB_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  Issue: in  STD_LOGIC;
			  Qj_reset : in  STD_LOGIC;
			  Qk_reset : in  STD_LOGIC;
           Tag : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V : in  STD_LOGIC_VECTOR (31 downto 0);
           Rj_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rk_V : in  STD_LOGIC_VECTOR (31 downto 0);
           Rk_Q : in  STD_LOGIC_VECTOR (4 downto 0);
			  --Outputs
			  Busy_out : out  STD_LOGIC;
			  Vj_out : out  STD_LOGIC_VECTOR (31 downto 0);
           Vk_out : out  STD_LOGIC_VECTOR (31 downto 0);
			  Tag_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Qj_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Qk_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Op_out : out  STD_LOGIC_VECTOR (1 downto 0)
			  
			  
			  );
end Reservation_Station_Top_Level;

architecture Behavioral of Reservation_Station_Top_Level is

signal tmp_vj,tmp_vk :STD_LOGIC_VECTOR (31 downto 0);
signal tmp_qj, tmp_qk,tmp_qj_out,tmp_qk_out :STD_LOGIC_VECTOR (4 downto 0);
signal tmp_busy,tmp_wren_busy,tmp_wren_vj,tmp_wren_vk,tmp_wren_qj,tmp_wren_qk,tmp_wren_op,tmp_or_out,q_match_j,q_match_k,
tmp_sel_vj,tmp_sel_vk,tmp_sel_qj,tmp_sel_qk,tmp_wren_Qj_out,tmp_wren_Qk_out:STD_LOGIC := '0';

begin 

Inst_RS :entity work.Reservation_Station 
Port map ( Vj => tmp_vj,
           Vk => tmp_vk,
           Qj => tmp_qj,
           Qk => tmp_qk,
           Busy => tmp_busy,
           Op => Op ,
           Reset => Reset,
           clk =>CLK,
			  Tag => Tag,
			  WrEn_Busy =>tmp_wren_busy,
			  WrEn_Vj=>tmp_wren_vj,
			  WrEn_Vk =>tmp_wren_vk,
			  WrEn_Qj =>tmp_wren_Qj_out,
			  WrEn_Qk =>tmp_wren_Qk_out,
			  WrEn_Op =>tmp_wren_op,
			  Busy_out =>Busy_out,
			  tag_out => Tag_out,
			  Vj_out =>Vj_out,
           Vk_out =>Vk_out,
           Qj_out =>tmp_qj_out,
           Qk_out =>tmp_qk_out,
           Op_out =>Op_out

);

tmp_wren_Qj_out <= tmp_wren_qj or Issue;
tmp_wren_Qk_out <= tmp_wren_qk or Issue;

Inst_Mux_Vj : entity work.Mux_2x1_32b
port map(
			  A => CDB_V,
           B => Rj_V,
			  PC_Sel => tmp_sel_vj,
           mux_out => tmp_vj
			);
			
Inst_Mux_Vk : entity work.Mux_2x1_32b
port map(
			  A => CDB_V,
           B => Rk_V,
			  PC_Sel => tmp_sel_vk,
           mux_out => tmp_vk
			);
			
Inst_Mux_Qj : entity work.Mux_2x1_5b
port map(
			  A => Rj_Q,
           B => std_logic_vector(to_unsigned(0,5)),
			  PC_Sel => tmp_sel_qj,
           mux_out => tmp_qj
			);

Inst_Mux_Qk : entity work.Mux_2x1_5b
port map(
			  A => Rk_Q,
           B => std_logic_vector(to_unsigned(0,5)),
			  PC_Sel => tmp_sel_qk,
           mux_out => tmp_qk
			);

process(CDB_Q,Issue,tmp_busy,Reset,tmp_qj_out,tmp_qk_out,Rj_Q,Rk_Q)

begin
-- We compare the output of the qj register with the input q from the common data bus
-- or the input q from the common data bus with the input qj from register file as a forwarding method
	
		if CDB_Q = tmp_qj_out  or CDB_Q = Rj_Q then --
			q_match_j <= '1';
			tmp_wren_qj<='1'; 
			tmp_sel_qj <='1';
		else 
			q_match_j <= '0';
			tmp_wren_qj<='0'; 
			tmp_sel_qj <='0';
		end if;
-- We compare the output of the qj register with the input q from the common data bus
-- or the input q from the common data bus with the input qj from register file as a forwarding method	
			
		if CDB_Q = tmp_qk_out or  CDB_Q = Rk_Q then --or 
			q_match_k <= '1';
			tmp_wren_qk<='1'; 
			tmp_sel_qk <='1';
		else 
			q_match_k <= '0';
			tmp_wren_qk<='0'; 
			tmp_sel_qk <='0';
		end if;
		
		-------------------------------------------------
		if Issue = '1' then
			tmp_busy <= '1';
		elsif Issue = '0' then
			if Reset ='0' then
				tmp_busy <= tmp_busy;
			elsif Reset = '1' then
			tmp_busy <= '0';
			end if;
		end if;
		
		-------------------------------------------------
	

end process;
		Qk_out<=tmp_qk_out;
		Qj_out<=tmp_qj_out;
		tmp_wren_busy <= Issue OR Reset;
		tmp_wren_vj   <= Issue OR q_match_j;
		tmp_wren_vk   <= Issue OR q_match_k;
		tmp_wren_op   <= Issue;
		tmp_sel_vk    <= not q_match_k; 
		tmp_sel_vj    <= not q_match_j; 	
end Behavioral;

