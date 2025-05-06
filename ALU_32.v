// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue May 06 10:24:26 2025"

module ALU_32(
	A,
	alu_op,
	B,
	H,
	Overflow,
	Zero,
	Result
);


input wire	[31:0] A;
input wire	[6:0] alu_op;
input wire	[31:0] B;
input wire	[4:0] H;
output wire	Overflow;
output wire	Zero;
output wire	[31:0] Result;

wire	Carry0To1;
wire	Carry10To11;
wire	Carry11To12;
wire	Carry12To13;
wire	Carry13To14;
wire	Carry14To15;
wire	Carry15To16;
wire	Carry16To17;
wire	Carry17To18;
wire	Carry18To19;
wire	Carry19To20;
wire	Carry1To2;
wire	Carry20To21;
wire	Carry21To22;
wire	Carry22To23;
wire	Carry23To24;
wire	Carry24To25;
wire	Carry25To26;
wire	Carry26To27;
wire	Carry27To28;
wire	Carry28To29;
wire	Carry29To30;
wire	Carry2To3;
wire	Carry30To31;
wire	Carry3To4;
wire	Carry4To5;
wire	Carry5To6;
wire	Carry6To7;
wire	Carry7To8;
wire	Carry8To9;
wire	Carry9To10;
wire	Less1;
wire	Less10;
wire	Less11;
wire	Less12;
wire	Less13;
wire	Less14;
wire	Less15;
wire	Less16;
wire	Less17;
wire	Less18;
wire	Less19;
wire	Less2;
wire	Less20;
wire	Less21;
wire	Less22;
wire	Less23;
wire	Less24;
wire	Less25;
wire	Less26;
wire	Less27;
wire	Less28;
wire	Less29;
wire	Less3;
wire	Less30;
wire	Less31;
wire	Less4;
wire	Less5;
wire	Less6;
wire	Less7;
wire	Less8;
wire	Less9;
wire	LessThanResult;
wire	lower12bitsZero;
wire	middle12bitsZero;
wire	[63:0] multout;
wire	[1:0] myS;
wire	[1:0] Operation;
wire	[31:0] R;
wire	[31:0] Result_ALTERA_SYNTHESIZED;
wire	upper8bitsZero;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[4:0] SYNTHESIZED_WIRE_2;





ALUBits0To30	b2v_ALU0(
	.Ainvert(alu_op[4]),
	.a(A[0]),
	.Binvert(alu_op[3]),
	.b(B[0]),
	.CarryIn(alu_op[2]),
	.less(LessThanResult),
	.Operation(Operation),
	.Result(R[0]),
	.CarryOut(Carry0To1));


ALUBits0To30	b2v_ALU1(
	.Ainvert(alu_op[4]),
	.a(A[1]),
	.Binvert(alu_op[3]),
	.b(B[1]),
	.CarryIn(Carry0To1),
	.less(Less1),
	.Operation(Operation),
	.Result(R[1]),
	.CarryOut(Carry1To2));


ALUBits0To30	b2v_ALU10(
	.Ainvert(alu_op[4]),
	.a(A[10]),
	.Binvert(alu_op[3]),
	.b(B[10]),
	.CarryIn(Carry9To10),
	.less(Less10),
	.Operation(Operation),
	.Result(R[10]),
	.CarryOut(Carry10To11));


ALUBits0To30	b2v_ALU11(
	.Ainvert(alu_op[4]),
	.a(A[11]),
	.Binvert(alu_op[3]),
	.b(B[11]),
	.CarryIn(Carry10To11),
	.less(Less11),
	.Operation(Operation),
	.Result(R[11]),
	.CarryOut(Carry11To12));


ALUBits0To30	b2v_ALU12(
	.Ainvert(alu_op[4]),
	.a(A[12]),
	.Binvert(alu_op[3]),
	.b(B[12]),
	.CarryIn(Carry11To12),
	.less(Less12),
	.Operation(Operation),
	.Result(R[12]),
	.CarryOut(Carry12To13));


ALUBits0To30	b2v_ALU13(
	.Ainvert(alu_op[4]),
	.a(A[13]),
	.Binvert(alu_op[3]),
	.b(B[13]),
	.CarryIn(Carry12To13),
	.less(Less13),
	.Operation(Operation),
	.Result(R[13]),
	.CarryOut(Carry13To14));


