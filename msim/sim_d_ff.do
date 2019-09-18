vsim -t ns -lib work work.tb_d_ff
view *
do wave_d_ff.do
run 3000 ns
