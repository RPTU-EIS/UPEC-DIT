read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/riscv_pkg.sv
                                                          rtl/cf_math_pkg.sv
                                                          rtl/dm_pkg.sv
                                                          rtl/fpnew_pkg.sv
                                                          rtl/defs_div_sqrt_mvp.sv
                                                          rtl/axi_pkg.sv
                                                          rtl/std_cache_pkg.sv
                                                          rtl/wt_cache_pkg.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/ariane_pkg.sv
                                                          rtl/ariane_axi_pkg.sv}

# common
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/lzc.sv
                                                          rtl/rr_arb_tree.sv
                                                          rtl/fifo_v3.sv
                                                          rtl/shift_reg.sv
                                                          rtl/popcount.sv
                                                          rtl/lfsr.sv
                                                          rtl/lfsr_8bit.sv
                                                          rtl/stream_arbiter.sv
                                                          rtl/stream_arbiter_flushable.sv
                                                          rtl/stream_mux.sv
                                                          rtl/stream_demux.sv}

# frontend
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/instr_realign.sv
                                                          rtl/ras.sv
                                                          rtl/btb.sv
                                                          rtl/bht.sv
                                                          rtl/instr_scan.sv
                                                          rtl/instr_queue.sv
                                                          rtl/unread.sv}

# id_stage
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/decoder.sv
                                                          rtl/compressed_decoder.sv}

# issue_stage
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/re_name.sv
                                                          rtl/scoreboard.sv
                                                          rtl/issue_read_operands.sv
                                                          rtl/ariane_regfile_ff.sv}

#ex_stage
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/alu.sv
                                                          rtl/branch_unit.sv
                                                          rtl/csr_buffer.sv
                                                          rtl/mult.sv
                                                          rtl/multiplier.sv
                                                          rtl/serdiv.sv
                                                          rtl/load_store_unit.sv
                                                          rtl/mmu.sv
                                                          rtl/tlb.sv
                                                          rtl/ptw.sv
                                                          rtl/pmp.sv
                                                          rtl/pmp_entry.sv
                                                          rtl/store_unit.sv
                                                          rtl/store_buffer.sv
                                                          rtl/amo_buffer.sv
                                                          rtl/load_unit.sv}

# FPU (ex_stage)
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/fpu_wrap.sv
                                                          rtl/fpnew_top.sv
                                                          rtl/fpnew_opgroup_block.sv
                                                          rtl/fpnew_opgroup_fmt_slice.sv
                                                          rtl/fpnew_fma.sv
                                                          rtl/fpnew_classifier.sv
                                                          rtl/fpnew_rounding.sv
                                                          rtl/fpnew_opgroup_multifmt_slice.sv
                                                          rtl/fpnew_divsqrt_multi.sv
                                                          rtl/div_sqrt_top_mvp.sv
                                                          rtl/preprocess_mvp.sv
                                                          rtl/nrbd_nrsc_mvp.sv
                                                          rtl/control_mvp.sv
                                                          rtl/iteration_div_sqrt_mvp.sv
                                                          rtl/norm_div_sqrt_mvp.sv
                                                          rtl/fpnew_noncomp.sv
                                                          rtl/fpnew_cast_multi.sv}

# Cache
read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/std_cache_subsystem.sv
                                                          rtl/cva6_icache_axi_wrapper.sv
                                                          rtl/cva6_icache.sv
                                                          rtl/sram.sv
                                                          rtl/SyncSpRamBeNx64.sv
                                                          rtl/axi_shim.sv
                                                          rtl/std_nbdcache.sv
                                                          rtl/cache_ctrl.sv
                                                          rtl/miss_handler.sv
                                                          rtl/axi_adapter.sv
                                                          rtl/amo_alu.sv
                                                          rtl/tag_cmp.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/frontend.sv
                                                          rtl/id_stage.sv
                                                          rtl/issue_stage.sv
                                                          rtl/ex_stage.sv
                                                          rtl/commit_stage.sv
                                                          rtl/csr_regfile.sv
                                                          rtl/perf_counters.sv
                                                          rtl/controller.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {rtl/ariane.sv}

read_verilog -golden  -pragma_ignore {}  -version sv2012 {ariane_miter.sv}

elaborate -golden

set_compile_option -golden -black_box_instances {{P1/i_cache_subsystem} {P2/i_cache_subsystem} 
                                                 {P1/issue_stage_i/i_issue_read_operands/i_ariane_regfile} {P2/issue_stage_i/i_issue_read_operands/i_ariane_regfile} 
                                                 {P1/issue_stage_i/i_issue_read_operands/float_regfile_gen/i_ariane_fp_regfile} {P2/issue_stage_i/i_issue_read_operands/float_regfile_gen/i_ariane_fp_regfile}
                                                 {P1/ex_stage_i/branch_unit_i} {P2/ex_stage_i/branch_unit_i}
                                                 {P1/ex_stage_i/csr_buffer_i} {P2/ex_stage_i/csr_buffer_i} 
                                                 {P1/ex_stage_i/lsu_i} {P2/ex_stage_i/lsu_i}
                                                 {P1/ex_stage_i/fpu_gen/fpu_i} {P2/ex_stage_i/fpu_gen/fpu_i}}

compile -golden

set_mode mv

read_sva -version {sv2012} {ariane_dit_1-cycle.sva}

check -approver1_steps 1 -approver2_steps 0 -approver3_steps 0 -approver4_steps 0 -disprover1_steps 0 -disprover3_steps 0 -disprover6_steps 0 -prover1_steps 0 -prover2_steps 0 {sva/checker_bind/ops/reset_p_a};
