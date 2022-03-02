# CVA6

https://github.com/openhwgroup/cva6

|Instruction Class|Data-Independent Timing              |
|-----------------|:-----------------------------------:|
|R-Type Arithmetic|:white_check_mark:/:white_check_mark:|
|I-Type Arithmetic|:white_check_mark:                   |
|Load             |:x:                                  |
|Store            |:x:/:white_check_mark:               |
|Branch           |:x:/:x:                              |
|Jump             |:x:                                  |
|Multiplication   |:white_check_mark:/:white_check_mark:|
|Division         |:x:/:x:                              |

:white_check_mark: = Operations execute data-oblivious \
:warning: = Only oblivious under certain conditions \
:x: = Operation timing depends strongly on data \
RS1/RS2 are denoted separately.

Multiplication always takes a fixed number of cycles.
Division timing depends on the operands' difference in leading zeros.

The address in Load/Store instructions can cause a variety of exceptions (PMP Access fault, misaligned address...).
A matching address offset with an uncommited store also forces younger Load instructions to stall.

Branches and Jumps have data-dependent timing due to conditions and address mispredictions.
