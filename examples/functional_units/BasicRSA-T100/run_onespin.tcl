read_vhdl -golden  -pragma_ignore {}  -version 2008 { ./rtl/modmult.vhd ./rtl/rsacypher.vhd } 

read_verilog -golden  -pragma_ignore {}  -version sv2012 {./rsacypher_miter.sv } 

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {./rsacypher_dit.sva}

check  -all [get_checks]
