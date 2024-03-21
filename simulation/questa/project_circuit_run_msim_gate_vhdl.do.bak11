transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {project_circuit.vho}

vcom -93 -work work {C:/intelFPGA_lite/22.1std/PROJECT_CIRCUIT/simulation/questa/proj_ckt_tb5.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  proj_ckt_tb5

add wave *
view structure
view signals
run -all