ALUBits0To30	b2v_ALU14(
	.Ainvert(alu_op[4]),
	.a(A[14]),
	.Binvert(alu_op[3]),
	.b(B[14]),
	.CarryIn(Carry13To14),
	.less(Less14),
	.Operation(Operation),
	.Result(R[14]),
	.CarryOut(Carry14To15));


ALUBits0To30	b2v_ALU15(
	.Ainvert(alu_op[4]),
	.a(A[15]),
	.Binvert(alu_op[3]),
	.b(B[15]),
	.CarryIn(Carry14To15),
	.less(Less15),
	.Operation(Operation),
	.Result(R[15]),
	.CarryOut(Carry15To16));


ALUBits0To30	b2v_ALU16(
	.Ainvert(alu_op[4]),
	.a(A[16]),
	.Binvert(alu_op[3]),
	.b(B[16]),
	.CarryIn(Carry15To16),
	.less(Less16),
	.Operation(Operation),
	.Result(R[16]),
	.CarryOut(Carry16To17));


ALUBits0To30	b2v_ALU17(
	.Ainvert(alu_op[4]),
	.a(A[17]),
	.Binvert(alu_op[3]),
	.b(B[17]),
	.CarryIn(Carry16To17),
	.less(Less17),
	.Operation(Operation),
	.Result(R[17]),
	.CarryOut(Carry17To18));


ALUBits0To30	b2v_ALU18(
	.Ainvert(alu_op[4]),
	.a(A[18]),
	.Binvert(alu_op[3]),
	.b(B[18]),
	.CarryIn(Carry17To18),
	.less(Less18),
	.Operation(Operation),
	.Result(R[18]),
	.CarryOut(Carry18To19));


ALUBits0To30	b2v_ALU19(
	.Ainvert(alu_op[4]),
	.a(A[19]),
	.Binvert(alu_op[3]),
	.b(B[19]),
	.CarryIn(Carry18To19),
	.less(Less19),
	.Operation(Operation),
	.Result(R[19]),
	.CarryOut(Carry19To20));


ALUBits0To30	b2v_ALU2(
	.Ainvert(alu_op[4]),
	.a(A[2]),
	.Binvert(alu_op[3]),
	.b(B[2]),
	.CarryIn(Carry1To2),
	.less(Less2),
	.Operation(Operation),
	.Result(R[2]),
	.CarryOut(Carry2To3));


ALUBits0To30	b2v_ALU20(
	.Ainvert(alu_op[4]),
	.a(A[20]),
	.Binvert(alu_op[3]),
	.b(B[20]),
	.CarryIn(Carry19To20),
	.less(Less20),
	.Operation(Operation),
	.Result(R[20]),
	.CarryOut(Carry20To21));


ALUBits0To30	b2v_ALU21(
	.Ainvert(alu_op[4]),
	.a(A[21]),
	.Binvert(alu_op[3]),
	.b(B[21]),
	.CarryIn(Carry20To21),
	.less(Less21),
	.Operation(Operation),
	.Result(R[21]),
	.CarryOut(Carry21To22));


ALUBits0To30	b2v_ALU22(
	.Ainvert(alu_op[4]),
	.a(A[22]),
	.Binvert(alu_op[3]),
	.b(B[22]),
	.CarryIn(Carry21To22),
	.less(Less22),
	.Operation(Operation),
	.Result(R[22]),
	.CarryOut(Carry22To23));


ALUBits0To30	b2v_ALU23(
	.Ainvert(alu_op[4]),
	.a(A[23]),
	.Binvert(alu_op[3]),
	.b(B[23]),
	.CarryIn(Carry22To23),
	.less(Less23),
	.Operation(Operation),
	.Result(R[23]),
	.CarryOut(Carry23To24));


ALUBits0To30	b2v_ALU24(
	.Ainvert(alu_op[4]),
	.a(A[24]),
	.Binvert(alu_op[3]),
	.b(B[24]),
	.CarryIn(Carry23To24),
	.less(Less24),
	.Operation(Operation),
	.Result(R[24]),
	.CarryOut(Carry24To25));


ALUBits0To30	b2v_ALU25(
	.Ainvert(alu_op[4]),
	.a(A[25]),
	.Binvert(alu_op[3]),
	.b(B[25]),
	.CarryIn(Carry24To25),
	.less(Less25),
	.Operation(Operation),
	.Result(R[25]),
	.CarryOut(Carry25To26));


