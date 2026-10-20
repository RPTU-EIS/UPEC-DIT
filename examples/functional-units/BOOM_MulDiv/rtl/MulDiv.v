module MulDiv(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [3:0]  io_req_bits_fn,
  input         io_req_bits_dw,
  input  [63:0] io_req_bits_in1,
  input  [63:0] io_req_bits_in2,
  input         io_kill,
  input         io_resp_ready,
  output        io_resp_valid,
  output [63:0] io_resp_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [95:0] _RAND_6;
  reg [159:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] state; // @[Multiplier.scala 50:22]
  reg  req_dw; // @[Multiplier.scala 52:16]
  reg [6:0] count; // @[Multiplier.scala 53:18]
  reg  neg_out; // @[Multiplier.scala 56:20]
  reg  isHi; // @[Multiplier.scala 57:17]
  reg  resHi; // @[Multiplier.scala 58:18]
  reg [64:0] divisor; // @[Multiplier.scala 59:20]
  reg [129:0] remainder; // @[Multiplier.scala 60:22]
  wire [3:0] _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65]
  wire  cmdMul = _T == 4'h0; // @[Decode.scala 14:121]
  wire [3:0] _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65]
  wire  _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121]
  wire [3:0] _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65]
  wire  _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121]
  wire  cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30]
  wire [3:0] _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65]
  wire  _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121]
  wire [3:0] _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65]
  wire  _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121]
  wire  lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30]
  wire  _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121]
  wire  rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30]
  wire  _T_19 = ~io_req_bits_dw; // @[Multiplier.scala 77:60]
  wire  _sign_T_2 = _T_19 ? io_req_bits_in1[31] : io_req_bits_in1[63]; // @[Multiplier.scala 80:29]
  wire  lhs_sign = lhsSigned & _sign_T_2; // @[Multiplier.scala 80:23]
  wire [31:0] _hi_T_1 = lhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] hi = _T_19 ? _hi_T_1 : io_req_bits_in1[63:32]; // @[Multiplier.scala 81:17]
  wire [63:0] lhs_in = {hi,io_req_bits_in1[31:0]}; // @[Cat.scala 31:58]
  wire  _sign_T_5 = _T_19 ? io_req_bits_in2[31] : io_req_bits_in2[63]; // @[Multiplier.scala 80:29]
  wire  rhs_sign = rhsSigned & _sign_T_5; // @[Multiplier.scala 80:23]
  wire [31:0] _hi_T_4 = rhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] hi_1 = _T_19 ? _hi_T_4 : io_req_bits_in2[63:32]; // @[Multiplier.scala 81:17]
  wire [64:0] subtractor = remainder[128:64] - divisor; // @[Multiplier.scala 87:37]
  wire [63:0] result = resHi ? remainder[128:65] : remainder[63:0]; // @[Multiplier.scala 88:19]
  wire [63:0] negated_remainder = 64'h0 - result; // @[Multiplier.scala 89:27]
  wire [129:0] _GEN_0 = remainder[63] ? {{66'd0}, negated_remainder} : remainder; // @[Multiplier.scala 92:27 93:17 60:22]
  wire [129:0] _GEN_2 = state == 3'h1 ? _GEN_0 : remainder; // @[Multiplier.scala 60:22 91:57]
  wire [2:0] _GEN_4 = state == 3'h1 ? 3'h3 : state; // @[Multiplier.scala 91:57 98:11 50:22]
  wire [2:0] _GEN_6 = state == 3'h5 ? 3'h7 : _GEN_4; // @[Multiplier.scala 100:57 102:11]
  wire  _GEN_7 = state == 3'h5 ? 1'h0 : resHi; // @[Multiplier.scala 100:57 103:11 58:18]
  wire [128:0] mulReg = {remainder[129:65],remainder[63:0]}; // @[Cat.scala 31:58]
  wire  mplierSign = remainder[64]; // @[Multiplier.scala 107:31]
  wire [63:0] mplier = mulReg[63:0]; // @[Multiplier.scala 108:24]
  wire [64:0] accum = mulReg[128:64]; // @[Multiplier.scala 109:37]
  wire [1:0] _prod_T_2 = {mplierSign,mplier[0]}; // @[Multiplier.scala 111:60]
  wire [66:0] _prod_T_3 = $signed(_prod_T_2) * $signed(divisor); // @[Multiplier.scala 111:67]
  wire [66:0] _GEN_37 = {{2{accum[64]}},accum}; // @[Multiplier.scala 111:76]
  wire [66:0] nextMulReg_hi = $signed(_prod_T_3) + $signed(_GEN_37); // @[Cat.scala 31:58]
  wire [129:0] nextMulReg = {nextMulReg_hi,mplier[63:1]}; // @[Cat.scala 31:58]
  wire  nextMplierSign = count == 7'h3e & neg_out; // @[Multiplier.scala 113:57]
  wire  _eOut_T_4 = ~isHi; // @[Multiplier.scala 117:7]
  wire [128:0] nextMulReg1 = {nextMulReg[128:64],nextMulReg[63:0]}; // @[Cat.scala 31:58]
  wire [129:0] _remainder_T_2 = {nextMulReg1[128:64],nextMplierSign,nextMulReg1[63:0]}; // @[Cat.scala 31:58]
  wire [6:0] _count_T_1 = count + 7'h1; // @[Multiplier.scala 122:20]
  wire [2:0] _GEN_8 = count == 7'h3f ? 3'h6 : _GEN_6; // @[Multiplier.scala 123:51 124:13]
  wire  _GEN_9 = count == 7'h3f ? isHi : _GEN_7; // @[Multiplier.scala 123:51 125:13]
  wire [2:0] _GEN_12 = state == 3'h2 ? _GEN_8 : _GEN_6; // @[Multiplier.scala 105:50]
  wire  _GEN_13 = state == 3'h2 ? _GEN_9 : _GEN_7; // @[Multiplier.scala 105:50]
  wire  unrolls_less = subtractor[64]; // @[Multiplier.scala 132:28]
  wire [63:0] _unrolls_T_2 = unrolls_less ? remainder[127:64] : subtractor[63:0]; // @[Multiplier.scala 133:14]
  wire  _unrolls_T_4 = ~unrolls_less; // @[Multiplier.scala 133:67]
  wire [128:0] unrolls_0 = {_unrolls_T_2,remainder[63:0],_unrolls_T_4}; // @[Cat.scala 31:58]
  wire [2:0] _state_T = neg_out ? 3'h5 : 3'h7; // @[Multiplier.scala 138:19]
  wire [2:0] _GEN_14 = count == 7'h40 ? _state_T : _GEN_12; // @[Multiplier.scala 137:38 138:13]
  wire  _divby0_T = count == 7'h0; // @[Multiplier.scala 145:24]
  wire  divby0 = count == 7'h0 & _unrolls_T_4; // @[Multiplier.scala 145:30]
  wire [31:0] divisorMSB_hi = divisor[63:32]; // @[CircuitMath.scala 35:17]
  wire [31:0] divisorMSB_lo = divisor[31:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi = |divisorMSB_hi; // @[CircuitMath.scala 37:22]
  wire [15:0] divisorMSB_hi_1 = divisorMSB_hi[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] divisorMSB_lo_1 = divisorMSB_hi[15:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_1 = |divisorMSB_hi_1; // @[CircuitMath.scala 37:22]
  wire [7:0] divisorMSB_hi_2 = divisorMSB_hi_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_2 = divisorMSB_hi_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_2 = |divisorMSB_hi_2; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_3 = divisorMSB_hi_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_3 = divisorMSB_hi_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_3 = |divisorMSB_hi_3; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_4 = divisorMSB_hi_3[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_5 = divisorMSB_hi_3[3] ? 2'h3 : _divisorMSB_T_4; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_9 = divisorMSB_lo_3[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_10 = divisorMSB_lo_3[3] ? 2'h3 : _divisorMSB_T_9; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_11 = divisorMSB_useHi_3 ? _divisorMSB_T_5 : _divisorMSB_T_10; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_12 = {divisorMSB_useHi_3,_divisorMSB_T_11}; // @[Cat.scala 31:58]
  wire [3:0] divisorMSB_hi_4 = divisorMSB_lo_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_4 = divisorMSB_lo_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_4 = |divisorMSB_hi_4; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_16 = divisorMSB_hi_4[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_17 = divisorMSB_hi_4[3] ? 2'h3 : _divisorMSB_T_16; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_21 = divisorMSB_lo_4[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_22 = divisorMSB_lo_4[3] ? 2'h3 : _divisorMSB_T_21; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_23 = divisorMSB_useHi_4 ? _divisorMSB_T_17 : _divisorMSB_T_22; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_24 = {divisorMSB_useHi_4,_divisorMSB_T_23}; // @[Cat.scala 31:58]
  wire [2:0] _divisorMSB_T_25 = divisorMSB_useHi_2 ? _divisorMSB_T_12 : _divisorMSB_T_24; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_26 = {divisorMSB_useHi_2,_divisorMSB_T_25}; // @[Cat.scala 31:58]
  wire [7:0] divisorMSB_hi_5 = divisorMSB_lo_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_5 = divisorMSB_lo_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_5 = |divisorMSB_hi_5; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_6 = divisorMSB_hi_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_6 = divisorMSB_hi_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_6 = |divisorMSB_hi_6; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_30 = divisorMSB_hi_6[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_31 = divisorMSB_hi_6[3] ? 2'h3 : _divisorMSB_T_30; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_35 = divisorMSB_lo_6[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_36 = divisorMSB_lo_6[3] ? 2'h3 : _divisorMSB_T_35; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_37 = divisorMSB_useHi_6 ? _divisorMSB_T_31 : _divisorMSB_T_36; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_38 = {divisorMSB_useHi_6,_divisorMSB_T_37}; // @[Cat.scala 31:58]
  wire [3:0] divisorMSB_hi_7 = divisorMSB_lo_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_7 = divisorMSB_lo_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_7 = |divisorMSB_hi_7; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_42 = divisorMSB_hi_7[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_43 = divisorMSB_hi_7[3] ? 2'h3 : _divisorMSB_T_42; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_47 = divisorMSB_lo_7[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_48 = divisorMSB_lo_7[3] ? 2'h3 : _divisorMSB_T_47; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_49 = divisorMSB_useHi_7 ? _divisorMSB_T_43 : _divisorMSB_T_48; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_50 = {divisorMSB_useHi_7,_divisorMSB_T_49}; // @[Cat.scala 31:58]
  wire [2:0] _divisorMSB_T_51 = divisorMSB_useHi_5 ? _divisorMSB_T_38 : _divisorMSB_T_50; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_52 = {divisorMSB_useHi_5,_divisorMSB_T_51}; // @[Cat.scala 31:58]
  wire [3:0] _divisorMSB_T_53 = divisorMSB_useHi_1 ? _divisorMSB_T_26 : _divisorMSB_T_52; // @[CircuitMath.scala 38:21]
  wire [4:0] _divisorMSB_T_54 = {divisorMSB_useHi_1,_divisorMSB_T_53}; // @[Cat.scala 31:58]
  wire [15:0] divisorMSB_hi_8 = divisorMSB_lo[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] divisorMSB_lo_8 = divisorMSB_lo[15:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_8 = |divisorMSB_hi_8; // @[CircuitMath.scala 37:22]
  wire [7:0] divisorMSB_hi_9 = divisorMSB_hi_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_9 = divisorMSB_hi_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_9 = |divisorMSB_hi_9; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_10 = divisorMSB_hi_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_10 = divisorMSB_hi_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_10 = |divisorMSB_hi_10; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_58 = divisorMSB_hi_10[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_59 = divisorMSB_hi_10[3] ? 2'h3 : _divisorMSB_T_58; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_63 = divisorMSB_lo_10[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_64 = divisorMSB_lo_10[3] ? 2'h3 : _divisorMSB_T_63; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_65 = divisorMSB_useHi_10 ? _divisorMSB_T_59 : _divisorMSB_T_64; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_66 = {divisorMSB_useHi_10,_divisorMSB_T_65}; // @[Cat.scala 31:58]
  wire [3:0] divisorMSB_hi_11 = divisorMSB_lo_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_11 = divisorMSB_lo_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_11 = |divisorMSB_hi_11; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_70 = divisorMSB_hi_11[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_71 = divisorMSB_hi_11[3] ? 2'h3 : _divisorMSB_T_70; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_75 = divisorMSB_lo_11[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_76 = divisorMSB_lo_11[3] ? 2'h3 : _divisorMSB_T_75; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_77 = divisorMSB_useHi_11 ? _divisorMSB_T_71 : _divisorMSB_T_76; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_78 = {divisorMSB_useHi_11,_divisorMSB_T_77}; // @[Cat.scala 31:58]
  wire [2:0] _divisorMSB_T_79 = divisorMSB_useHi_9 ? _divisorMSB_T_66 : _divisorMSB_T_78; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_80 = {divisorMSB_useHi_9,_divisorMSB_T_79}; // @[Cat.scala 31:58]
  wire [7:0] divisorMSB_hi_12 = divisorMSB_lo_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_12 = divisorMSB_lo_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_12 = |divisorMSB_hi_12; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_13 = divisorMSB_hi_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_13 = divisorMSB_hi_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_13 = |divisorMSB_hi_13; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_84 = divisorMSB_hi_13[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_85 = divisorMSB_hi_13[3] ? 2'h3 : _divisorMSB_T_84; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_89 = divisorMSB_lo_13[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_90 = divisorMSB_lo_13[3] ? 2'h3 : _divisorMSB_T_89; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_91 = divisorMSB_useHi_13 ? _divisorMSB_T_85 : _divisorMSB_T_90; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_92 = {divisorMSB_useHi_13,_divisorMSB_T_91}; // @[Cat.scala 31:58]
  wire [3:0] divisorMSB_hi_14 = divisorMSB_lo_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_14 = divisorMSB_lo_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_useHi_14 = |divisorMSB_hi_14; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_96 = divisorMSB_hi_14[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_97 = divisorMSB_hi_14[3] ? 2'h3 : _divisorMSB_T_96; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_101 = divisorMSB_lo_14[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_102 = divisorMSB_lo_14[3] ? 2'h3 : _divisorMSB_T_101; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_103 = divisorMSB_useHi_14 ? _divisorMSB_T_97 : _divisorMSB_T_102; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_104 = {divisorMSB_useHi_14,_divisorMSB_T_103}; // @[Cat.scala 31:58]
  wire [2:0] _divisorMSB_T_105 = divisorMSB_useHi_12 ? _divisorMSB_T_92 : _divisorMSB_T_104; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_106 = {divisorMSB_useHi_12,_divisorMSB_T_105}; // @[Cat.scala 31:58]
  wire [3:0] _divisorMSB_T_107 = divisorMSB_useHi_8 ? _divisorMSB_T_80 : _divisorMSB_T_106; // @[CircuitMath.scala 38:21]
  wire [4:0] _divisorMSB_T_108 = {divisorMSB_useHi_8,_divisorMSB_T_107}; // @[Cat.scala 31:58]
  wire [4:0] _divisorMSB_T_109 = divisorMSB_useHi ? _divisorMSB_T_54 : _divisorMSB_T_108; // @[CircuitMath.scala 38:21]
  wire [5:0] divisorMSB = {divisorMSB_useHi,_divisorMSB_T_109}; // @[Cat.scala 31:58]
  wire [31:0] dividendMSB_hi = remainder[63:32]; // @[CircuitMath.scala 35:17]
  wire [31:0] dividendMSB_lo = remainder[31:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi = |dividendMSB_hi; // @[CircuitMath.scala 37:22]
  wire [15:0] dividendMSB_hi_1 = dividendMSB_hi[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] dividendMSB_lo_1 = dividendMSB_hi[15:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_1 = |dividendMSB_hi_1; // @[CircuitMath.scala 37:22]
  wire [7:0] dividendMSB_hi_2 = dividendMSB_hi_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_2 = dividendMSB_hi_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_2 = |dividendMSB_hi_2; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_3 = dividendMSB_hi_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_3 = dividendMSB_hi_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_3 = |dividendMSB_hi_3; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_4 = dividendMSB_hi_3[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_5 = dividendMSB_hi_3[3] ? 2'h3 : _dividendMSB_T_4; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_9 = dividendMSB_lo_3[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_10 = dividendMSB_lo_3[3] ? 2'h3 : _dividendMSB_T_9; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_11 = dividendMSB_useHi_3 ? _dividendMSB_T_5 : _dividendMSB_T_10; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_12 = {dividendMSB_useHi_3,_dividendMSB_T_11}; // @[Cat.scala 31:58]
  wire [3:0] dividendMSB_hi_4 = dividendMSB_lo_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_4 = dividendMSB_lo_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_4 = |dividendMSB_hi_4; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_16 = dividendMSB_hi_4[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_17 = dividendMSB_hi_4[3] ? 2'h3 : _dividendMSB_T_16; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_21 = dividendMSB_lo_4[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_22 = dividendMSB_lo_4[3] ? 2'h3 : _dividendMSB_T_21; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_23 = dividendMSB_useHi_4 ? _dividendMSB_T_17 : _dividendMSB_T_22; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_24 = {dividendMSB_useHi_4,_dividendMSB_T_23}; // @[Cat.scala 31:58]
  wire [2:0] _dividendMSB_T_25 = dividendMSB_useHi_2 ? _dividendMSB_T_12 : _dividendMSB_T_24; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_26 = {dividendMSB_useHi_2,_dividendMSB_T_25}; // @[Cat.scala 31:58]
  wire [7:0] dividendMSB_hi_5 = dividendMSB_lo_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_5 = dividendMSB_lo_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_5 = |dividendMSB_hi_5; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_6 = dividendMSB_hi_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_6 = dividendMSB_hi_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_6 = |dividendMSB_hi_6; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_30 = dividendMSB_hi_6[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_31 = dividendMSB_hi_6[3] ? 2'h3 : _dividendMSB_T_30; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_35 = dividendMSB_lo_6[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_36 = dividendMSB_lo_6[3] ? 2'h3 : _dividendMSB_T_35; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_37 = dividendMSB_useHi_6 ? _dividendMSB_T_31 : _dividendMSB_T_36; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_38 = {dividendMSB_useHi_6,_dividendMSB_T_37}; // @[Cat.scala 31:58]
  wire [3:0] dividendMSB_hi_7 = dividendMSB_lo_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_7 = dividendMSB_lo_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_7 = |dividendMSB_hi_7; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_42 = dividendMSB_hi_7[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_43 = dividendMSB_hi_7[3] ? 2'h3 : _dividendMSB_T_42; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_47 = dividendMSB_lo_7[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_48 = dividendMSB_lo_7[3] ? 2'h3 : _dividendMSB_T_47; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_49 = dividendMSB_useHi_7 ? _dividendMSB_T_43 : _dividendMSB_T_48; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_50 = {dividendMSB_useHi_7,_dividendMSB_T_49}; // @[Cat.scala 31:58]
  wire [2:0] _dividendMSB_T_51 = dividendMSB_useHi_5 ? _dividendMSB_T_38 : _dividendMSB_T_50; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_52 = {dividendMSB_useHi_5,_dividendMSB_T_51}; // @[Cat.scala 31:58]
  wire [3:0] _dividendMSB_T_53 = dividendMSB_useHi_1 ? _dividendMSB_T_26 : _dividendMSB_T_52; // @[CircuitMath.scala 38:21]
  wire [4:0] _dividendMSB_T_54 = {dividendMSB_useHi_1,_dividendMSB_T_53}; // @[Cat.scala 31:58]
  wire [15:0] dividendMSB_hi_8 = dividendMSB_lo[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] dividendMSB_lo_8 = dividendMSB_lo[15:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_8 = |dividendMSB_hi_8; // @[CircuitMath.scala 37:22]
  wire [7:0] dividendMSB_hi_9 = dividendMSB_hi_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_9 = dividendMSB_hi_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_9 = |dividendMSB_hi_9; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_10 = dividendMSB_hi_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_10 = dividendMSB_hi_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_10 = |dividendMSB_hi_10; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_58 = dividendMSB_hi_10[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_59 = dividendMSB_hi_10[3] ? 2'h3 : _dividendMSB_T_58; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_63 = dividendMSB_lo_10[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_64 = dividendMSB_lo_10[3] ? 2'h3 : _dividendMSB_T_63; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_65 = dividendMSB_useHi_10 ? _dividendMSB_T_59 : _dividendMSB_T_64; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_66 = {dividendMSB_useHi_10,_dividendMSB_T_65}; // @[Cat.scala 31:58]
  wire [3:0] dividendMSB_hi_11 = dividendMSB_lo_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_11 = dividendMSB_lo_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_11 = |dividendMSB_hi_11; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_70 = dividendMSB_hi_11[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_71 = dividendMSB_hi_11[3] ? 2'h3 : _dividendMSB_T_70; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_75 = dividendMSB_lo_11[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_76 = dividendMSB_lo_11[3] ? 2'h3 : _dividendMSB_T_75; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_77 = dividendMSB_useHi_11 ? _dividendMSB_T_71 : _dividendMSB_T_76; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_78 = {dividendMSB_useHi_11,_dividendMSB_T_77}; // @[Cat.scala 31:58]
  wire [2:0] _dividendMSB_T_79 = dividendMSB_useHi_9 ? _dividendMSB_T_66 : _dividendMSB_T_78; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_80 = {dividendMSB_useHi_9,_dividendMSB_T_79}; // @[Cat.scala 31:58]
  wire [7:0] dividendMSB_hi_12 = dividendMSB_lo_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_12 = dividendMSB_lo_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_12 = |dividendMSB_hi_12; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_13 = dividendMSB_hi_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_13 = dividendMSB_hi_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_13 = |dividendMSB_hi_13; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_84 = dividendMSB_hi_13[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_85 = dividendMSB_hi_13[3] ? 2'h3 : _dividendMSB_T_84; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_89 = dividendMSB_lo_13[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_90 = dividendMSB_lo_13[3] ? 2'h3 : _dividendMSB_T_89; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_91 = dividendMSB_useHi_13 ? _dividendMSB_T_85 : _dividendMSB_T_90; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_92 = {dividendMSB_useHi_13,_dividendMSB_T_91}; // @[Cat.scala 31:58]
  wire [3:0] dividendMSB_hi_14 = dividendMSB_lo_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_14 = dividendMSB_lo_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_useHi_14 = |dividendMSB_hi_14; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_96 = dividendMSB_hi_14[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_97 = dividendMSB_hi_14[3] ? 2'h3 : _dividendMSB_T_96; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_101 = dividendMSB_lo_14[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_102 = dividendMSB_lo_14[3] ? 2'h3 : _dividendMSB_T_101; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_103 = dividendMSB_useHi_14 ? _dividendMSB_T_97 : _dividendMSB_T_102; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_104 = {dividendMSB_useHi_14,_dividendMSB_T_103}; // @[Cat.scala 31:58]
  wire [2:0] _dividendMSB_T_105 = dividendMSB_useHi_12 ? _dividendMSB_T_92 : _dividendMSB_T_104; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_106 = {dividendMSB_useHi_12,_dividendMSB_T_105}; // @[Cat.scala 31:58]
  wire [3:0] _dividendMSB_T_107 = dividendMSB_useHi_8 ? _dividendMSB_T_80 : _dividendMSB_T_106; // @[CircuitMath.scala 38:21]
  wire [4:0] _dividendMSB_T_108 = {dividendMSB_useHi_8,_dividendMSB_T_107}; // @[Cat.scala 31:58]
  wire [4:0] _dividendMSB_T_109 = dividendMSB_useHi ? _dividendMSB_T_54 : _dividendMSB_T_108; // @[CircuitMath.scala 38:21]
  wire [5:0] dividendMSB = {dividendMSB_useHi,_dividendMSB_T_109}; // @[Cat.scala 31:58]
  wire [5:0] _eOutPos_T_1 = dividendMSB - divisorMSB; // @[Multiplier.scala 151:35]
  wire [5:0] eOutPos = ~_eOutPos_T_1; // @[Multiplier.scala 151:21]
  wire  eOut_1 = _divby0_T & ~divby0 & eOutPos >= 6'h1; // @[Multiplier.scala 152:41]
  wire [126:0] _GEN_26 = {{63'd0}, remainder[63:0]}; // @[Multiplier.scala 154:39]
  wire [126:0] _remainder_T_4 = _GEN_26 << eOutPos; // @[Multiplier.scala 154:39]
  wire [128:0] _GEN_16 = eOut_1 ? {{2'd0}, _remainder_T_4} : unrolls_0; // @[Multiplier.scala 136:15 153:19 154:19]
  wire  _T_36 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  wire  _T_38 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _count_T_8 = cmdMul & _T_19 ? 6'h20 : 6'h0; // @[Multiplier.scala 167:38]
  wire [64:0] _divisor_T = {rhs_sign,hi_1,io_req_bits_in2[31:0]}; // @[Cat.scala 31:58]
  wire [2:0] _outMul_T_1 = state & 3'h1; // @[Multiplier.scala 174:23]
  wire  outMul = _outMul_T_1 == 3'h0; // @[Multiplier.scala 174:52]
  wire  _loOut_T = ~req_dw; // @[Multiplier.scala 77:60]
  wire [31:0] loOut = _loOut_T & outMul ? result[63:32] : result[31:0]; // @[Multiplier.scala 175:18]
  wire [31:0] _hiOut_T_4 = loOut[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] hiOut = _loOut_T ? _hiOut_T_4 : result[63:32]; // @[Multiplier.scala 176:18]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 181:25]
  assign io_resp_valid = state == 3'h6 | state == 3'h7; // @[Multiplier.scala 180:42]
  assign io_resp_bits_data = {hiOut,loOut}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (reset) begin // @[Multiplier.scala 50:22]
      state <= 3'h0; // @[Multiplier.scala 50:22]
    end else if (_T_38) begin // @[Multiplier.scala 163:24]
      if (cmdMul) begin // @[Multiplier.scala 164:17]
        state <= 3'h2;
      end else if (lhs_sign | rhs_sign) begin // @[Multiplier.scala 164:36]
        state <= 3'h1;
      end else begin
        state <= 3'h3;
      end
    end else if (_T_36 | io_kill) begin // @[Multiplier.scala 160:36]
      state <= 3'h0; // @[Multiplier.scala 161:11]
    end else if (state == 3'h3) begin // @[Multiplier.scala 128:50]
      state <= _GEN_14;
    end else begin
      state <= _GEN_12;
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      req_dw <= io_req_bits_dw; // @[Multiplier.scala 171:9]
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      count <= {{1'd0}, _count_T_8}; // @[Multiplier.scala 167:11]
    end else if (state == 3'h3) begin // @[Multiplier.scala 128:50]
      if (eOut_1) begin // @[Multiplier.scala 153:19]
        count <= {{1'd0}, eOutPos}; // @[Multiplier.scala 155:15]
      end else begin
        count <= _count_T_1; // @[Multiplier.scala 143:11]
      end
    end else if (state == 3'h2) begin // @[Multiplier.scala 105:50]
      count <= _count_T_1; // @[Multiplier.scala 122:11]
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      if (cmdHi) begin // @[Multiplier.scala 168:19]
        neg_out <= lhs_sign;
      end else begin
        neg_out <= lhs_sign != rhs_sign;
      end
    end else if (state == 3'h3) begin // @[Multiplier.scala 128:50]
      if (divby0 & _eOut_T_4) begin // @[Multiplier.scala 158:28]
        neg_out <= 1'h0; // @[Multiplier.scala 158:38]
      end
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      isHi <= cmdHi; // @[Multiplier.scala 165:10]
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      resHi <= 1'h0; // @[Multiplier.scala 166:11]
    end else if (state == 3'h3) begin // @[Multiplier.scala 128:50]
      if (count == 7'h40) begin // @[Multiplier.scala 137:38]
        resHi <= isHi; // @[Multiplier.scala 139:13]
      end else begin
        resHi <= _GEN_13;
      end
    end else begin
      resHi <= _GEN_13;
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      divisor <= _divisor_T; // @[Multiplier.scala 169:13]
    end else if (state == 3'h1) begin // @[Multiplier.scala 91:57]
      if (divisor[63]) begin // @[Multiplier.scala 95:25]
        divisor <= subtractor; // @[Multiplier.scala 96:15]
      end
    end
    if (_T_38) begin // @[Multiplier.scala 163:24]
      remainder <= {{66'd0}, lhs_in}; // @[Multiplier.scala 170:15]
    end else if (state == 3'h3) begin // @[Multiplier.scala 128:50]
      remainder <= {{1'd0}, _GEN_16};
    end else if (state == 3'h2) begin // @[Multiplier.scala 105:50]
      remainder <= _remainder_T_2; // @[Multiplier.scala 120:15]
    end else if (state == 3'h5) begin // @[Multiplier.scala 100:57]
      remainder <= {{66'd0}, negated_remainder}; // @[Multiplier.scala 101:15]
    end else begin
      remainder <= _GEN_2;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  req_dw = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  count = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  neg_out = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  isHi = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  resHi = _RAND_5[0:0];
  _RAND_6 = {3{`RANDOM}};
  divisor = _RAND_6[64:0];
  _RAND_7 = {5{`RANDOM}};
  remainder = _RAND_7[129:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
