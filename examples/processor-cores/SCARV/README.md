# SCARV

https://github.com/scarv/scarv-cpu



|Instruction Class|   Constant-Time    |
|-----------------|:------------------:|
|R-Type Arithmetic|:white_check_mark:  |
|I-Type Arithmetic|:white_check_mark:  |
|Load             |:warning:           |
|Store            |:warning:           |
|Branch           |:x:                 |
|Jump             |:white_check_mark:  |
|Multiplication   |:white_check_mark:  |
|Division         |:white_check_mark:  |
|CSR Access       |:warning:           |
|XCrypto          |(:white_check_mark:)|

:white_check_mark: = Operations execute in constant-time \
:warning: = Only constant-time under certain conditions \
:x: = Operation timing depends on data

Taken branches cause a pipeline flush and therefore depend on data.

An illegal CSR Access causes an unmasked Exceptions.

Misaligned load and store instructions cause unmasked exceptions. \
Also, loads and stores to address space x0000_1000 to 0x0000_1FFF result in an MMIO access which has a different effect than a regular memory access. \
This creates the interesting case that even store _data_ can cause a visible timing impact by causing a machine timer interrupt.

Remark: Not all XCrypto instructions have been checked, yet.
