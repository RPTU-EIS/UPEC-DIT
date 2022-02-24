/****************************************************************************
 * fwrisc_alu_op.svh
 *
 * Copyright 2018-2019 Matthew Ballance
 * 
 * Licensed under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in
 * writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied.  See
 * the License for the specific language governing
 * permissions and limitations under the License.
 ****************************************************************************/

parameter [3:0] 
OP_ADD = 4'd0,			// 0
OP_SUB = (OP_ADD+4'd1),	// 1
OP_AND = (OP_SUB+4'd1), // 2
OP_OR  = (OP_AND+4'd1), // 3
/**
 * OP_CLR (4)
 * Uses OP_A as a mask, where each set bit
 * clears the corresponding bit in OP_B
 */
OP_CLR = (OP_OR+4'd1),	// 4
OP_EQ  = (OP_CLR+4'd1),	// 5
OP_NE  = (OP_EQ+4'd1),	// 6
OP_LT  = (OP_NE+4'd1),	// 7
OP_GE  = (OP_LT+4'd1),	// 8
OP_LTU = (OP_GE+4'd1),	// 9
OP_GEU = (OP_LTU+4'd1),	// 10
OP_OPA = (OP_GEU+4'd1), // 11
OP_OPB = (OP_OPA+4'd1), // 12
OP_XOR = (OP_OPB+4'd1); // 13
