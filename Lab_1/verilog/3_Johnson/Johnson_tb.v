// Title:  4-bit Synchronous Johnson Counter Test Bench
// Author: Adolfo Pineda
// A test bench module for the 4-bit Synchronous Johnson Counter
// that makes sure it is working perfectly

// All files used
`include "Johnson.v"
`include "JohnsonTester.v"
`include "DFlipFlop.v"

module Johnson_tb;
	wire q0, q1, q2, q3, clk, rst;

	// Declare an instance of the Johnson module
	Johnson john (q0, q1, q2, q3, clk, rst);
	
	// Declare an instance of the JohnsonTester module
	JohnsonTester aTester (clk, rst, q0, q1, q2, q3);

	// File for gtkwave
	initial begin
		$dumpfile("Johnson.vcd");
		$dumpvars(1, john);
		
	end
endmodule