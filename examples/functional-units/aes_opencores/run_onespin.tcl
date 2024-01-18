# @lang=tcl @ts=8

set script_path [file dirname [file normalize [info script]]]

read_verilog -golden  -pragma_ignore {}  -version sv2012 {$script_path/rtl/timescale.v 
                                                          $script_path/rtl/aes_rcon.v 
                                                          $script_path/rtl/aes_sbox.v 
                                                          $script_path/rtl/aes_key_expand_128.v 
                                                          $script_path/rtl/aes_cipher_top.v 
                                                          $script_path/aes_miter.sv } 

set_elaborate_option -top verilog!work.aes_miter

elaborate -golden

compile -golden

set_mode mv

read_sva -version {sv2012} {aes_upec_dit.sva}

check  -all [get_checks]
