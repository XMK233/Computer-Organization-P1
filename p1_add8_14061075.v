`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:55 10/27/2015 
// Design Name: 
// Module Name:    add8 
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
