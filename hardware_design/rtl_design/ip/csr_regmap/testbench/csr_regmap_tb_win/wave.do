onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group port0 /tb/Dut/wClk
add wave -noupdate -group port0 /tb/Dut/wRst_n
add wave -noupdate -group port0 /tb/Dut/avms_p0_addr
add wave -noupdate -group port0 /tb/Dut/avms_p0_read
add wave -noupdate -group port0 /tb/Dut/avms_p0_write
add wave -noupdate -group port0 /tb/Dut/avms_p0_writedata
add wave -noupdate -group port0 /tb/Dut/avms_p0_readdata

add wave -noupdate -group port1 /tb/Dut/wClk
add wave -noupdate -group port1 /tb/Dut/wRst_n
add wave -noupdate -group port1 /tb/Dut/avms_p1_addr
add wave -noupdate -group port1 /tb/Dut/avms_p1_read
add wave -noupdate -group port1 /tb/Dut/avms_p1_write
add wave -noupdate -group port1 /tb/Dut/avms_p1_writedata
add wave -noupdate -group port1 /tb/Dut/avms_p1_readdata

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {108682 ps} 1} {{Cursor 3} {141450 ps} 1} {{Cursor 4} {108556 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 322
configure wave -valuecolwidth 431
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {210002 ps}
