`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:56 10/27/2015 
// Design Name: 
// Module Name:    add32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module add1(A,B,C0,SUM, Overflow);
	input A, B, C0;
	output SUM, Overflow;
	wire [1:0]SumTemp;
	assign SumTemp = A + B + C0;
	assign Overflow = SumTemp[1];
	assign SUM = SumTemp[0];
endmodule

module add4(
    input [3:0]A,
    input [3:0]B,
    input C0,
    output [3:0]SUM,
    output Overflow
    );
	 //
	 wire [3:0]Ct;
	 add1 op1( A[0], B[0], C0, SUM[0], Ct[0]); 
	 add1 op2( A[1], B[1], Ct[0], SUM[1], Ct[1]); 
	 add1 op3( A[2], B[2], Ct[1], SUM[2], Ct[2]); 
	 add1 op4( A[3], B[3], Ct[2], SUM[3], Ct[3]); assign Overflow = Ct[3];
	 

endmodule

module add8(
    input [7:0]A,
    input [7:0]B,
    input C0,
    output [7:0]SUM,
    output Overflow
    );
	 wire[1:0]Ct;
	 add4 op1(A[3:0], B[3:0], C0, SUM[3:0], Ct[0]);
	 add4 op2(A[7:4], B[7:4], Ct[0], SUM[7:4], Ct[1]);
	 assign Overflow = Ct[1];

endmodule

module adder32(
    input [31:0]A,
    input [31:0]B,
    input C0,
    output [31:0]SUM,
    output Overflow
    );
	wire[3:0]Ct;
	add8 op1 (A[7:0], B[7:0], C0, SUM[7:0], Ct[0]);
	add8 op2 (A[15:8], B[15:8], Ct[0], SUM[15:8], Ct[1]);
	add8 op3 (A[23:16], B[23:16], Ct[1], SUM[23:16], Ct[2]);
	add8 op4 (A[31:24], B[31:24], Ct[2], SUM[31:24], Ct[3]);
	assign Overflow = Ct[3];

endmodule
