-------------------------------------------------------------------------------
-- Design: VHDL Class Example 6 : design of sequential logic, testbench      --
--                                                                           --
-- Author : Roland Hoeller                                                   --
-- Date   : 27 04 2000                                                       --
-- File   : tb_jk_ff.vhd                                                     --
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_jk_ff is end tb_jk_ff;

architecture sim of tb_jk_ff is

  -- Declaration of the component under test
  component jk_ff
    port (
      j_i   : in  std_logic;
      k_i   : in  std_logic;
      clk   : in  std_logic;
      reset : in  std_logic;
      q_o   : out std_logic);
  end component;

  signal j_i   : std_logic;
  signal k_i   : std_logic;
  signal clk   : std_logic;
  signal reset : std_logic;
  signal q_o   : std_logic;
  
begin

  -- Instantiate the design under test
  i_jk_ff : jk_ff
    port map (
      j_i   => j_i,
      k_i   => k_i,
      clk   => clk,
      reset => reset,
      q_o   => q_o);

  -- Generate clock
  p_clk : process
  begin
    clk <= '0';
    wait for 50 ns;
    clk <= '1';
    wait for 50 ns;
  end process p_clk;
  
  -- Generate reset
  p_reset : process
  begin
    reset <= '1';
    wait for 120 ns;
    reset <= '0';
    wait;
  end process p_reset;
  
  p_stim : process
  begin
    j_i <= '0';
    k_i <= '0';
    wait for 320 ns;
    j_i <= '0';
    k_i <= '1';
    wait for 400 ns;
    j_i <= '1';
    k_i <= '0';
    wait for 400 ns;
    j_i <= '1';
    k_i <= '1';
    wait for 400 ns;
    -- stop simulation
    assert false report "END OF SIMULATION" severity error;
  end process p_stim;

end sim;
