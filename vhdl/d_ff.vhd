-------------------------------------------------------------------------------
-- Design: VHDL Class Example 6 : design of sequential logic                 --
--                                                                           --
-- Author : Roland Hoeller                                                   --
-- Date   : 27 04 2000                                                       --
-- File   : d_ff.vhd                                                         --
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity d_ff is
port (clk :       in   std_logic;
      reset :     in   std_logic;
      d_i :       in   std_logic;
      q_o :       out  std_logic);
end d_ff;

architecture rtl of d_ff is
  
begin
        
  p_d_ff : process (clk, reset) -- in Klammer ist die Sensivity Liste
  begin      
    if reset = '1' then
      q_o <= '0';
    elsif clk'event and clk = '1' then
      q_o <= d_i;
    end if;     
  end process p_d_ff; 

end rtl; 
