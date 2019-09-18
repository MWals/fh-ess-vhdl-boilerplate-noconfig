-------------------------------------------------------------------------------
-- Design: VHDL Class Example 6 : design of sequential logic                 --
--                                                                           --
-- Author : Roland Hoeller                                                   --
-- Date   : 27 04 2000                                                       --
-- File   : jk_ff.vhd                                                        --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity jk_ff is
port (j_i :       in   std_logic;
      k_i :       in   std_logic;    
      clk :       in   std_logic;
      reset :     in   std_logic;
      q_o :       out  std_logic);
end jk_ff;

architecture rtl of jk_ff is
  
  signal s_q : std_logic;
  
begin

  -- Use internal signal s_q, as output q_o cannot be read
  p_jk_ff : process (clk, reset)
  begin      
    if reset = '1' then
      s_q <= '0';
    elsif clk'event and clk = '1' then
      if j_i = '0' and k_i = '0' then
        s_q <= s_q;
      elsif j_i = '0' and k_i = '1' then
        s_q <= '0';
      elsif j_i = '1' and k_i = '0' then
        s_q <= '1';  
      else
        s_q <= not(s_q);
      end if;
    end if;     
  end process p_jk_ff; 

  -- Directly connect internal signal to output
  q_o <= s_q;   
   
end rtl; 
