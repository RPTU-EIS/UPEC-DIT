# @lang=tcl @ts=8

read_verilog -golden  -pragma_ignore {}  -version sv2012 {./rtl/*}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {frv_core_miter.sv}

elaborate -golden

set_compile_option -golden -black_box_instances {  {P2/i_pipeline/i_gprs} {P1/i_pipeline/i_gprs} }

compile -golden

set_mode mv

read_sva -version {sv2012} {frv_core_dit.sva}
