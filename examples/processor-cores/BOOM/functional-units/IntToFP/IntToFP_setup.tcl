# @lang=tcl @ts=8

read_verilog -golden  -pragma_ignore {}  -version sv2012 {../../*.v IntToFP_Miter.sv} 

set_elaborate_option -golden -top {Verilog!work.IntToFP_Miter}

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {IntToFP_dit.sva}
