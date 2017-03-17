`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:00 10/27/2015 
// Design Name: 
// Module Name:    P1_GPR 
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
module gpr(
    input Clk,
    input Reset,
    input [4:0]RS1,
    input [4:0]RS2,
    input [4:0]RD,
    input RegWrite,
    input [31:0]WData,
    output [31:0]RData1,
    output [31:0]RData2
    );
	reg [31:0]data[31:0];
	integer i;
	always @(posedge Clk)
		begin
			if (Reset) begin
				for (i = 0; i<32; i = i + 1) begin
					data[i] <= 32'b0;
				end
			end
			else if (RegWrite) begin
				data[RD] <= WData;
			end
		end
	assign RData1 = data[RS1];
	assign RData2 = data[RS2];
endmodule