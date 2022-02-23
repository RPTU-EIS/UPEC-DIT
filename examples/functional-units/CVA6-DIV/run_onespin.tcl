read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/riscv_pkg.sv rtl/ariane_pkg.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/lzc.sv rtl/serdiv.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {/import/home/deutschmann/Security/UPEC-DIT/examples/functional-units/CVA6-DIV/serdiv_miter.sv}

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {serdiv_dit.sva}

check  -all [get_checks]
