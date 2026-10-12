# BOOM_FPU

*Note*: The source code of the FPU may contain arbitrary signals or behavior introduced during LLM-based code generation.

UPEC-DIT confirmed that the The valid signal (and therefore also the timing) of the module is data-independent.
However, the exception flags are data-dependent, which might still cause a side-effect.

**UPEC-TOOL Results**


Control behavior independent of data inputs with valid
![
](Screenshots/dit_valid.png)


Violation of data-dependent timing found with flags 
![alt text](Screenshots/dit_flags.png)


**OneSpin Results**
The original FPU RTL and the BOOM source RTL (consisting of three files) produced the same counterexample.

![
](Screenshots/Counterexample.png)

**Design Interface**

Input Signals:
io_req_bits_fcsr_rm [3]
io_req_bits_rs1_data [65]
io_req_bits_rs2_data [65]
io_req_bits_rs3_data [65]
io_req_bits_uop_imm_packed [20]
io_req_bits_uop_uopc [7]
io_req_valid [1]

Output Signals:
io_resp_bits_data [65]
io_resp_bits_fflags_bits_flags [5]
io_resp_bits_fflags_valid [1]
io_resp_valid [1]
