transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib MySOPC
vmap MySOPC MySOPC
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_sysid_qsys_0.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_onchip_memory2_0.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0_jtag_debug_module_tck.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0_oci_test_bench.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_nios2_qsys_0_test_bench.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_jtag_uart_0.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_Leds.v}
vlog -vlog01compat -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_Boutons.v}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_irq_mapper.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_router_002.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/MySOPC_mm_interconnect_0_router.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work MySOPC +incdir+D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work MySOPC {D:/Quartus/Mon_SOPC/MySOPC/synthesis/MySOPC.vhd}
vcom -93 -work MySOPC {D:/Quartus/Mon_SOPC/MySOPC/synthesis/submodules/avalon_pwm.vhd}

