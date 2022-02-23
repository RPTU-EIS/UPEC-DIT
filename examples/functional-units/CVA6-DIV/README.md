# CVA6 (Ariane) Division Module

https://github.com/openhwgroup/cva6

Here, only the serial division (serdiv.sv) module of the core is investigated.
We apply UPEC-DIT to the full core in examples/processor-cores/CVA6/

The division time is determined by the difference of leading zeros of the operands.
Hence, timing depends directly on the operands in this module.
