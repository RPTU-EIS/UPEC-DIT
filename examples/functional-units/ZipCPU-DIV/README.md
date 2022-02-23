# ZipCPU Division Module

https://github.com/ZipCPU/zipcpu

At the moment, only the serial division (div.v) module of the core has been investigated.

The following timing dependencies have been found with UPEC-DIT:
 - Both numerator and denominator can influence division timing (o_busy, o_valid) as a negative quotient requires an additional cycles
 - Flags also depend on numerator and denominator and reflect special cases, e.g., an exact division
 - The error flag can only be caused by the denominator in case of a zero division
   o_err is independent of the numerator

Summary of the timing behavior:
 - Early termination when dividing by zero
 - Unsigned division is constant time (33 cycles)
 - Singed division takes 34 cycles if the result is positive and 35 cycles if the result is negative
