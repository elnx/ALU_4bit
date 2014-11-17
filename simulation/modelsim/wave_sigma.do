onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /testbench_sigma/a
add wave -noupdate -radix unsigned /testbench_sigma/b
add wave -noupdate /testbench_sigma/s
add wave -noupdate /testbench_sigma/m
add wave -noupdate /testbench_sigma/cin_re
add wave -noupdate /testbench_sigma/clock
add wave -noupdate /testbench_sigma/cout_re
add wave -noupdate -radix unsigned /testbench_sigma/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {500000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {2048 ns}
