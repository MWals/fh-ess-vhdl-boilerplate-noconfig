onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_jk_ff/clk
add wave -noupdate /tb_jk_ff/reset
add wave -noupdate /tb_jk_ff/j_i
add wave -noupdate /tb_jk_ff/k_i
add wave -noupdate /tb_jk_ff/q_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 169
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {3150 ns}