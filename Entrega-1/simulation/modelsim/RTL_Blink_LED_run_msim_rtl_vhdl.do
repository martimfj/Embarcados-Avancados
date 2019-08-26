transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/martimfj/Dropbox/Insper/embarcados-avancados/Embarcados-Avancados/Entrega-1/Toplevel.vhd}
vcom -93 -work work {/home/martimfj/Dropbox/Insper/embarcados-avancados/Embarcados-Avancados/Entrega-1/LED_peripheral.vhd}

vcom -93 -work work {/home/martimfj/Dropbox/Insper/embarcados-avancados/Embarcados-Avancados/Entrega-1/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  teste

add wave *
view structure
view signals
run -all
