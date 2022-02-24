read_verilog -golden  -pragma_ignore {}  -version sv2012 { rtl/*.svh }
read_verilog -golden  -pragma_ignore {}  -version sv2012 { rtl/*.sv }
read_verilog -golden  -pragma_ignore {}  -version sv2012 { fwrisc_rv32im_miter.sv }

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} { state_equivalence.sva fwriscv_rv32im_dit.sva }