ALUBits0To30	b2v_ALU26(
	.Ainvert(alu_op[4]),
	.a(A[26]),
	.Binvert(alu_op[3]),
	.b(B[26]),
	.CarryIn(Carry25To26),
	.less(Less26),
	.Operation(Operation),
	.Result(R[26]),
	.CarryOut(Carry26To27));


ALUBits0To30	b2v_ALU27(
	.Ainvert(alu_op[4]),
	.a(A[27]),
	.Binvert(alu_op[3]),
	.b(B[27]),
	.CarryIn(Carry26To27),
	.less(Less27),
	.Operation(Operation),
	.Result(R[27]),
	.CarryOut(Carry27To28));


ALUBits0To30	b2v_ALU28(
	.Ainvert(alu_op[4]),
	.a(A[28]),
	.Binvert(alu_op[3]),
	.b(B[28]),
	.CarryIn(Carry27To28),
	.less(Less28),
	.Operation(Operation),
	.Result(R[28]),
	.CarryOut(Carry28To29));


ALUBits0To30	b2v_ALU29(
	.Ainvert(alu_op[4]),
	.a(A[29]),
	.Binvert(alu_op[3]),
	.b(B[29]),
	.CarryIn(Carry28To29),
	.less(Less29),
	.Operation(Operation),
	.Result(R[29]),
	.CarryOut(Carry29To30));


ALUBits0To30	b2v_ALU3(
	.Ainvert(alu_op[4]),
	.a(A[3]),
	.Binvert(alu_op[3]),
	.b(B[3]),
	.CarryIn(Carry2To3),
	.less(Less3),
	.Operation(Operation),
	.Result(R[3]),
	.CarryOut(Carry3To4));


ALUBits0To30	b2v_ALU30(
	.Ainvert(alu_op[4]),
	.a(A[30]),
	.Binvert(alu_op[3]),
	.b(B[30]),
	.CarryIn(Carry29To30),
	.less(Less30),
	.Operation(Operation),
	.Result(R[30]),
	.CarryOut(Carry30To31));


ALUBit31	b2v_ALU31(
	.Ainvert(alu_op[4]),
	.a(A[31]),
	.Binvert(alu_op[3]),
	.b(B[31]),
	.CarryIn(Carry30To31),
	.less(Less31),
	.Operation(Operation),
	.Result(R[31]),
	.Set(LessThanResult),
	.Overflow(Overflow));


ALUBits0To30	b2v_ALU4(
	.Ainvert(alu_op[4]),
	.a(A[4]),
	.Binvert(alu_op[3]),
	.b(B[4]),
	.CarryIn(Carry3To4),
	.less(Less4),
	.Operation(Operation),
	.Result(R[4]),
	.CarryOut(Carry4To5));


ALUBits0To30	b2v_ALU5(
	.Ainvert(alu_op[4]),
	.a(A[5]),
	.Binvert(alu_op[3]),
	.b(B[5]),
	.CarryIn(Carry4To5),
	.less(Less5),
	.Operation(Operation),
	.Result(R[5]),
	.CarryOut(Carry5To6));


ALUBits0To30	b2v_ALU6(
	.Ainvert(alu_op[4]),
	.a(A[6]),
	.Binvert(alu_op[3]),
	.b(B[6]),
	.CarryIn(Carry5To6),
	.less(Less6),
	.Operation(Operation),
	.Result(R[6]),
	.CarryOut(Carry6To7));


ALUBits0To30	b2v_ALU7(
	.Ainvert(alu_op[4]),
	.a(A[7]),
	.Binvert(alu_op[3]),
	.b(B[7]),
	.CarryIn(Carry6To7),
	.less(Less7),
	.Operation(Operation),
	.Result(R[7]),
	.CarryOut(Carry7To8));


ALUBits0To30	b2v_ALU8(
	.Ainvert(alu_op[4]),
	.a(A[8]),
	.Binvert(alu_op[3]),
	.b(B[8]),
	.CarryIn(Carry7To8),
	.less(Less8),
	.Operation(Operation),
	.Result(R[8]),
	.CarryOut(Carry8To9));


ALUBits0To30	b2v_ALU9(
	.Ainvert(alu_op[4]),
	.a(A[9]),
	.Binvert(alu_op[3]),
	.b(B[9]),
	.CarryIn(Carry8To9),
	.less(Less9),
	.Operation(Operation),
	.Result(R[9]),
	.CarryOut(Carry9To10));


