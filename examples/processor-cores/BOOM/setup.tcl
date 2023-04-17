# @lang=tcl @ts=8

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/plusarg_reader.v rtl/chipyard.TestHarness.MediumBoomConfig.top.v rtl/chipyard.TestHarness.MediumBoomConfig.top.mems.v}
read_verilog -golden  -pragma_ignore {}  -version sv2012 {BoomCore_Miter.sv}

set_elaborate_option -top {Verilog!work.BoomCore_Miter}
elaborate -golden 

set_compile_option -golden -black_box_instances {{U1/iregfile} {U2/iregfile} {U1/rob} {U2/rob} {U1/fp_pipeline/fregfile} {U2/fp_pipeline/fregfile} {U1/csr} {U2/csr}}
compile -golden

set_mode mv

#check_consistency

#compute_invariants

read_sva -version {sv2012} {BoomCore_dit.sva}

set_check_option -verbose -approver1_steps 1 -approver2_steps 0 -approver3_steps 0 -approver4_steps 0 -disprover1_steps 0 -disprover3_steps 0 -disprover6_steps 0 -prover1_steps 0 -prover2_steps 0 