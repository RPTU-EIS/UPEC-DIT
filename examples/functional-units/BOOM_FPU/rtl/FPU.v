module UOPCodeFPUDecoder(
  input  [6:0] io_uopc,
  output       io_sigs_ren2,
  output       io_sigs_ren3,
  output       io_sigs_swap23,
  output [1:0] io_sigs_typeTagIn,
  output [1:0] io_sigs_typeTagOut,
  output       io_sigs_fromint,
  output       io_sigs_toint,
  output       io_sigs_fastpipe,
  output       io_sigs_fma,
  output       io_sigs_wflags
);
  wire  _decoder_bit_T = io_uopc == 7'h52; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_1 = io_uopc == 7'h46; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_2 = io_uopc == 7'h4e; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_3 = io_uopc == 7'h50; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_4 = io_uopc == 7'h48; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_5 = io_uopc == 7'h54; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_6 = io_uopc == 7'h57; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_7 = io_uopc == 7'h58; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_8 = io_uopc == 7'h59; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_9 = io_uopc == 7'h5d; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_10 = io_uopc == 7'h5e; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_11 = io_uopc == 7'h5f; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_12 = io_uopc == 7'h60; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_13 = io_uopc == 7'h53; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_14 = io_uopc == 7'h47; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_15 = io_uopc == 7'h4a; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_16 = io_uopc == 7'h4b; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_17 = io_uopc == 7'h4f; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_18 = io_uopc == 7'h51; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_19 = io_uopc == 7'h49; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_20 = io_uopc == 7'h55; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_21 = io_uopc == 7'h5a; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_22 = io_uopc == 7'h5b; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_23 = io_uopc == 7'h5c; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_24 = io_uopc == 7'h61; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_25 = io_uopc == 7'h62; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_26 = io_uopc == 7'h63; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_27 = io_uopc == 7'h64; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_84 = io_uopc == 7'h45; // @[Decode.scala 14:121]
  wire  _decoder_bit_T_85 = io_uopc == 7'h4d; // @[Decode.scala 14:121]
  wire  decoder_7 = _decoder_bit_T_1 | _decoder_bit_T_13 | _decoder_bit_T_84 | _decoder_bit_T_14 | _decoder_bit_T_15 |
    _decoder_bit_T_85 | _decoder_bit_T_17 | _decoder_bit_T_18 | _decoder_bit_T_19 | _decoder_bit_T_20 |
    _decoder_bit_T_21 | _decoder_bit_T_22 | _decoder_bit_T_23 | _decoder_bit_T_24 | _decoder_bit_T_25 |
    _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
  wire  _decoder_bit_T_102 = io_uopc == 7'h44; // @[Decode.scala 14:121]
  wire  decoder_8 = _decoder_bit_T_102 | _decoder_bit_T_13 | _decoder_bit_T_84 | _decoder_bit_T_14 | _decoder_bit_T_16
     | _decoder_bit_T_85 | _decoder_bit_T_17 | _decoder_bit_T_18 | _decoder_bit_T_19 | _decoder_bit_T_20 |
    _decoder_bit_T_21 | _decoder_bit_T_22 | _decoder_bit_T_23 | _decoder_bit_T_24 | _decoder_bit_T_25 |
    _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
  wire  _decoder_bit_T_119 = io_uopc == 7'h4c; // @[Decode.scala 14:121]
  assign io_sigs_ren2 = _decoder_bit_T_3 | _decoder_bit_T_4 | _decoder_bit_T_5 | _decoder_bit_T_6 | _decoder_bit_T_7 |
    _decoder_bit_T_8 | _decoder_bit_T_9 | _decoder_bit_T_10 | _decoder_bit_T_11 | _decoder_bit_T_12 | _decoder_bit_T_18
     | _decoder_bit_T_19 | _decoder_bit_T_20 | _decoder_bit_T_21 | _decoder_bit_T_22 | _decoder_bit_T_23 |
    _decoder_bit_T_24 | _decoder_bit_T_25 | _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
  assign io_sigs_ren3 = _decoder_bit_T_9 | _decoder_bit_T_10 | _decoder_bit_T_11 | _decoder_bit_T_12 | _decoder_bit_T_24
     | _decoder_bit_T_25 | _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
  assign io_sigs_swap23 = _decoder_bit_T_6 | _decoder_bit_T_7 | _decoder_bit_T_21 | _decoder_bit_T_22; // @[Decode.scala 15:30]
  assign io_sigs_typeTagIn = {{1'd0}, decoder_7}; // @[fpu.scala 115:40]
  assign io_sigs_typeTagOut = {{1'd0}, decoder_8}; // @[fpu.scala 115:40]
  assign io_sigs_fromint = _decoder_bit_T_102 | _decoder_bit_T_119 | _decoder_bit_T_84 | _decoder_bit_T_85; // @[Decode.scala 15:30]
  assign io_sigs_toint = _decoder_bit_T | _decoder_bit_T_1 | _decoder_bit_T_2 | _decoder_bit_T_3 | _decoder_bit_T_13 |
    _decoder_bit_T_14 | _decoder_bit_T_17 | _decoder_bit_T_18; // @[Decode.scala 15:30]
  assign io_sigs_fastpipe = _decoder_bit_T_4 | _decoder_bit_T_5 | _decoder_bit_T_15 | _decoder_bit_T_16 |
    _decoder_bit_T_19 | _decoder_bit_T_20; // @[Decode.scala 15:30]
  assign io_sigs_fma = _decoder_bit_T_6 | _decoder_bit_T_7 | _decoder_bit_T_8 | _decoder_bit_T_9 | _decoder_bit_T_10 |
    _decoder_bit_T_11 | _decoder_bit_T_12 | _decoder_bit_T_21 | _decoder_bit_T_22 | _decoder_bit_T_23 |
    _decoder_bit_T_24 | _decoder_bit_T_25 | _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
  assign io_sigs_wflags = _decoder_bit_T_119 | _decoder_bit_T_2 | _decoder_bit_T_3 | _decoder_bit_T_5 | _decoder_bit_T_6
     | _decoder_bit_T_7 | _decoder_bit_T_8 | _decoder_bit_T_9 | _decoder_bit_T_10 | _decoder_bit_T_11 |
    _decoder_bit_T_12 | _decoder_bit_T_15 | _decoder_bit_T_16 | _decoder_bit_T_85 | _decoder_bit_T_17 |
    _decoder_bit_T_18 | _decoder_bit_T_20 | _decoder_bit_T_21 | _decoder_bit_T_22 | _decoder_bit_T_23 |
    _decoder_bit_T_24 | _decoder_bit_T_25 | _decoder_bit_T_26 | _decoder_bit_T_27; // @[Decode.scala 15:30]
endmodule
module MulAddRecFNToRaw_preMul(
  input  [1:0]   io_op,
  input  [64:0]  io_a,
  input  [64:0]  io_b,
  input  [64:0]  io_c,
  output [52:0]  io_mulAddA,
  output [52:0]  io_mulAddB,
  output [105:0] io_mulAddC,
  output         io_toPostMul_isSigNaNAny,
  output         io_toPostMul_isNaNAOrB,
  output         io_toPostMul_isInfA,
  output         io_toPostMul_isZeroA,
  output         io_toPostMul_isInfB,
  output         io_toPostMul_isZeroB,
  output         io_toPostMul_signProd,
  output         io_toPostMul_isNaNC,
  output         io_toPostMul_isInfC,
  output         io_toPostMul_isZeroC,
  output [12:0]  io_toPostMul_sExpSum,
  output         io_toPostMul_doSubMags,
  output         io_toPostMul_CIsDominant,
  output [5:0]   io_toPostMul_CDom_CAlignDist,
  output [54:0]  io_toPostMul_highAlignedSigC,
  output         io_toPostMul_bit0AlignedSigC
);
  wire [11:0] rawA_exp = io_a[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawA_isZero = rawA_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawA_isSpecial = rawA_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawA__isNaN = rawA_isSpecial & rawA_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawA__sign = io_a[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawA__sExp = {1'b0,$signed(rawA_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawA_out_sig_T = ~rawA_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawA__sig = {1'h0,_rawA_out_sig_T,io_a[51:0]}; // @[Cat.scala 31:58]
  wire [11:0] rawB_exp = io_b[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawB_isZero = rawB_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawB_isSpecial = rawB_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawB__isNaN = rawB_isSpecial & rawB_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawB__sign = io_b[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawB__sExp = {1'b0,$signed(rawB_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawB_out_sig_T = ~rawB_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawB__sig = {1'h0,_rawB_out_sig_T,io_b[51:0]}; // @[Cat.scala 31:58]
  wire [11:0] rawC_exp = io_c[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawC_isZero = rawC_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawC_isSpecial = rawC_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawC__isNaN = rawC_isSpecial & rawC_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawC__sign = io_c[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawC__sExp = {1'b0,$signed(rawC_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawC_out_sig_T = ~rawC_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawC__sig = {1'h0,_rawC_out_sig_T,io_c[51:0]}; // @[Cat.scala 31:58]
  wire  signProd = rawA__sign ^ rawB__sign ^ io_op[1]; // @[MulAddRecFN.scala 95:42]
  wire [13:0] _sExpAlignedProd_T = $signed(rawA__sExp) + $signed(rawB__sExp); // @[MulAddRecFN.scala 98:19]
  wire [13:0] sExpAlignedProd = $signed(_sExpAlignedProd_T) - 14'sh7c8; // @[MulAddRecFN.scala 98:32]
  wire  doSubMags = signProd ^ rawC__sign ^ io_op[0]; // @[MulAddRecFN.scala 100:42]
  wire [13:0] _GEN_0 = {{1{rawC__sExp[12]}},rawC__sExp}; // @[MulAddRecFN.scala 104:42]
  wire [13:0] sNatCAlignDist = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 104:42]
  wire [12:0] posNatCAlignDist = sNatCAlignDist[12:0]; // @[MulAddRecFN.scala 105:42]
  wire  isMinCAlign = rawA_isZero | rawB_isZero | $signed(sNatCAlignDist) < 14'sh0; // @[MulAddRecFN.scala 106:50]
  wire  CIsDominant = _rawC_out_sig_T & (isMinCAlign | posNatCAlignDist <= 13'h35); // @[MulAddRecFN.scala 108:23]
  wire [7:0] _CAlignDist_T_2 = posNatCAlignDist < 13'ha1 ? posNatCAlignDist[7:0] : 8'ha1; // @[MulAddRecFN.scala 112:16]
  wire [7:0] CAlignDist = isMinCAlign ? 8'h0 : _CAlignDist_T_2; // @[MulAddRecFN.scala 110:12]
  wire [53:0] _mainAlignedSigC_T = ~rawC__sig; // @[MulAddRecFN.scala 118:28]
  wire [53:0] _mainAlignedSigC_T_1 = doSubMags ? _mainAlignedSigC_T : rawC__sig; // @[MulAddRecFN.scala 118:16]
  wire [110:0] _mainAlignedSigC_T_3 = doSubMags ? 111'h7fffffffffffffffffffffffffff : 111'h0; // @[Bitwise.scala 74:12]
  wire [164:0] _mainAlignedSigC_T_5 = {_mainAlignedSigC_T_1,_mainAlignedSigC_T_3}; // @[MulAddRecFN.scala 120:11]
  wire [164:0] mainAlignedSigC = $signed(_mainAlignedSigC_T_5) >>> CAlignDist; // @[MulAddRecFN.scala 120:17]
  wire  reduced4CExtra_reducedVec_0 = |rawC__sig[3:0]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_1 = |rawC__sig[7:4]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_2 = |rawC__sig[11:8]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_3 = |rawC__sig[15:12]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_4 = |rawC__sig[19:16]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_5 = |rawC__sig[23:20]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_6 = |rawC__sig[27:24]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_7 = |rawC__sig[31:28]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_8 = |rawC__sig[35:32]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_9 = |rawC__sig[39:36]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_10 = |rawC__sig[43:40]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_11 = |rawC__sig[47:44]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_12 = |rawC__sig[51:48]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_13 = |rawC__sig[53:52]; // @[primitives.scala 124:57]
  wire [6:0] reduced4CExtra_lo = {reduced4CExtra_reducedVec_6,reduced4CExtra_reducedVec_5,reduced4CExtra_reducedVec_4,
    reduced4CExtra_reducedVec_3,reduced4CExtra_reducedVec_2,reduced4CExtra_reducedVec_1,reduced4CExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [13:0] _reduced4CExtra_T_1 = {reduced4CExtra_reducedVec_13,reduced4CExtra_reducedVec_12,
    reduced4CExtra_reducedVec_11,reduced4CExtra_reducedVec_10,reduced4CExtra_reducedVec_9,reduced4CExtra_reducedVec_8,
    reduced4CExtra_reducedVec_7,reduced4CExtra_lo}; // @[primitives.scala 125:20]
  wire [64:0] reduced4CExtra_shift = 65'sh10000000000000000 >>> CAlignDist[7:2]; // @[primitives.scala 77:58]
  wire [7:0] _GEN_1 = {{4'd0}, reduced4CExtra_shift[31:28]}; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_8 = _GEN_1 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_10 = {reduced4CExtra_shift[27:24], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _reduced4CExtra_T_12 = _reduced4CExtra_T_10 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _reduced4CExtra_T_13 = _reduced4CExtra_T_8 | _reduced4CExtra_T_12; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_2 = {{2'd0}, _reduced4CExtra_T_13[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_18 = _GEN_2 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_20 = {_reduced4CExtra_T_13[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _reduced4CExtra_T_22 = _reduced4CExtra_T_20 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _reduced4CExtra_T_23 = _reduced4CExtra_T_18 | _reduced4CExtra_T_22; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_3 = {{1'd0}, _reduced4CExtra_T_23[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_28 = _GEN_3 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _reduced4CExtra_T_30 = {_reduced4CExtra_T_23[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _reduced4CExtra_T_32 = _reduced4CExtra_T_30 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _reduced4CExtra_T_33 = _reduced4CExtra_T_28 | _reduced4CExtra_T_32; // @[Bitwise.scala 105:39]
  wire [12:0] _reduced4CExtra_T_47 = {_reduced4CExtra_T_33,reduced4CExtra_shift[32],reduced4CExtra_shift[33],
    reduced4CExtra_shift[34],reduced4CExtra_shift[35],reduced4CExtra_shift[36]}; // @[Cat.scala 31:58]
  wire [13:0] _GEN_4 = {{1'd0}, _reduced4CExtra_T_47}; // @[MulAddRecFN.scala 122:68]
  wire [13:0] _reduced4CExtra_T_48 = _reduced4CExtra_T_1 & _GEN_4; // @[MulAddRecFN.scala 122:68]
  wire  reduced4CExtra = |_reduced4CExtra_T_48; // @[MulAddRecFN.scala 130:11]
  wire  _alignedSigC_T_4 = &mainAlignedSigC[2:0] & ~reduced4CExtra; // @[MulAddRecFN.scala 134:44]
  wire  _alignedSigC_T_7 = |mainAlignedSigC[2:0] | reduced4CExtra; // @[MulAddRecFN.scala 135:44]
  wire  _alignedSigC_T_8 = doSubMags ? _alignedSigC_T_4 : _alignedSigC_T_7; // @[MulAddRecFN.scala 133:16]
  wire [161:0] alignedSigC_hi = mainAlignedSigC[164:3]; // @[Cat.scala 31:58]
  wire [162:0] alignedSigC = {alignedSigC_hi,_alignedSigC_T_8}; // @[Cat.scala 31:58]
  wire  _io_toPostMul_isSigNaNAny_T_2 = rawA__isNaN & ~rawA__sig[51]; // @[common.scala 82:46]
  wire  _io_toPostMul_isSigNaNAny_T_5 = rawB__isNaN & ~rawB__sig[51]; // @[common.scala 82:46]
  wire  _io_toPostMul_isSigNaNAny_T_9 = rawC__isNaN & ~rawC__sig[51]; // @[common.scala 82:46]
  wire [13:0] _io_toPostMul_sExpSum_T_2 = $signed(sExpAlignedProd) - 14'sh35; // @[MulAddRecFN.scala 158:53]
  wire [13:0] _io_toPostMul_sExpSum_T_3 = CIsDominant ? $signed({{1{rawC__sExp[12]}},rawC__sExp}) : $signed(
    _io_toPostMul_sExpSum_T_2); // @[MulAddRecFN.scala 158:12]
  assign io_mulAddA = rawA__sig[52:0]; // @[MulAddRecFN.scala 141:16]
  assign io_mulAddB = rawB__sig[52:0]; // @[MulAddRecFN.scala 142:16]
  assign io_mulAddC = alignedSigC[106:1]; // @[MulAddRecFN.scala 143:30]
  assign io_toPostMul_isSigNaNAny = _io_toPostMul_isSigNaNAny_T_2 | _io_toPostMul_isSigNaNAny_T_5 |
    _io_toPostMul_isSigNaNAny_T_9; // @[MulAddRecFN.scala 146:58]
  assign io_toPostMul_isNaNAOrB = rawA__isNaN | rawB__isNaN; // @[MulAddRecFN.scala 148:42]
  assign io_toPostMul_isInfA = rawA_isSpecial & ~rawA_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroA = rawA_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_isInfB = rawB_isSpecial & ~rawB_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroB = rawB_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_signProd = rawA__sign ^ rawB__sign ^ io_op[1]; // @[MulAddRecFN.scala 95:42]
  assign io_toPostMul_isNaNC = rawC_isSpecial & rawC_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  assign io_toPostMul_isInfC = rawC_isSpecial & ~rawC_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroC = rawC_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_sExpSum = _io_toPostMul_sExpSum_T_3[12:0]; // @[MulAddRecFN.scala 157:28]
  assign io_toPostMul_doSubMags = signProd ^ rawC__sign ^ io_op[0]; // @[MulAddRecFN.scala 100:42]
  assign io_toPostMul_CIsDominant = _rawC_out_sig_T & (isMinCAlign | posNatCAlignDist <= 13'h35); // @[MulAddRecFN.scala 108:23]
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[5:0]; // @[MulAddRecFN.scala 161:47]
  assign io_toPostMul_highAlignedSigC = alignedSigC[161:107]; // @[MulAddRecFN.scala 163:20]
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0]; // @[MulAddRecFN.scala 164:48]
endmodule
module MulAddRecFNToRaw_postMul(
  input          io_fromPreMul_isSigNaNAny,
  input          io_fromPreMul_isNaNAOrB,
  input          io_fromPreMul_isInfA,
  input          io_fromPreMul_isZeroA,
  input          io_fromPreMul_isInfB,
  input          io_fromPreMul_isZeroB,
  input          io_fromPreMul_signProd,
  input          io_fromPreMul_isNaNC,
  input          io_fromPreMul_isInfC,
  input          io_fromPreMul_isZeroC,
  input  [12:0]  io_fromPreMul_sExpSum,
  input          io_fromPreMul_doSubMags,
  input          io_fromPreMul_CIsDominant,
  input  [5:0]   io_fromPreMul_CDom_CAlignDist,
  input  [54:0]  io_fromPreMul_highAlignedSigC,
  input          io_fromPreMul_bit0AlignedSigC,
  input  [106:0] io_mulAddResult,
  input  [2:0]   io_roundingMode,
  output         io_invalidExc,
  output         io_rawOut_isNaN,
  output         io_rawOut_isInf,
  output         io_rawOut_isZero,
  output         io_rawOut_sign,
  output [12:0]  io_rawOut_sExp,
  output [55:0]  io_rawOut_sig
);
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[MulAddRecFN.scala 185:45]
  wire  CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 189:42]
  wire [54:0] _sigSum_T_2 = io_fromPreMul_highAlignedSigC + 55'h1; // @[MulAddRecFN.scala 192:47]
  wire [54:0] _sigSum_T_3 = io_mulAddResult[106] ? _sigSum_T_2 : io_fromPreMul_highAlignedSigC; // @[MulAddRecFN.scala 191:16]
  wire [161:0] sigSum = {_sigSum_T_3,io_mulAddResult[105:0],io_fromPreMul_bit0AlignedSigC}; // @[Cat.scala 31:58]
  wire [1:0] _CDom_sExp_T = {1'b0,$signed(io_fromPreMul_doSubMags)}; // @[MulAddRecFN.scala 202:69]
  wire [12:0] _GEN_0 = {{11{_CDom_sExp_T[1]}},_CDom_sExp_T}; // @[MulAddRecFN.scala 202:43]
  wire [12:0] CDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_0); // @[MulAddRecFN.scala 202:43]
  wire [107:0] _CDom_absSigSum_T_1 = ~sigSum[161:54]; // @[MulAddRecFN.scala 205:13]
  wire [107:0] _CDom_absSigSum_T_4 = {1'h0,io_fromPreMul_highAlignedSigC[54:53],sigSum[159:55]}; // @[Cat.scala 31:58]
  wire [107:0] CDom_absSigSum = io_fromPreMul_doSubMags ? _CDom_absSigSum_T_1 : _CDom_absSigSum_T_4; // @[MulAddRecFN.scala 204:12]
  wire [52:0] _CDom_absSigSumExtra_T_1 = ~sigSum[53:1]; // @[MulAddRecFN.scala 214:14]
  wire  _CDom_absSigSumExtra_T_2 = |_CDom_absSigSumExtra_T_1; // @[MulAddRecFN.scala 214:36]
  wire  _CDom_absSigSumExtra_T_4 = |sigSum[54:1]; // @[MulAddRecFN.scala 215:37]
  wire  CDom_absSigSumExtra = io_fromPreMul_doSubMags ? _CDom_absSigSumExtra_T_2 : _CDom_absSigSumExtra_T_4; // @[MulAddRecFN.scala 213:12]
  wire [170:0] _GEN_11 = {{63'd0}, CDom_absSigSum}; // @[MulAddRecFN.scala 218:24]
  wire [170:0] _CDom_mainSig_T = _GEN_11 << io_fromPreMul_CDom_CAlignDist; // @[MulAddRecFN.scala 218:24]
  wire [57:0] CDom_mainSig = _CDom_mainSig_T[107:50]; // @[MulAddRecFN.scala 218:56]
  wire [54:0] _CDom_reduced4SigExtra_T_1 = {CDom_absSigSum[52:0], 2'h0}; // @[MulAddRecFN.scala 221:53]
  wire  CDom_reduced4SigExtra_reducedVec_0 = |_CDom_reduced4SigExtra_T_1[3:0]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_1 = |_CDom_reduced4SigExtra_T_1[7:4]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_2 = |_CDom_reduced4SigExtra_T_1[11:8]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_3 = |_CDom_reduced4SigExtra_T_1[15:12]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_4 = |_CDom_reduced4SigExtra_T_1[19:16]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_5 = |_CDom_reduced4SigExtra_T_1[23:20]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_6 = |_CDom_reduced4SigExtra_T_1[27:24]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_7 = |_CDom_reduced4SigExtra_T_1[31:28]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_8 = |_CDom_reduced4SigExtra_T_1[35:32]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_9 = |_CDom_reduced4SigExtra_T_1[39:36]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_10 = |_CDom_reduced4SigExtra_T_1[43:40]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_11 = |_CDom_reduced4SigExtra_T_1[47:44]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_12 = |_CDom_reduced4SigExtra_T_1[51:48]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_13 = |_CDom_reduced4SigExtra_T_1[54:52]; // @[primitives.scala 124:57]
  wire [6:0] CDom_reduced4SigExtra_lo = {CDom_reduced4SigExtra_reducedVec_6,CDom_reduced4SigExtra_reducedVec_5,
    CDom_reduced4SigExtra_reducedVec_4,CDom_reduced4SigExtra_reducedVec_3,CDom_reduced4SigExtra_reducedVec_2,
    CDom_reduced4SigExtra_reducedVec_1,CDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [13:0] _CDom_reduced4SigExtra_T_2 = {CDom_reduced4SigExtra_reducedVec_13,CDom_reduced4SigExtra_reducedVec_12,
    CDom_reduced4SigExtra_reducedVec_11,CDom_reduced4SigExtra_reducedVec_10,CDom_reduced4SigExtra_reducedVec_9,
    CDom_reduced4SigExtra_reducedVec_8,CDom_reduced4SigExtra_reducedVec_7,CDom_reduced4SigExtra_lo}; // @[primitives.scala 125:20]
  wire [3:0] _CDom_reduced4SigExtra_T_4 = ~io_fromPreMul_CDom_CAlignDist[5:2]; // @[primitives.scala 51:21]
  wire [16:0] CDom_reduced4SigExtra_shift = 17'sh10000 >>> _CDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [7:0] _GEN_1 = {{4'd0}, CDom_reduced4SigExtra_shift[8:5]}; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_10 = _GEN_1 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_12 = {CDom_reduced4SigExtra_shift[4:1], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _CDom_reduced4SigExtra_T_14 = _CDom_reduced4SigExtra_T_12 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _CDom_reduced4SigExtra_T_15 = _CDom_reduced4SigExtra_T_10 | _CDom_reduced4SigExtra_T_14; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_2 = {{2'd0}, _CDom_reduced4SigExtra_T_15[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_20 = _GEN_2 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_22 = {_CDom_reduced4SigExtra_T_15[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _CDom_reduced4SigExtra_T_24 = _CDom_reduced4SigExtra_T_22 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _CDom_reduced4SigExtra_T_25 = _CDom_reduced4SigExtra_T_20 | _CDom_reduced4SigExtra_T_24; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_3 = {{1'd0}, _CDom_reduced4SigExtra_T_25[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_30 = _GEN_3 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _CDom_reduced4SigExtra_T_32 = {_CDom_reduced4SigExtra_T_25[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _CDom_reduced4SigExtra_T_34 = _CDom_reduced4SigExtra_T_32 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _CDom_reduced4SigExtra_T_35 = _CDom_reduced4SigExtra_T_30 | _CDom_reduced4SigExtra_T_34; // @[Bitwise.scala 105:39]
  wire [12:0] _CDom_reduced4SigExtra_T_49 = {_CDom_reduced4SigExtra_T_35,CDom_reduced4SigExtra_shift[9],
    CDom_reduced4SigExtra_shift[10],CDom_reduced4SigExtra_shift[11],CDom_reduced4SigExtra_shift[12],
    CDom_reduced4SigExtra_shift[13]}; // @[Cat.scala 31:58]
  wire [13:0] _GEN_4 = {{1'd0}, _CDom_reduced4SigExtra_T_49}; // @[MulAddRecFN.scala 221:72]
  wire [13:0] _CDom_reduced4SigExtra_T_50 = _CDom_reduced4SigExtra_T_2 & _GEN_4; // @[MulAddRecFN.scala 221:72]
  wire  CDom_reduced4SigExtra = |_CDom_reduced4SigExtra_T_50; // @[MulAddRecFN.scala 222:73]
  wire  _CDom_sig_T_4 = |CDom_mainSig[2:0] | CDom_reduced4SigExtra | CDom_absSigSumExtra; // @[MulAddRecFN.scala 225:61]
  wire [55:0] CDom_sig = {CDom_mainSig[57:3],_CDom_sig_T_4}; // @[Cat.scala 31:58]
  wire  notCDom_signSigSum = sigSum[109]; // @[MulAddRecFN.scala 231:36]
  wire [108:0] _notCDom_absSigSum_T_1 = ~sigSum[108:0]; // @[MulAddRecFN.scala 234:13]
  wire [108:0] _GEN_5 = {{108'd0}, io_fromPreMul_doSubMags}; // @[MulAddRecFN.scala 235:41]
  wire [108:0] _notCDom_absSigSum_T_4 = sigSum[108:0] + _GEN_5; // @[MulAddRecFN.scala 235:41]
  wire [108:0] notCDom_absSigSum = notCDom_signSigSum ? _notCDom_absSigSum_T_1 : _notCDom_absSigSum_T_4; // @[MulAddRecFN.scala 233:12]
  wire  notCDom_reduced2AbsSigSum_reducedVec_0 = |notCDom_absSigSum[1:0]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_1 = |notCDom_absSigSum[3:2]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_2 = |notCDom_absSigSum[5:4]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_3 = |notCDom_absSigSum[7:6]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_4 = |notCDom_absSigSum[9:8]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_5 = |notCDom_absSigSum[11:10]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_6 = |notCDom_absSigSum[13:12]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_7 = |notCDom_absSigSum[15:14]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_8 = |notCDom_absSigSum[17:16]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_9 = |notCDom_absSigSum[19:18]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_10 = |notCDom_absSigSum[21:20]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_11 = |notCDom_absSigSum[23:22]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_12 = |notCDom_absSigSum[25:24]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_13 = |notCDom_absSigSum[27:26]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_14 = |notCDom_absSigSum[29:28]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_15 = |notCDom_absSigSum[31:30]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_16 = |notCDom_absSigSum[33:32]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_17 = |notCDom_absSigSum[35:34]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_18 = |notCDom_absSigSum[37:36]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_19 = |notCDom_absSigSum[39:38]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_20 = |notCDom_absSigSum[41:40]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_21 = |notCDom_absSigSum[43:42]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_22 = |notCDom_absSigSum[45:44]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_23 = |notCDom_absSigSum[47:46]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_24 = |notCDom_absSigSum[49:48]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_25 = |notCDom_absSigSum[51:50]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_26 = |notCDom_absSigSum[53:52]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_27 = |notCDom_absSigSum[55:54]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_28 = |notCDom_absSigSum[57:56]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_29 = |notCDom_absSigSum[59:58]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_30 = |notCDom_absSigSum[61:60]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_31 = |notCDom_absSigSum[63:62]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_32 = |notCDom_absSigSum[65:64]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_33 = |notCDom_absSigSum[67:66]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_34 = |notCDom_absSigSum[69:68]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_35 = |notCDom_absSigSum[71:70]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_36 = |notCDom_absSigSum[73:72]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_37 = |notCDom_absSigSum[75:74]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_38 = |notCDom_absSigSum[77:76]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_39 = |notCDom_absSigSum[79:78]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_40 = |notCDom_absSigSum[81:80]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_41 = |notCDom_absSigSum[83:82]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_42 = |notCDom_absSigSum[85:84]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_43 = |notCDom_absSigSum[87:86]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_44 = |notCDom_absSigSum[89:88]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_45 = |notCDom_absSigSum[91:90]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_46 = |notCDom_absSigSum[93:92]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_47 = |notCDom_absSigSum[95:94]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_48 = |notCDom_absSigSum[97:96]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_49 = |notCDom_absSigSum[99:98]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_50 = |notCDom_absSigSum[101:100]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_51 = |notCDom_absSigSum[103:102]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_52 = |notCDom_absSigSum[105:104]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_53 = |notCDom_absSigSum[107:106]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_54 = |notCDom_absSigSum[108]; // @[primitives.scala 107:57]
  wire [5:0] notCDom_reduced2AbsSigSum_lo_lo_lo = {notCDom_reduced2AbsSigSum_reducedVec_5,
    notCDom_reduced2AbsSigSum_reducedVec_4,notCDom_reduced2AbsSigSum_reducedVec_3,notCDom_reduced2AbsSigSum_reducedVec_2
    ,notCDom_reduced2AbsSigSum_reducedVec_1,notCDom_reduced2AbsSigSum_reducedVec_0}; // @[primitives.scala 108:20]
  wire [12:0] notCDom_reduced2AbsSigSum_lo_lo = {notCDom_reduced2AbsSigSum_reducedVec_12,
    notCDom_reduced2AbsSigSum_reducedVec_11,notCDom_reduced2AbsSigSum_reducedVec_10,
    notCDom_reduced2AbsSigSum_reducedVec_9,notCDom_reduced2AbsSigSum_reducedVec_8,notCDom_reduced2AbsSigSum_reducedVec_7
    ,notCDom_reduced2AbsSigSum_reducedVec_6,notCDom_reduced2AbsSigSum_lo_lo_lo}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_lo_hi_lo = {notCDom_reduced2AbsSigSum_reducedVec_19,
    notCDom_reduced2AbsSigSum_reducedVec_18,notCDom_reduced2AbsSigSum_reducedVec_17,
    notCDom_reduced2AbsSigSum_reducedVec_16,notCDom_reduced2AbsSigSum_reducedVec_15,
    notCDom_reduced2AbsSigSum_reducedVec_14,notCDom_reduced2AbsSigSum_reducedVec_13}; // @[primitives.scala 108:20]
  wire [26:0] notCDom_reduced2AbsSigSum_lo = {notCDom_reduced2AbsSigSum_reducedVec_26,
    notCDom_reduced2AbsSigSum_reducedVec_25,notCDom_reduced2AbsSigSum_reducedVec_24,
    notCDom_reduced2AbsSigSum_reducedVec_23,notCDom_reduced2AbsSigSum_reducedVec_22,
    notCDom_reduced2AbsSigSum_reducedVec_21,notCDom_reduced2AbsSigSum_reducedVec_20,notCDom_reduced2AbsSigSum_lo_hi_lo,
    notCDom_reduced2AbsSigSum_lo_lo}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_hi_lo_lo = {notCDom_reduced2AbsSigSum_reducedVec_33,
    notCDom_reduced2AbsSigSum_reducedVec_32,notCDom_reduced2AbsSigSum_reducedVec_31,
    notCDom_reduced2AbsSigSum_reducedVec_30,notCDom_reduced2AbsSigSum_reducedVec_29,
    notCDom_reduced2AbsSigSum_reducedVec_28,notCDom_reduced2AbsSigSum_reducedVec_27}; // @[primitives.scala 108:20]
  wire [13:0] notCDom_reduced2AbsSigSum_hi_lo = {notCDom_reduced2AbsSigSum_reducedVec_40,
    notCDom_reduced2AbsSigSum_reducedVec_39,notCDom_reduced2AbsSigSum_reducedVec_38,
    notCDom_reduced2AbsSigSum_reducedVec_37,notCDom_reduced2AbsSigSum_reducedVec_36,
    notCDom_reduced2AbsSigSum_reducedVec_35,notCDom_reduced2AbsSigSum_reducedVec_34,notCDom_reduced2AbsSigSum_hi_lo_lo}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_hi_hi_lo = {notCDom_reduced2AbsSigSum_reducedVec_47,
    notCDom_reduced2AbsSigSum_reducedVec_46,notCDom_reduced2AbsSigSum_reducedVec_45,
    notCDom_reduced2AbsSigSum_reducedVec_44,notCDom_reduced2AbsSigSum_reducedVec_43,
    notCDom_reduced2AbsSigSum_reducedVec_42,notCDom_reduced2AbsSigSum_reducedVec_41}; // @[primitives.scala 108:20]
  wire [54:0] notCDom_reduced2AbsSigSum = {notCDom_reduced2AbsSigSum_reducedVec_54,
    notCDom_reduced2AbsSigSum_reducedVec_53,notCDom_reduced2AbsSigSum_reducedVec_52,
    notCDom_reduced2AbsSigSum_reducedVec_51,notCDom_reduced2AbsSigSum_reducedVec_50,
    notCDom_reduced2AbsSigSum_reducedVec_49,notCDom_reduced2AbsSigSum_reducedVec_48,notCDom_reduced2AbsSigSum_hi_hi_lo,
    notCDom_reduced2AbsSigSum_hi_lo,notCDom_reduced2AbsSigSum_lo}; // @[primitives.scala 108:20]
  wire [5:0] _notCDom_normDistReduced2_T_55 = notCDom_reduced2AbsSigSum[1] ? 6'h35 : 6'h36; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_56 = notCDom_reduced2AbsSigSum[2] ? 6'h34 : _notCDom_normDistReduced2_T_55; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_57 = notCDom_reduced2AbsSigSum[3] ? 6'h33 : _notCDom_normDistReduced2_T_56; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_58 = notCDom_reduced2AbsSigSum[4] ? 6'h32 : _notCDom_normDistReduced2_T_57; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_59 = notCDom_reduced2AbsSigSum[5] ? 6'h31 : _notCDom_normDistReduced2_T_58; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_60 = notCDom_reduced2AbsSigSum[6] ? 6'h30 : _notCDom_normDistReduced2_T_59; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_61 = notCDom_reduced2AbsSigSum[7] ? 6'h2f : _notCDom_normDistReduced2_T_60; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_62 = notCDom_reduced2AbsSigSum[8] ? 6'h2e : _notCDom_normDistReduced2_T_61; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_63 = notCDom_reduced2AbsSigSum[9] ? 6'h2d : _notCDom_normDistReduced2_T_62; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_64 = notCDom_reduced2AbsSigSum[10] ? 6'h2c : _notCDom_normDistReduced2_T_63; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_65 = notCDom_reduced2AbsSigSum[11] ? 6'h2b : _notCDom_normDistReduced2_T_64; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_66 = notCDom_reduced2AbsSigSum[12] ? 6'h2a : _notCDom_normDistReduced2_T_65; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_67 = notCDom_reduced2AbsSigSum[13] ? 6'h29 : _notCDom_normDistReduced2_T_66; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_68 = notCDom_reduced2AbsSigSum[14] ? 6'h28 : _notCDom_normDistReduced2_T_67; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_69 = notCDom_reduced2AbsSigSum[15] ? 6'h27 : _notCDom_normDistReduced2_T_68; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_70 = notCDom_reduced2AbsSigSum[16] ? 6'h26 : _notCDom_normDistReduced2_T_69; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_71 = notCDom_reduced2AbsSigSum[17] ? 6'h25 : _notCDom_normDistReduced2_T_70; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_72 = notCDom_reduced2AbsSigSum[18] ? 6'h24 : _notCDom_normDistReduced2_T_71; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_73 = notCDom_reduced2AbsSigSum[19] ? 6'h23 : _notCDom_normDistReduced2_T_72; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_74 = notCDom_reduced2AbsSigSum[20] ? 6'h22 : _notCDom_normDistReduced2_T_73; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_75 = notCDom_reduced2AbsSigSum[21] ? 6'h21 : _notCDom_normDistReduced2_T_74; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_76 = notCDom_reduced2AbsSigSum[22] ? 6'h20 : _notCDom_normDistReduced2_T_75; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_77 = notCDom_reduced2AbsSigSum[23] ? 6'h1f : _notCDom_normDistReduced2_T_76; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_78 = notCDom_reduced2AbsSigSum[24] ? 6'h1e : _notCDom_normDistReduced2_T_77; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_79 = notCDom_reduced2AbsSigSum[25] ? 6'h1d : _notCDom_normDistReduced2_T_78; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_80 = notCDom_reduced2AbsSigSum[26] ? 6'h1c : _notCDom_normDistReduced2_T_79; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_81 = notCDom_reduced2AbsSigSum[27] ? 6'h1b : _notCDom_normDistReduced2_T_80; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_82 = notCDom_reduced2AbsSigSum[28] ? 6'h1a : _notCDom_normDistReduced2_T_81; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_83 = notCDom_reduced2AbsSigSum[29] ? 6'h19 : _notCDom_normDistReduced2_T_82; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_84 = notCDom_reduced2AbsSigSum[30] ? 6'h18 : _notCDom_normDistReduced2_T_83; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_85 = notCDom_reduced2AbsSigSum[31] ? 6'h17 : _notCDom_normDistReduced2_T_84; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_86 = notCDom_reduced2AbsSigSum[32] ? 6'h16 : _notCDom_normDistReduced2_T_85; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_87 = notCDom_reduced2AbsSigSum[33] ? 6'h15 : _notCDom_normDistReduced2_T_86; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_88 = notCDom_reduced2AbsSigSum[34] ? 6'h14 : _notCDom_normDistReduced2_T_87; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_89 = notCDom_reduced2AbsSigSum[35] ? 6'h13 : _notCDom_normDistReduced2_T_88; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_90 = notCDom_reduced2AbsSigSum[36] ? 6'h12 : _notCDom_normDistReduced2_T_89; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_91 = notCDom_reduced2AbsSigSum[37] ? 6'h11 : _notCDom_normDistReduced2_T_90; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_92 = notCDom_reduced2AbsSigSum[38] ? 6'h10 : _notCDom_normDistReduced2_T_91; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_93 = notCDom_reduced2AbsSigSum[39] ? 6'hf : _notCDom_normDistReduced2_T_92; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_94 = notCDom_reduced2AbsSigSum[40] ? 6'he : _notCDom_normDistReduced2_T_93; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_95 = notCDom_reduced2AbsSigSum[41] ? 6'hd : _notCDom_normDistReduced2_T_94; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_96 = notCDom_reduced2AbsSigSum[42] ? 6'hc : _notCDom_normDistReduced2_T_95; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_97 = notCDom_reduced2AbsSigSum[43] ? 6'hb : _notCDom_normDistReduced2_T_96; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_98 = notCDom_reduced2AbsSigSum[44] ? 6'ha : _notCDom_normDistReduced2_T_97; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_99 = notCDom_reduced2AbsSigSum[45] ? 6'h9 : _notCDom_normDistReduced2_T_98; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_100 = notCDom_reduced2AbsSigSum[46] ? 6'h8 : _notCDom_normDistReduced2_T_99; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_101 = notCDom_reduced2AbsSigSum[47] ? 6'h7 : _notCDom_normDistReduced2_T_100; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_102 = notCDom_reduced2AbsSigSum[48] ? 6'h6 : _notCDom_normDistReduced2_T_101; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_103 = notCDom_reduced2AbsSigSum[49] ? 6'h5 : _notCDom_normDistReduced2_T_102; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_104 = notCDom_reduced2AbsSigSum[50] ? 6'h4 : _notCDom_normDistReduced2_T_103; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_105 = notCDom_reduced2AbsSigSum[51] ? 6'h3 : _notCDom_normDistReduced2_T_104; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_106 = notCDom_reduced2AbsSigSum[52] ? 6'h2 : _notCDom_normDistReduced2_T_105; // @[Mux.scala 47:70]
  wire [5:0] _notCDom_normDistReduced2_T_107 = notCDom_reduced2AbsSigSum[53] ? 6'h1 : _notCDom_normDistReduced2_T_106; // @[Mux.scala 47:70]
  wire [5:0] notCDom_normDistReduced2 = notCDom_reduced2AbsSigSum[54] ? 6'h0 : _notCDom_normDistReduced2_T_107; // @[Mux.scala 47:70]
  wire [6:0] notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0}; // @[MulAddRecFN.scala 239:56]
  wire [7:0] _notCDom_sExp_T = {1'b0,$signed(notCDom_nearNormDist)}; // @[MulAddRecFN.scala 240:69]
  wire [12:0] _GEN_6 = {{5{_notCDom_sExp_T[7]}},_notCDom_sExp_T}; // @[MulAddRecFN.scala 240:46]
  wire [12:0] notCDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_6); // @[MulAddRecFN.scala 240:46]
  wire [235:0] _GEN_12 = {{127'd0}, notCDom_absSigSum}; // @[MulAddRecFN.scala 242:27]
  wire [235:0] _notCDom_mainSig_T = _GEN_12 << notCDom_nearNormDist; // @[MulAddRecFN.scala 242:27]
  wire [57:0] notCDom_mainSig = _notCDom_mainSig_T[109:52]; // @[MulAddRecFN.scala 242:50]
  wire  notCDom_reduced4SigExtra_reducedVec_0 = |notCDom_reduced2AbsSigSum[1:0]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_1 = |notCDom_reduced2AbsSigSum[3:2]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_2 = |notCDom_reduced2AbsSigSum[5:4]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_3 = |notCDom_reduced2AbsSigSum[7:6]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_4 = |notCDom_reduced2AbsSigSum[9:8]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_5 = |notCDom_reduced2AbsSigSum[11:10]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_6 = |notCDom_reduced2AbsSigSum[13:12]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_7 = |notCDom_reduced2AbsSigSum[15:14]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_8 = |notCDom_reduced2AbsSigSum[17:16]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_9 = |notCDom_reduced2AbsSigSum[19:18]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_10 = |notCDom_reduced2AbsSigSum[21:20]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_11 = |notCDom_reduced2AbsSigSum[23:22]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_12 = |notCDom_reduced2AbsSigSum[25:24]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_13 = |notCDom_reduced2AbsSigSum[26]; // @[primitives.scala 107:57]
  wire [6:0] notCDom_reduced4SigExtra_lo = {notCDom_reduced4SigExtra_reducedVec_6,notCDom_reduced4SigExtra_reducedVec_5,
    notCDom_reduced4SigExtra_reducedVec_4,notCDom_reduced4SigExtra_reducedVec_3,notCDom_reduced4SigExtra_reducedVec_2,
    notCDom_reduced4SigExtra_reducedVec_1,notCDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 108:20]
  wire [13:0] _notCDom_reduced4SigExtra_T_2 = {notCDom_reduced4SigExtra_reducedVec_13,
    notCDom_reduced4SigExtra_reducedVec_12,notCDom_reduced4SigExtra_reducedVec_11,notCDom_reduced4SigExtra_reducedVec_10
    ,notCDom_reduced4SigExtra_reducedVec_9,notCDom_reduced4SigExtra_reducedVec_8,notCDom_reduced4SigExtra_reducedVec_7,
    notCDom_reduced4SigExtra_lo}; // @[primitives.scala 108:20]
  wire [4:0] _notCDom_reduced4SigExtra_T_4 = ~notCDom_normDistReduced2[5:1]; // @[primitives.scala 51:21]
  wire [32:0] notCDom_reduced4SigExtra_shift = 33'sh100000000 >>> _notCDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [7:0] _GEN_7 = {{4'd0}, notCDom_reduced4SigExtra_shift[8:5]}; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_10 = _GEN_7 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_12 = {notCDom_reduced4SigExtra_shift[4:1], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _notCDom_reduced4SigExtra_T_14 = _notCDom_reduced4SigExtra_T_12 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _notCDom_reduced4SigExtra_T_15 = _notCDom_reduced4SigExtra_T_10 | _notCDom_reduced4SigExtra_T_14; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_8 = {{2'd0}, _notCDom_reduced4SigExtra_T_15[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_20 = _GEN_8 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_22 = {_notCDom_reduced4SigExtra_T_15[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _notCDom_reduced4SigExtra_T_24 = _notCDom_reduced4SigExtra_T_22 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _notCDom_reduced4SigExtra_T_25 = _notCDom_reduced4SigExtra_T_20 | _notCDom_reduced4SigExtra_T_24; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_9 = {{1'd0}, _notCDom_reduced4SigExtra_T_25[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_30 = _GEN_9 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_32 = {_notCDom_reduced4SigExtra_T_25[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _notCDom_reduced4SigExtra_T_34 = _notCDom_reduced4SigExtra_T_32 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _notCDom_reduced4SigExtra_T_35 = _notCDom_reduced4SigExtra_T_30 | _notCDom_reduced4SigExtra_T_34; // @[Bitwise.scala 105:39]
  wire [12:0] _notCDom_reduced4SigExtra_T_49 = {_notCDom_reduced4SigExtra_T_35,notCDom_reduced4SigExtra_shift[9],
    notCDom_reduced4SigExtra_shift[10],notCDom_reduced4SigExtra_shift[11],notCDom_reduced4SigExtra_shift[12],
    notCDom_reduced4SigExtra_shift[13]}; // @[Cat.scala 31:58]
  wire [13:0] _GEN_10 = {{1'd0}, _notCDom_reduced4SigExtra_T_49}; // @[MulAddRecFN.scala 246:78]
  wire [13:0] _notCDom_reduced4SigExtra_T_50 = _notCDom_reduced4SigExtra_T_2 & _GEN_10; // @[MulAddRecFN.scala 246:78]
  wire  notCDom_reduced4SigExtra = |_notCDom_reduced4SigExtra_T_50; // @[MulAddRecFN.scala 248:11]
  wire  _notCDom_sig_T_3 = |notCDom_mainSig[2:0] | notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 251:39]
  wire [55:0] notCDom_sig = {notCDom_mainSig[57:3],_notCDom_sig_T_3}; // @[Cat.scala 31:58]
  wire  notCDom_completeCancellation = notCDom_sig[55:54] == 2'h0; // @[MulAddRecFN.scala 254:50]
  wire  _notCDom_sign_T = io_fromPreMul_signProd ^ notCDom_signSigSum; // @[MulAddRecFN.scala 258:36]
  wire  notCDom_sign = notCDom_completeCancellation ? roundingMode_min : _notCDom_sign_T; // @[MulAddRecFN.scala 256:12]
  wire  notNaN_isInfProd = io_fromPreMul_isInfA | io_fromPreMul_isInfB; // @[MulAddRecFN.scala 263:49]
  wire  notNaN_isInfOut = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 264:44]
  wire  notNaN_addZeros = (io_fromPreMul_isZeroA | io_fromPreMul_isZeroB) & io_fromPreMul_isZeroC; // @[MulAddRecFN.scala 266:58]
  wire  _io_invalidExc_T = io_fromPreMul_isInfA & io_fromPreMul_isZeroB; // @[MulAddRecFN.scala 271:31]
  wire  _io_invalidExc_T_1 = io_fromPreMul_isSigNaNAny | _io_invalidExc_T; // @[MulAddRecFN.scala 270:35]
  wire  _io_invalidExc_T_2 = io_fromPreMul_isZeroA & io_fromPreMul_isInfB; // @[MulAddRecFN.scala 272:32]
  wire  _io_invalidExc_T_3 = _io_invalidExc_T_1 | _io_invalidExc_T_2; // @[MulAddRecFN.scala 271:57]
  wire  _io_invalidExc_T_6 = ~io_fromPreMul_isNaNAOrB & notNaN_isInfProd; // @[MulAddRecFN.scala 273:36]
  wire  _io_invalidExc_T_7 = _io_invalidExc_T_6 & io_fromPreMul_isInfC; // @[MulAddRecFN.scala 274:61]
  wire  _io_invalidExc_T_8 = _io_invalidExc_T_7 & io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 275:35]
  wire  _io_rawOut_isZero_T_1 = ~io_fromPreMul_CIsDominant & notCDom_completeCancellation; // @[MulAddRecFN.scala 282:42]
  wire  _io_rawOut_sign_T_1 = io_fromPreMul_isInfC & CDom_sign; // @[MulAddRecFN.scala 285:31]
  wire  _io_rawOut_sign_T_2 = notNaN_isInfProd & io_fromPreMul_signProd | _io_rawOut_sign_T_1; // @[MulAddRecFN.scala 284:54]
  wire  _io_rawOut_sign_T_5 = notNaN_addZeros & ~roundingMode_min & io_fromPreMul_signProd; // @[MulAddRecFN.scala 286:48]
  wire  _io_rawOut_sign_T_6 = _io_rawOut_sign_T_5 & CDom_sign; // @[MulAddRecFN.scala 287:36]
  wire  _io_rawOut_sign_T_7 = _io_rawOut_sign_T_2 | _io_rawOut_sign_T_6; // @[MulAddRecFN.scala 285:43]
  wire  _io_rawOut_sign_T_9 = io_fromPreMul_signProd | CDom_sign; // @[MulAddRecFN.scala 289:37]
  wire  _io_rawOut_sign_T_10 = notNaN_addZeros & roundingMode_min & _io_rawOut_sign_T_9; // @[MulAddRecFN.scala 288:46]
  wire  _io_rawOut_sign_T_11 = _io_rawOut_sign_T_7 | _io_rawOut_sign_T_10; // @[MulAddRecFN.scala 287:48]
  wire  _io_rawOut_sign_T_15 = io_fromPreMul_CIsDominant ? CDom_sign : notCDom_sign; // @[MulAddRecFN.scala 291:17]
  wire  _io_rawOut_sign_T_16 = ~notNaN_isInfOut & ~notNaN_addZeros & _io_rawOut_sign_T_15; // @[MulAddRecFN.scala 290:49]
  assign io_invalidExc = _io_invalidExc_T_3 | _io_invalidExc_T_8; // @[MulAddRecFN.scala 272:57]
  assign io_rawOut_isNaN = io_fromPreMul_isNaNAOrB | io_fromPreMul_isNaNC; // @[MulAddRecFN.scala 277:48]
  assign io_rawOut_isInf = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 264:44]
  assign io_rawOut_isZero = notNaN_addZeros | _io_rawOut_isZero_T_1; // @[MulAddRecFN.scala 281:25]
  assign io_rawOut_sign = _io_rawOut_sign_T_11 | _io_rawOut_sign_T_16; // @[MulAddRecFN.scala 289:50]
  assign io_rawOut_sExp = io_fromPreMul_CIsDominant ? $signed(CDom_sExp) : $signed(notCDom_sExp); // @[MulAddRecFN.scala 292:26]
  assign io_rawOut_sig = io_fromPreMul_CIsDominant ? CDom_sig : notCDom_sig; // @[MulAddRecFN.scala 293:25]
endmodule
module RoundAnyRawFNToRecFN_2(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [12:0] io_in_sExp,
  input  [55:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  output [64:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53]
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53]
  wire  roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53]
  wire  roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53]
  wire  roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53]
  wire  roundMagUp = roundingMode_min & io_in_sign | roundingMode_max & ~io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:42]
  wire  doShiftSigDown1 = io_in_sig[55]; // @[RoundAnyRawFNToRecFN.scala 118:61]
  wire [11:0] _roundMask_T_1 = ~io_in_sExp[11:0]; // @[primitives.scala 51:21]
  wire  roundMask_msb = _roundMask_T_1[11]; // @[primitives.scala 57:25]
  wire [10:0] roundMask_lsbs = _roundMask_T_1[10:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_1 = roundMask_lsbs[10]; // @[primitives.scala 57:25]
  wire [9:0] roundMask_lsbs_1 = roundMask_lsbs[9:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_2 = roundMask_lsbs_1[9]; // @[primitives.scala 57:25]
  wire [8:0] roundMask_lsbs_2 = roundMask_lsbs_1[8:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_3 = roundMask_lsbs_2[8]; // @[primitives.scala 57:25]
  wire [7:0] roundMask_lsbs_3 = roundMask_lsbs_2[7:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_4 = roundMask_lsbs_3[7]; // @[primitives.scala 57:25]
  wire [6:0] roundMask_lsbs_4 = roundMask_lsbs_3[6:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_5 = roundMask_lsbs_4[6]; // @[primitives.scala 57:25]
  wire [5:0] roundMask_lsbs_5 = roundMask_lsbs_4[5:0]; // @[primitives.scala 58:26]
  wire [64:0] roundMask_shift = 65'sh10000000000000000 >>> roundMask_lsbs_5; // @[primitives.scala 77:58]
  wire [31:0] _GEN_0 = {{16'd0}, roundMask_shift[44:29]}; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_7 = _GEN_0 & 32'hffff; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_9 = {roundMask_shift[28:13], 16'h0}; // @[Bitwise.scala 105:70]
  wire [31:0] _roundMask_T_11 = _roundMask_T_9 & 32'hffff0000; // @[Bitwise.scala 105:80]
  wire [31:0] _roundMask_T_12 = _roundMask_T_7 | _roundMask_T_11; // @[Bitwise.scala 105:39]
  wire [31:0] _GEN_1 = {{8'd0}, _roundMask_T_12[31:8]}; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_17 = _GEN_1 & 32'hff00ff; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_19 = {_roundMask_T_12[23:0], 8'h0}; // @[Bitwise.scala 105:70]
  wire [31:0] _roundMask_T_21 = _roundMask_T_19 & 32'hff00ff00; // @[Bitwise.scala 105:80]
  wire [31:0] _roundMask_T_22 = _roundMask_T_17 | _roundMask_T_21; // @[Bitwise.scala 105:39]
  wire [31:0] _GEN_2 = {{4'd0}, _roundMask_T_22[31:4]}; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_27 = _GEN_2 & 32'hf0f0f0f; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_29 = {_roundMask_T_22[27:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [31:0] _roundMask_T_31 = _roundMask_T_29 & 32'hf0f0f0f0; // @[Bitwise.scala 105:80]
  wire [31:0] _roundMask_T_32 = _roundMask_T_27 | _roundMask_T_31; // @[Bitwise.scala 105:39]
  wire [31:0] _GEN_3 = {{2'd0}, _roundMask_T_32[31:2]}; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_37 = _GEN_3 & 32'h33333333; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_39 = {_roundMask_T_32[29:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [31:0] _roundMask_T_41 = _roundMask_T_39 & 32'hcccccccc; // @[Bitwise.scala 105:80]
  wire [31:0] _roundMask_T_42 = _roundMask_T_37 | _roundMask_T_41; // @[Bitwise.scala 105:39]
  wire [31:0] _GEN_4 = {{1'd0}, _roundMask_T_42[31:1]}; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_47 = _GEN_4 & 32'h55555555; // @[Bitwise.scala 105:31]
  wire [31:0] _roundMask_T_49 = {_roundMask_T_42[30:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [31:0] _roundMask_T_51 = _roundMask_T_49 & 32'haaaaaaaa; // @[Bitwise.scala 105:80]
  wire [31:0] _roundMask_T_52 = _roundMask_T_47 | _roundMask_T_51; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_5 = {{8'd0}, roundMask_shift[60:53]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_58 = _GEN_5 & 16'hff; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_60 = {roundMask_shift[52:45], 8'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_62 = _roundMask_T_60 & 16'hff00; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_63 = _roundMask_T_58 | _roundMask_T_62; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_6 = {{4'd0}, _roundMask_T_63[15:4]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_68 = _GEN_6 & 16'hf0f; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_70 = {_roundMask_T_63[11:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_72 = _roundMask_T_70 & 16'hf0f0; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_73 = _roundMask_T_68 | _roundMask_T_72; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_7 = {{2'd0}, _roundMask_T_73[15:2]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_78 = _GEN_7 & 16'h3333; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_80 = {_roundMask_T_73[13:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_82 = _roundMask_T_80 & 16'hcccc; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_83 = _roundMask_T_78 | _roundMask_T_82; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_8 = {{1'd0}, _roundMask_T_83[15:1]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_88 = _GEN_8 & 16'h5555; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_90 = {_roundMask_T_83[14:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_92 = _roundMask_T_90 & 16'haaaa; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_93 = _roundMask_T_88 | _roundMask_T_92; // @[Bitwise.scala 105:39]
  wire [50:0] _roundMask_T_102 = {_roundMask_T_52,_roundMask_T_93,roundMask_shift[61],roundMask_shift[62],
    roundMask_shift[63]}; // @[Cat.scala 31:58]
  wire [50:0] _roundMask_T_103 = ~_roundMask_T_102; // @[primitives.scala 74:36]
  wire [50:0] _roundMask_T_104 = roundMask_msb_5 ? 51'h0 : _roundMask_T_103; // @[primitives.scala 74:21]
  wire [50:0] _roundMask_T_105 = ~_roundMask_T_104; // @[primitives.scala 74:17]
  wire [50:0] _roundMask_T_106 = ~_roundMask_T_105; // @[primitives.scala 74:36]
  wire [50:0] _roundMask_T_107 = roundMask_msb_4 ? 51'h0 : _roundMask_T_106; // @[primitives.scala 74:21]
  wire [50:0] _roundMask_T_108 = ~_roundMask_T_107; // @[primitives.scala 74:17]
  wire [50:0] _roundMask_T_109 = ~_roundMask_T_108; // @[primitives.scala 74:36]
  wire [50:0] _roundMask_T_110 = roundMask_msb_3 ? 51'h0 : _roundMask_T_109; // @[primitives.scala 74:21]
  wire [50:0] _roundMask_T_111 = ~_roundMask_T_110; // @[primitives.scala 74:17]
  wire [50:0] _roundMask_T_112 = ~_roundMask_T_111; // @[primitives.scala 74:36]
  wire [50:0] _roundMask_T_113 = roundMask_msb_2 ? 51'h0 : _roundMask_T_112; // @[primitives.scala 74:21]
  wire [50:0] _roundMask_T_114 = ~_roundMask_T_113; // @[primitives.scala 74:17]
  wire [53:0] _roundMask_T_115 = {_roundMask_T_114,3'h7}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_122 = {roundMask_shift[0],roundMask_shift[1],roundMask_shift[2]}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_123 = roundMask_msb_5 ? _roundMask_T_122 : 3'h0; // @[primitives.scala 61:24]
  wire [2:0] _roundMask_T_124 = roundMask_msb_4 ? _roundMask_T_123 : 3'h0; // @[primitives.scala 61:24]
  wire [2:0] _roundMask_T_125 = roundMask_msb_3 ? _roundMask_T_124 : 3'h0; // @[primitives.scala 61:24]
  wire [2:0] _roundMask_T_126 = roundMask_msb_2 ? _roundMask_T_125 : 3'h0; // @[primitives.scala 61:24]
  wire [53:0] _roundMask_T_127 = roundMask_msb_1 ? _roundMask_T_115 : {{51'd0}, _roundMask_T_126}; // @[primitives.scala 66:24]
  wire [53:0] _roundMask_T_128 = roundMask_msb ? _roundMask_T_127 : 54'h0; // @[primitives.scala 61:24]
  wire [53:0] _GEN_9 = {{53'd0}, doShiftSigDown1}; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [53:0] _roundMask_T_129 = _roundMask_T_128 | _GEN_9; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [55:0] roundMask = {_roundMask_T_129,2'h3}; // @[Cat.scala 31:58]
  wire [55:0] shiftedRoundMask = {1'h0,roundMask[55:1]}; // @[Cat.scala 31:58]
  wire [55:0] _roundPosMask_T = ~shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 161:28]
  wire [55:0] roundPosMask = _roundPosMask_T & roundMask; // @[RoundAnyRawFNToRecFN.scala 161:46]
  wire [55:0] _roundPosBit_T = io_in_sig & roundPosMask; // @[RoundAnyRawFNToRecFN.scala 162:40]
  wire  roundPosBit = |_roundPosBit_T; // @[RoundAnyRawFNToRecFN.scala 162:56]
  wire [55:0] _anyRoundExtra_T = io_in_sig & shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 163:42]
  wire  anyRoundExtra = |_anyRoundExtra_T; // @[RoundAnyRawFNToRecFN.scala 163:62]
  wire  anyRound = roundPosBit | anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 164:36]
  wire  _roundIncr_T = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38]
  wire  _roundIncr_T_1 = (roundingMode_near_even | roundingMode_near_maxMag) & roundPosBit; // @[RoundAnyRawFNToRecFN.scala 167:67]
  wire  _roundIncr_T_2 = roundMagUp & anyRound; // @[RoundAnyRawFNToRecFN.scala 169:29]
  wire  roundIncr = _roundIncr_T_1 | _roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 168:31]
  wire [55:0] _roundedSig_T = io_in_sig | roundMask; // @[RoundAnyRawFNToRecFN.scala 172:32]
  wire [54:0] _roundedSig_T_2 = _roundedSig_T[55:2] + 54'h1; // @[RoundAnyRawFNToRecFN.scala 172:49]
  wire  _roundedSig_T_4 = ~anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 174:30]
  wire [54:0] _roundedSig_T_7 = roundingMode_near_even & roundPosBit & _roundedSig_T_4 ? roundMask[55:1] : 55'h0; // @[RoundAnyRawFNToRecFN.scala 173:25]
  wire [54:0] _roundedSig_T_8 = ~_roundedSig_T_7; // @[RoundAnyRawFNToRecFN.scala 173:21]
  wire [54:0] _roundedSig_T_9 = _roundedSig_T_2 & _roundedSig_T_8; // @[RoundAnyRawFNToRecFN.scala 172:61]
  wire [55:0] _roundedSig_T_10 = ~roundMask; // @[RoundAnyRawFNToRecFN.scala 178:32]
  wire [55:0] _roundedSig_T_11 = io_in_sig & _roundedSig_T_10; // @[RoundAnyRawFNToRecFN.scala 178:30]
  wire [54:0] _roundedSig_T_15 = roundingMode_odd & anyRound ? roundPosMask[55:1] : 55'h0; // @[RoundAnyRawFNToRecFN.scala 179:24]
  wire [54:0] _GEN_10 = {{1'd0}, _roundedSig_T_11[55:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [54:0] _roundedSig_T_16 = _GEN_10 | _roundedSig_T_15; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [54:0] roundedSig = roundIncr ? _roundedSig_T_9 : _roundedSig_T_16; // @[RoundAnyRawFNToRecFN.scala 171:16]
  wire [2:0] _sRoundedExp_T_1 = {1'b0,$signed(roundedSig[54:53])}; // @[RoundAnyRawFNToRecFN.scala 183:69]
  wire [12:0] _GEN_11 = {{10{_sRoundedExp_T_1[2]}},_sRoundedExp_T_1}; // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [13:0] sRoundedExp = $signed(io_in_sExp) + $signed(_GEN_11); // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [11:0] common_expOut = sRoundedExp[11:0]; // @[RoundAnyRawFNToRecFN.scala 185:37]
  wire [51:0] common_fractOut = doShiftSigDown1 ? roundedSig[52:1] : roundedSig[51:0]; // @[RoundAnyRawFNToRecFN.scala 187:16]
  wire [3:0] _common_overflow_T = sRoundedExp[13:10]; // @[RoundAnyRawFNToRecFN.scala 194:30]
  wire  common_overflow = $signed(_common_overflow_T) >= 4'sh3; // @[RoundAnyRawFNToRecFN.scala 194:50]
  wire  common_totalUnderflow = $signed(sRoundedExp) < 14'sh3ce; // @[RoundAnyRawFNToRecFN.scala 198:31]
  wire  unboundedRange_roundPosBit = doShiftSigDown1 ? io_in_sig[2] : io_in_sig[1]; // @[RoundAnyRawFNToRecFN.scala 201:16]
  wire  unboundedRange_anyRound = doShiftSigDown1 & io_in_sig[2] | |io_in_sig[1:0]; // @[RoundAnyRawFNToRecFN.scala 203:49]
  wire  _unboundedRange_roundIncr_T_1 = _roundIncr_T & unboundedRange_roundPosBit; // @[RoundAnyRawFNToRecFN.scala 205:67]
  wire  _unboundedRange_roundIncr_T_2 = roundMagUp & unboundedRange_anyRound; // @[RoundAnyRawFNToRecFN.scala 207:29]
  wire  unboundedRange_roundIncr = _unboundedRange_roundIncr_T_1 | _unboundedRange_roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 206:46]
  wire  roundCarry = doShiftSigDown1 ? roundedSig[54] : roundedSig[53]; // @[RoundAnyRawFNToRecFN.scala 209:16]
  wire [1:0] _common_underflow_T = io_in_sExp[12:11]; // @[RoundAnyRawFNToRecFN.scala 218:48]
  wire  _common_underflow_T_5 = doShiftSigDown1 ? roundMask[3] : roundMask[2]; // @[RoundAnyRawFNToRecFN.scala 219:30]
  wire  _common_underflow_T_6 = anyRound & $signed(_common_underflow_T) <= 2'sh0 & _common_underflow_T_5; // @[RoundAnyRawFNToRecFN.scala 218:74]
  wire  _common_underflow_T_10 = doShiftSigDown1 ? roundMask[4] : roundMask[3]; // @[RoundAnyRawFNToRecFN.scala 221:39]
  wire  _common_underflow_T_11 = ~_common_underflow_T_10; // @[RoundAnyRawFNToRecFN.scala 221:34]
  wire  _common_underflow_T_13 = _common_underflow_T_11 & roundCarry; // @[RoundAnyRawFNToRecFN.scala 224:38]
  wire  _common_underflow_T_15 = _common_underflow_T_13 & roundPosBit & unboundedRange_roundIncr; // @[RoundAnyRawFNToRecFN.scala 225:60]
  wire  _common_underflow_T_16 = ~_common_underflow_T_15; // @[RoundAnyRawFNToRecFN.scala 220:27]
  wire  _common_underflow_T_17 = _common_underflow_T_6 & _common_underflow_T_16; // @[RoundAnyRawFNToRecFN.scala 219:76]
  wire  common_underflow = common_totalUnderflow | _common_underflow_T_17; // @[RoundAnyRawFNToRecFN.scala 215:40]
  wire  common_inexact = common_totalUnderflow | anyRound; // @[RoundAnyRawFNToRecFN.scala 228:49]
  wire  isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34]
  wire  commonCase = ~isNaNOut & ~io_in_isInf & ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:61]
  wire  overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32]
  wire  underflow = commonCase & common_underflow; // @[RoundAnyRawFNToRecFN.scala 237:32]
  wire  inexact = overflow | commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:28]
  wire  overflow_roundMagUp = _roundIncr_T | roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60]
  wire  pegMinNonzeroMagOut = commonCase & common_totalUnderflow & (roundMagUp | roundingMode_odd); // @[RoundAnyRawFNToRecFN.scala 243:45]
  wire  pegMaxFiniteMagOut = overflow & ~overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 244:39]
  wire  notNaN_isInfOut = io_in_isInf | overflow & overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 246:32]
  wire  signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22]
  wire [11:0] _expOut_T_1 = io_in_isZero | common_totalUnderflow ? 12'he00 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 251:18]
  wire [11:0] _expOut_T_2 = ~_expOut_T_1; // @[RoundAnyRawFNToRecFN.scala 251:14]
  wire [11:0] _expOut_T_3 = common_expOut & _expOut_T_2; // @[RoundAnyRawFNToRecFN.scala 250:24]
  wire [11:0] _expOut_T_5 = pegMinNonzeroMagOut ? 12'hc31 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 255:18]
  wire [11:0] _expOut_T_6 = ~_expOut_T_5; // @[RoundAnyRawFNToRecFN.scala 255:14]
  wire [11:0] _expOut_T_7 = _expOut_T_3 & _expOut_T_6; // @[RoundAnyRawFNToRecFN.scala 254:17]
  wire [11:0] _expOut_T_8 = pegMaxFiniteMagOut ? 12'h400 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 259:18]
  wire [11:0] _expOut_T_9 = ~_expOut_T_8; // @[RoundAnyRawFNToRecFN.scala 259:14]
  wire [11:0] _expOut_T_10 = _expOut_T_7 & _expOut_T_9; // @[RoundAnyRawFNToRecFN.scala 258:17]
  wire [11:0] _expOut_T_11 = notNaN_isInfOut ? 12'h200 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 263:18]
  wire [11:0] _expOut_T_12 = ~_expOut_T_11; // @[RoundAnyRawFNToRecFN.scala 263:14]
  wire [11:0] _expOut_T_13 = _expOut_T_10 & _expOut_T_12; // @[RoundAnyRawFNToRecFN.scala 262:17]
  wire [11:0] _expOut_T_14 = pegMinNonzeroMagOut ? 12'h3ce : 12'h0; // @[RoundAnyRawFNToRecFN.scala 267:16]
  wire [11:0] _expOut_T_15 = _expOut_T_13 | _expOut_T_14; // @[RoundAnyRawFNToRecFN.scala 266:18]
  wire [11:0] _expOut_T_16 = pegMaxFiniteMagOut ? 12'hbff : 12'h0; // @[RoundAnyRawFNToRecFN.scala 271:16]
  wire [11:0] _expOut_T_17 = _expOut_T_15 | _expOut_T_16; // @[RoundAnyRawFNToRecFN.scala 270:15]
  wire [11:0] _expOut_T_18 = notNaN_isInfOut ? 12'hc00 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 275:16]
  wire [11:0] _expOut_T_19 = _expOut_T_17 | _expOut_T_18; // @[RoundAnyRawFNToRecFN.scala 274:15]
  wire [11:0] _expOut_T_20 = isNaNOut ? 12'he00 : 12'h0; // @[RoundAnyRawFNToRecFN.scala 276:16]
  wire [11:0] expOut = _expOut_T_19 | _expOut_T_20; // @[RoundAnyRawFNToRecFN.scala 275:77]
  wire [51:0] _fractOut_T_2 = isNaNOut ? 52'h8000000000000 : 52'h0; // @[RoundAnyRawFNToRecFN.scala 279:16]
  wire [51:0] _fractOut_T_3 = isNaNOut | io_in_isZero | common_totalUnderflow ? _fractOut_T_2 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12]
  wire [51:0] _fractOut_T_5 = pegMaxFiniteMagOut ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 74:12]
  wire [51:0] fractOut = _fractOut_T_3 | _fractOut_T_5; // @[RoundAnyRawFNToRecFN.scala 281:11]
  wire [12:0] io_out_hi = {signOut,expOut}; // @[Cat.scala 31:58]
  wire [1:0] io_exceptionFlags_lo = {underflow,inexact}; // @[Cat.scala 31:58]
  wire [2:0] io_exceptionFlags_hi = {io_invalidExc,1'h0,overflow}; // @[Cat.scala 31:58]
  assign io_out = {io_out_hi,fractOut}; // @[Cat.scala 31:58]
  assign io_exceptionFlags = {io_exceptionFlags_hi,io_exceptionFlags_lo}; // @[Cat.scala 31:58]
endmodule
module RoundRawFNToRecFN(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [12:0] io_in_sExp,
  input  [55:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  output [64:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [12:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [55:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [64:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 307:15]
  RoundAnyRawFNToRecFN_2 roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 315:23]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 316:23]
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 310:44]
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 313:44]
endmodule
module MulAddRecFNPipe(
  input         clock,
  input         reset,
  input         io_validin,
  input  [1:0]  io_op,
  input  [64:0] io_a,
  input  [64:0] io_b,
  input  [64:0] io_c,
  input  [2:0]  io_roundingMode,
  output [64:0] io_out,
  output [4:0]  io_exceptionFlags,
  output        io_validout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [127:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  wire [1:0] mulAddRecFNToRaw_preMul_io_op; // @[FPU.scala 645:41]
  wire [64:0] mulAddRecFNToRaw_preMul_io_a; // @[FPU.scala 645:41]
  wire [64:0] mulAddRecFNToRaw_preMul_io_b; // @[FPU.scala 645:41]
  wire [64:0] mulAddRecFNToRaw_preMul_io_c; // @[FPU.scala 645:41]
  wire [52:0] mulAddRecFNToRaw_preMul_io_mulAddA; // @[FPU.scala 645:41]
  wire [52:0] mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 645:41]
  wire [105:0] mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[FPU.scala 645:41]
  wire [12:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[FPU.scala 645:41]
  wire [5:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[FPU.scala 645:41]
  wire [54:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC; // @[FPU.scala 646:42]
  wire [12:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant; // @[FPU.scala 646:42]
  wire [5:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist; // @[FPU.scala 646:42]
  wire [54:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC; // @[FPU.scala 646:42]
  wire [106:0] mulAddRecFNToRaw_postMul_io_mulAddResult; // @[FPU.scala 646:42]
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_invalidExc; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[FPU.scala 646:42]
  wire [12:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[FPU.scala 646:42]
  wire [55:0] mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[FPU.scala 646:42]
  wire  roundRawFNToRecFN_io_invalidExc; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isInf; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isZero; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_sign; // @[FPU.scala 673:35]
  wire [12:0] roundRawFNToRecFN_io_in_sExp; // @[FPU.scala 673:35]
  wire [55:0] roundRawFNToRecFN_io_in_sig; // @[FPU.scala 673:35]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[FPU.scala 673:35]
  wire [64:0] roundRawFNToRecFN_io_out; // @[FPU.scala 673:35]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 673:35]
  wire [105:0] _mulAddResult_T = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 654:45]
  wire [106:0] mulAddResult = _mulAddResult_T + mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 655:50]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC; // @[Reg.scala 16:16]
  reg [12:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant; // @[Reg.scala 16:16]
  reg [5:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist; // @[Reg.scala 16:16]
  reg [54:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC; // @[Reg.scala 16:16]
  reg [106:0] mulAddRecFNToRaw_postMul_io_mulAddResult_b; // @[Reg.scala 16:16]
  reg [2:0] mulAddRecFNToRaw_postMul_io_roundingMode_b; // @[Reg.scala 16:16]
  reg [2:0] roundingMode_stage0_b; // @[Reg.scala 16:16]
  reg  valid_stage0_v; // @[Valid.scala 127:22]
  reg  roundRawFNToRecFN_io_invalidExc_b; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isNaN; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isInf; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isZero; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_sign; // @[Reg.scala 16:16]
  reg [12:0] roundRawFNToRecFN_io_in_b_sExp; // @[Reg.scala 16:16]
  reg [55:0] roundRawFNToRecFN_io_in_b_sig; // @[Reg.scala 16:16]
  reg [2:0] roundRawFNToRecFN_io_roundingMode_b; // @[Reg.scala 16:16]
  reg  io_validout_v; // @[Valid.scala 127:22]
  MulAddRecFNToRaw_preMul mulAddRecFNToRaw_preMul ( // @[FPU.scala 645:41]
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );
  MulAddRecFNToRaw_postMul mulAddRecFNToRaw_postMul ( // @[FPU.scala 646:42]
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[FPU.scala 673:35]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundRawFNToRecFN_io_out; // @[FPU.scala 684:23]
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 685:23]
  assign io_validout = io_validout_v; // @[Valid.scala 122:21 123:17]
  assign mulAddRecFNToRaw_preMul_io_op = io_op; // @[FPU.scala 648:35]
  assign mulAddRecFNToRaw_preMul_io_a = io_a; // @[FPU.scala 649:35]
  assign mulAddRecFNToRaw_preMul_io_b = io_b; // @[FPU.scala 650:35]
  assign mulAddRecFNToRaw_preMul_io_c = io_c; // @[FPU.scala 651:35]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = mulAddRecFNToRaw_postMul_io_mulAddResult_b; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_roundingMode = mulAddRecFNToRaw_postMul_io_roundingMode_b; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_invalidExc = roundRawFNToRecFN_io_invalidExc_b; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isNaN = roundRawFNToRecFN_io_in_b_isNaN; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isInf = roundRawFNToRecFN_io_in_b_isInf; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isZero = roundRawFNToRecFN_io_in_b_isZero; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sign = roundRawFNToRecFN_io_in_b_sign; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sExp = roundRawFNToRecFN_io_in_b_sExp; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sig = roundRawFNToRecFN_io_in_b_sig; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_roundingMode = roundRawFNToRecFN_io_roundingMode_b; // @[Valid.scala 122:21 124:16]
  always @(posedge clock) begin
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_mulAddResult_b <= mulAddResult; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_roundingMode_b <= io_roundingMode; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      roundingMode_stage0_b <= io_roundingMode; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      valid_stage0_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      valid_stage0_v <= io_validin; // @[Valid.scala 127:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_invalidExc_b <= mulAddRecFNToRaw_postMul_io_invalidExc; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_roundingMode_b <= roundingMode_stage0_b; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_validout_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_validout_v <= valid_stage0_v; // @[Valid.scala 127:22]
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
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum = _RAND_10[12:0];
  _RAND_11 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist = _RAND_13[5:0];
  _RAND_14 = {2{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC = _RAND_14[54:0];
  _RAND_15 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC = _RAND_15[0:0];
  _RAND_16 = {4{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_mulAddResult_b = _RAND_16[106:0];
  _RAND_17 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_roundingMode_b = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  roundingMode_stage0_b = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  valid_stage0_v = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  roundRawFNToRecFN_io_invalidExc_b = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isNaN = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isInf = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isZero = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sign = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sExp = _RAND_25[12:0];
  _RAND_26 = {2{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sig = _RAND_26[55:0];
  _RAND_27 = {1{`RANDOM}};
  roundRawFNToRecFN_io_roundingMode_b = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  io_validout_v = _RAND_28[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPUFMAPipe(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren3,
  input         io_in_bits_swap23,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_fmaCmd,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  input  [64:0] io_in_bits_in3,
  output        io_out_valid,
  output [64:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [95:0] _RAND_3;
  reg [95:0] _RAND_4;
  reg [95:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [95:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  fma_clock; // @[FPU.scala 709:19]
  wire  fma_reset; // @[FPU.scala 709:19]
  wire  fma_io_validin; // @[FPU.scala 709:19]
  wire [1:0] fma_io_op; // @[FPU.scala 709:19]
  wire [64:0] fma_io_a; // @[FPU.scala 709:19]
  wire [64:0] fma_io_b; // @[FPU.scala 709:19]
  wire [64:0] fma_io_c; // @[FPU.scala 709:19]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 709:19]
  wire [64:0] fma_io_out; // @[FPU.scala 709:19]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 709:19]
  wire  fma_io_validout; // @[FPU.scala 709:19]
  reg  valid; // @[FPU.scala 697:18]
  reg [2:0] in_rm; // @[FPU.scala 698:15]
  reg [1:0] in_fmaCmd; // @[FPU.scala 698:15]
  reg [64:0] in_in1; // @[FPU.scala 698:15]
  reg [64:0] in_in2; // @[FPU.scala 698:15]
  reg [64:0] in_in3; // @[FPU.scala 698:15]
  wire [64:0] _zero_T = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 701:32]
  wire [64:0] zero = _zero_T & 65'h10000000000000000; // @[FPU.scala 701:50]
  wire [64:0] res_data_maskedNaN = fma_io_out & 65'h1efefffffffffffff; // @[FPU.scala 406:25]
  wire  _res_data_T_1 = &fma_io_out[63:61]; // @[FPU.scala 242:56]
  reg  io_out_v; // @[Valid.scala 127:22]
  reg [64:0] io_out_b_data; // @[Reg.scala 16:16]
  reg [4:0] io_out_b_exc; // @[Reg.scala 16:16]
  wire [4:0] res_exc = fma_io_exceptionFlags; // @[FPU.scala 718:17 720:11]
  MulAddRecFNPipe fma ( // @[FPU.scala 709:19]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags),
    .io_validout(fma_io_validout)
  );
  assign io_out_valid = io_out_v; // @[Valid.scala 122:21 123:17]
  assign io_out_bits_data = io_out_b_data; // @[Valid.scala 122:21 124:16]
  assign io_out_bits_exc = io_out_b_exc; // @[Valid.scala 122:21 124:16]
  assign fma_clock = clock;
  assign fma_reset = reset;
  assign fma_io_validin = valid; // @[FPU.scala 710:18]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 711:13]
  assign fma_io_a = in_in1; // @[FPU.scala 714:12]
  assign fma_io_b = in_in2; // @[FPU.scala 715:12]
  assign fma_io_c = in_in3; // @[FPU.scala 716:12]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 712:23]
  always @(posedge clock) begin
    valid <= io_in_valid; // @[FPU.scala 697:18]
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_rm <= io_in_bits_rm; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_fmaCmd <= io_in_bits_fmaCmd; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_in1 <= io_in_bits_in1; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      if (io_in_bits_swap23) begin // @[FPU.scala 705:23]
        in_in2 <= 65'h8000000000000000; // @[FPU.scala 705:32]
      end else begin
        in_in2 <= io_in_bits_in2; // @[FPU.scala 704:8]
      end
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      if (~(io_in_bits_ren3 | io_in_bits_swap23)) begin // @[FPU.scala 706:37]
        in_in3 <= zero; // @[FPU.scala 706:46]
      end else begin
        in_in3 <= io_in_bits_in3; // @[FPU.scala 704:8]
      end
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_out_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_out_v <= fma_io_validout; // @[Valid.scala 127:22]
    end
    if (fma_io_validout) begin // @[Reg.scala 17:18]
      if (_res_data_T_1) begin // @[FPU.scala 407:10]
        io_out_b_data <= res_data_maskedNaN;
      end else begin
        io_out_b_data <= fma_io_out;
      end
    end
    if (fma_io_validout) begin // @[Reg.scala 17:18]
      io_out_b_exc <= res_exc; // @[Reg.scala 17:22]
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
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  _RAND_3 = {3{`RANDOM}};
  in_in1 = _RAND_3[64:0];
  _RAND_4 = {3{`RANDOM}};
  in_in2 = _RAND_4[64:0];
  _RAND_5 = {3{`RANDOM}};
  in_in3 = _RAND_5[64:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_v = _RAND_6[0:0];
  _RAND_7 = {3{`RANDOM}};
  io_out_b_data = _RAND_7[64:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_b_exc = _RAND_8[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FMADecoder(
  input  [6:0] io_uopc,
  output [1:0] io_cmd
);
  wire [6:0] _decoder_T = io_uopc & 7'h27; // @[Decode.scala 14:65]
  wire  _decoder_T_1 = _decoder_T == 7'h0; // @[Decode.scala 14:121]
  wire [6:0] _decoder_T_2 = io_uopc & 7'h12; // @[Decode.scala 14:65]
  wire  _decoder_T_3 = _decoder_T_2 == 7'h2; // @[Decode.scala 14:121]
  wire [6:0] _decoder_T_4 = io_uopc & 7'hb; // @[Decode.scala 14:65]
  wire  _decoder_T_5 = _decoder_T_4 == 7'hb; // @[Decode.scala 14:121]
  wire [6:0] _decoder_T_6 = io_uopc & 7'he; // @[Decode.scala 14:65]
  wire  _decoder_T_7 = _decoder_T_6 == 7'he; // @[Decode.scala 14:121]
  wire  _decoder_T_11 = _decoder_T_1 | _decoder_T_3 | _decoder_T_5 | _decoder_T_7; // @[Decode.scala 15:30]
  wire [6:0] _decoder_T_12 = io_uopc & 7'h13; // @[Decode.scala 14:65]
  wire  _decoder_T_13 = _decoder_T_12 == 7'h0; // @[Decode.scala 14:121]
  wire  _decoder_T_15 = _decoder_T_12 == 7'h3; // @[Decode.scala 14:121]
  wire [6:0] _decoder_T_16 = io_uopc & 7'hf; // @[Decode.scala 14:65]
  wire  _decoder_T_17 = _decoder_T_16 == 7'hf; // @[Decode.scala 14:121]
  wire  _decoder_T_20 = _decoder_T_13 | _decoder_T_15 | _decoder_T_17; // @[Decode.scala 15:30]
  assign io_cmd = {_decoder_T_20,_decoder_T_11}; // @[Cat.scala 31:58]
endmodule
module MulAddRecFNToRaw_preMul_1(
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  output [23:0] io_mulAddA,
  output [23:0] io_mulAddB,
  output [47:0] io_mulAddC,
  output        io_toPostMul_isSigNaNAny,
  output        io_toPostMul_isNaNAOrB,
  output        io_toPostMul_isInfA,
  output        io_toPostMul_isZeroA,
  output        io_toPostMul_isInfB,
  output        io_toPostMul_isZeroB,
  output        io_toPostMul_signProd,
  output        io_toPostMul_isNaNC,
  output        io_toPostMul_isInfC,
  output        io_toPostMul_isZeroC,
  output [9:0]  io_toPostMul_sExpSum,
  output        io_toPostMul_doSubMags,
  output        io_toPostMul_CIsDominant,
  output [4:0]  io_toPostMul_CDom_CAlignDist,
  output [25:0] io_toPostMul_highAlignedSigC,
  output        io_toPostMul_bit0AlignedSigC
);
  wire [8:0] rawA_exp = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawA_isZero = rawA_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawA_isSpecial = rawA_exp[8:7] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawA__isNaN = rawA_isSpecial & rawA_exp[6]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawA__sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawA__sExp = {1'b0,$signed(rawA_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawA_out_sig_T = ~rawA_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [24:0] rawA__sig = {1'h0,_rawA_out_sig_T,io_a[22:0]}; // @[Cat.scala 31:58]
  wire [8:0] rawB_exp = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawB_isZero = rawB_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawB_isSpecial = rawB_exp[8:7] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawB__isNaN = rawB_isSpecial & rawB_exp[6]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawB__sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawB__sExp = {1'b0,$signed(rawB_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawB_out_sig_T = ~rawB_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [24:0] rawB__sig = {1'h0,_rawB_out_sig_T,io_b[22:0]}; // @[Cat.scala 31:58]
  wire [8:0] rawC_exp = io_c[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawC_isZero = rawC_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawC_isSpecial = rawC_exp[8:7] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawC__isNaN = rawC_isSpecial & rawC_exp[6]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawC__sign = io_c[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawC__sExp = {1'b0,$signed(rawC_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawC_out_sig_T = ~rawC_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [24:0] rawC__sig = {1'h0,_rawC_out_sig_T,io_c[22:0]}; // @[Cat.scala 31:58]
  wire  signProd = rawA__sign ^ rawB__sign ^ io_op[1]; // @[MulAddRecFN.scala 95:42]
  wire [10:0] _sExpAlignedProd_T = $signed(rawA__sExp) + $signed(rawB__sExp); // @[MulAddRecFN.scala 98:19]
  wire [10:0] sExpAlignedProd = $signed(_sExpAlignedProd_T) - 11'she5; // @[MulAddRecFN.scala 98:32]
  wire  doSubMags = signProd ^ rawC__sign ^ io_op[0]; // @[MulAddRecFN.scala 100:42]
  wire [10:0] _GEN_0 = {{1{rawC__sExp[9]}},rawC__sExp}; // @[MulAddRecFN.scala 104:42]
  wire [10:0] sNatCAlignDist = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 104:42]
  wire [9:0] posNatCAlignDist = sNatCAlignDist[9:0]; // @[MulAddRecFN.scala 105:42]
  wire  isMinCAlign = rawA_isZero | rawB_isZero | $signed(sNatCAlignDist) < 11'sh0; // @[MulAddRecFN.scala 106:50]
  wire  CIsDominant = _rawC_out_sig_T & (isMinCAlign | posNatCAlignDist <= 10'h18); // @[MulAddRecFN.scala 108:23]
  wire [6:0] _CAlignDist_T_2 = posNatCAlignDist < 10'h4a ? posNatCAlignDist[6:0] : 7'h4a; // @[MulAddRecFN.scala 112:16]
  wire [6:0] CAlignDist = isMinCAlign ? 7'h0 : _CAlignDist_T_2; // @[MulAddRecFN.scala 110:12]
  wire [24:0] _mainAlignedSigC_T = ~rawC__sig; // @[MulAddRecFN.scala 118:28]
  wire [24:0] _mainAlignedSigC_T_1 = doSubMags ? _mainAlignedSigC_T : rawC__sig; // @[MulAddRecFN.scala 118:16]
  wire [52:0] _mainAlignedSigC_T_3 = doSubMags ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 74:12]
  wire [77:0] _mainAlignedSigC_T_5 = {_mainAlignedSigC_T_1,_mainAlignedSigC_T_3}; // @[MulAddRecFN.scala 120:11]
  wire [77:0] mainAlignedSigC = $signed(_mainAlignedSigC_T_5) >>> CAlignDist; // @[MulAddRecFN.scala 120:17]
  wire [26:0] _reduced4CExtra_T = {rawC__sig, 2'h0}; // @[MulAddRecFN.scala 122:30]
  wire  reduced4CExtra_reducedVec_0 = |_reduced4CExtra_T[3:0]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_1 = |_reduced4CExtra_T[7:4]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_2 = |_reduced4CExtra_T[11:8]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_3 = |_reduced4CExtra_T[15:12]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_4 = |_reduced4CExtra_T[19:16]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_5 = |_reduced4CExtra_T[23:20]; // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_6 = |_reduced4CExtra_T[26:24]; // @[primitives.scala 124:57]
  wire [6:0] _reduced4CExtra_T_1 = {reduced4CExtra_reducedVec_6,reduced4CExtra_reducedVec_5,reduced4CExtra_reducedVec_4,
    reduced4CExtra_reducedVec_3,reduced4CExtra_reducedVec_2,reduced4CExtra_reducedVec_1,reduced4CExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [32:0] reduced4CExtra_shift = 33'sh100000000 >>> CAlignDist[6:2]; // @[primitives.scala 77:58]
  wire [5:0] _reduced4CExtra_T_18 = {reduced4CExtra_shift[14],reduced4CExtra_shift[15],reduced4CExtra_shift[16],
    reduced4CExtra_shift[17],reduced4CExtra_shift[18],reduced4CExtra_shift[19]}; // @[Cat.scala 31:58]
  wire [6:0] _GEN_1 = {{1'd0}, _reduced4CExtra_T_18}; // @[MulAddRecFN.scala 122:68]
  wire [6:0] _reduced4CExtra_T_19 = _reduced4CExtra_T_1 & _GEN_1; // @[MulAddRecFN.scala 122:68]
  wire  reduced4CExtra = |_reduced4CExtra_T_19; // @[MulAddRecFN.scala 130:11]
  wire  _alignedSigC_T_4 = &mainAlignedSigC[2:0] & ~reduced4CExtra; // @[MulAddRecFN.scala 134:44]
  wire  _alignedSigC_T_7 = |mainAlignedSigC[2:0] | reduced4CExtra; // @[MulAddRecFN.scala 135:44]
  wire  _alignedSigC_T_8 = doSubMags ? _alignedSigC_T_4 : _alignedSigC_T_7; // @[MulAddRecFN.scala 133:16]
  wire [74:0] alignedSigC_hi = mainAlignedSigC[77:3]; // @[Cat.scala 31:58]
  wire [75:0] alignedSigC = {alignedSigC_hi,_alignedSigC_T_8}; // @[Cat.scala 31:58]
  wire  _io_toPostMul_isSigNaNAny_T_2 = rawA__isNaN & ~rawA__sig[22]; // @[common.scala 82:46]
  wire  _io_toPostMul_isSigNaNAny_T_5 = rawB__isNaN & ~rawB__sig[22]; // @[common.scala 82:46]
  wire  _io_toPostMul_isSigNaNAny_T_9 = rawC__isNaN & ~rawC__sig[22]; // @[common.scala 82:46]
  wire [10:0] _io_toPostMul_sExpSum_T_2 = $signed(sExpAlignedProd) - 11'sh18; // @[MulAddRecFN.scala 158:53]
  wire [10:0] _io_toPostMul_sExpSum_T_3 = CIsDominant ? $signed({{1{rawC__sExp[9]}},rawC__sExp}) : $signed(
    _io_toPostMul_sExpSum_T_2); // @[MulAddRecFN.scala 158:12]
  assign io_mulAddA = rawA__sig[23:0]; // @[MulAddRecFN.scala 141:16]
  assign io_mulAddB = rawB__sig[23:0]; // @[MulAddRecFN.scala 142:16]
  assign io_mulAddC = alignedSigC[48:1]; // @[MulAddRecFN.scala 143:30]
  assign io_toPostMul_isSigNaNAny = _io_toPostMul_isSigNaNAny_T_2 | _io_toPostMul_isSigNaNAny_T_5 |
    _io_toPostMul_isSigNaNAny_T_9; // @[MulAddRecFN.scala 146:58]
  assign io_toPostMul_isNaNAOrB = rawA__isNaN | rawB__isNaN; // @[MulAddRecFN.scala 148:42]
  assign io_toPostMul_isInfA = rawA_isSpecial & ~rawA_exp[6]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroA = rawA_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_isInfB = rawB_isSpecial & ~rawB_exp[6]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroB = rawB_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_signProd = rawA__sign ^ rawB__sign ^ io_op[1]; // @[MulAddRecFN.scala 95:42]
  assign io_toPostMul_isNaNC = rawC_isSpecial & rawC_exp[6]; // @[rawFloatFromRecFN.scala 55:33]
  assign io_toPostMul_isInfC = rawC_isSpecial & ~rawC_exp[6]; // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroC = rawC_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_sExpSum = _io_toPostMul_sExpSum_T_3[9:0]; // @[MulAddRecFN.scala 157:28]
  assign io_toPostMul_doSubMags = signProd ^ rawC__sign ^ io_op[0]; // @[MulAddRecFN.scala 100:42]
  assign io_toPostMul_CIsDominant = _rawC_out_sig_T & (isMinCAlign | posNatCAlignDist <= 10'h18); // @[MulAddRecFN.scala 108:23]
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[4:0]; // @[MulAddRecFN.scala 161:47]
  assign io_toPostMul_highAlignedSigC = alignedSigC[74:49]; // @[MulAddRecFN.scala 163:20]
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0]; // @[MulAddRecFN.scala 164:48]
endmodule
module MulAddRecFNToRaw_postMul_1(
  input         io_fromPreMul_isSigNaNAny,
  input         io_fromPreMul_isNaNAOrB,
  input         io_fromPreMul_isInfA,
  input         io_fromPreMul_isZeroA,
  input         io_fromPreMul_isInfB,
  input         io_fromPreMul_isZeroB,
  input         io_fromPreMul_signProd,
  input         io_fromPreMul_isNaNC,
  input         io_fromPreMul_isInfC,
  input         io_fromPreMul_isZeroC,
  input  [9:0]  io_fromPreMul_sExpSum,
  input         io_fromPreMul_doSubMags,
  input         io_fromPreMul_CIsDominant,
  input  [4:0]  io_fromPreMul_CDom_CAlignDist,
  input  [25:0] io_fromPreMul_highAlignedSigC,
  input         io_fromPreMul_bit0AlignedSigC,
  input  [48:0] io_mulAddResult,
  input  [2:0]  io_roundingMode,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig
);
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[MulAddRecFN.scala 185:45]
  wire  CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 189:42]
  wire [25:0] _sigSum_T_2 = io_fromPreMul_highAlignedSigC + 26'h1; // @[MulAddRecFN.scala 192:47]
  wire [25:0] _sigSum_T_3 = io_mulAddResult[48] ? _sigSum_T_2 : io_fromPreMul_highAlignedSigC; // @[MulAddRecFN.scala 191:16]
  wire [74:0] sigSum = {_sigSum_T_3,io_mulAddResult[47:0],io_fromPreMul_bit0AlignedSigC}; // @[Cat.scala 31:58]
  wire [1:0] _CDom_sExp_T = {1'b0,$signed(io_fromPreMul_doSubMags)}; // @[MulAddRecFN.scala 202:69]
  wire [9:0] _GEN_0 = {{8{_CDom_sExp_T[1]}},_CDom_sExp_T}; // @[MulAddRecFN.scala 202:43]
  wire [9:0] CDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_0); // @[MulAddRecFN.scala 202:43]
  wire [49:0] _CDom_absSigSum_T_1 = ~sigSum[74:25]; // @[MulAddRecFN.scala 205:13]
  wire [49:0] _CDom_absSigSum_T_4 = {1'h0,io_fromPreMul_highAlignedSigC[25:24],sigSum[72:26]}; // @[Cat.scala 31:58]
  wire [49:0] CDom_absSigSum = io_fromPreMul_doSubMags ? _CDom_absSigSum_T_1 : _CDom_absSigSum_T_4; // @[MulAddRecFN.scala 204:12]
  wire [23:0] _CDom_absSigSumExtra_T_1 = ~sigSum[24:1]; // @[MulAddRecFN.scala 214:14]
  wire  _CDom_absSigSumExtra_T_2 = |_CDom_absSigSumExtra_T_1; // @[MulAddRecFN.scala 214:36]
  wire  _CDom_absSigSumExtra_T_4 = |sigSum[25:1]; // @[MulAddRecFN.scala 215:37]
  wire  CDom_absSigSumExtra = io_fromPreMul_doSubMags ? _CDom_absSigSumExtra_T_2 : _CDom_absSigSumExtra_T_4; // @[MulAddRecFN.scala 213:12]
  wire [80:0] _GEN_5 = {{31'd0}, CDom_absSigSum}; // @[MulAddRecFN.scala 218:24]
  wire [80:0] _CDom_mainSig_T = _GEN_5 << io_fromPreMul_CDom_CAlignDist; // @[MulAddRecFN.scala 218:24]
  wire [28:0] CDom_mainSig = _CDom_mainSig_T[49:21]; // @[MulAddRecFN.scala 218:56]
  wire [26:0] _CDom_reduced4SigExtra_T_1 = {CDom_absSigSum[23:0], 3'h0}; // @[MulAddRecFN.scala 221:53]
  wire  CDom_reduced4SigExtra_reducedVec_0 = |_CDom_reduced4SigExtra_T_1[3:0]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_1 = |_CDom_reduced4SigExtra_T_1[7:4]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_2 = |_CDom_reduced4SigExtra_T_1[11:8]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_3 = |_CDom_reduced4SigExtra_T_1[15:12]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_4 = |_CDom_reduced4SigExtra_T_1[19:16]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_5 = |_CDom_reduced4SigExtra_T_1[23:20]; // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_6 = |_CDom_reduced4SigExtra_T_1[26:24]; // @[primitives.scala 124:57]
  wire [6:0] _CDom_reduced4SigExtra_T_2 = {CDom_reduced4SigExtra_reducedVec_6,CDom_reduced4SigExtra_reducedVec_5,
    CDom_reduced4SigExtra_reducedVec_4,CDom_reduced4SigExtra_reducedVec_3,CDom_reduced4SigExtra_reducedVec_2,
    CDom_reduced4SigExtra_reducedVec_1,CDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [2:0] _CDom_reduced4SigExtra_T_4 = ~io_fromPreMul_CDom_CAlignDist[4:2]; // @[primitives.scala 51:21]
  wire [8:0] CDom_reduced4SigExtra_shift = 9'sh100 >>> _CDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [5:0] _CDom_reduced4SigExtra_T_20 = {CDom_reduced4SigExtra_shift[1],CDom_reduced4SigExtra_shift[2],
    CDom_reduced4SigExtra_shift[3],CDom_reduced4SigExtra_shift[4],CDom_reduced4SigExtra_shift[5],
    CDom_reduced4SigExtra_shift[6]}; // @[Cat.scala 31:58]
  wire [6:0] _GEN_1 = {{1'd0}, _CDom_reduced4SigExtra_T_20}; // @[MulAddRecFN.scala 221:72]
  wire [6:0] _CDom_reduced4SigExtra_T_21 = _CDom_reduced4SigExtra_T_2 & _GEN_1; // @[MulAddRecFN.scala 221:72]
  wire  CDom_reduced4SigExtra = |_CDom_reduced4SigExtra_T_21; // @[MulAddRecFN.scala 222:73]
  wire  _CDom_sig_T_4 = |CDom_mainSig[2:0] | CDom_reduced4SigExtra | CDom_absSigSumExtra; // @[MulAddRecFN.scala 225:61]
  wire [26:0] CDom_sig = {CDom_mainSig[28:3],_CDom_sig_T_4}; // @[Cat.scala 31:58]
  wire  notCDom_signSigSum = sigSum[51]; // @[MulAddRecFN.scala 231:36]
  wire [50:0] _notCDom_absSigSum_T_1 = ~sigSum[50:0]; // @[MulAddRecFN.scala 234:13]
  wire [50:0] _GEN_2 = {{50'd0}, io_fromPreMul_doSubMags}; // @[MulAddRecFN.scala 235:41]
  wire [50:0] _notCDom_absSigSum_T_4 = sigSum[50:0] + _GEN_2; // @[MulAddRecFN.scala 235:41]
  wire [50:0] notCDom_absSigSum = notCDom_signSigSum ? _notCDom_absSigSum_T_1 : _notCDom_absSigSum_T_4; // @[MulAddRecFN.scala 233:12]
  wire  notCDom_reduced2AbsSigSum_reducedVec_0 = |notCDom_absSigSum[1:0]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_1 = |notCDom_absSigSum[3:2]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_2 = |notCDom_absSigSum[5:4]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_3 = |notCDom_absSigSum[7:6]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_4 = |notCDom_absSigSum[9:8]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_5 = |notCDom_absSigSum[11:10]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_6 = |notCDom_absSigSum[13:12]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_7 = |notCDom_absSigSum[15:14]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_8 = |notCDom_absSigSum[17:16]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_9 = |notCDom_absSigSum[19:18]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_10 = |notCDom_absSigSum[21:20]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_11 = |notCDom_absSigSum[23:22]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_12 = |notCDom_absSigSum[25:24]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_13 = |notCDom_absSigSum[27:26]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_14 = |notCDom_absSigSum[29:28]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_15 = |notCDom_absSigSum[31:30]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_16 = |notCDom_absSigSum[33:32]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_17 = |notCDom_absSigSum[35:34]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_18 = |notCDom_absSigSum[37:36]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_19 = |notCDom_absSigSum[39:38]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_20 = |notCDom_absSigSum[41:40]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_21 = |notCDom_absSigSum[43:42]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_22 = |notCDom_absSigSum[45:44]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_23 = |notCDom_absSigSum[47:46]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_24 = |notCDom_absSigSum[49:48]; // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_25 = |notCDom_absSigSum[50]; // @[primitives.scala 107:57]
  wire [5:0] notCDom_reduced2AbsSigSum_lo_lo = {notCDom_reduced2AbsSigSum_reducedVec_5,
    notCDom_reduced2AbsSigSum_reducedVec_4,notCDom_reduced2AbsSigSum_reducedVec_3,notCDom_reduced2AbsSigSum_reducedVec_2
    ,notCDom_reduced2AbsSigSum_reducedVec_1,notCDom_reduced2AbsSigSum_reducedVec_0}; // @[primitives.scala 108:20]
  wire [12:0] notCDom_reduced2AbsSigSum_lo = {notCDom_reduced2AbsSigSum_reducedVec_12,
    notCDom_reduced2AbsSigSum_reducedVec_11,notCDom_reduced2AbsSigSum_reducedVec_10,
    notCDom_reduced2AbsSigSum_reducedVec_9,notCDom_reduced2AbsSigSum_reducedVec_8,notCDom_reduced2AbsSigSum_reducedVec_7
    ,notCDom_reduced2AbsSigSum_reducedVec_6,notCDom_reduced2AbsSigSum_lo_lo}; // @[primitives.scala 108:20]
  wire [5:0] notCDom_reduced2AbsSigSum_hi_lo = {notCDom_reduced2AbsSigSum_reducedVec_18,
    notCDom_reduced2AbsSigSum_reducedVec_17,notCDom_reduced2AbsSigSum_reducedVec_16,
    notCDom_reduced2AbsSigSum_reducedVec_15,notCDom_reduced2AbsSigSum_reducedVec_14,
    notCDom_reduced2AbsSigSum_reducedVec_13}; // @[primitives.scala 108:20]
  wire [25:0] notCDom_reduced2AbsSigSum = {notCDom_reduced2AbsSigSum_reducedVec_25,
    notCDom_reduced2AbsSigSum_reducedVec_24,notCDom_reduced2AbsSigSum_reducedVec_23,
    notCDom_reduced2AbsSigSum_reducedVec_22,notCDom_reduced2AbsSigSum_reducedVec_21,
    notCDom_reduced2AbsSigSum_reducedVec_20,notCDom_reduced2AbsSigSum_reducedVec_19,notCDom_reduced2AbsSigSum_hi_lo,
    notCDom_reduced2AbsSigSum_lo}; // @[primitives.scala 108:20]
  wire [4:0] _notCDom_normDistReduced2_T_26 = notCDom_reduced2AbsSigSum[1] ? 5'h18 : 5'h19; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_27 = notCDom_reduced2AbsSigSum[2] ? 5'h17 : _notCDom_normDistReduced2_T_26; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_28 = notCDom_reduced2AbsSigSum[3] ? 5'h16 : _notCDom_normDistReduced2_T_27; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_29 = notCDom_reduced2AbsSigSum[4] ? 5'h15 : _notCDom_normDistReduced2_T_28; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_30 = notCDom_reduced2AbsSigSum[5] ? 5'h14 : _notCDom_normDistReduced2_T_29; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_31 = notCDom_reduced2AbsSigSum[6] ? 5'h13 : _notCDom_normDistReduced2_T_30; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_32 = notCDom_reduced2AbsSigSum[7] ? 5'h12 : _notCDom_normDistReduced2_T_31; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_33 = notCDom_reduced2AbsSigSum[8] ? 5'h11 : _notCDom_normDistReduced2_T_32; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_34 = notCDom_reduced2AbsSigSum[9] ? 5'h10 : _notCDom_normDistReduced2_T_33; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_35 = notCDom_reduced2AbsSigSum[10] ? 5'hf : _notCDom_normDistReduced2_T_34; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_36 = notCDom_reduced2AbsSigSum[11] ? 5'he : _notCDom_normDistReduced2_T_35; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_37 = notCDom_reduced2AbsSigSum[12] ? 5'hd : _notCDom_normDistReduced2_T_36; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_38 = notCDom_reduced2AbsSigSum[13] ? 5'hc : _notCDom_normDistReduced2_T_37; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_39 = notCDom_reduced2AbsSigSum[14] ? 5'hb : _notCDom_normDistReduced2_T_38; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_40 = notCDom_reduced2AbsSigSum[15] ? 5'ha : _notCDom_normDistReduced2_T_39; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_41 = notCDom_reduced2AbsSigSum[16] ? 5'h9 : _notCDom_normDistReduced2_T_40; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_42 = notCDom_reduced2AbsSigSum[17] ? 5'h8 : _notCDom_normDistReduced2_T_41; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_43 = notCDom_reduced2AbsSigSum[18] ? 5'h7 : _notCDom_normDistReduced2_T_42; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_44 = notCDom_reduced2AbsSigSum[19] ? 5'h6 : _notCDom_normDistReduced2_T_43; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_45 = notCDom_reduced2AbsSigSum[20] ? 5'h5 : _notCDom_normDistReduced2_T_44; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_46 = notCDom_reduced2AbsSigSum[21] ? 5'h4 : _notCDom_normDistReduced2_T_45; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_47 = notCDom_reduced2AbsSigSum[22] ? 5'h3 : _notCDom_normDistReduced2_T_46; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_48 = notCDom_reduced2AbsSigSum[23] ? 5'h2 : _notCDom_normDistReduced2_T_47; // @[Mux.scala 47:70]
  wire [4:0] _notCDom_normDistReduced2_T_49 = notCDom_reduced2AbsSigSum[24] ? 5'h1 : _notCDom_normDistReduced2_T_48; // @[Mux.scala 47:70]
  wire [4:0] notCDom_normDistReduced2 = notCDom_reduced2AbsSigSum[25] ? 5'h0 : _notCDom_normDistReduced2_T_49; // @[Mux.scala 47:70]
  wire [5:0] notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0}; // @[MulAddRecFN.scala 239:56]
  wire [6:0] _notCDom_sExp_T = {1'b0,$signed(notCDom_nearNormDist)}; // @[MulAddRecFN.scala 240:69]
  wire [9:0] _GEN_3 = {{3{_notCDom_sExp_T[6]}},_notCDom_sExp_T}; // @[MulAddRecFN.scala 240:46]
  wire [9:0] notCDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_3); // @[MulAddRecFN.scala 240:46]
  wire [113:0] _GEN_6 = {{63'd0}, notCDom_absSigSum}; // @[MulAddRecFN.scala 242:27]
  wire [113:0] _notCDom_mainSig_T = _GEN_6 << notCDom_nearNormDist; // @[MulAddRecFN.scala 242:27]
  wire [28:0] notCDom_mainSig = _notCDom_mainSig_T[51:23]; // @[MulAddRecFN.scala 242:50]
  wire  notCDom_reduced4SigExtra_reducedVec_0 = |notCDom_reduced2AbsSigSum[1:0]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_1 = |notCDom_reduced2AbsSigSum[3:2]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_2 = |notCDom_reduced2AbsSigSum[5:4]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_3 = |notCDom_reduced2AbsSigSum[7:6]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_4 = |notCDom_reduced2AbsSigSum[9:8]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_5 = |notCDom_reduced2AbsSigSum[11:10]; // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_6 = |notCDom_reduced2AbsSigSum[12]; // @[primitives.scala 107:57]
  wire [6:0] _notCDom_reduced4SigExtra_T_2 = {notCDom_reduced4SigExtra_reducedVec_6,
    notCDom_reduced4SigExtra_reducedVec_5,notCDom_reduced4SigExtra_reducedVec_4,notCDom_reduced4SigExtra_reducedVec_3,
    notCDom_reduced4SigExtra_reducedVec_2,notCDom_reduced4SigExtra_reducedVec_1,notCDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 108:20]
  wire [3:0] _notCDom_reduced4SigExtra_T_4 = ~notCDom_normDistReduced2[4:1]; // @[primitives.scala 51:21]
  wire [16:0] notCDom_reduced4SigExtra_shift = 17'sh10000 >>> _notCDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [5:0] _notCDom_reduced4SigExtra_T_20 = {notCDom_reduced4SigExtra_shift[1],notCDom_reduced4SigExtra_shift[2],
    notCDom_reduced4SigExtra_shift[3],notCDom_reduced4SigExtra_shift[4],notCDom_reduced4SigExtra_shift[5],
    notCDom_reduced4SigExtra_shift[6]}; // @[Cat.scala 31:58]
  wire [6:0] _GEN_4 = {{1'd0}, _notCDom_reduced4SigExtra_T_20}; // @[MulAddRecFN.scala 246:78]
  wire [6:0] _notCDom_reduced4SigExtra_T_21 = _notCDom_reduced4SigExtra_T_2 & _GEN_4; // @[MulAddRecFN.scala 246:78]
  wire  notCDom_reduced4SigExtra = |_notCDom_reduced4SigExtra_T_21; // @[MulAddRecFN.scala 248:11]
  wire  _notCDom_sig_T_3 = |notCDom_mainSig[2:0] | notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 251:39]
  wire [26:0] notCDom_sig = {notCDom_mainSig[28:3],_notCDom_sig_T_3}; // @[Cat.scala 31:58]
  wire  notCDom_completeCancellation = notCDom_sig[26:25] == 2'h0; // @[MulAddRecFN.scala 254:50]
  wire  _notCDom_sign_T = io_fromPreMul_signProd ^ notCDom_signSigSum; // @[MulAddRecFN.scala 258:36]
  wire  notCDom_sign = notCDom_completeCancellation ? roundingMode_min : _notCDom_sign_T; // @[MulAddRecFN.scala 256:12]
  wire  notNaN_isInfProd = io_fromPreMul_isInfA | io_fromPreMul_isInfB; // @[MulAddRecFN.scala 263:49]
  wire  notNaN_isInfOut = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 264:44]
  wire  notNaN_addZeros = (io_fromPreMul_isZeroA | io_fromPreMul_isZeroB) & io_fromPreMul_isZeroC; // @[MulAddRecFN.scala 266:58]
  wire  _io_invalidExc_T = io_fromPreMul_isInfA & io_fromPreMul_isZeroB; // @[MulAddRecFN.scala 271:31]
  wire  _io_invalidExc_T_1 = io_fromPreMul_isSigNaNAny | _io_invalidExc_T; // @[MulAddRecFN.scala 270:35]
  wire  _io_invalidExc_T_2 = io_fromPreMul_isZeroA & io_fromPreMul_isInfB; // @[MulAddRecFN.scala 272:32]
  wire  _io_invalidExc_T_3 = _io_invalidExc_T_1 | _io_invalidExc_T_2; // @[MulAddRecFN.scala 271:57]
  wire  _io_invalidExc_T_6 = ~io_fromPreMul_isNaNAOrB & notNaN_isInfProd; // @[MulAddRecFN.scala 273:36]
  wire  _io_invalidExc_T_7 = _io_invalidExc_T_6 & io_fromPreMul_isInfC; // @[MulAddRecFN.scala 274:61]
  wire  _io_invalidExc_T_8 = _io_invalidExc_T_7 & io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 275:35]
  wire  _io_rawOut_isZero_T_1 = ~io_fromPreMul_CIsDominant & notCDom_completeCancellation; // @[MulAddRecFN.scala 282:42]
  wire  _io_rawOut_sign_T_1 = io_fromPreMul_isInfC & CDom_sign; // @[MulAddRecFN.scala 285:31]
  wire  _io_rawOut_sign_T_2 = notNaN_isInfProd & io_fromPreMul_signProd | _io_rawOut_sign_T_1; // @[MulAddRecFN.scala 284:54]
  wire  _io_rawOut_sign_T_5 = notNaN_addZeros & ~roundingMode_min & io_fromPreMul_signProd; // @[MulAddRecFN.scala 286:48]
  wire  _io_rawOut_sign_T_6 = _io_rawOut_sign_T_5 & CDom_sign; // @[MulAddRecFN.scala 287:36]
  wire  _io_rawOut_sign_T_7 = _io_rawOut_sign_T_2 | _io_rawOut_sign_T_6; // @[MulAddRecFN.scala 285:43]
  wire  _io_rawOut_sign_T_9 = io_fromPreMul_signProd | CDom_sign; // @[MulAddRecFN.scala 289:37]
  wire  _io_rawOut_sign_T_10 = notNaN_addZeros & roundingMode_min & _io_rawOut_sign_T_9; // @[MulAddRecFN.scala 288:46]
  wire  _io_rawOut_sign_T_11 = _io_rawOut_sign_T_7 | _io_rawOut_sign_T_10; // @[MulAddRecFN.scala 287:48]
  wire  _io_rawOut_sign_T_15 = io_fromPreMul_CIsDominant ? CDom_sign : notCDom_sign; // @[MulAddRecFN.scala 291:17]
  wire  _io_rawOut_sign_T_16 = ~notNaN_isInfOut & ~notNaN_addZeros & _io_rawOut_sign_T_15; // @[MulAddRecFN.scala 290:49]
  assign io_invalidExc = _io_invalidExc_T_3 | _io_invalidExc_T_8; // @[MulAddRecFN.scala 272:57]
  assign io_rawOut_isNaN = io_fromPreMul_isNaNAOrB | io_fromPreMul_isNaNC; // @[MulAddRecFN.scala 277:48]
  assign io_rawOut_isInf = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 264:44]
  assign io_rawOut_isZero = notNaN_addZeros | _io_rawOut_isZero_T_1; // @[MulAddRecFN.scala 281:25]
  assign io_rawOut_sign = _io_rawOut_sign_T_11 | _io_rawOut_sign_T_16; // @[MulAddRecFN.scala 289:50]
  assign io_rawOut_sExp = io_fromPreMul_CIsDominant ? $signed(CDom_sExp) : $signed(notCDom_sExp); // @[MulAddRecFN.scala 292:26]
  assign io_rawOut_sig = io_fromPreMul_CIsDominant ? CDom_sig : notCDom_sig; // @[MulAddRecFN.scala 293:25]
endmodule
module RoundAnyRawFNToRecFN_3(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53]
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53]
  wire  roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53]
  wire  roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53]
  wire  roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53]
  wire  roundMagUp = roundingMode_min & io_in_sign | roundingMode_max & ~io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:42]
  wire  doShiftSigDown1 = io_in_sig[26]; // @[RoundAnyRawFNToRecFN.scala 118:61]
  wire [8:0] _roundMask_T_1 = ~io_in_sExp[8:0]; // @[primitives.scala 51:21]
  wire  roundMask_msb = _roundMask_T_1[8]; // @[primitives.scala 57:25]
  wire [7:0] roundMask_lsbs = _roundMask_T_1[7:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_1 = roundMask_lsbs[7]; // @[primitives.scala 57:25]
  wire [6:0] roundMask_lsbs_1 = roundMask_lsbs[6:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_2 = roundMask_lsbs_1[6]; // @[primitives.scala 57:25]
  wire [5:0] roundMask_lsbs_2 = roundMask_lsbs_1[5:0]; // @[primitives.scala 58:26]
  wire [64:0] roundMask_shift = 65'sh10000000000000000 >>> roundMask_lsbs_2; // @[primitives.scala 77:58]
  wire [15:0] _GEN_0 = {{8'd0}, roundMask_shift[57:50]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_7 = _GEN_0 & 16'hff; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_9 = {roundMask_shift[49:42], 8'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_11 = _roundMask_T_9 & 16'hff00; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_12 = _roundMask_T_7 | _roundMask_T_11; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_1 = {{4'd0}, _roundMask_T_12[15:4]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_17 = _GEN_1 & 16'hf0f; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_19 = {_roundMask_T_12[11:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_21 = _roundMask_T_19 & 16'hf0f0; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_22 = _roundMask_T_17 | _roundMask_T_21; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_2 = {{2'd0}, _roundMask_T_22[15:2]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_27 = _GEN_2 & 16'h3333; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_29 = {_roundMask_T_22[13:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_31 = _roundMask_T_29 & 16'hcccc; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_32 = _roundMask_T_27 | _roundMask_T_31; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_3 = {{1'd0}, _roundMask_T_32[15:1]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_37 = _GEN_3 & 16'h5555; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_39 = {_roundMask_T_32[14:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_41 = _roundMask_T_39 & 16'haaaa; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_42 = _roundMask_T_37 | _roundMask_T_41; // @[Bitwise.scala 105:39]
  wire [21:0] _roundMask_T_59 = {_roundMask_T_42,roundMask_shift[58],roundMask_shift[59],roundMask_shift[60],
    roundMask_shift[61],roundMask_shift[62],roundMask_shift[63]}; // @[Cat.scala 31:58]
  wire [21:0] _roundMask_T_60 = ~_roundMask_T_59; // @[primitives.scala 74:36]
  wire [21:0] _roundMask_T_61 = roundMask_msb_2 ? 22'h0 : _roundMask_T_60; // @[primitives.scala 74:21]
  wire [21:0] _roundMask_T_62 = ~_roundMask_T_61; // @[primitives.scala 74:17]
  wire [24:0] _roundMask_T_63 = {_roundMask_T_62,3'h7}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_70 = {roundMask_shift[0],roundMask_shift[1],roundMask_shift[2]}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_71 = roundMask_msb_2 ? _roundMask_T_70 : 3'h0; // @[primitives.scala 61:24]
  wire [24:0] _roundMask_T_72 = roundMask_msb_1 ? _roundMask_T_63 : {{22'd0}, _roundMask_T_71}; // @[primitives.scala 66:24]
  wire [24:0] _roundMask_T_73 = roundMask_msb ? _roundMask_T_72 : 25'h0; // @[primitives.scala 61:24]
  wire [24:0] _GEN_4 = {{24'd0}, doShiftSigDown1}; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [24:0] _roundMask_T_74 = _roundMask_T_73 | _GEN_4; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [26:0] roundMask = {_roundMask_T_74,2'h3}; // @[Cat.scala 31:58]
  wire [26:0] shiftedRoundMask = {1'h0,roundMask[26:1]}; // @[Cat.scala 31:58]
  wire [26:0] _roundPosMask_T = ~shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 161:28]
  wire [26:0] roundPosMask = _roundPosMask_T & roundMask; // @[RoundAnyRawFNToRecFN.scala 161:46]
  wire [26:0] _roundPosBit_T = io_in_sig & roundPosMask; // @[RoundAnyRawFNToRecFN.scala 162:40]
  wire  roundPosBit = |_roundPosBit_T; // @[RoundAnyRawFNToRecFN.scala 162:56]
  wire [26:0] _anyRoundExtra_T = io_in_sig & shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 163:42]
  wire  anyRoundExtra = |_anyRoundExtra_T; // @[RoundAnyRawFNToRecFN.scala 163:62]
  wire  anyRound = roundPosBit | anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 164:36]
  wire  _roundIncr_T = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38]
  wire  _roundIncr_T_1 = (roundingMode_near_even | roundingMode_near_maxMag) & roundPosBit; // @[RoundAnyRawFNToRecFN.scala 167:67]
  wire  _roundIncr_T_2 = roundMagUp & anyRound; // @[RoundAnyRawFNToRecFN.scala 169:29]
  wire  roundIncr = _roundIncr_T_1 | _roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 168:31]
  wire [26:0] _roundedSig_T = io_in_sig | roundMask; // @[RoundAnyRawFNToRecFN.scala 172:32]
  wire [25:0] _roundedSig_T_2 = _roundedSig_T[26:2] + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49]
  wire  _roundedSig_T_4 = ~anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 174:30]
  wire [25:0] _roundedSig_T_7 = roundingMode_near_even & roundPosBit & _roundedSig_T_4 ? roundMask[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25]
  wire [25:0] _roundedSig_T_8 = ~_roundedSig_T_7; // @[RoundAnyRawFNToRecFN.scala 173:21]
  wire [25:0] _roundedSig_T_9 = _roundedSig_T_2 & _roundedSig_T_8; // @[RoundAnyRawFNToRecFN.scala 172:61]
  wire [26:0] _roundedSig_T_10 = ~roundMask; // @[RoundAnyRawFNToRecFN.scala 178:32]
  wire [26:0] _roundedSig_T_11 = io_in_sig & _roundedSig_T_10; // @[RoundAnyRawFNToRecFN.scala 178:30]
  wire [25:0] _roundedSig_T_15 = roundingMode_odd & anyRound ? roundPosMask[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24]
  wire [25:0] _GEN_5 = {{1'd0}, _roundedSig_T_11[26:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [25:0] _roundedSig_T_16 = _GEN_5 | _roundedSig_T_15; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [25:0] roundedSig = roundIncr ? _roundedSig_T_9 : _roundedSig_T_16; // @[RoundAnyRawFNToRecFN.scala 171:16]
  wire [2:0] _sRoundedExp_T_1 = {1'b0,$signed(roundedSig[25:24])}; // @[RoundAnyRawFNToRecFN.scala 183:69]
  wire [9:0] _GEN_6 = {{7{_sRoundedExp_T_1[2]}},_sRoundedExp_T_1}; // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [10:0] sRoundedExp = $signed(io_in_sExp) + $signed(_GEN_6); // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [8:0] common_expOut = sRoundedExp[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37]
  wire [22:0] common_fractOut = doShiftSigDown1 ? roundedSig[23:1] : roundedSig[22:0]; // @[RoundAnyRawFNToRecFN.scala 187:16]
  wire [3:0] _common_overflow_T = sRoundedExp[10:7]; // @[RoundAnyRawFNToRecFN.scala 194:30]
  wire  common_overflow = $signed(_common_overflow_T) >= 4'sh3; // @[RoundAnyRawFNToRecFN.scala 194:50]
  wire  common_totalUnderflow = $signed(sRoundedExp) < 11'sh6b; // @[RoundAnyRawFNToRecFN.scala 198:31]
  wire  unboundedRange_roundPosBit = doShiftSigDown1 ? io_in_sig[2] : io_in_sig[1]; // @[RoundAnyRawFNToRecFN.scala 201:16]
  wire  unboundedRange_anyRound = doShiftSigDown1 & io_in_sig[2] | |io_in_sig[1:0]; // @[RoundAnyRawFNToRecFN.scala 203:49]
  wire  _unboundedRange_roundIncr_T_1 = _roundIncr_T & unboundedRange_roundPosBit; // @[RoundAnyRawFNToRecFN.scala 205:67]
  wire  _unboundedRange_roundIncr_T_2 = roundMagUp & unboundedRange_anyRound; // @[RoundAnyRawFNToRecFN.scala 207:29]
  wire  unboundedRange_roundIncr = _unboundedRange_roundIncr_T_1 | _unboundedRange_roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 206:46]
  wire  roundCarry = doShiftSigDown1 ? roundedSig[25] : roundedSig[24]; // @[RoundAnyRawFNToRecFN.scala 209:16]
  wire [1:0] _common_underflow_T = io_in_sExp[9:8]; // @[RoundAnyRawFNToRecFN.scala 218:48]
  wire  _common_underflow_T_5 = doShiftSigDown1 ? roundMask[3] : roundMask[2]; // @[RoundAnyRawFNToRecFN.scala 219:30]
  wire  _common_underflow_T_6 = anyRound & $signed(_common_underflow_T) <= 2'sh0 & _common_underflow_T_5; // @[RoundAnyRawFNToRecFN.scala 218:74]
  wire  _common_underflow_T_10 = doShiftSigDown1 ? roundMask[4] : roundMask[3]; // @[RoundAnyRawFNToRecFN.scala 221:39]
  wire  _common_underflow_T_11 = ~_common_underflow_T_10; // @[RoundAnyRawFNToRecFN.scala 221:34]
  wire  _common_underflow_T_13 = _common_underflow_T_11 & roundCarry; // @[RoundAnyRawFNToRecFN.scala 224:38]
  wire  _common_underflow_T_15 = _common_underflow_T_13 & roundPosBit & unboundedRange_roundIncr; // @[RoundAnyRawFNToRecFN.scala 225:60]
  wire  _common_underflow_T_16 = ~_common_underflow_T_15; // @[RoundAnyRawFNToRecFN.scala 220:27]
  wire  _common_underflow_T_17 = _common_underflow_T_6 & _common_underflow_T_16; // @[RoundAnyRawFNToRecFN.scala 219:76]
  wire  common_underflow = common_totalUnderflow | _common_underflow_T_17; // @[RoundAnyRawFNToRecFN.scala 215:40]
  wire  common_inexact = common_totalUnderflow | anyRound; // @[RoundAnyRawFNToRecFN.scala 228:49]
  wire  isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34]
  wire  commonCase = ~isNaNOut & ~io_in_isInf & ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:61]
  wire  overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32]
  wire  underflow = commonCase & common_underflow; // @[RoundAnyRawFNToRecFN.scala 237:32]
  wire  inexact = overflow | commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:28]
  wire  overflow_roundMagUp = _roundIncr_T | roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60]
  wire  pegMinNonzeroMagOut = commonCase & common_totalUnderflow & (roundMagUp | roundingMode_odd); // @[RoundAnyRawFNToRecFN.scala 243:45]
  wire  pegMaxFiniteMagOut = overflow & ~overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 244:39]
  wire  notNaN_isInfOut = io_in_isInf | overflow & overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 246:32]
  wire  signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22]
  wire [8:0] _expOut_T_1 = io_in_isZero | common_totalUnderflow ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18]
  wire [8:0] _expOut_T_2 = ~_expOut_T_1; // @[RoundAnyRawFNToRecFN.scala 251:14]
  wire [8:0] _expOut_T_3 = common_expOut & _expOut_T_2; // @[RoundAnyRawFNToRecFN.scala 250:24]
  wire [8:0] _expOut_T_5 = pegMinNonzeroMagOut ? 9'h194 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 255:18]
  wire [8:0] _expOut_T_6 = ~_expOut_T_5; // @[RoundAnyRawFNToRecFN.scala 255:14]
  wire [8:0] _expOut_T_7 = _expOut_T_3 & _expOut_T_6; // @[RoundAnyRawFNToRecFN.scala 254:17]
  wire [8:0] _expOut_T_8 = pegMaxFiniteMagOut ? 9'h80 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 259:18]
  wire [8:0] _expOut_T_9 = ~_expOut_T_8; // @[RoundAnyRawFNToRecFN.scala 259:14]
  wire [8:0] _expOut_T_10 = _expOut_T_7 & _expOut_T_9; // @[RoundAnyRawFNToRecFN.scala 258:17]
  wire [8:0] _expOut_T_11 = notNaN_isInfOut ? 9'h40 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 263:18]
  wire [8:0] _expOut_T_12 = ~_expOut_T_11; // @[RoundAnyRawFNToRecFN.scala 263:14]
  wire [8:0] _expOut_T_13 = _expOut_T_10 & _expOut_T_12; // @[RoundAnyRawFNToRecFN.scala 262:17]
  wire [8:0] _expOut_T_14 = pegMinNonzeroMagOut ? 9'h6b : 9'h0; // @[RoundAnyRawFNToRecFN.scala 267:16]
  wire [8:0] _expOut_T_15 = _expOut_T_13 | _expOut_T_14; // @[RoundAnyRawFNToRecFN.scala 266:18]
  wire [8:0] _expOut_T_16 = pegMaxFiniteMagOut ? 9'h17f : 9'h0; // @[RoundAnyRawFNToRecFN.scala 271:16]
  wire [8:0] _expOut_T_17 = _expOut_T_15 | _expOut_T_16; // @[RoundAnyRawFNToRecFN.scala 270:15]
  wire [8:0] _expOut_T_18 = notNaN_isInfOut ? 9'h180 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 275:16]
  wire [8:0] _expOut_T_19 = _expOut_T_17 | _expOut_T_18; // @[RoundAnyRawFNToRecFN.scala 274:15]
  wire [8:0] _expOut_T_20 = isNaNOut ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 276:16]
  wire [8:0] expOut = _expOut_T_19 | _expOut_T_20; // @[RoundAnyRawFNToRecFN.scala 275:77]
  wire [22:0] _fractOut_T_2 = isNaNOut ? 23'h400000 : 23'h0; // @[RoundAnyRawFNToRecFN.scala 279:16]
  wire [22:0] _fractOut_T_3 = isNaNOut | io_in_isZero | common_totalUnderflow ? _fractOut_T_2 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12]
  wire [22:0] _fractOut_T_5 = pegMaxFiniteMagOut ? 23'h7fffff : 23'h0; // @[Bitwise.scala 74:12]
  wire [22:0] fractOut = _fractOut_T_3 | _fractOut_T_5; // @[RoundAnyRawFNToRecFN.scala 281:11]
  wire [9:0] io_out_hi = {signOut,expOut}; // @[Cat.scala 31:58]
  wire [1:0] io_exceptionFlags_lo = {underflow,inexact}; // @[Cat.scala 31:58]
  wire [2:0] io_exceptionFlags_hi = {io_invalidExc,1'h0,overflow}; // @[Cat.scala 31:58]
  assign io_out = {io_out_hi,fractOut}; // @[Cat.scala 31:58]
  assign io_exceptionFlags = {io_exceptionFlags_hi,io_exceptionFlags_lo}; // @[Cat.scala 31:58]
endmodule
module RoundRawFNToRecFN_1(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [9:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [26:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 307:15]
  RoundAnyRawFNToRecFN_3 roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 315:23]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 316:23]
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 310:44]
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 313:44]
endmodule
module MulAddRecFNPipe_1(
  input         clock,
  input         reset,
  input         io_validin,
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags,
  output        io_validout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  wire [1:0] mulAddRecFNToRaw_preMul_io_op; // @[FPU.scala 645:41]
  wire [32:0] mulAddRecFNToRaw_preMul_io_a; // @[FPU.scala 645:41]
  wire [32:0] mulAddRecFNToRaw_preMul_io_b; // @[FPU.scala 645:41]
  wire [32:0] mulAddRecFNToRaw_preMul_io_c; // @[FPU.scala 645:41]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddA; // @[FPU.scala 645:41]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 645:41]
  wire [47:0] mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[FPU.scala 645:41]
  wire [9:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[FPU.scala 645:41]
  wire [4:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[FPU.scala 645:41]
  wire [25:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[FPU.scala 645:41]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC; // @[FPU.scala 646:42]
  wire [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant; // @[FPU.scala 646:42]
  wire [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist; // @[FPU.scala 646:42]
  wire [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC; // @[FPU.scala 646:42]
  wire [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult; // @[FPU.scala 646:42]
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_invalidExc; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[FPU.scala 646:42]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[FPU.scala 646:42]
  wire [9:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[FPU.scala 646:42]
  wire [26:0] mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[FPU.scala 646:42]
  wire  roundRawFNToRecFN_io_invalidExc; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isInf; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_isZero; // @[FPU.scala 673:35]
  wire  roundRawFNToRecFN_io_in_sign; // @[FPU.scala 673:35]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[FPU.scala 673:35]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[FPU.scala 673:35]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[FPU.scala 673:35]
  wire [32:0] roundRawFNToRecFN_io_out; // @[FPU.scala 673:35]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 673:35]
  wire [47:0] _mulAddResult_T = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 654:45]
  wire [48:0] mulAddResult = _mulAddResult_T + mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 655:50]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC; // @[Reg.scala 16:16]
  reg [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant; // @[Reg.scala 16:16]
  reg [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist; // @[Reg.scala 16:16]
  reg [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC; // @[Reg.scala 16:16]
  reg  mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC; // @[Reg.scala 16:16]
  reg [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult_b; // @[Reg.scala 16:16]
  reg [2:0] mulAddRecFNToRaw_postMul_io_roundingMode_b; // @[Reg.scala 16:16]
  reg [2:0] roundingMode_stage0_b; // @[Reg.scala 16:16]
  reg  valid_stage0_v; // @[Valid.scala 127:22]
  reg  roundRawFNToRecFN_io_invalidExc_b; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isNaN; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isInf; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_isZero; // @[Reg.scala 16:16]
  reg  roundRawFNToRecFN_io_in_b_sign; // @[Reg.scala 16:16]
  reg [9:0] roundRawFNToRecFN_io_in_b_sExp; // @[Reg.scala 16:16]
  reg [26:0] roundRawFNToRecFN_io_in_b_sig; // @[Reg.scala 16:16]
  reg [2:0] roundRawFNToRecFN_io_roundingMode_b; // @[Reg.scala 16:16]
  reg  io_validout_v; // @[Valid.scala 127:22]
  MulAddRecFNToRaw_preMul_1 mulAddRecFNToRaw_preMul ( // @[FPU.scala 645:41]
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );
  MulAddRecFNToRaw_postMul_1 mulAddRecFNToRaw_postMul ( // @[FPU.scala 646:42]
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );
  RoundRawFNToRecFN_1 roundRawFNToRecFN ( // @[FPU.scala 673:35]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundRawFNToRecFN_io_out; // @[FPU.scala 684:23]
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 685:23]
  assign io_validout = io_validout_v; // @[Valid.scala 122:21 123:17]
  assign mulAddRecFNToRaw_preMul_io_op = io_op; // @[FPU.scala 648:35]
  assign mulAddRecFNToRaw_preMul_io_a = io_a; // @[FPU.scala 649:35]
  assign mulAddRecFNToRaw_preMul_io_b = io_b; // @[FPU.scala 650:35]
  assign mulAddRecFNToRaw_preMul_io_c = io_c; // @[FPU.scala 651:35]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC =
    mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = mulAddRecFNToRaw_postMul_io_mulAddResult_b; // @[Valid.scala 122:21 124:16]
  assign mulAddRecFNToRaw_postMul_io_roundingMode = mulAddRecFNToRaw_postMul_io_roundingMode_b; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_invalidExc = roundRawFNToRecFN_io_invalidExc_b; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isNaN = roundRawFNToRecFN_io_in_b_isNaN; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isInf = roundRawFNToRecFN_io_in_b_isInf; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_isZero = roundRawFNToRecFN_io_in_b_isZero; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sign = roundRawFNToRecFN_io_in_b_sign; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sExp = roundRawFNToRecFN_io_in_b_sExp; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_in_sig = roundRawFNToRecFN_io_in_b_sig; // @[Valid.scala 122:21 124:16]
  assign roundRawFNToRecFN_io_roundingMode = roundRawFNToRecFN_io_roundingMode_b; // @[Valid.scala 122:21 124:16]
  always @(posedge clock) begin
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_mulAddResult_b <= mulAddResult; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      mulAddRecFNToRaw_postMul_io_roundingMode_b <= io_roundingMode; // @[Reg.scala 17:22]
    end
    if (io_validin) begin // @[Reg.scala 17:18]
      roundingMode_stage0_b <= io_roundingMode; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      valid_stage0_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      valid_stage0_v <= io_validin; // @[Valid.scala 127:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_invalidExc_b <= mulAddRecFNToRaw_postMul_io_invalidExc; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_in_b_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[Reg.scala 17:22]
    end
    if (valid_stage0_v) begin // @[Reg.scala 17:18]
      roundRawFNToRecFN_io_roundingMode_b <= roundingMode_stage0_b; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_validout_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_validout_v <= valid_stage0_v; // @[Valid.scala 127:22]
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
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum = _RAND_10[9:0];
  _RAND_11 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC = _RAND_14[25:0];
  _RAND_15 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC = _RAND_15[0:0];
  _RAND_16 = {2{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_mulAddResult_b = _RAND_16[48:0];
  _RAND_17 = {1{`RANDOM}};
  mulAddRecFNToRaw_postMul_io_roundingMode_b = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  roundingMode_stage0_b = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  valid_stage0_v = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  roundRawFNToRecFN_io_invalidExc_b = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isNaN = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isInf = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_isZero = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sign = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sExp = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  roundRawFNToRecFN_io_in_b_sig = _RAND_26[26:0];
  _RAND_27 = {1{`RANDOM}};
  roundRawFNToRecFN_io_roundingMode_b = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  io_validout_v = _RAND_28[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPUFMAPipe_1(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren3,
  input         io_in_bits_swap23,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_fmaCmd,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  input  [64:0] io_in_bits_in3,
  output        io_out_valid,
  output [64:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [95:0] _RAND_3;
  reg [95:0] _RAND_4;
  reg [95:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [95:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  fma_clock; // @[FPU.scala 709:19]
  wire  fma_reset; // @[FPU.scala 709:19]
  wire  fma_io_validin; // @[FPU.scala 709:19]
  wire [1:0] fma_io_op; // @[FPU.scala 709:19]
  wire [32:0] fma_io_a; // @[FPU.scala 709:19]
  wire [32:0] fma_io_b; // @[FPU.scala 709:19]
  wire [32:0] fma_io_c; // @[FPU.scala 709:19]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 709:19]
  wire [32:0] fma_io_out; // @[FPU.scala 709:19]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 709:19]
  wire  fma_io_validout; // @[FPU.scala 709:19]
  reg  valid; // @[FPU.scala 697:18]
  reg [2:0] in_rm; // @[FPU.scala 698:15]
  reg [1:0] in_fmaCmd; // @[FPU.scala 698:15]
  reg [64:0] in_in1; // @[FPU.scala 698:15]
  reg [64:0] in_in2; // @[FPU.scala 698:15]
  reg [64:0] in_in3; // @[FPU.scala 698:15]
  wire [64:0] _zero_T = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 701:32]
  wire [64:0] zero = _zero_T & 65'h100000000; // @[FPU.scala 701:50]
  reg  io_out_v; // @[Valid.scala 127:22]
  reg [64:0] io_out_b_data; // @[Reg.scala 16:16]
  reg [4:0] io_out_b_exc; // @[Reg.scala 16:16]
  wire [4:0] res_exc = fma_io_exceptionFlags; // @[FPU.scala 718:17 720:11]
  wire [64:0] res_data = {{32'd0}, fma_io_out}; // @[FPU.scala 718:17 719:12]
  MulAddRecFNPipe_1 fma ( // @[FPU.scala 709:19]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags),
    .io_validout(fma_io_validout)
  );
  assign io_out_valid = io_out_v; // @[Valid.scala 122:21 123:17]
  assign io_out_bits_data = io_out_b_data; // @[Valid.scala 122:21 124:16]
  assign io_out_bits_exc = io_out_b_exc; // @[Valid.scala 122:21 124:16]
  assign fma_clock = clock;
  assign fma_reset = reset;
  assign fma_io_validin = valid; // @[FPU.scala 710:18]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 711:13]
  assign fma_io_a = in_in1[32:0]; // @[FPU.scala 714:12]
  assign fma_io_b = in_in2[32:0]; // @[FPU.scala 715:12]
  assign fma_io_c = in_in3[32:0]; // @[FPU.scala 716:12]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 712:23]
  always @(posedge clock) begin
    valid <= io_in_valid; // @[FPU.scala 697:18]
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_rm <= io_in_bits_rm; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_fmaCmd <= io_in_bits_fmaCmd; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      in_in1 <= io_in_bits_in1; // @[FPU.scala 704:8]
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      if (io_in_bits_swap23) begin // @[FPU.scala 705:23]
        in_in2 <= 65'h80000000; // @[FPU.scala 705:32]
      end else begin
        in_in2 <= io_in_bits_in2; // @[FPU.scala 704:8]
      end
    end
    if (io_in_valid) begin // @[FPU.scala 699:22]
      if (~(io_in_bits_ren3 | io_in_bits_swap23)) begin // @[FPU.scala 706:37]
        in_in3 <= zero; // @[FPU.scala 706:46]
      end else begin
        in_in3 <= io_in_bits_in3; // @[FPU.scala 704:8]
      end
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_out_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_out_v <= fma_io_validout; // @[Valid.scala 127:22]
    end
    if (fma_io_validout) begin // @[Reg.scala 17:18]
      io_out_b_data <= res_data; // @[Reg.scala 17:22]
    end
    if (fma_io_validout) begin // @[Reg.scala 17:18]
      io_out_b_exc <= res_exc; // @[Reg.scala 17:22]
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
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  _RAND_3 = {3{`RANDOM}};
  in_in1 = _RAND_3[64:0];
  _RAND_4 = {3{`RANDOM}};
  in_in2 = _RAND_4[64:0];
  _RAND_5 = {3{`RANDOM}};
  in_in3 = _RAND_5[64:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_v = _RAND_6[0:0];
  _RAND_7 = {3{`RANDOM}};
  io_out_b_data = _RAND_7[64:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_b_exc = _RAND_8[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CompareRecFN(
  input  [64:0] io_a,
  input  [64:0] io_b,
  input         io_signaling,
  output        io_lt,
  output        io_eq,
  output [4:0]  io_exceptionFlags
);
  wire [11:0] rawA_exp = io_a[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawA_isZero = rawA_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawA_isSpecial = rawA_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawA__isNaN = rawA_isSpecial & rawA_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawA__isInf = rawA_isSpecial & ~rawA_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  wire  rawA__sign = io_a[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawA__sExp = {1'b0,$signed(rawA_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawA_out_sig_T = ~rawA_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawA__sig = {1'h0,_rawA_out_sig_T,io_a[51:0]}; // @[Cat.scala 31:58]
  wire [11:0] rawB_exp = io_b[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawB_isZero = rawB_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawB_isSpecial = rawB_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawB__isNaN = rawB_isSpecial & rawB_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawB__isInf = rawB_isSpecial & ~rawB_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  wire  rawB__sign = io_b[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawB__sExp = {1'b0,$signed(rawB_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawB_out_sig_T = ~rawB_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawB__sig = {1'h0,_rawB_out_sig_T,io_b[51:0]}; // @[Cat.scala 31:58]
  wire  ordered = ~rawA__isNaN & ~rawB__isNaN; // @[CompareRecFN.scala 57:32]
  wire  bothInfs = rawA__isInf & rawB__isInf; // @[CompareRecFN.scala 58:33]
  wire  bothZeros = rawA_isZero & rawB_isZero; // @[CompareRecFN.scala 59:33]
  wire  eqExps = $signed(rawA__sExp) == $signed(rawB__sExp); // @[CompareRecFN.scala 60:29]
  wire  common_ltMags = $signed(rawA__sExp) < $signed(rawB__sExp) | eqExps & rawA__sig < rawB__sig; // @[CompareRecFN.scala 62:33]
  wire  common_eqMags = eqExps & rawA__sig == rawB__sig; // @[CompareRecFN.scala 63:32]
  wire  _ordered_lt_T_1 = ~rawB__sign; // @[CompareRecFN.scala 67:28]
  wire  _ordered_lt_T_9 = _ordered_lt_T_1 & common_ltMags; // @[CompareRecFN.scala 70:41]
  wire  _ordered_lt_T_10 = rawA__sign & ~common_ltMags & ~common_eqMags | _ordered_lt_T_9; // @[CompareRecFN.scala 69:74]
  wire  _ordered_lt_T_11 = ~bothInfs & _ordered_lt_T_10; // @[CompareRecFN.scala 68:30]
  wire  _ordered_lt_T_12 = rawA__sign & ~rawB__sign | _ordered_lt_T_11; // @[CompareRecFN.scala 67:41]
  wire  ordered_lt = ~bothZeros & _ordered_lt_T_12; // @[CompareRecFN.scala 66:21]
  wire  ordered_eq = bothZeros | rawA__sign == rawB__sign & (bothInfs | common_eqMags); // @[CompareRecFN.scala 72:19]
  wire  _invalid_T_2 = rawA__isNaN & ~rawA__sig[51]; // @[common.scala 82:46]
  wire  _invalid_T_5 = rawB__isNaN & ~rawB__sig[51]; // @[common.scala 82:46]
  wire  _invalid_T_8 = io_signaling & ~ordered; // @[CompareRecFN.scala 76:27]
  wire  invalid = _invalid_T_2 | _invalid_T_5 | _invalid_T_8; // @[CompareRecFN.scala 75:58]
  assign io_lt = ordered & ordered_lt; // @[CompareRecFN.scala 78:22]
  assign io_eq = ordered & ordered_eq; // @[CompareRecFN.scala 79:22]
  assign io_exceptionFlags = {invalid,4'h0}; // @[Cat.scala 31:58]
endmodule
module RecFNToIN(
  input  [64:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_signedOut,
  output [63:0] io_out,
  output [2:0]  io_intExceptionFlags
);
  wire [11:0] rawIn_exp = io_in[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawIn_isZero = rawIn_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawIn_isSpecial = rawIn_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawIn__isNaN = rawIn_isSpecial & rawIn_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawIn__isInf = rawIn_isSpecial & ~rawIn_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  wire  rawIn__sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawIn__sExp = {1'b0,$signed(rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawIn_out_sig_T = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawIn__sig = {1'h0,_rawIn_out_sig_T,io_in[51:0]}; // @[Cat.scala 31:58]
  wire  magGeOne = rawIn__sExp[11]; // @[RecFNToIN.scala 58:30]
  wire [10:0] posExp = rawIn__sExp[10:0]; // @[RecFNToIN.scala 59:28]
  wire  magJustBelowOne = ~magGeOne & &posExp; // @[RecFNToIN.scala 60:37]
  wire  roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53]
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 66:53]
  wire  roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 67:53]
  wire  roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 68:53]
  wire  roundingMode_odd = io_roundingMode == 3'h6; // @[RecFNToIN.scala 69:53]
  wire [52:0] _shiftedSig_T_1 = {magGeOne,rawIn__sig[51:0]}; // @[Cat.scala 31:58]
  wire [5:0] _shiftedSig_T_3 = magGeOne ? rawIn__sExp[5:0] : 6'h0; // @[RecFNToIN.scala 81:16]
  wire [115:0] _GEN_2 = {{63'd0}, _shiftedSig_T_1}; // @[RecFNToIN.scala 80:50]
  wire [115:0] shiftedSig = _GEN_2 << _shiftedSig_T_3; // @[RecFNToIN.scala 80:50]
  wire  _alignedSig_T_2 = |shiftedSig[50:0]; // @[RecFNToIN.scala 86:69]
  wire [65:0] alignedSig = {shiftedSig[115:51],_alignedSig_T_2}; // @[Cat.scala 31:58]
  wire [63:0] unroundedInt = alignedSig[65:2]; // @[RecFNToIN.scala 87:54]
  wire  _common_inexact_T_1 = |alignedSig[1:0]; // @[RecFNToIN.scala 89:57]
  wire  common_inexact = magGeOne ? |alignedSig[1:0] : _rawIn_out_sig_T; // @[RecFNToIN.scala 89:29]
  wire  _roundIncr_near_even_T_8 = magJustBelowOne & _common_inexact_T_1; // @[RecFNToIN.scala 92:26]
  wire  roundIncr_near_even = magGeOne & (&alignedSig[2:1] | &alignedSig[1:0]) | _roundIncr_near_even_T_8; // @[RecFNToIN.scala 91:78]
  wire  roundIncr_near_maxMag = magGeOne & alignedSig[1] | magJustBelowOne; // @[RecFNToIN.scala 93:61]
  wire  _roundIncr_T_1 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35]
  wire  _roundIncr_T_2 = roundingMode_near_even & roundIncr_near_even | _roundIncr_T_1; // @[RecFNToIN.scala 95:61]
  wire  _roundIncr_T_4 = rawIn__sign & common_inexact; // @[RecFNToIN.scala 98:26]
  wire  _roundIncr_T_5 = (roundingMode_min | roundingMode_odd) & _roundIncr_T_4; // @[RecFNToIN.scala 97:49]
  wire  _roundIncr_T_6 = _roundIncr_T_2 | _roundIncr_T_5; // @[RecFNToIN.scala 96:61]
  wire  _roundIncr_T_9 = roundingMode_max & (~rawIn__sign & common_inexact); // @[RecFNToIN.scala 99:27]
  wire  roundIncr = _roundIncr_T_6 | _roundIncr_T_9; // @[RecFNToIN.scala 98:46]
  wire [63:0] _complUnroundedInt_T = ~unroundedInt; // @[RecFNToIN.scala 100:45]
  wire [63:0] complUnroundedInt = rawIn__sign ? _complUnroundedInt_T : unroundedInt; // @[RecFNToIN.scala 100:32]
  wire [63:0] _roundedInt_T_2 = complUnroundedInt + 64'h1; // @[RecFNToIN.scala 103:31]
  wire [63:0] _roundedInt_T_3 = roundIncr ^ rawIn__sign ? _roundedInt_T_2 : complUnroundedInt; // @[RecFNToIN.scala 102:12]
  wire  _roundedInt_T_4 = roundingMode_odd & common_inexact; // @[RecFNToIN.scala 105:31]
  wire [63:0] _GEN_0 = {{63'd0}, _roundedInt_T_4}; // @[RecFNToIN.scala 105:11]
  wire [63:0] roundedInt = _roundedInt_T_3 | _GEN_0; // @[RecFNToIN.scala 105:11]
  wire  magGeOne_atOverflowEdge = posExp == 11'h3f; // @[RecFNToIN.scala 107:43]
  wire  roundCarryBut2 = &unroundedInt[61:0] & roundIncr; // @[RecFNToIN.scala 110:61]
  wire  _common_overflow_T_3 = |unroundedInt[62:0] | roundIncr; // @[RecFNToIN.scala 117:64]
  wire  _common_overflow_T_4 = magGeOne_atOverflowEdge & _common_overflow_T_3; // @[RecFNToIN.scala 116:49]
  wire  _common_overflow_T_6 = posExp == 11'h3e & roundCarryBut2; // @[RecFNToIN.scala 119:62]
  wire  _common_overflow_T_7 = magGeOne_atOverflowEdge | _common_overflow_T_6; // @[RecFNToIN.scala 118:49]
  wire  _common_overflow_T_8 = rawIn__sign ? _common_overflow_T_4 : _common_overflow_T_7; // @[RecFNToIN.scala 115:24]
  wire  _common_overflow_T_10 = magGeOne_atOverflowEdge & unroundedInt[62]; // @[RecFNToIN.scala 122:50]
  wire  _common_overflow_T_11 = _common_overflow_T_10 & roundCarryBut2; // @[RecFNToIN.scala 123:57]
  wire  _common_overflow_T_12 = rawIn__sign | _common_overflow_T_11; // @[RecFNToIN.scala 121:32]
  wire  _common_overflow_T_13 = io_signedOut ? _common_overflow_T_8 : _common_overflow_T_12; // @[RecFNToIN.scala 114:20]
  wire  _common_overflow_T_14 = posExp >= 11'h40 | _common_overflow_T_13; // @[RecFNToIN.scala 113:40]
  wire  _common_overflow_T_17 = ~io_signedOut & rawIn__sign & roundIncr; // @[RecFNToIN.scala 125:41]
  wire  common_overflow = magGeOne ? _common_overflow_T_14 : _common_overflow_T_17; // @[RecFNToIN.scala 112:12]
  wire  invalidExc = rawIn__isNaN | rawIn__isInf; // @[RecFNToIN.scala 130:34]
  wire  _overflow_T = ~invalidExc; // @[RecFNToIN.scala 131:20]
  wire  overflow = ~invalidExc & common_overflow; // @[RecFNToIN.scala 131:32]
  wire  inexact = _overflow_T & ~common_overflow & common_inexact; // @[RecFNToIN.scala 132:52]
  wire  excSign = ~rawIn__isNaN & rawIn__sign; // @[RecFNToIN.scala 134:32]
  wire [63:0] _excOut_T_1 = io_signedOut == excSign ? 64'h8000000000000000 : 64'h0; // @[RecFNToIN.scala 136:12]
  wire [62:0] _excOut_T_3 = ~excSign ? 63'h7fffffffffffffff : 63'h0; // @[RecFNToIN.scala 140:12]
  wire [63:0] _GEN_1 = {{1'd0}, _excOut_T_3}; // @[RecFNToIN.scala 139:11]
  wire [63:0] excOut = _excOut_T_1 | _GEN_1; // @[RecFNToIN.scala 139:11]
  wire [1:0] io_intExceptionFlags_hi = {invalidExc,overflow}; // @[Cat.scala 31:58]
  assign io_out = invalidExc | common_overflow ? excOut : roundedInt; // @[RecFNToIN.scala 142:18]
  assign io_intExceptionFlags = {io_intExceptionFlags_hi,inexact}; // @[Cat.scala 31:58]
endmodule
module RecFNToIN_1(
  input  [64:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_signedOut,
  output [2:0]  io_intExceptionFlags
);
  wire [11:0] rawIn_exp = io_in[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawIn_isZero = rawIn_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawIn_isSpecial = rawIn_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawIn__isNaN = rawIn_isSpecial & rawIn_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  rawIn__isInf = rawIn_isSpecial & ~rawIn_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  wire  rawIn__sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] rawIn__sExp = {1'b0,$signed(rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _rawIn_out_sig_T = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] rawIn__sig = {1'h0,_rawIn_out_sig_T,io_in[51:0]}; // @[Cat.scala 31:58]
  wire  magGeOne = rawIn__sExp[11]; // @[RecFNToIN.scala 58:30]
  wire [10:0] posExp = rawIn__sExp[10:0]; // @[RecFNToIN.scala 59:28]
  wire  magJustBelowOne = ~magGeOne & &posExp; // @[RecFNToIN.scala 60:37]
  wire  roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53]
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 66:53]
  wire  roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 67:53]
  wire  roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 68:53]
  wire  roundingMode_odd = io_roundingMode == 3'h6; // @[RecFNToIN.scala 69:53]
  wire [52:0] _shiftedSig_T_1 = {magGeOne,rawIn__sig[51:0]}; // @[Cat.scala 31:58]
  wire [4:0] _shiftedSig_T_3 = magGeOne ? rawIn__sExp[4:0] : 5'h0; // @[RecFNToIN.scala 81:16]
  wire [83:0] _GEN_0 = {{31'd0}, _shiftedSig_T_1}; // @[RecFNToIN.scala 80:50]
  wire [83:0] shiftedSig = _GEN_0 << _shiftedSig_T_3; // @[RecFNToIN.scala 80:50]
  wire  _alignedSig_T_2 = |shiftedSig[50:0]; // @[RecFNToIN.scala 86:69]
  wire [33:0] alignedSig = {shiftedSig[83:51],_alignedSig_T_2}; // @[Cat.scala 31:58]
  wire [31:0] unroundedInt = alignedSig[33:2]; // @[RecFNToIN.scala 87:54]
  wire  _common_inexact_T_1 = |alignedSig[1:0]; // @[RecFNToIN.scala 89:57]
  wire  common_inexact = magGeOne ? |alignedSig[1:0] : _rawIn_out_sig_T; // @[RecFNToIN.scala 89:29]
  wire  _roundIncr_near_even_T_8 = magJustBelowOne & _common_inexact_T_1; // @[RecFNToIN.scala 92:26]
  wire  roundIncr_near_even = magGeOne & (&alignedSig[2:1] | &alignedSig[1:0]) | _roundIncr_near_even_T_8; // @[RecFNToIN.scala 91:78]
  wire  roundIncr_near_maxMag = magGeOne & alignedSig[1] | magJustBelowOne; // @[RecFNToIN.scala 93:61]
  wire  _roundIncr_T_1 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35]
  wire  _roundIncr_T_2 = roundingMode_near_even & roundIncr_near_even | _roundIncr_T_1; // @[RecFNToIN.scala 95:61]
  wire  _roundIncr_T_4 = rawIn__sign & common_inexact; // @[RecFNToIN.scala 98:26]
  wire  _roundIncr_T_5 = (roundingMode_min | roundingMode_odd) & _roundIncr_T_4; // @[RecFNToIN.scala 97:49]
  wire  _roundIncr_T_6 = _roundIncr_T_2 | _roundIncr_T_5; // @[RecFNToIN.scala 96:61]
  wire  _roundIncr_T_9 = roundingMode_max & (~rawIn__sign & common_inexact); // @[RecFNToIN.scala 99:27]
  wire  roundIncr = _roundIncr_T_6 | _roundIncr_T_9; // @[RecFNToIN.scala 98:46]
  wire  magGeOne_atOverflowEdge = posExp == 11'h1f; // @[RecFNToIN.scala 107:43]
  wire  roundCarryBut2 = &unroundedInt[29:0] & roundIncr; // @[RecFNToIN.scala 110:61]
  wire  _common_overflow_T_3 = |unroundedInt[30:0] | roundIncr; // @[RecFNToIN.scala 117:64]
  wire  _common_overflow_T_4 = magGeOne_atOverflowEdge & _common_overflow_T_3; // @[RecFNToIN.scala 116:49]
  wire  _common_overflow_T_6 = posExp == 11'h1e & roundCarryBut2; // @[RecFNToIN.scala 119:62]
  wire  _common_overflow_T_7 = magGeOne_atOverflowEdge | _common_overflow_T_6; // @[RecFNToIN.scala 118:49]
  wire  _common_overflow_T_8 = rawIn__sign ? _common_overflow_T_4 : _common_overflow_T_7; // @[RecFNToIN.scala 115:24]
  wire  _common_overflow_T_10 = magGeOne_atOverflowEdge & unroundedInt[30]; // @[RecFNToIN.scala 122:50]
  wire  _common_overflow_T_11 = _common_overflow_T_10 & roundCarryBut2; // @[RecFNToIN.scala 123:57]
  wire  _common_overflow_T_12 = rawIn__sign | _common_overflow_T_11; // @[RecFNToIN.scala 121:32]
  wire  _common_overflow_T_13 = io_signedOut ? _common_overflow_T_8 : _common_overflow_T_12; // @[RecFNToIN.scala 114:20]
  wire  _common_overflow_T_14 = posExp >= 11'h20 | _common_overflow_T_13; // @[RecFNToIN.scala 113:40]
  wire  _common_overflow_T_17 = ~io_signedOut & rawIn__sign & roundIncr; // @[RecFNToIN.scala 125:41]
  wire  common_overflow = magGeOne ? _common_overflow_T_14 : _common_overflow_T_17; // @[RecFNToIN.scala 112:12]
  wire  invalidExc = rawIn__isNaN | rawIn__isInf; // @[RecFNToIN.scala 130:34]
  wire  _overflow_T = ~invalidExc; // @[RecFNToIN.scala 131:20]
  wire  overflow = ~invalidExc & common_overflow; // @[RecFNToIN.scala 131:32]
  wire  inexact = _overflow_T & ~common_overflow & common_inexact; // @[RecFNToIN.scala 132:52]
  wire [1:0] io_intExceptionFlags_hi = {invalidExc,overflow}; // @[Cat.scala 31:58]
  assign io_intExceptionFlags = {io_intExceptionFlags_hi,inexact}; // @[Cat.scala 31:58]
endmodule
module FPToInt(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input  [1:0]  io_in_bits_typeTagOut,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [1:0]  io_in_bits_fmt,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  output        io_out_bits_lt,
  output [63:0] io_out_bits_toint,
  output [4:0]  io_out_bits_exc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [95:0] _RAND_6;
  reg [95:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] dcmp_io_a; // @[FPU.scala 462:20]
  wire [64:0] dcmp_io_b; // @[FPU.scala 462:20]
  wire  dcmp_io_signaling; // @[FPU.scala 462:20]
  wire  dcmp_io_lt; // @[FPU.scala 462:20]
  wire  dcmp_io_eq; // @[FPU.scala 462:20]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 462:20]
  wire [64:0] conv_io_in; // @[FPU.scala 490:24]
  wire [2:0] conv_io_roundingMode; // @[FPU.scala 490:24]
  wire  conv_io_signedOut; // @[FPU.scala 490:24]
  wire [63:0] conv_io_out; // @[FPU.scala 490:24]
  wire [2:0] conv_io_intExceptionFlags; // @[FPU.scala 490:24]
  wire [64:0] narrow_io_in; // @[FPU.scala 500:30]
  wire [2:0] narrow_io_roundingMode; // @[FPU.scala 500:30]
  wire  narrow_io_signedOut; // @[FPU.scala 500:30]
  wire [2:0] narrow_io_intExceptionFlags; // @[FPU.scala 500:30]
  reg  in_ren2; // @[Reg.scala 16:16]
  reg [1:0] in_typeTagOut; // @[Reg.scala 16:16]
  reg  in_wflags; // @[Reg.scala 16:16]
  reg [2:0] in_rm; // @[Reg.scala 16:16]
  reg [1:0] in_typ; // @[Reg.scala 16:16]
  reg [1:0] in_fmt; // @[Reg.scala 16:16]
  reg [64:0] in_in1; // @[Reg.scala 16:16]
  reg [64:0] in_in2; // @[Reg.scala 16:16]
  wire [11:0] store_unrecoded_rawIn_exp = in_in1[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  store_unrecoded_rawIn_isZero = store_unrecoded_rawIn_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  store_unrecoded_rawIn_isSpecial = store_unrecoded_rawIn_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  store_unrecoded_rawIn__isNaN = store_unrecoded_rawIn_isSpecial & store_unrecoded_rawIn_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  store_unrecoded_rawIn__isInf = store_unrecoded_rawIn_isSpecial & ~store_unrecoded_rawIn_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  wire  store_unrecoded_rawIn__sign = in_in1[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] store_unrecoded_rawIn__sExp = {1'b0,$signed(store_unrecoded_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _store_unrecoded_rawIn_out_sig_T = ~store_unrecoded_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [53:0] store_unrecoded_rawIn__sig = {1'h0,_store_unrecoded_rawIn_out_sig_T,in_in1[51:0]}; // @[Cat.scala 31:58]
  wire  store_unrecoded_isSubnormal = $signed(store_unrecoded_rawIn__sExp) < 13'sh402; // @[fNFromRecFN.scala 50:39]
  wire [5:0] store_unrecoded_denormShiftDist = 6'h1 - store_unrecoded_rawIn__sExp[5:0]; // @[fNFromRecFN.scala 51:39]
  wire [52:0] _store_unrecoded_denormFract_T_1 = store_unrecoded_rawIn__sig[53:1] >> store_unrecoded_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [51:0] store_unrecoded_denormFract = _store_unrecoded_denormFract_T_1[51:0]; // @[fNFromRecFN.scala 52:60]
  wire [10:0] _store_unrecoded_expOut_T_2 = store_unrecoded_rawIn__sExp[10:0] - 11'h401; // @[fNFromRecFN.scala 57:45]
  wire [10:0] _store_unrecoded_expOut_T_3 = store_unrecoded_isSubnormal ? 11'h0 : _store_unrecoded_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _store_unrecoded_expOut_T_4 = store_unrecoded_rawIn__isNaN | store_unrecoded_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [10:0] _store_unrecoded_expOut_T_6 = _store_unrecoded_expOut_T_4 ? 11'h7ff : 11'h0; // @[Bitwise.scala 74:12]
  wire [10:0] store_unrecoded_expOut = _store_unrecoded_expOut_T_3 | _store_unrecoded_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [51:0] _store_unrecoded_fractOut_T_1 = store_unrecoded_rawIn__isInf ? 52'h0 : store_unrecoded_rawIn__sig[51:0]; // @[fNFromRecFN.scala 63:20]
  wire [51:0] store_unrecoded_fractOut = store_unrecoded_isSubnormal ? store_unrecoded_denormFract :
    _store_unrecoded_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [63:0] store_unrecoded = {store_unrecoded_rawIn__sign,store_unrecoded_expOut,store_unrecoded_fractOut}; // @[Cat.scala 31:58]
  wire [32:0] store_prevRecoded = {in_in1[31],in_in1[52],in_in1[30:0]}; // @[Cat.scala 31:58]
  wire [8:0] store_prevUnrecoded_rawIn_exp = store_prevRecoded[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  store_prevUnrecoded_rawIn_isZero = store_prevUnrecoded_rawIn_exp[8:6] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  store_prevUnrecoded_rawIn_isSpecial = store_prevUnrecoded_rawIn_exp[8:7] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  store_prevUnrecoded_rawIn__isNaN = store_prevUnrecoded_rawIn_isSpecial & store_prevUnrecoded_rawIn_exp[6]; // @[rawFloatFromRecFN.scala 55:33]
  wire  store_prevUnrecoded_rawIn__isInf = store_prevUnrecoded_rawIn_isSpecial & ~store_prevUnrecoded_rawIn_exp[6]; // @[rawFloatFromRecFN.scala 56:33]
  wire  store_prevUnrecoded_rawIn__sign = store_prevRecoded[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] store_prevUnrecoded_rawIn__sExp = {1'b0,$signed(store_prevUnrecoded_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _store_prevUnrecoded_rawIn_out_sig_T = ~store_prevUnrecoded_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [24:0] store_prevUnrecoded_rawIn__sig = {1'h0,_store_prevUnrecoded_rawIn_out_sig_T,store_prevRecoded[22:0]}; // @[Cat.scala 31:58]
  wire  store_prevUnrecoded_isSubnormal = $signed(store_prevUnrecoded_rawIn__sExp) < 10'sh82; // @[fNFromRecFN.scala 50:39]
  wire [4:0] store_prevUnrecoded_denormShiftDist = 5'h1 - store_prevUnrecoded_rawIn__sExp[4:0]; // @[fNFromRecFN.scala 51:39]
  wire [23:0] _store_prevUnrecoded_denormFract_T_1 = store_prevUnrecoded_rawIn__sig[24:1] >>
    store_prevUnrecoded_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [22:0] store_prevUnrecoded_denormFract = _store_prevUnrecoded_denormFract_T_1[22:0]; // @[fNFromRecFN.scala 52:60]
  wire [7:0] _store_prevUnrecoded_expOut_T_2 = store_prevUnrecoded_rawIn__sExp[7:0] - 8'h81; // @[fNFromRecFN.scala 57:45]
  wire [7:0] _store_prevUnrecoded_expOut_T_3 = store_prevUnrecoded_isSubnormal ? 8'h0 : _store_prevUnrecoded_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _store_prevUnrecoded_expOut_T_4 = store_prevUnrecoded_rawIn__isNaN | store_prevUnrecoded_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [7:0] _store_prevUnrecoded_expOut_T_6 = _store_prevUnrecoded_expOut_T_4 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] store_prevUnrecoded_expOut = _store_prevUnrecoded_expOut_T_3 | _store_prevUnrecoded_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [22:0] _store_prevUnrecoded_fractOut_T_1 = store_prevUnrecoded_rawIn__isInf ? 23'h0 :
    store_prevUnrecoded_rawIn__sig[22:0]; // @[fNFromRecFN.scala 63:20]
  wire [22:0] store_prevUnrecoded_fractOut = store_prevUnrecoded_isSubnormal ? store_prevUnrecoded_denormFract :
    _store_prevUnrecoded_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [31:0] store_prevUnrecoded = {store_prevUnrecoded_rawIn__sign,store_prevUnrecoded_expOut,
    store_prevUnrecoded_fractOut}; // @[Cat.scala 31:58]
  wire  _store_T_2 = &in_in1[63:61]; // @[FPU.scala 242:56]
  wire [31:0] _store_T_4 = _store_T_2 ? store_prevUnrecoded : store_unrecoded[31:0]; // @[FPU.scala 439:44]
  wire [63:0] _store_T_5 = {store_unrecoded[63:32],_store_T_4}; // @[Cat.scala 31:58]
  wire [63:0] _store_T_7 = {_store_T_5[31:0],_store_T_5[31:0]}; // @[Cat.scala 31:58]
  wire  store_truncIdx = in_typeTagOut[0]; // @[package.scala 31:49]
  wire [63:0] store = store_truncIdx ? _store_T_5 : _store_T_7; // @[package.scala 32:76]
  wire  intType_x6 = in_fmt[0]; // @[FPU.scala 471:35]
  wire  cvtType = in_typ[1]; // @[package.scala 154:13]
  wire  invalid = conv_io_intExceptionFlags[2] | narrow_io_intExceptionFlags[1]; // @[FPU.scala 507:54]
  wire  excSign = store_unrecoded_rawIn__sign & ~_store_T_2; // @[FPU.scala 505:59]
  wire  _excOut_T = conv_io_signedOut == excSign; // @[FPU.scala 506:46]
  wire  _excOut_T_1 = ~excSign; // @[FPU.scala 506:69]
  wire [30:0] _excOut_T_3 = _excOut_T_1 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _toint_T_11 = {conv_io_out[63:32],_excOut_T,_excOut_T_3}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_25 = invalid ? _toint_T_11 : conv_io_out; // @[FPU.scala 494:13 508:{26,34}]
  wire [63:0] _GEN_26 = ~cvtType ? _GEN_25 : conv_io_out; // @[FPU.scala 494:13 499:30]
  wire [2:0] _toint_T_3 = ~in_rm; // @[FPU.scala 483:15]
  wire [1:0] _toint_T_4 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_34 = {{1'd0}, _toint_T_4}; // @[FPU.scala 483:22]
  wire [2:0] _toint_T_5 = _toint_T_3 & _GEN_34; // @[FPU.scala 483:22]
  wire [63:0] _toint_T_8 = {store[63:32], 32'h0}; // @[FPU.scala 483:77]
  wire [63:0] _GEN_35 = {{63'd0}, |_toint_T_5}; // @[FPU.scala 483:57]
  wire [63:0] _toint_T_9 = _GEN_35 | _toint_T_8; // @[FPU.scala 483:57]
  wire [63:0] _GEN_29 = ~in_ren2 ? _GEN_26 : _toint_T_9; // @[FPU.scala 483:11 487:21]
  wire  classify_out_isQNaN_1 = _store_T_2 & in_in1[51]; // @[FPU.scala 258:24]
  wire  classify_out_isSNaN_1 = _store_T_2 & ~in_in1[51]; // @[FPU.scala 257:24]
  wire [1:0] classify_out_codeHi_1 = in_in1[63:62]; // @[FPU.scala 248:22]
  wire  classify_out_isSpecial_1 = classify_out_codeHi_1 == 2'h3; // @[FPU.scala 249:28]
  wire  classify_out_isInf_1 = classify_out_isSpecial_1 & ~in_in1[61]; // @[FPU.scala 255:27]
  wire  _classify_out_T_14 = ~store_unrecoded_rawIn__sign; // @[FPU.scala 260:34]
  wire  _classify_out_T_15 = classify_out_isInf_1 & ~store_unrecoded_rawIn__sign; // @[FPU.scala 260:31]
  wire  _classify_out_isNormal_T_4 = classify_out_codeHi_1 == 2'h1; // @[FPU.scala 253:27]
  wire  classify_out_isHighSubnormalIn_1 = in_in1[61:52] < 10'h2; // @[FPU.scala 251:55]
  wire  classify_out_isNormal_1 = classify_out_codeHi_1 == 2'h1 & ~classify_out_isHighSubnormalIn_1 |
    classify_out_codeHi_1 == 2'h2; // @[FPU.scala 253:61]
  wire  _classify_out_T_17 = classify_out_isNormal_1 & ~store_unrecoded_rawIn__sign; // @[FPU.scala 260:50]
  wire  classify_out_isSubnormal_1 = in_in1[63:61] == 3'h1 | _classify_out_isNormal_T_4 &
    classify_out_isHighSubnormalIn_1; // @[FPU.scala 252:40]
  wire  _classify_out_T_19 = classify_out_isSubnormal_1 & _classify_out_T_14; // @[FPU.scala 261:21]
  wire  classify_out_isZero_1 = in_in1[63:61] == 3'h0; // @[FPU.scala 254:23]
  wire  _classify_out_T_21 = classify_out_isZero_1 & _classify_out_T_14; // @[FPU.scala 261:38]
  wire  _classify_out_T_22 = classify_out_isZero_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 261:55]
  wire  _classify_out_T_23 = classify_out_isSubnormal_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 262:21]
  wire  _classify_out_T_24 = classify_out_isNormal_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 262:39]
  wire  _classify_out_T_25 = classify_out_isInf_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 262:54]
  wire [9:0] _classify_out_T_26 = {classify_out_isQNaN_1,classify_out_isSNaN_1,_classify_out_T_15,_classify_out_T_17,
    _classify_out_T_19,_classify_out_T_21,_classify_out_T_22,_classify_out_T_23,_classify_out_T_24,_classify_out_T_25}; // @[Cat.scala 31:58]
  wire [11:0] _classify_out_expOut_commonCase_T_1 = store_unrecoded_rawIn_exp + 12'h100; // @[FPU.scala 273:31]
  wire [11:0] classify_out_expOut_commonCase = _classify_out_expOut_commonCase_T_1 - 12'h800; // @[FPU.scala 273:48]
  wire [8:0] _classify_out_expOut_T_4 = {store_unrecoded_rawIn_exp[11:9],classify_out_expOut_commonCase[5:0]}; // @[Cat.scala 31:58]
  wire [8:0] classify_out_expOut = store_unrecoded_rawIn_isZero | store_unrecoded_rawIn_exp[11:9] >= 3'h6 ?
    _classify_out_expOut_T_4 : classify_out_expOut_commonCase[8:0]; // @[FPU.scala 274:10]
  wire [75:0] _classify_out_fractOut_T = {in_in1[51:0], 24'h0}; // @[FPU.scala 270:28]
  wire [22:0] classify_out_fractOut = _classify_out_fractOut_T[75:53]; // @[FPU.scala 270:38]
  wire [32:0] _classify_out_T = {store_unrecoded_rawIn__sign,classify_out_expOut,classify_out_fractOut}; // @[Cat.scala 31:58]
  wire [2:0] classify_out_code = _classify_out_T[31:29]; // @[FPU.scala 247:17]
  wire  classify_out_isNaN = &classify_out_code; // @[FPU.scala 256:22]
  wire  classify_out_isQNaN = classify_out_isNaN & _classify_out_T[22]; // @[FPU.scala 258:24]
  wire  classify_out_isSNaN = classify_out_isNaN & ~_classify_out_T[22]; // @[FPU.scala 257:24]
  wire [1:0] classify_out_codeHi = classify_out_code[2:1]; // @[FPU.scala 248:22]
  wire  classify_out_isSpecial = classify_out_codeHi == 2'h3; // @[FPU.scala 249:28]
  wire  classify_out_isInf = classify_out_isSpecial & ~classify_out_code[0]; // @[FPU.scala 255:27]
  wire  classify_out_sign_1 = _classify_out_T[32]; // @[FPU.scala 246:17]
  wire  _classify_out_T_1 = ~classify_out_sign_1; // @[FPU.scala 260:34]
  wire  _classify_out_T_2 = classify_out_isInf & ~classify_out_sign_1; // @[FPU.scala 260:31]
  wire  _classify_out_isNormal_T = classify_out_codeHi == 2'h1; // @[FPU.scala 253:27]
  wire  classify_out_isHighSubnormalIn = _classify_out_T[29:23] < 7'h2; // @[FPU.scala 251:55]
  wire  classify_out_isNormal = classify_out_codeHi == 2'h1 & ~classify_out_isHighSubnormalIn | classify_out_codeHi == 2'h2
    ; // @[FPU.scala 253:61]
  wire  _classify_out_T_4 = classify_out_isNormal & ~classify_out_sign_1; // @[FPU.scala 260:50]
  wire  classify_out_isSubnormal = classify_out_code == 3'h1 | _classify_out_isNormal_T & classify_out_isHighSubnormalIn
    ; // @[FPU.scala 252:40]
  wire  _classify_out_T_6 = classify_out_isSubnormal & _classify_out_T_1; // @[FPU.scala 261:21]
  wire  classify_out_isZero = classify_out_code == 3'h0; // @[FPU.scala 254:23]
  wire  _classify_out_T_8 = classify_out_isZero & _classify_out_T_1; // @[FPU.scala 261:38]
  wire  _classify_out_T_9 = classify_out_isZero & classify_out_sign_1; // @[FPU.scala 261:55]
  wire  _classify_out_T_10 = classify_out_isSubnormal & classify_out_sign_1; // @[FPU.scala 262:21]
  wire  _classify_out_T_11 = classify_out_isNormal & classify_out_sign_1; // @[FPU.scala 262:39]
  wire  _classify_out_T_12 = classify_out_isInf & classify_out_sign_1; // @[FPU.scala 262:54]
  wire [9:0] _classify_out_T_13 = {classify_out_isQNaN,classify_out_isSNaN,_classify_out_T_2,_classify_out_T_4,
    _classify_out_T_6,_classify_out_T_8,_classify_out_T_9,_classify_out_T_10,_classify_out_T_11,_classify_out_T_12}; // @[Cat.scala 31:58]
  wire [9:0] classify_out = store_truncIdx ? _classify_out_T_26 : _classify_out_T_13; // @[package.scala 32:76]
  wire [63:0] _GEN_36 = {{54'd0}, classify_out}; // @[FPU.scala 478:27]
  wire [63:0] _toint_T_2 = _GEN_36 | _toint_T_8; // @[FPU.scala 478:27]
  wire [63:0] _GEN_23 = in_rm[0] ? _toint_T_2 : store; // @[FPU.scala 476:19 478:11]
  wire [63:0] toint = in_wflags ? _GEN_29 : _GEN_23; // @[FPU.scala 482:20]
  wire [31:0] _io_out_bits_toint_T_3 = toint[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_out_bits_toint_T_4 = {_io_out_bits_toint_T_3,toint[31:0]}; // @[Cat.scala 31:58]
  wire  _GEN_28 = ~in_ren2 & cvtType; // @[FPU.scala 485:13 487:21 489:15]
  wire  _GEN_24 = in_rm[0] ? 1'h0 : intType_x6; // @[FPU.scala 476:19 479:13]
  wire  intType = in_wflags ? _GEN_28 : _GEN_24; // @[FPU.scala 482:20]
  wire  _io_out_bits_exc_T_1 = |conv_io_intExceptionFlags[2:1]; // @[FPU.scala 495:62]
  wire [4:0] _io_out_bits_exc_T_3 = {_io_out_bits_exc_T_1,3'h0,conv_io_intExceptionFlags[0]}; // @[Cat.scala 31:58]
  wire  _io_out_bits_exc_T_6 = ~invalid & conv_io_intExceptionFlags[0]; // @[FPU.scala 509:64]
  wire [4:0] _io_out_bits_exc_T_7 = {invalid,3'h0,_io_out_bits_exc_T_6}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_27 = ~cvtType ? _io_out_bits_exc_T_7 : _io_out_bits_exc_T_3; // @[FPU.scala 495:23 499:30 509:27]
  wire [4:0] _GEN_30 = ~in_ren2 ? _GEN_27 : dcmp_io_exceptionFlags; // @[FPU.scala 484:21 487:21]
  CompareRecFN dcmp ( // @[FPU.scala 462:20]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN conv ( // @[FPU.scala 490:24]
    .io_in(conv_io_in),
    .io_roundingMode(conv_io_roundingMode),
    .io_signedOut(conv_io_signedOut),
    .io_out(conv_io_out),
    .io_intExceptionFlags(conv_io_intExceptionFlags)
  );
  RecFNToIN_1 narrow ( // @[FPU.scala 500:30]
    .io_in(narrow_io_in),
    .io_roundingMode(narrow_io_roundingMode),
    .io_signedOut(narrow_io_signedOut),
    .io_intExceptionFlags(narrow_io_intExceptionFlags)
  );
  assign io_out_bits_lt = dcmp_io_lt | $signed(dcmp_io_a) < 65'sh0 & $signed(dcmp_io_b) >= 65'sh0; // @[FPU.scala 516:32]
  assign io_out_bits_toint = intType ? toint : _io_out_bits_toint_T_4; // @[package.scala 32:76]
  assign io_out_bits_exc = in_wflags ? _GEN_30 : 5'h0; // @[FPU.scala 474:19 482:20]
  assign dcmp_io_a = in_in1; // @[FPU.scala 463:13]
  assign dcmp_io_b = in_in2; // @[FPU.scala 464:13]
  assign dcmp_io_signaling = ~in_rm[1]; // @[FPU.scala 465:24]
  assign conv_io_in = in_in1; // @[FPU.scala 491:18]
  assign conv_io_roundingMode = in_rm; // @[FPU.scala 492:28]
  assign conv_io_signedOut = ~in_typ[0]; // @[FPU.scala 493:28]
  assign narrow_io_in = in_in1; // @[FPU.scala 501:24]
  assign narrow_io_roundingMode = in_rm; // @[FPU.scala 502:34]
  assign narrow_io_signedOut = ~in_typ[0]; // @[FPU.scala 503:34]
  always @(posedge clock) begin
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_ren2 <= io_in_bits_ren2; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_typeTagOut <= io_in_bits_typeTagOut; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_wflags <= io_in_bits_wflags; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_rm <= io_in_bits_rm; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_typ <= io_in_bits_typ; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_fmt <= io_in_bits_fmt; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_in1 <= io_in_bits_in1; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      in_in2 <= io_in_bits_in2; // @[Reg.scala 17:22]
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
  in_ren2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_typeTagOut = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  in_wflags = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_rm = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  in_typ = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  in_fmt = _RAND_5[1:0];
  _RAND_6 = {3{`RANDOM}};
  in_in1 = _RAND_6[64:0];
  _RAND_7 = {3{`RANDOM}};
  in_in2 = _RAND_7[64:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RoundAnyRawFNToRecFN_4(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [12:0] io_in_sExp,
  input  [53:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53]
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53]
  wire  roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53]
  wire  roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53]
  wire  roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53]
  wire  roundMagUp = roundingMode_min & io_in_sign | roundingMode_max & ~io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:42]
  wire [13:0] sAdjustedExp = $signed(io_in_sExp) - 13'sh700; // @[RoundAnyRawFNToRecFN.scala 108:24]
  wire  _adjustedSig_T_2 = |io_in_sig[27:0]; // @[RoundAnyRawFNToRecFN.scala 115:60]
  wire [26:0] adjustedSig = {io_in_sig[53:28],_adjustedSig_T_2}; // @[Cat.scala 31:58]
  wire [8:0] _roundMask_T_1 = ~sAdjustedExp[8:0]; // @[primitives.scala 51:21]
  wire  roundMask_msb = _roundMask_T_1[8]; // @[primitives.scala 57:25]
  wire [7:0] roundMask_lsbs = _roundMask_T_1[7:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_1 = roundMask_lsbs[7]; // @[primitives.scala 57:25]
  wire [6:0] roundMask_lsbs_1 = roundMask_lsbs[6:0]; // @[primitives.scala 58:26]
  wire  roundMask_msb_2 = roundMask_lsbs_1[6]; // @[primitives.scala 57:25]
  wire [5:0] roundMask_lsbs_2 = roundMask_lsbs_1[5:0]; // @[primitives.scala 58:26]
  wire [64:0] roundMask_shift = 65'sh10000000000000000 >>> roundMask_lsbs_2; // @[primitives.scala 77:58]
  wire [15:0] _GEN_0 = {{8'd0}, roundMask_shift[57:50]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_7 = _GEN_0 & 16'hff; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_9 = {roundMask_shift[49:42], 8'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_11 = _roundMask_T_9 & 16'hff00; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_12 = _roundMask_T_7 | _roundMask_T_11; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_1 = {{4'd0}, _roundMask_T_12[15:4]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_17 = _GEN_1 & 16'hf0f; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_19 = {_roundMask_T_12[11:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_21 = _roundMask_T_19 & 16'hf0f0; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_22 = _roundMask_T_17 | _roundMask_T_21; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_2 = {{2'd0}, _roundMask_T_22[15:2]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_27 = _GEN_2 & 16'h3333; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_29 = {_roundMask_T_22[13:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_31 = _roundMask_T_29 & 16'hcccc; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_32 = _roundMask_T_27 | _roundMask_T_31; // @[Bitwise.scala 105:39]
  wire [15:0] _GEN_3 = {{1'd0}, _roundMask_T_32[15:1]}; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_37 = _GEN_3 & 16'h5555; // @[Bitwise.scala 105:31]
  wire [15:0] _roundMask_T_39 = {_roundMask_T_32[14:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [15:0] _roundMask_T_41 = _roundMask_T_39 & 16'haaaa; // @[Bitwise.scala 105:80]
  wire [15:0] _roundMask_T_42 = _roundMask_T_37 | _roundMask_T_41; // @[Bitwise.scala 105:39]
  wire [21:0] _roundMask_T_59 = {_roundMask_T_42,roundMask_shift[58],roundMask_shift[59],roundMask_shift[60],
    roundMask_shift[61],roundMask_shift[62],roundMask_shift[63]}; // @[Cat.scala 31:58]
  wire [21:0] _roundMask_T_60 = ~_roundMask_T_59; // @[primitives.scala 74:36]
  wire [21:0] _roundMask_T_61 = roundMask_msb_2 ? 22'h0 : _roundMask_T_60; // @[primitives.scala 74:21]
  wire [21:0] _roundMask_T_62 = ~_roundMask_T_61; // @[primitives.scala 74:17]
  wire [24:0] _roundMask_T_63 = {_roundMask_T_62,3'h7}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_70 = {roundMask_shift[0],roundMask_shift[1],roundMask_shift[2]}; // @[Cat.scala 31:58]
  wire [2:0] _roundMask_T_71 = roundMask_msb_2 ? _roundMask_T_70 : 3'h0; // @[primitives.scala 61:24]
  wire [24:0] _roundMask_T_72 = roundMask_msb_1 ? _roundMask_T_63 : {{22'd0}, _roundMask_T_71}; // @[primitives.scala 66:24]
  wire [24:0] _roundMask_T_73 = roundMask_msb ? _roundMask_T_72 : 25'h0; // @[primitives.scala 61:24]
  wire [26:0] roundMask = {_roundMask_T_73,2'h3}; // @[Cat.scala 31:58]
  wire [26:0] shiftedRoundMask = {1'h0,roundMask[26:1]}; // @[Cat.scala 31:58]
  wire [26:0] _roundPosMask_T = ~shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 161:28]
  wire [26:0] roundPosMask = _roundPosMask_T & roundMask; // @[RoundAnyRawFNToRecFN.scala 161:46]
  wire [26:0] _roundPosBit_T = adjustedSig & roundPosMask; // @[RoundAnyRawFNToRecFN.scala 162:40]
  wire  roundPosBit = |_roundPosBit_T; // @[RoundAnyRawFNToRecFN.scala 162:56]
  wire [26:0] _anyRoundExtra_T = adjustedSig & shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 163:42]
  wire  anyRoundExtra = |_anyRoundExtra_T; // @[RoundAnyRawFNToRecFN.scala 163:62]
  wire  anyRound = roundPosBit | anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 164:36]
  wire  _roundIncr_T = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38]
  wire  _roundIncr_T_1 = (roundingMode_near_even | roundingMode_near_maxMag) & roundPosBit; // @[RoundAnyRawFNToRecFN.scala 167:67]
  wire  _roundIncr_T_2 = roundMagUp & anyRound; // @[RoundAnyRawFNToRecFN.scala 169:29]
  wire  roundIncr = _roundIncr_T_1 | _roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 168:31]
  wire [26:0] _roundedSig_T = adjustedSig | roundMask; // @[RoundAnyRawFNToRecFN.scala 172:32]
  wire [25:0] _roundedSig_T_2 = _roundedSig_T[26:2] + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49]
  wire  _roundedSig_T_4 = ~anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 174:30]
  wire [25:0] _roundedSig_T_7 = roundingMode_near_even & roundPosBit & _roundedSig_T_4 ? roundMask[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25]
  wire [25:0] _roundedSig_T_8 = ~_roundedSig_T_7; // @[RoundAnyRawFNToRecFN.scala 173:21]
  wire [25:0] _roundedSig_T_9 = _roundedSig_T_2 & _roundedSig_T_8; // @[RoundAnyRawFNToRecFN.scala 172:61]
  wire [26:0] _roundedSig_T_10 = ~roundMask; // @[RoundAnyRawFNToRecFN.scala 178:32]
  wire [26:0] _roundedSig_T_11 = adjustedSig & _roundedSig_T_10; // @[RoundAnyRawFNToRecFN.scala 178:30]
  wire [25:0] _roundedSig_T_15 = roundingMode_odd & anyRound ? roundPosMask[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24]
  wire [25:0] _GEN_4 = {{1'd0}, _roundedSig_T_11[26:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [25:0] _roundedSig_T_16 = _GEN_4 | _roundedSig_T_15; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [25:0] roundedSig = roundIncr ? _roundedSig_T_9 : _roundedSig_T_16; // @[RoundAnyRawFNToRecFN.scala 171:16]
  wire [2:0] _sRoundedExp_T_1 = {1'b0,$signed(roundedSig[25:24])}; // @[RoundAnyRawFNToRecFN.scala 183:69]
  wire [13:0] _GEN_5 = {{11{_sRoundedExp_T_1[2]}},_sRoundedExp_T_1}; // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [14:0] sRoundedExp = $signed(sAdjustedExp) + $signed(_GEN_5); // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [8:0] common_expOut = sRoundedExp[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37]
  wire [22:0] common_fractOut = roundedSig[22:0]; // @[RoundAnyRawFNToRecFN.scala 189:27]
  wire [7:0] _common_overflow_T = sRoundedExp[14:7]; // @[RoundAnyRawFNToRecFN.scala 194:30]
  wire  common_overflow = $signed(_common_overflow_T) >= 8'sh3; // @[RoundAnyRawFNToRecFN.scala 194:50]
  wire  common_totalUnderflow = $signed(sRoundedExp) < 15'sh6b; // @[RoundAnyRawFNToRecFN.scala 198:31]
  wire  unboundedRange_roundPosBit = adjustedSig[1]; // @[RoundAnyRawFNToRecFN.scala 201:61]
  wire  unboundedRange_anyRound = |adjustedSig[1:0]; // @[RoundAnyRawFNToRecFN.scala 203:70]
  wire  _unboundedRange_roundIncr_T_1 = _roundIncr_T & unboundedRange_roundPosBit; // @[RoundAnyRawFNToRecFN.scala 205:67]
  wire  _unboundedRange_roundIncr_T_2 = roundMagUp & unboundedRange_anyRound; // @[RoundAnyRawFNToRecFN.scala 207:29]
  wire  unboundedRange_roundIncr = _unboundedRange_roundIncr_T_1 | _unboundedRange_roundIncr_T_2; // @[RoundAnyRawFNToRecFN.scala 206:46]
  wire  roundCarry = roundedSig[24]; // @[RoundAnyRawFNToRecFN.scala 211:27]
  wire [5:0] _common_underflow_T = sAdjustedExp[13:8]; // @[RoundAnyRawFNToRecFN.scala 218:48]
  wire  _common_underflow_T_6 = anyRound & $signed(_common_underflow_T) <= 6'sh0 & roundMask[2]; // @[RoundAnyRawFNToRecFN.scala 218:74]
  wire  _common_underflow_T_11 = ~roundMask[3]; // @[RoundAnyRawFNToRecFN.scala 221:34]
  wire  _common_underflow_T_12 = io_detectTininess & _common_underflow_T_11; // @[RoundAnyRawFNToRecFN.scala 220:77]
  wire  _common_underflow_T_13 = _common_underflow_T_12 & roundCarry; // @[RoundAnyRawFNToRecFN.scala 224:38]
  wire  _common_underflow_T_15 = _common_underflow_T_13 & roundPosBit & unboundedRange_roundIncr; // @[RoundAnyRawFNToRecFN.scala 225:60]
  wire  _common_underflow_T_16 = ~_common_underflow_T_15; // @[RoundAnyRawFNToRecFN.scala 220:27]
  wire  _common_underflow_T_17 = _common_underflow_T_6 & _common_underflow_T_16; // @[RoundAnyRawFNToRecFN.scala 219:76]
  wire  common_underflow = common_totalUnderflow | _common_underflow_T_17; // @[RoundAnyRawFNToRecFN.scala 215:40]
  wire  common_inexact = common_totalUnderflow | anyRound; // @[RoundAnyRawFNToRecFN.scala 228:49]
  wire  isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34]
  wire  commonCase = ~isNaNOut & ~io_in_isInf & ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:61]
  wire  overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32]
  wire  underflow = commonCase & common_underflow; // @[RoundAnyRawFNToRecFN.scala 237:32]
  wire  inexact = overflow | commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:28]
  wire  overflow_roundMagUp = _roundIncr_T | roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60]
  wire  pegMinNonzeroMagOut = commonCase & common_totalUnderflow & (roundMagUp | roundingMode_odd); // @[RoundAnyRawFNToRecFN.scala 243:45]
  wire  pegMaxFiniteMagOut = overflow & ~overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 244:39]
  wire  notNaN_isInfOut = io_in_isInf | overflow & overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 246:32]
  wire  signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22]
  wire [8:0] _expOut_T_1 = io_in_isZero | common_totalUnderflow ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18]
  wire [8:0] _expOut_T_2 = ~_expOut_T_1; // @[RoundAnyRawFNToRecFN.scala 251:14]
  wire [8:0] _expOut_T_3 = common_expOut & _expOut_T_2; // @[RoundAnyRawFNToRecFN.scala 250:24]
  wire [8:0] _expOut_T_5 = pegMinNonzeroMagOut ? 9'h194 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 255:18]
  wire [8:0] _expOut_T_6 = ~_expOut_T_5; // @[RoundAnyRawFNToRecFN.scala 255:14]
  wire [8:0] _expOut_T_7 = _expOut_T_3 & _expOut_T_6; // @[RoundAnyRawFNToRecFN.scala 254:17]
  wire [8:0] _expOut_T_8 = pegMaxFiniteMagOut ? 9'h80 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 259:18]
  wire [8:0] _expOut_T_9 = ~_expOut_T_8; // @[RoundAnyRawFNToRecFN.scala 259:14]
  wire [8:0] _expOut_T_10 = _expOut_T_7 & _expOut_T_9; // @[RoundAnyRawFNToRecFN.scala 258:17]
  wire [8:0] _expOut_T_11 = notNaN_isInfOut ? 9'h40 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 263:18]
  wire [8:0] _expOut_T_12 = ~_expOut_T_11; // @[RoundAnyRawFNToRecFN.scala 263:14]
  wire [8:0] _expOut_T_13 = _expOut_T_10 & _expOut_T_12; // @[RoundAnyRawFNToRecFN.scala 262:17]
  wire [8:0] _expOut_T_14 = pegMinNonzeroMagOut ? 9'h6b : 9'h0; // @[RoundAnyRawFNToRecFN.scala 267:16]
  wire [8:0] _expOut_T_15 = _expOut_T_13 | _expOut_T_14; // @[RoundAnyRawFNToRecFN.scala 266:18]
  wire [8:0] _expOut_T_16 = pegMaxFiniteMagOut ? 9'h17f : 9'h0; // @[RoundAnyRawFNToRecFN.scala 271:16]
  wire [8:0] _expOut_T_17 = _expOut_T_15 | _expOut_T_16; // @[RoundAnyRawFNToRecFN.scala 270:15]
  wire [8:0] _expOut_T_18 = notNaN_isInfOut ? 9'h180 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 275:16]
  wire [8:0] _expOut_T_19 = _expOut_T_17 | _expOut_T_18; // @[RoundAnyRawFNToRecFN.scala 274:15]
  wire [8:0] _expOut_T_20 = isNaNOut ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 276:16]
  wire [8:0] expOut = _expOut_T_19 | _expOut_T_20; // @[RoundAnyRawFNToRecFN.scala 275:77]
  wire [22:0] _fractOut_T_2 = isNaNOut ? 23'h400000 : 23'h0; // @[RoundAnyRawFNToRecFN.scala 279:16]
  wire [22:0] _fractOut_T_3 = isNaNOut | io_in_isZero | common_totalUnderflow ? _fractOut_T_2 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12]
  wire [22:0] _fractOut_T_5 = pegMaxFiniteMagOut ? 23'h7fffff : 23'h0; // @[Bitwise.scala 74:12]
  wire [22:0] fractOut = _fractOut_T_3 | _fractOut_T_5; // @[RoundAnyRawFNToRecFN.scala 281:11]
  wire [9:0] io_out_hi = {signOut,expOut}; // @[Cat.scala 31:58]
  wire [1:0] io_exceptionFlags_lo = {underflow,inexact}; // @[Cat.scala 31:58]
  wire [2:0] io_exceptionFlags_hi = {io_invalidExc,1'h0,overflow}; // @[Cat.scala 31:58]
  assign io_out = {io_out_hi,fractOut}; // @[Cat.scala 31:58]
  assign io_exceptionFlags = {io_exceptionFlags_hi,io_exceptionFlags_lo}; // @[Cat.scala 31:58]
endmodule
module RecFNToRecFN(
  input  [64:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RecFNToRecFN.scala 72:19]
  wire [12:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RecFNToRecFN.scala 72:19]
  wire [53:0] roundAnyRawFNToRecFN_io_in_sig; // @[RecFNToRecFN.scala 72:19]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_detectTininess; // @[RecFNToRecFN.scala 72:19]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 72:19]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 72:19]
  wire [11:0] rawIn_exp = io_in[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawIn_isZero = rawIn_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawIn_isSpecial = rawIn_exp[11:10] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawIn__isNaN = rawIn_isSpecial & rawIn_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  wire  _rawIn_out_sig_T = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [1:0] rawIn_out_sig_hi = {1'h0,_rawIn_out_sig_T}; // @[Cat.scala 31:58]
  wire [53:0] rawIn__sig = {1'h0,_rawIn_out_sig_T,io_in[51:0]}; // @[Cat.scala 31:58]
  RoundAnyRawFNToRecFN_4 roundAnyRawFNToRecFN ( // @[RecFNToRecFN.scala 72:19]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundAnyRawFNToRecFN_io_detectTininess),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 85:27]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 86:27]
  assign roundAnyRawFNToRecFN_io_invalidExc = rawIn__isNaN & ~rawIn__sig[51]; // @[common.scala 82:46]
  assign roundAnyRawFNToRecFN_io_in_isNaN = rawIn_isSpecial & rawIn_exp[9]; // @[rawFloatFromRecFN.scala 55:33]
  assign roundAnyRawFNToRecFN_io_in_isInf = rawIn_isSpecial & ~rawIn_exp[9]; // @[rawFloatFromRecFN.scala 56:33]
  assign roundAnyRawFNToRecFN_io_in_isZero = rawIn_exp[11:9] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign roundAnyRawFNToRecFN_io_in_sig = {rawIn_out_sig_hi,io_in[51:0]}; // @[Cat.scala 31:58]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RecFNToRecFN.scala 83:48]
  assign roundAnyRawFNToRecFN_io_detectTininess = io_detectTininess; // @[RecFNToRecFN.scala 84:48]
endmodule
module FPToFP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input  [1:0]  io_in_bits_typeTagOut,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  output        io_out_valid,
  output [64:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc,
  input         io_lt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [95:0] _RAND_5;
  reg [95:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [95:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [95:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [95:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] narrower_io_in; // @[FPU.scala 611:30]
  wire [2:0] narrower_io_roundingMode; // @[FPU.scala 611:30]
  wire  narrower_io_detectTininess; // @[FPU.scala 611:30]
  wire [32:0] narrower_io_out; // @[FPU.scala 611:30]
  wire [4:0] narrower_io_exceptionFlags; // @[FPU.scala 611:30]
  reg  inPipe_valid; // @[Valid.scala 127:22]
  reg  inPipe_bits_ren2; // @[Reg.scala 16:16]
  reg [1:0] inPipe_bits_typeTagOut; // @[Reg.scala 16:16]
  reg  inPipe_bits_wflags; // @[Reg.scala 16:16]
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 16:16]
  reg [64:0] inPipe_bits_in1; // @[Reg.scala 16:16]
  reg [64:0] inPipe_bits_in2; // @[Reg.scala 16:16]
  wire [64:0] _signNum_T_1 = inPipe_bits_in1 ^ inPipe_bits_in2; // @[FPU.scala 574:48]
  wire [64:0] _signNum_T_3 = ~inPipe_bits_in2; // @[FPU.scala 574:82]
  wire [64:0] _signNum_T_4 = inPipe_bits_rm[0] ? _signNum_T_3 : inPipe_bits_in2; // @[FPU.scala 574:66]
  wire [64:0] signNum = inPipe_bits_rm[1] ? _signNum_T_1 : _signNum_T_4; // @[FPU.scala 574:20]
  wire [64:0] fsgnj = {signNum[64],inPipe_bits_in1[63:0]}; // @[Cat.scala 31:58]
  wire  isnan1 = &inPipe_bits_in1[63:61]; // @[FPU.scala 242:56]
  wire  isnan2 = &inPipe_bits_in2[63:61]; // @[FPU.scala 242:56]
  wire  _isInvalid_T_4 = isnan1 & ~inPipe_bits_in1[51]; // @[FPU.scala 243:34]
  wire  _isInvalid_T_9 = isnan2 & ~inPipe_bits_in2[51]; // @[FPU.scala 243:34]
  wire  isInvalid = _isInvalid_T_4 | _isInvalid_T_9; // @[FPU.scala 584:49]
  wire  isNaNOut = isnan1 & isnan2; // @[FPU.scala 585:27]
  wire  isLHS = isnan2 | inPipe_bits_rm[0] != io_lt & ~isnan1; // @[FPU.scala 586:24]
  wire [4:0] _fsgnjMux_exc_T = {isInvalid, 4'h0}; // @[FPU.scala 587:31]
  wire [64:0] _fsgnjMux_data_T = isLHS ? inPipe_bits_in1 : inPipe_bits_in2; // @[FPU.scala 588:53]
  wire [64:0] _fsgnjMux_data_T_1 = isNaNOut ? 65'he008000000000000 : _fsgnjMux_data_T; // @[FPU.scala 588:25]
  wire [4:0] _GEN_23 = inPipe_bits_wflags ? _fsgnjMux_exc_T : 5'h0; // @[FPU.scala 578:16 581:25 587:18]
  wire [64:0] _GEN_24 = inPipe_bits_wflags ? _fsgnjMux_data_T_1 : fsgnj; // @[FPU.scala 579:17 581:25 588:19]
  wire  _T = inPipe_bits_typeTagOut == 2'h0; // @[FPU.scala 595:18]
  wire [64:0] widened = isnan1 ? 65'he008000000000000 : inPipe_bits_in1; // @[FPU.scala 603:24]
  wire [64:0] fsgnjMux_data = inPipe_bits_wflags & ~inPipe_bits_ren2 ? widened : _GEN_24; // @[FPU.scala 600:42 604:21]
  wire  mux_data_sign = fsgnjMux_data[64]; // @[FPU.scala 267:17]
  wire [51:0] mux_data_fractIn = fsgnjMux_data[51:0]; // @[FPU.scala 268:20]
  wire [11:0] mux_data_expIn = fsgnjMux_data[63:52]; // @[FPU.scala 269:18]
  wire [75:0] _mux_data_fractOut_T = {mux_data_fractIn, 24'h0}; // @[FPU.scala 270:28]
  wire [22:0] mux_data_fractOut = _mux_data_fractOut_T[75:53]; // @[FPU.scala 270:38]
  wire [2:0] mux_data_expOut_expCode = mux_data_expIn[11:9]; // @[FPU.scala 272:26]
  wire [11:0] _mux_data_expOut_commonCase_T_1 = mux_data_expIn + 12'h100; // @[FPU.scala 273:31]
  wire [11:0] mux_data_expOut_commonCase = _mux_data_expOut_commonCase_T_1 - 12'h800; // @[FPU.scala 273:48]
  wire [8:0] _mux_data_expOut_T_4 = {mux_data_expOut_expCode,mux_data_expOut_commonCase[5:0]}; // @[Cat.scala 31:58]
  wire [8:0] mux_data_expOut = mux_data_expOut_expCode == 3'h0 | mux_data_expOut_expCode >= 3'h6 ? _mux_data_expOut_T_4
     : mux_data_expOut_commonCase[8:0]; // @[FPU.scala 274:10]
  wire [64:0] _mux_data_T_2 = {fsgnjMux_data[64:33],mux_data_sign,mux_data_expOut,mux_data_fractOut}; // @[Cat.scala 31:58]
  wire [64:0] _GEN_25 = inPipe_bits_typeTagOut == 2'h0 ? _mux_data_T_2 : fsgnjMux_data; // @[FPU.scala 595:34 596:16]
  wire [4:0] _fsgnjMux_exc_T_6 = {_isInvalid_T_4, 4'h0}; // @[FPU.scala 605:51]
  wire [64:0] _mux_data_T_4 = {fsgnjMux_data[64:33],narrower_io_out}; // @[Cat.scala 31:58]
  wire [4:0] fsgnjMux_exc = inPipe_bits_wflags & ~inPipe_bits_ren2 ? _fsgnjMux_exc_T_6 : _GEN_23; // @[FPU.scala 600:42 605:20]
  reg  io_out_v; // @[Valid.scala 127:22]
  reg [64:0] io_out_b_data; // @[Reg.scala 16:16]
  reg [4:0] io_out_b_exc; // @[Reg.scala 16:16]
  reg  io_out_outPipe_valid; // @[Valid.scala 127:22]
  reg [64:0] io_out_outPipe_bits_data; // @[Reg.scala 16:16]
  reg [4:0] io_out_outPipe_bits_exc; // @[Reg.scala 16:16]
  reg  io_out_outPipe_valid_1; // @[Valid.scala 127:22]
  reg [64:0] io_out_outPipe_bits_1_data; // @[Reg.scala 16:16]
  reg [4:0] io_out_outPipe_bits_1_exc; // @[Reg.scala 16:16]
  RecFNToRecFN narrower ( // @[FPU.scala 611:30]
    .io_in(narrower_io_in),
    .io_roundingMode(narrower_io_roundingMode),
    .io_detectTininess(narrower_io_detectTininess),
    .io_out(narrower_io_out),
    .io_exceptionFlags(narrower_io_exceptionFlags)
  );
  assign io_out_valid = io_out_outPipe_valid_1; // @[Valid.scala 122:21 123:17]
  assign io_out_bits_data = io_out_outPipe_bits_1_data; // @[Valid.scala 122:21 124:16]
  assign io_out_bits_exc = io_out_outPipe_bits_1_exc; // @[Valid.scala 122:21 124:16]
  assign narrower_io_in = inPipe_bits_in1; // @[Valid.scala 122:21 124:16]
  assign narrower_io_roundingMode = inPipe_bits_rm; // @[Valid.scala 122:21 124:16]
  assign narrower_io_detectTininess = 1'h1; // @[FPU.scala 614:36]
  always @(posedge clock) begin
    if (reset) begin // @[Valid.scala 127:22]
      inPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      inPipe_valid <= io_in_valid; // @[Valid.scala 127:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_ren2 <= io_in_bits_ren2; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_typeTagOut <= io_in_bits_typeTagOut; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_wflags <= io_in_bits_wflags; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_rm <= io_in_bits_rm; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_in1 <= io_in_bits_in1; // @[Reg.scala 17:22]
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      inPipe_bits_in2 <= io_in_bits_in2; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_out_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_out_v <= inPipe_valid; // @[Valid.scala 127:22]
    end
    if (inPipe_valid) begin // @[Reg.scala 17:18]
      if (inPipe_bits_wflags & ~inPipe_bits_ren2) begin // @[FPU.scala 600:42]
        if (_T) begin // @[FPU.scala 610:120]
          io_out_b_data <= _mux_data_T_4; // @[FPU.scala 616:18]
        end else begin
          io_out_b_data <= _GEN_25;
        end
      end else begin
        io_out_b_data <= _GEN_25;
      end
    end
    if (inPipe_valid) begin // @[Reg.scala 17:18]
      if (inPipe_bits_wflags & ~inPipe_bits_ren2) begin // @[FPU.scala 600:42]
        if (_T) begin // @[FPU.scala 610:120]
          io_out_b_exc <= narrower_io_exceptionFlags; // @[FPU.scala 617:17]
        end else begin
          io_out_b_exc <= fsgnjMux_exc;
        end
      end else begin
        io_out_b_exc <= fsgnjMux_exc;
      end
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_out_outPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_out_outPipe_valid <= io_out_v; // @[Valid.scala 127:22]
    end
    if (io_out_v) begin // @[Reg.scala 17:18]
      io_out_outPipe_bits_data <= io_out_b_data; // @[Reg.scala 17:22]
    end
    if (io_out_v) begin // @[Reg.scala 17:18]
      io_out_outPipe_bits_exc <= io_out_b_exc; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_out_outPipe_valid_1 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_out_outPipe_valid_1 <= io_out_outPipe_valid; // @[Valid.scala 127:22]
    end
    if (io_out_outPipe_valid) begin // @[Reg.scala 17:18]
      io_out_outPipe_bits_1_data <= io_out_outPipe_bits_data; // @[Reg.scala 17:22]
    end
    if (io_out_outPipe_valid) begin // @[Reg.scala 17:18]
      io_out_outPipe_bits_1_exc <= io_out_outPipe_bits_exc; // @[Reg.scala 17:22]
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
  inPipe_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_ren2 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_typeTagOut = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_4[2:0];
  _RAND_5 = {3{`RANDOM}};
  inPipe_bits_in1 = _RAND_5[64:0];
  _RAND_6 = {3{`RANDOM}};
  inPipe_bits_in2 = _RAND_6[64:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_v = _RAND_7[0:0];
  _RAND_8 = {3{`RANDOM}};
  io_out_b_data = _RAND_8[64:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_b_exc = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_outPipe_valid = _RAND_10[0:0];
  _RAND_11 = {3{`RANDOM}};
  io_out_outPipe_bits_data = _RAND_11[64:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_outPipe_bits_exc = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_outPipe_valid_1 = _RAND_13[0:0];
  _RAND_14 = {3{`RANDOM}};
  io_out_outPipe_bits_1_data = _RAND_14[64:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_outPipe_bits_1_exc = _RAND_15[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPU(
  input         clock,
  input         reset,
  input         io_req_valid,
  input  [6:0]  io_req_bits_uop_uopc,
  input  [19:0] io_req_bits_uop_imm_packed,
  input  [64:0] io_req_bits_rs1_data,
  input  [64:0] io_req_bits_rs2_data,
  input  [64:0] io_req_bits_rs3_data,
  input  [2:0]  io_req_bits_fcsr_rm,
  output        io_resp_valid,
  output [64:0] io_resp_bits_data,
  output        io_resp_bits_fflags_valid,
  output [4:0]  io_resp_bits_fflags_bits_flags
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] fp_decoder_io_uopc; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_ren2; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_ren3; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_swap23; // @[fpu.scala 179:26]
  wire [1:0] fp_decoder_io_sigs_typeTagIn; // @[fpu.scala 179:26]
  wire [1:0] fp_decoder_io_sigs_typeTagOut; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_fromint; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_toint; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_fastpipe; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_fma; // @[fpu.scala 179:26]
  wire  fp_decoder_io_sigs_wflags; // @[fpu.scala 179:26]
  wire  dfma_clock; // @[fpu.scala 205:20]
  wire  dfma_reset; // @[fpu.scala 205:20]
  wire  dfma_io_in_valid; // @[fpu.scala 205:20]
  wire  dfma_io_in_bits_ren3; // @[fpu.scala 205:20]
  wire  dfma_io_in_bits_swap23; // @[fpu.scala 205:20]
  wire [2:0] dfma_io_in_bits_rm; // @[fpu.scala 205:20]
  wire [1:0] dfma_io_in_bits_fmaCmd; // @[fpu.scala 205:20]
  wire [64:0] dfma_io_in_bits_in1; // @[fpu.scala 205:20]
  wire [64:0] dfma_io_in_bits_in2; // @[fpu.scala 205:20]
  wire [64:0] dfma_io_in_bits_in3; // @[fpu.scala 205:20]
  wire  dfma_io_out_valid; // @[fpu.scala 205:20]
  wire [64:0] dfma_io_out_bits_data; // @[fpu.scala 205:20]
  wire [4:0] dfma_io_out_bits_exc; // @[fpu.scala 205:20]
  wire [6:0] dfma_io_in_bits_fma_decoder_io_uopc; // @[fpu.scala 199:29]
  wire [1:0] dfma_io_in_bits_fma_decoder_io_cmd; // @[fpu.scala 199:29]
  wire  sfma_clock; // @[fpu.scala 209:20]
  wire  sfma_reset; // @[fpu.scala 209:20]
  wire  sfma_io_in_valid; // @[fpu.scala 209:20]
  wire  sfma_io_in_bits_ren3; // @[fpu.scala 209:20]
  wire  sfma_io_in_bits_swap23; // @[fpu.scala 209:20]
  wire [2:0] sfma_io_in_bits_rm; // @[fpu.scala 209:20]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[fpu.scala 209:20]
  wire [64:0] sfma_io_in_bits_in1; // @[fpu.scala 209:20]
  wire [64:0] sfma_io_in_bits_in2; // @[fpu.scala 209:20]
  wire [64:0] sfma_io_in_bits_in3; // @[fpu.scala 209:20]
  wire  sfma_io_out_valid; // @[fpu.scala 209:20]
  wire [64:0] sfma_io_out_bits_data; // @[fpu.scala 209:20]
  wire [4:0] sfma_io_out_bits_exc; // @[fpu.scala 209:20]
  wire [6:0] sfma_io_in_bits_fma_decoder_io_uopc; // @[fpu.scala 199:29]
  wire [1:0] sfma_io_in_bits_fma_decoder_io_cmd; // @[fpu.scala 199:29]
  wire  fpiu_clock; // @[fpu.scala 213:20]
  wire  fpiu_io_in_valid; // @[fpu.scala 213:20]
  wire  fpiu_io_in_bits_ren2; // @[fpu.scala 213:20]
  wire [1:0] fpiu_io_in_bits_typeTagOut; // @[fpu.scala 213:20]
  wire  fpiu_io_in_bits_wflags; // @[fpu.scala 213:20]
  wire [2:0] fpiu_io_in_bits_rm; // @[fpu.scala 213:20]
  wire [1:0] fpiu_io_in_bits_typ; // @[fpu.scala 213:20]
  wire [1:0] fpiu_io_in_bits_fmt; // @[fpu.scala 213:20]
  wire [64:0] fpiu_io_in_bits_in1; // @[fpu.scala 213:20]
  wire [64:0] fpiu_io_in_bits_in2; // @[fpu.scala 213:20]
  wire  fpiu_io_out_bits_lt; // @[fpu.scala 213:20]
  wire [63:0] fpiu_io_out_bits_toint; // @[fpu.scala 213:20]
  wire [4:0] fpiu_io_out_bits_exc; // @[fpu.scala 213:20]
  wire [6:0] fpiu_io_in_bits_fma_decoder_io_uopc; // @[fpu.scala 199:29]
  wire [1:0] fpiu_io_in_bits_fma_decoder_io_cmd; // @[fpu.scala 199:29]
  wire  fpmu_clock; // @[fpu.scala 222:20]
  wire  fpmu_reset; // @[fpu.scala 222:20]
  wire  fpmu_io_in_valid; // @[fpu.scala 222:20]
  wire  fpmu_io_in_bits_ren2; // @[fpu.scala 222:20]
  wire [1:0] fpmu_io_in_bits_typeTagOut; // @[fpu.scala 222:20]
  wire  fpmu_io_in_bits_wflags; // @[fpu.scala 222:20]
  wire [2:0] fpmu_io_in_bits_rm; // @[fpu.scala 222:20]
  wire [64:0] fpmu_io_in_bits_in1; // @[fpu.scala 222:20]
  wire [64:0] fpmu_io_in_bits_in2; // @[fpu.scala 222:20]
  wire  fpmu_io_out_valid; // @[fpu.scala 222:20]
  wire [64:0] fpmu_io_out_bits_data; // @[fpu.scala 222:20]
  wire [4:0] fpmu_io_out_bits_exc; // @[fpu.scala 222:20]
  wire  fpmu_io_lt; // @[fpu.scala 222:20]
  wire  _dfma_io_in_valid_T = io_req_valid & fp_decoder_io_sigs_fma; // @[fpu.scala 206:36]
  wire  _dfma_io_in_valid_T_1 = fp_decoder_io_sigs_typeTagOut == 2'h1; // @[fpu.scala 206:74]
  wire [32:0] dfma_io_in_bits_req_in1_unswizzled = {io_req_bits_rs1_data[31],io_req_bits_rs1_data[52],
    io_req_bits_rs1_data[30:0]}; // @[Cat.scala 31:58]
  wire  dfma_io_in_bits_req_in1_sign = dfma_io_in_bits_req_in1_unswizzled[32]; // @[FPU.scala 267:17]
  wire [22:0] dfma_io_in_bits_req_in1_fractIn = dfma_io_in_bits_req_in1_unswizzled[22:0]; // @[FPU.scala 268:20]
  wire [8:0] dfma_io_in_bits_req_in1_expIn = dfma_io_in_bits_req_in1_unswizzled[31:23]; // @[FPU.scala 269:18]
  wire [75:0] _dfma_io_in_bits_req_in1_fractOut_T = {dfma_io_in_bits_req_in1_fractIn, 53'h0}; // @[FPU.scala 270:28]
  wire [51:0] dfma_io_in_bits_req_in1_fractOut = _dfma_io_in_bits_req_in1_fractOut_T[75:24]; // @[FPU.scala 270:38]
  wire [2:0] dfma_io_in_bits_req_in1_expOut_expCode = dfma_io_in_bits_req_in1_expIn[8:6]; // @[FPU.scala 272:26]
  wire [11:0] _GEN_91 = {{3'd0}, dfma_io_in_bits_req_in1_expIn}; // @[FPU.scala 273:31]
  wire [11:0] _dfma_io_in_bits_req_in1_expOut_commonCase_T_1 = _GEN_91 + 12'h800; // @[FPU.scala 273:31]
  wire [11:0] dfma_io_in_bits_req_in1_expOut_commonCase = _dfma_io_in_bits_req_in1_expOut_commonCase_T_1 - 12'h100; // @[FPU.scala 273:48]
  wire [11:0] _dfma_io_in_bits_req_in1_expOut_T_4 = {dfma_io_in_bits_req_in1_expOut_expCode,
    dfma_io_in_bits_req_in1_expOut_commonCase[8:0]}; // @[Cat.scala 31:58]
  wire [11:0] dfma_io_in_bits_req_in1_expOut = dfma_io_in_bits_req_in1_expOut_expCode == 3'h0 |
    dfma_io_in_bits_req_in1_expOut_expCode >= 3'h6 ? _dfma_io_in_bits_req_in1_expOut_T_4 :
    dfma_io_in_bits_req_in1_expOut_commonCase; // @[FPU.scala 274:10]
  wire [64:0] dfma_io_in_bits_req_in1_floats_0 = {dfma_io_in_bits_req_in1_sign,dfma_io_in_bits_req_in1_expOut,
    dfma_io_in_bits_req_in1_fractOut}; // @[Cat.scala 31:58]
  wire  dfma_io_in_bits_req_in1_isbox = &io_req_bits_rs1_data[64:60]; // @[FPU.scala 325:84]
  wire [32:0] dfma_io_in_bits_req_in2_unswizzled = {io_req_bits_rs2_data[31],io_req_bits_rs2_data[52],
    io_req_bits_rs2_data[30:0]}; // @[Cat.scala 31:58]
  wire  dfma_io_in_bits_req_in2_sign = dfma_io_in_bits_req_in2_unswizzled[32]; // @[FPU.scala 267:17]
  wire [22:0] dfma_io_in_bits_req_in2_fractIn = dfma_io_in_bits_req_in2_unswizzled[22:0]; // @[FPU.scala 268:20]
  wire [8:0] dfma_io_in_bits_req_in2_expIn = dfma_io_in_bits_req_in2_unswizzled[31:23]; // @[FPU.scala 269:18]
  wire [75:0] _dfma_io_in_bits_req_in2_fractOut_T = {dfma_io_in_bits_req_in2_fractIn, 53'h0}; // @[FPU.scala 270:28]
  wire [51:0] dfma_io_in_bits_req_in2_fractOut = _dfma_io_in_bits_req_in2_fractOut_T[75:24]; // @[FPU.scala 270:38]
  wire [2:0] dfma_io_in_bits_req_in2_expOut_expCode = dfma_io_in_bits_req_in2_expIn[8:6]; // @[FPU.scala 272:26]
  wire [11:0] _GEN_92 = {{3'd0}, dfma_io_in_bits_req_in2_expIn}; // @[FPU.scala 273:31]
  wire [11:0] _dfma_io_in_bits_req_in2_expOut_commonCase_T_1 = _GEN_92 + 12'h800; // @[FPU.scala 273:31]
  wire [11:0] dfma_io_in_bits_req_in2_expOut_commonCase = _dfma_io_in_bits_req_in2_expOut_commonCase_T_1 - 12'h100; // @[FPU.scala 273:48]
  wire [11:0] _dfma_io_in_bits_req_in2_expOut_T_4 = {dfma_io_in_bits_req_in2_expOut_expCode,
    dfma_io_in_bits_req_in2_expOut_commonCase[8:0]}; // @[Cat.scala 31:58]
  wire [11:0] dfma_io_in_bits_req_in2_expOut = dfma_io_in_bits_req_in2_expOut_expCode == 3'h0 |
    dfma_io_in_bits_req_in2_expOut_expCode >= 3'h6 ? _dfma_io_in_bits_req_in2_expOut_T_4 :
    dfma_io_in_bits_req_in2_expOut_commonCase; // @[FPU.scala 274:10]
  wire [64:0] dfma_io_in_bits_req_in2_floats_0 = {dfma_io_in_bits_req_in2_sign,dfma_io_in_bits_req_in2_expOut,
    dfma_io_in_bits_req_in2_fractOut}; // @[Cat.scala 31:58]
  wire  dfma_io_in_bits_req_in2_isbox = &io_req_bits_rs2_data[64:60]; // @[FPU.scala 325:84]
  wire [32:0] dfma_io_in_bits_req_in3_unswizzled = {io_req_bits_rs3_data[31],io_req_bits_rs3_data[52],
    io_req_bits_rs3_data[30:0]}; // @[Cat.scala 31:58]
  wire  dfma_io_in_bits_req_in3_isbox = &io_req_bits_rs3_data[64:60]; // @[FPU.scala 325:84]
  wire  _dfma_io_in_bits_req_fmt_T_1 = fp_decoder_io_sigs_typeTagIn == 2'h0 ? 1'h0 : 1'h1; // @[fpu.scala 194:19]
  wire  _GEN_1 = io_req_bits_uop_uopc == 7'h46 ? 1'h0 : _dfma_io_in_bits_req_fmt_T_1; // @[fpu.scala 194:13 195:43 196:15]
  wire [32:0] _sfma_io_in_bits_req_in1_T = dfma_io_in_bits_req_in1_isbox ? 33'h0 : 33'he0400000; // @[FPU.scala 365:31]
  wire [32:0] _sfma_io_in_bits_req_in1_T_1 = dfma_io_in_bits_req_in1_unswizzled | _sfma_io_in_bits_req_in1_T; // @[FPU.scala 365:26]
  wire [32:0] _sfma_io_in_bits_req_in2_T = dfma_io_in_bits_req_in2_isbox ? 33'h0 : 33'he0400000; // @[FPU.scala 365:31]
  wire [32:0] _sfma_io_in_bits_req_in2_T_1 = dfma_io_in_bits_req_in2_unswizzled | _sfma_io_in_bits_req_in2_T; // @[FPU.scala 365:26]
  wire [32:0] _sfma_io_in_bits_req_in3_T = dfma_io_in_bits_req_in3_isbox ? 33'h0 : 33'he0400000; // @[FPU.scala 365:31]
  wire [32:0] _sfma_io_in_bits_req_in3_T_1 = dfma_io_in_bits_req_in3_unswizzled | _sfma_io_in_bits_req_in3_T; // @[FPU.scala 365:26]
  wire [64:0] sfma_io_in_bits_req_in2 = {{32'd0}, _sfma_io_in_bits_req_in2_T_1}; // @[fpu.scala 185:19 190:13]
  wire [1:0] _fpiu_io_in_bits_req_in1_truncIdx_T = fp_decoder_io_sigs_typeTagIn; // @[package.scala 31:21]
  wire  fpiu_io_in_bits_req_in1_truncIdx = _fpiu_io_in_bits_req_in1_truncIdx_T[0]; // @[package.scala 31:49]
  wire  _fpiu_io_in_bits_req_in1_T_1 = fpiu_io_in_bits_req_in1_truncIdx | dfma_io_in_bits_req_in1_isbox; // @[package.scala 32:76]
  wire [64:0] _fpiu_io_in_bits_req_in1_T_3 = fpiu_io_in_bits_req_in1_truncIdx ? io_req_bits_rs1_data :
    dfma_io_in_bits_req_in1_floats_0; // @[package.scala 32:76]
  wire  _fpiu_io_in_bits_req_in2_T_1 = fpiu_io_in_bits_req_in1_truncIdx | dfma_io_in_bits_req_in2_isbox; // @[package.scala 32:76]
  wire [64:0] _fpiu_io_in_bits_req_in2_T_3 = fpiu_io_in_bits_req_in1_truncIdx ? io_req_bits_rs2_data :
    dfma_io_in_bits_req_in2_floats_0; // @[package.scala 32:76]
  reg  fpiu_out_REG; // @[fpu.scala 216:30]
  reg  fpiu_outPipe_valid; // @[Valid.scala 127:22]
  reg [63:0] fpiu_outPipe_bits_toint; // @[Reg.scala 16:16]
  reg [4:0] fpiu_outPipe_bits_exc; // @[Reg.scala 16:16]
  reg  fpiu_outPipe_valid_1; // @[Valid.scala 127:22]
  reg [63:0] fpiu_outPipe_bits_1_toint; // @[Reg.scala 16:16]
  reg [4:0] fpiu_outPipe_bits_1_exc; // @[Reg.scala 16:16]
  reg  fpiu_outPipe_valid_2; // @[Valid.scala 127:22]
  reg [63:0] fpiu_outPipe_bits_2_toint; // @[Reg.scala 16:16]
  reg [4:0] fpiu_outPipe_bits_2_exc; // @[Reg.scala 16:16]
  wire  _fpmu_io_in_valid_T = io_req_valid & fp_decoder_io_sigs_fastpipe; // @[fpu.scala 223:36]
  reg  fpmu_double_v; // @[Valid.scala 127:22]
  reg  fpmu_double_b; // @[Reg.scala 16:16]
  reg  fpmu_double_outPipe_valid; // @[Valid.scala 127:22]
  reg  fpmu_double_outPipe_bits; // @[Reg.scala 16:16]
  reg  fpmu_double_outPipe_valid_1; // @[Valid.scala 127:22]
  reg  fpmu_double_outPipe_bits_1; // @[Reg.scala 16:16]
  reg  fpmu_double_outPipe_bits_2; // @[Reg.scala 16:16]
  wire  _io_resp_valid_T = fpiu_outPipe_valid_2 | fpmu_io_out_valid; // @[fpu.scala 229:35]
  wire  _io_resp_valid_T_1 = _io_resp_valid_T | sfma_io_out_valid; // @[fpu.scala 230:38]
  wire [64:0] _fpu_out_data_T_1 = dfma_io_out_bits_data; // @[package.scala 32:76]
  wire [64:0] fpu_out_data_opts_bigger_swizzledNaN_1 = {5'h1f,7'h7f,sfma_io_out_bits_data[31],20'hfffff,
    sfma_io_out_bits_data[32],sfma_io_out_bits_data[30:0]}; // @[Cat.scala 31:58]
  wire [64:0] fpu_out_data_opts_bigger_swizzledNaN_2 = {5'h1f,7'h7f,fpmu_io_out_bits_data[31],20'hfffff,
    fpmu_io_out_bits_data[32],fpmu_io_out_bits_data[30:0]}; // @[Cat.scala 31:58]
  wire [64:0] _fpu_out_data_T_5 = fpmu_double_outPipe_bits_2 ? fpmu_io_out_bits_data :
    fpu_out_data_opts_bigger_swizzledNaN_2; // @[package.scala 32:76]
  wire [64:0] fpiu_result_data = {{1'd0}, fpiu_outPipe_bits_2_toint}; // @[fpu.scala 218:26 219:20]
  wire [64:0] _fpu_out_data_T_6 = fpiu_outPipe_valid_2 ? fpiu_result_data : _fpu_out_data_T_5; // @[fpu.scala 236:8]
  wire [64:0] _fpu_out_data_T_7 = sfma_io_out_valid ? fpu_out_data_opts_bigger_swizzledNaN_1 : _fpu_out_data_T_6;
  wire [4:0] _fpu_out_exc_T = fpiu_outPipe_valid_2 ? fpiu_outPipe_bits_2_exc : fpmu_io_out_bits_exc; // @[fpu.scala 242:8]
  wire [4:0] _fpu_out_exc_T_1 = sfma_io_out_valid ? sfma_io_out_bits_exc : _fpu_out_exc_T; // @[fpu.scala 241:8]
  UOPCodeFPUDecoder fp_decoder ( // @[fpu.scala 179:26]
    .io_uopc(fp_decoder_io_uopc),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_typeTagIn(fp_decoder_io_sigs_typeTagIn),
    .io_sigs_typeTagOut(fp_decoder_io_sigs_typeTagOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  FPUFMAPipe dfma ( // @[fpu.scala 205:20]
    .clock(dfma_clock),
    .reset(dfma_reset),
    .io_in_valid(dfma_io_in_valid),
    .io_in_bits_ren3(dfma_io_in_bits_ren3),
    .io_in_bits_swap23(dfma_io_in_bits_swap23),
    .io_in_bits_rm(dfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(dfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(dfma_io_in_bits_in1),
    .io_in_bits_in2(dfma_io_in_bits_in2),
    .io_in_bits_in3(dfma_io_in_bits_in3),
    .io_out_valid(dfma_io_out_valid),
    .io_out_bits_data(dfma_io_out_bits_data),
    .io_out_bits_exc(dfma_io_out_bits_exc)
  );
  FMADecoder dfma_io_in_bits_fma_decoder ( // @[fpu.scala 199:29]
    .io_uopc(dfma_io_in_bits_fma_decoder_io_uopc),
    .io_cmd(dfma_io_in_bits_fma_decoder_io_cmd)
  );
  FPUFMAPipe_1 sfma ( // @[fpu.scala 209:20]
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_valid(sfma_io_out_valid),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  FMADecoder sfma_io_in_bits_fma_decoder ( // @[fpu.scala 199:29]
    .io_uopc(sfma_io_in_bits_fma_decoder_io_uopc),
    .io_cmd(sfma_io_in_bits_fma_decoder_io_cmd)
  );
  FPToInt fpiu ( // @[fpu.scala 213:20]
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_typeTagOut(fpiu_io_in_bits_typeTagOut),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_fmt(fpiu_io_in_bits_fmt),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  FMADecoder fpiu_io_in_bits_fma_decoder ( // @[fpu.scala 199:29]
    .io_uopc(fpiu_io_in_bits_fma_decoder_io_uopc),
    .io_cmd(fpiu_io_in_bits_fma_decoder_io_cmd)
  );
  FPToFP fpmu ( // @[fpu.scala 222:20]
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_ren2(fpmu_io_in_bits_ren2),
    .io_in_bits_typeTagOut(fpmu_io_in_bits_typeTagOut),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_valid(fpmu_io_out_valid),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  assign io_resp_valid = _io_resp_valid_T_1 | dfma_io_out_valid; // @[fpu.scala 231:38]
  assign io_resp_bits_data = dfma_io_out_valid ? _fpu_out_data_T_1 : _fpu_out_data_T_7; // @[fpu.scala 234:8]
  assign io_resp_bits_fflags_valid = io_resp_valid; // @[fpu.scala 246:34]
  assign io_resp_bits_fflags_bits_flags = dfma_io_out_valid ? dfma_io_out_bits_exc : _fpu_out_exc_T_1; // @[fpu.scala 240:8]
  assign fp_decoder_io_uopc = io_req_bits_uop_uopc; // @[fpu.scala 180:22]
  assign dfma_clock = clock;
  assign dfma_reset = reset;
  assign dfma_io_in_valid = io_req_valid & fp_decoder_io_sigs_fma & fp_decoder_io_sigs_typeTagOut == 2'h1; // @[fpu.scala 206:51]
  assign dfma_io_in_bits_ren3 = fp_decoder_io_sigs_ren3; // @[fpu.scala 185:19 187:9]
  assign dfma_io_in_bits_swap23 = fp_decoder_io_sigs_swap23; // @[fpu.scala 185:19 187:9]
  assign dfma_io_in_bits_rm = io_req_bits_uop_imm_packed[2:0] == 3'h7 ? io_req_bits_fcsr_rm : io_req_bits_uop_imm_packed
    [2:0]; // @[fpu.scala 182:18]
  assign dfma_io_in_bits_fmaCmd = dfma_io_in_bits_fma_decoder_io_cmd; // @[fpu.scala 185:19 201:16]
  assign dfma_io_in_bits_in1 = io_req_bits_rs1_data; // @[FPU.scala 365:26]
  assign dfma_io_in_bits_in2 = io_req_bits_rs2_data; // @[FPU.scala 365:26]
  assign dfma_io_in_bits_in3 = fp_decoder_io_sigs_swap23 ? io_req_bits_rs2_data : io_req_bits_rs3_data; // @[fpu.scala 191:13 192:{27,37}]
  assign dfma_io_in_bits_fma_decoder_io_uopc = io_req_bits_uop_uopc; // @[fpu.scala 200:25]
  assign sfma_clock = clock;
  assign sfma_reset = reset;
  assign sfma_io_in_valid = _dfma_io_in_valid_T & fp_decoder_io_sigs_typeTagOut == 2'h0; // @[fpu.scala 210:51]
  assign sfma_io_in_bits_ren3 = fp_decoder_io_sigs_ren3; // @[fpu.scala 185:19 187:9]
  assign sfma_io_in_bits_swap23 = fp_decoder_io_sigs_swap23; // @[fpu.scala 185:19 187:9]
  assign sfma_io_in_bits_rm = io_req_bits_uop_imm_packed[2:0] == 3'h7 ? io_req_bits_fcsr_rm : io_req_bits_uop_imm_packed
    [2:0]; // @[fpu.scala 182:18]
  assign sfma_io_in_bits_fmaCmd = sfma_io_in_bits_fma_decoder_io_cmd; // @[fpu.scala 185:19 201:16]
  assign sfma_io_in_bits_in1 = {{32'd0}, _sfma_io_in_bits_req_in1_T_1}; // @[fpu.scala 185:19 189:13]
  assign sfma_io_in_bits_in2 = {{32'd0}, _sfma_io_in_bits_req_in2_T_1}; // @[fpu.scala 185:19 190:13]
  assign sfma_io_in_bits_in3 = fp_decoder_io_sigs_swap23 ? sfma_io_in_bits_req_in2 : {{32'd0},
    _sfma_io_in_bits_req_in3_T_1}; // @[fpu.scala 191:13 192:{27,37}]
  assign sfma_io_in_bits_fma_decoder_io_uopc = io_req_bits_uop_uopc; // @[fpu.scala 200:25]
  assign fpiu_clock = clock;
  assign fpiu_io_in_valid = io_req_valid & (fp_decoder_io_sigs_toint | fp_decoder_io_sigs_fastpipe &
    fp_decoder_io_sigs_wflags); // @[fpu.scala 214:36]
  assign fpiu_io_in_bits_ren2 = fp_decoder_io_sigs_ren2; // @[fpu.scala 185:19 187:9]
  assign fpiu_io_in_bits_typeTagOut = fp_decoder_io_sigs_typeTagOut; // @[fpu.scala 185:19 187:9]
  assign fpiu_io_in_bits_wflags = fp_decoder_io_sigs_wflags; // @[fpu.scala 185:19 187:9]
  assign fpiu_io_in_bits_rm = io_req_bits_uop_imm_packed[2:0] == 3'h7 ? io_req_bits_fcsr_rm : io_req_bits_uop_imm_packed
    [2:0]; // @[fpu.scala 182:18]
  assign fpiu_io_in_bits_typ = io_req_bits_uop_imm_packed[9:8]; // @[util.scala 295:59]
  assign fpiu_io_in_bits_fmt = {{1'd0}, _GEN_1}; // @[fpu.scala 185:19]
  assign fpiu_io_in_bits_in1 = _fpiu_io_in_bits_req_in1_T_1 ? _fpiu_io_in_bits_req_in1_T_3 : 65'he008000000000000; // @[FPU.scala 362:10]
  assign fpiu_io_in_bits_in2 = _fpiu_io_in_bits_req_in2_T_1 ? _fpiu_io_in_bits_req_in2_T_3 : 65'he008000000000000; // @[FPU.scala 362:10]
  assign fpiu_io_in_bits_fma_decoder_io_uopc = io_req_bits_uop_uopc; // @[fpu.scala 200:25]
  assign fpmu_clock = clock;
  assign fpmu_reset = reset;
  assign fpmu_io_in_valid = io_req_valid & fp_decoder_io_sigs_fastpipe; // @[fpu.scala 223:36]
  assign fpmu_io_in_bits_ren2 = fpiu_io_in_bits_ren2; // @[fpu.scala 224:19]
  assign fpmu_io_in_bits_typeTagOut = fpiu_io_in_bits_typeTagOut; // @[fpu.scala 224:19]
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[fpu.scala 224:19]
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[fpu.scala 224:19]
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1; // @[fpu.scala 224:19]
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2; // @[fpu.scala 224:19]
  assign fpmu_io_lt = fpiu_io_out_bits_lt; // @[fpu.scala 225:14]
  always @(posedge clock) begin
    fpiu_out_REG <= fpiu_io_in_valid & ~fp_decoder_io_sigs_fastpipe; // @[fpu.scala 216:48]
    if (reset) begin // @[Valid.scala 127:22]
      fpiu_outPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpiu_outPipe_valid <= fpiu_out_REG; // @[Valid.scala 127:22]
    end
    if (fpiu_out_REG) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_toint <= fpiu_io_out_bits_toint; // @[Reg.scala 17:22]
    end
    if (fpiu_out_REG) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_exc <= fpiu_io_out_bits_exc; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      fpiu_outPipe_valid_1 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpiu_outPipe_valid_1 <= fpiu_outPipe_valid; // @[Valid.scala 127:22]
    end
    if (fpiu_outPipe_valid) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_1_toint <= fpiu_outPipe_bits_toint; // @[Reg.scala 17:22]
    end
    if (fpiu_outPipe_valid) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_1_exc <= fpiu_outPipe_bits_exc; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      fpiu_outPipe_valid_2 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpiu_outPipe_valid_2 <= fpiu_outPipe_valid_1; // @[Valid.scala 127:22]
    end
    if (fpiu_outPipe_valid_1) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_2_toint <= fpiu_outPipe_bits_1_toint; // @[Reg.scala 17:22]
    end
    if (fpiu_outPipe_valid_1) begin // @[Reg.scala 17:18]
      fpiu_outPipe_bits_2_exc <= fpiu_outPipe_bits_1_exc; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      fpmu_double_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpmu_double_v <= _fpmu_io_in_valid_T; // @[Valid.scala 127:22]
    end
    if (_fpmu_io_in_valid_T) begin // @[Reg.scala 17:18]
      fpmu_double_b <= _dfma_io_in_valid_T_1; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      fpmu_double_outPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpmu_double_outPipe_valid <= fpmu_double_v; // @[Valid.scala 127:22]
    end
    if (fpmu_double_v) begin // @[Reg.scala 17:18]
      fpmu_double_outPipe_bits <= fpmu_double_b; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      fpmu_double_outPipe_valid_1 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      fpmu_double_outPipe_valid_1 <= fpmu_double_outPipe_valid; // @[Valid.scala 127:22]
    end
    if (fpmu_double_outPipe_valid) begin // @[Reg.scala 17:18]
      fpmu_double_outPipe_bits_1 <= fpmu_double_outPipe_bits; // @[Reg.scala 17:22]
    end
    if (fpmu_double_outPipe_valid_1) begin // @[Reg.scala 17:18]
      fpmu_double_outPipe_bits_2 <= fpmu_double_outPipe_bits_1; // @[Reg.scala 17:22]
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
  fpiu_out_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  fpiu_outPipe_valid = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  fpiu_outPipe_bits_toint = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  fpiu_outPipe_bits_exc = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  fpiu_outPipe_valid_1 = _RAND_4[0:0];
  _RAND_5 = {2{`RANDOM}};
  fpiu_outPipe_bits_1_toint = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  fpiu_outPipe_bits_1_exc = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  fpiu_outPipe_valid_2 = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  fpiu_outPipe_bits_2_toint = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  fpiu_outPipe_bits_2_exc = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  fpmu_double_v = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  fpmu_double_b = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  fpmu_double_outPipe_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  fpmu_double_outPipe_bits = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  fpmu_double_outPipe_valid_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  fpmu_double_outPipe_bits_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  fpmu_double_outPipe_bits_2 = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
