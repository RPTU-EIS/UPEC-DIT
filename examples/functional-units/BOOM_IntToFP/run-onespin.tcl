####################
# Helper Functions #
####################

proc print_cse_function {state_signals} {

    set middle_index [expr {[llength $state_signals] / 2}]

    set max_length 0
    foreach state $state_signals {
        set length [string length $state]
        if {$length > $max_length} {
            set max_length $length
        }
    }

    set script_path [file dirname [file normalize [info script]]]
    set fid [open $script_path/control_state_equivalence.sv w]

    puts $fid "  //===========================//"
    puts $fid " // Control State Equivalence //"
    puts $fid "//===========================//\n"

    puts $fid "function automatic control_state_equivalence();"
    puts $fid "control_state_equivalence = ("

    for {set i 0} {$i < $middle_index} {incr i} {
        # Convert OneSpin's '/' to SystemVerilog's '.' 
        set sv_sig1 [string map {"/" "."} [lindex $state_signals $i]]
        set sv_sig2 [string map {"/" "."} [lindex $state_signals [expr $i + $middle_index]]]

        set signal_1 [format "%-*s" $max_length $sv_sig1]
        set signal_2 [format "%-*s" $max_length $sv_sig2]
        set eq_str "  ($signal_1 == $signal_2)"
        if {$i < $middle_index - 1} {
            set eq_str "$eq_str &&"
        }
        puts $fid $eq_str
    }

    puts $fid ");"
    puts $fid "endfunction\n"

    close $fid

}

proc analyze_cex {state_signals} {
    set updated_list_1 {}
    set updated_list_2 {}
    set middle_index [expr {[llength $state_signals] / 2}]

    set cex_values [get_counterexample_value -signals $state_signals -timepoint 1 {checker_bind.upec_dit_step_p_a}]

    for {set i 0} {$i < $middle_index} {incr i} {
        set signal_1 "[lindex $state_signals $i] "
        set signal_2 "[lindex $state_signals [expr $i + $middle_index]] "
        set cex_value_1 [lindex $cex_values $i]
        set cex_value_2 [lindex $cex_values [expr $i + $middle_index]]
        if {$cex_value_1 == $cex_value_2} {
            append updated_list_1 $signal_1
            append updated_list_2 $signal_2
        }
    } 

    return [concat $updated_list_1 $updated_list_2]
}

#################################
# Design Setup and Verification #
#################################

set script_path [file dirname [file normalize [info script]]]

read_verilog -golden -version sv2012 {
    #$script_path/rtl/IntToFP.v
    $script_path/rtl/BoomConfig.top.v
    $script_path/rtl/BoomConfig.top.mems.v
    $script_path/rtl/BOOM_plusarg_reader.v
}

read_verilog -golden -version sv2012 {$script_path/IntToFP_miter.sv}

set_elaborate_option -top verilog!work.IntToFP_miter

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {$script_path/upec-dit.sv}

check checker_bind.upec_dit_unrolled_p_a
check -pass checker_bind.upec_dit_unrolled_p_a

if {[get_check_info -status checker_bind.upec_dit_unrolled_p_a] == "hold"} {

    echo "Bounded proof holds! Trying to derive an inductive, unbounded property..."

    # Try to derive an inductive, exhaustive proof
    set state_signals [split [get_signals -filter state==true]]
    set prev_state_signals {}

    check -approver1_steps 1 -approver2_steps 0 -approver3_steps 0 -approver4_steps 0 -disprover1_steps 0 -disprover3_steps 0 -disprover6_steps 0 -prover1_steps 0 -prover2_steps 0 checker_bind.upec_dit_step_p_a

    while {([llength $state_signals] != [llength $prev_state_signals]) && ([get_check_info -status checker_bind.upec_dit_step_p_a] != "hold")} {
        set prev_state_signals $state_signals

        set state_signals [analyze_cex $state_signals]

        print_cse_function $state_signals
        after 1000
        read_sva
        check -approver1_steps 1 -approver2_steps 0 -approver3_steps 0 -approver4_steps 0 -disprover1_steps 0 -disprover3_steps 0 -disprover6_steps 0 -prover1_steps 0 -prover2_steps 0 checker_bind.upec_dit_step_p_a
    }

    check -pass checker_bind.upec_dit_step_p_a

    check checker_bind.upec_dit_base_p_a
    check -pass checker_bind.upec_dit_base_p_a


    if {([get_check_info -status checker_bind.upec_dit_step_p_a] == "hold") && ([get_check_info -status checker_bind.upec_dit_base_p_a] == "hold")} {
        echo "Exhaustive verification of data-obliviousness succeeded!"
    } else {
        echo "Automatic inductive proof failed! Please manually inspect the counterexamples to find the root cause."
    }

} else {
    debug -tool vcd -dir $script_path checker_bind.upec_dit_unrolled_p_a
    echo "Violation of data-dependent timing found!"
}
