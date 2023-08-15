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
// CREATED		"Tue Aug 15 13:49:47 2023"

module ALUBits0To30(
	a,
	b,
	CarryIn,
	Ainvert,
	less,
	Binvert,
	Operation,
	Result,
	CarryOut
);


input wire	a;
input wire	b;
input wire	CarryIn;
input wire	Ainvert;
input wire	less;
input wire	Binvert;
input wire	[1:0] Operation;
output wire	Result;
output wire	CarryOut;

wire	A_afterMUX;
wire	AandB;
wire	AorB;
wire	B_afterMUX;
wire	NOTa;
wire	NOTb;
wire	S;





MUX4	b2v_finalMUX(
	.A(AandB),
	.B(AorB),
	.C(S),
	.D(less),
	.S(Operation),
	.Y(Result));

assign	NOTa =  ~a;

assign	NOTb =  ~b;

assign	AandB = A_afterMUX & B_afterMUX;

assign	AorB = B_afterMUX | A_afterMUX;


MUX2	b2v_muxA(
	.S(Ainvert),
	.A(a),
	.B(NOTa),
	.Y(A_afterMUX));


MUX2	b2v_muxB(
	.S(Binvert),
	.A(b),
	.B(NOTb),
	.Y(B_afterMUX));


OneBitAdder	b2v_myAdder(
	.ci(CarryIn),
	.a(A_afterMUX),
	.b(B_afterMUX),
	.co(CarryOut),
	.s(S));


endmodule
