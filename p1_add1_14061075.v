`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:45 10/27/2015 
// Design Name: 
// Module Name:    add1 
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
