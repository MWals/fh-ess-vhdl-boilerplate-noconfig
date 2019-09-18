-------------------------------------------------------------------------------
-- Design: VHDL Class Example 6 : design of sequential logic, testbench      --
--                                                                           --
-- Author : Roland Hoeller                                                   --
-- Date   : 27 04 2000                                                       --
-- File   : tb_d_ff.vhd                                                      --
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_d_ff is end tb_d_ff;

architecture sim of tb_d_ff is

  -- Declaration of the component under test
  component d_ff
    port (
      clk   : in  std_logic;
      reset : in  std_logic;
      d_i   : in  std_logic;
      q_o   : out std_logic);
  end component;

  signal clk   : std_logic;
  signal reset : std_logic;
  signal d_i   : std_logic;
  signal q_o   : std_logic;
  
begin

  -- Instantiate the design under test
  i_d_ff : d_ff
    port map (
      clk   => clk,
      reset => reset,
      d_i   => d_i,
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
    d_i <= '0';
    wait for 320 ns;
    d_i <= '1';
    wait for 400 ns;
    d_i <= '0';
    wait for 400 ns;
    d_i <= '1';
    wait for 400 ns;
    -- stop simulation
    assert false report "END OF SIMULATION" severity error;
  end process p_stim;

end sim;
