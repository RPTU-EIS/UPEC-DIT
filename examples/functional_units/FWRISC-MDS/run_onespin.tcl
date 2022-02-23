# @lang=tcl @ts=8
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/fwrisc_mul_div_shift_op.svh rtl/fwrisc_mul_div_shift.sv fwrisc_mul_div_shift_miter.sv}

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {fwrisc_mul_div_shift_dit.sva}

check  -all [get_checks]