MUX4_32	b2v_finalMUX(
	.A(R),
	.B(multout[31:0]),
	.C(SYNTHESIZED_WIRE_0),
	.D(SYNTHESIZED_WIRE_1),
	.S(myS),
	.Y(Result_ALTERA_SYNTHESIZED));

assign	lower12bitsZero = ~(Result_ALTERA_SYNTHESIZED[0] | Result_ALTERA_SYNTHESIZED[1] | Result_ALTERA_SYNTHESIZED[2] | Result_ALTERA_SYNTHESIZED[4] | Result_ALTERA_SYNTHESIZED[3] | Result_ALTERA_SYNTHESIZED[5] | Result_ALTERA_SYNTHESIZED[7] | Result_ALTERA_SYNTHESIZED[6] | Result_ALTERA_SYNTHESIZED[8] | Result_ALTERA_SYNTHESIZED[10] | Result_ALTERA_SYNTHESIZED[9] | Result_ALTERA_SYNTHESIZED[11]);











assign	middle12bitsZero = ~(Result_ALTERA_SYNTHESIZED[12] | Result_ALTERA_SYNTHESIZED[13] | Result_ALTERA_SYNTHESIZED[14] | Result_ALTERA_SYNTHESIZED[16] | Result_ALTERA_SYNTHESIZED[15] | Result_ALTERA_SYNTHESIZED[17] | Result_ALTERA_SYNTHESIZED[19] | Result_ALTERA_SYNTHESIZED[18] | Result_ALTERA_SYNTHESIZED[20] | Result_ALTERA_SYNTHESIZED[22] | Result_ALTERA_SYNTHESIZED[21] | Result_ALTERA_SYNTHESIZED[23]);











assign	upper8bitsZero = ~(Result_ALTERA_SYNTHESIZED[24] | Result_ALTERA_SYNTHESIZED[26] | Result_ALTERA_SYNTHESIZED[25] | Result_ALTERA_SYNTHESIZED[27] | Result_ALTERA_SYNTHESIZED[29] | Result_ALTERA_SYNTHESIZED[28] | Result_ALTERA_SYNTHESIZED[30] | Result_ALTERA_SYNTHESIZED[31]);







assign	Zero = lower12bitsZero & middle12bitsZero & upper8bitsZero;







Log2_32	b2v_myLog(
	.A(A),
	.log2(SYNTHESIZED_WIRE_2));


Multiplier_32	b2v_myMult(
	.A(A),
	.B(B),
	.Z(multout));


SLL_32	b2v_myShift(
	.A(B),
	.H(H),
	.Y(SYNTHESIZED_WIRE_0));


ZE5_32	b2v_myZE(
	.A(SYNTHESIZED_WIRE_2),
	.Y(SYNTHESIZED_WIRE_1));


SameBit	b2v_sameBit0(
	.Ain(alu_op[0]),
	.Aout(Operation[0]));


SameBit	b2v_sameBit1(
	.Ain(alu_op[1]),
	.Aout(Operation[1]));


SameBit	b2v_sameBit2(
	.Ain(alu_op[6]),
	.Aout(myS[1]));


SameBit	b2v_sameBit3(
	.Ain(alu_op[5]),
	.Aout(myS[0]));

assign	Result = Result_ALTERA_SYNTHESIZED;
assign	Less1 = 0;
assign	Less10 = 0;
assign	Less11 = 0;
assign	Less12 = 0;
assign	Less13 = 0;
assign	Less14 = 0;
assign	Less15 = 0;
assign	Less16 = 0;
assign	Less17 = 0;
assign	Less18 = 0;
assign	Less19 = 0;
assign	Less2 = 0;
assign	Less20 = 0;
assign	Less21 = 0;
assign	Less22 = 0;
assign	Less23 = 0;
assign	Less24 = 0;
assign	Less25 = 0;
assign	Less26 = 0;
assign	Less27 = 0;
assign	Less28 = 0;
assign	Less29 = 0;
assign	Less3 = 0;
assign	Less30 = 0;
assign	Less31 = 0;
assign	Less4 = 0;
assign	Less5 = 0;
assign	Less6 = 0;
assign	Less7 = 0;
assign	Less8 = 0;
assign	Less9 = 0;

endmodule
