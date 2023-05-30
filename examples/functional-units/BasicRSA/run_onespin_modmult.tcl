# @lang=tcl @ts=8

read_vhdl -golden  -pragma_ignore {}  -version 2008 { ./rtl/modmult.vhd  } 

read_verilog -golden  -pragma_ignore {}  -version sv2012 {./modmult_miter.sv } 

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {./modmult_dit.sva}

check  -all [get_checks]
