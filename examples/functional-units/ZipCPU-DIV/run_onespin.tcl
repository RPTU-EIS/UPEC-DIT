read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/div.v div_miter.sv }

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {div_dit.sva}

check  -all [get_checks]
