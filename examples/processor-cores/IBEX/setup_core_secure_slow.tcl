# @lang=tcl @ts=8

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/dv_fcov_macros.svh rtl/ibex_pkg.sv rtl/prim_assert.sv rtl/prim_assert_standard_macros.svh }

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/ibex_alu.sv rtl/ibex_compressed_decoder.sv rtl/ibex_controller.sv rtl/ibex_core.sv rtl/ibex_counter.sv rtl/ibex_cs_registers.sv rtl/ibex_csr.sv rtl/ibex_decoder.sv rtl/ibex_ex_block.sv rtl/ibex_fetch_fifo.sv rtl/ibex_id_stage.sv rtl/ibex_if_stage.sv rtl/ibex_load_store_unit.sv rtl/ibex_multdiv_slow.sv rtl/ibex_prefetch_buffer.sv rtl/ibex_wb_stage.sv }

read_verilog -golden  -pragma_ignore {}  -version sv2012 {ibex_miter.sv } 

set_elaborate_option -verilog_parameter {SecureIbex=1 RV32M=1}

elaborate -golden

compile -golden

set_mode mv