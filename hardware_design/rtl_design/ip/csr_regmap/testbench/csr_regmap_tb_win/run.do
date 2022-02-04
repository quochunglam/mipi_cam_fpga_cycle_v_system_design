
# check to see if there is an existing work directory
# if a work directory alreay exists then delete it
if [file exists work] { vdel -all }

# create the work library
vlib work

# compile hdl 
vlog -sv ../csr_regmap_dualports_avms.v \
	tb.sv

#start simultion
vsim -L altera_lnsim_ver -L altera_lnsim -L altera_mf_ver -L altera_mf tb -do wave.do

run -all
# to run
# vsim -do run.do

