vsim -t ns -lib work work.tb_jk_ff
view *
do wave_jk_ff.do
run 3000 ns
