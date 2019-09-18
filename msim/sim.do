vsim -t ns -lib work work.tb_d_ff
view *
do wave.do
run 3000 ns
