// Title:  4-bit Ripple Down Counter Test Bench
// Author: Adolfo Pineda
// A test bench module for the 4-bit Ripple Down Counter
// that makes sure it is working perfectly

// All files used
`include "FourBitRC.v"
`include "FourBitRCTester.v"
`include "DFlipFlop.v"

module FourBitRC_tb;
	wire q0, q1, q2, q3, clk, rst;

	// Declare an instance of the FourBitRC module
	FourBitRC four (q0, q1, q2, q3, clk, rst);
	
	// Declare an instance of the FourBitRCTester module
	FourBitRCTester aTester (clk, rst, q0, q1, q2, q3);

	// File for gtkwave
	initial begin
		$dumpfile("FourBitRC.vcd");
		$dumpvars(1, four);
		
	end
endmodule