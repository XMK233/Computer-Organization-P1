`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:44 10/27/2015 
// Design Name: 
// Module Name:    P1_ALU0 
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
module alu( ALU_DA, ALU_DB, ALUOp, ALU_DC, ALU_Zero);
	input [31:0]ALU_DA, ALU_DB;
	input [2:0]ALUOp;
	output [31:0]ALU_DC;
	output ALU_Zero;
	assign ALU_DC = (ALUOp == 3'b000) ? ALU_DA + ALU_DB : 
						 (ALUOp == 3'b001) ? ALU_DA - ALU_DB :
						 (ALUOp == 3'b010) ? ALU_DA & ALU_DB :
						 (ALUOp == 3'b100) ? ALU_DA | ALU_DB : 
						 (ALUOp == 3'b101) ? ALU_DA ^ ALU_DB : 32'bx;
	/*always @(*)
		begin
			case(ALUOp)
				3'b000:  ALU_DC = ALU_DA + ALU_DB;
				3'b001:  ALU_DC = ALU_DA - ALU_DB;
				3'b010:  ALU_DC = ALU_DA & ALU_DB;
				3'b100:  ALU_DC = ALU_DA | ALU_DB;
				3'b101:  ALU_DC = ALU_DA ^ ALU_DB;
			endcase
		end
	*/
	assign ALU_Zero = (ALU_DC == 1'b0)? 1'b1 : 1'b0;
	/*if 
		assign ;
	else
		assign ALU_Zero = ;*/
endmodule
