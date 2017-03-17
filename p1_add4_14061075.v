`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:53 10/27/2015 
// Design Name: 
// Module Name:    add4 
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
