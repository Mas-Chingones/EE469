// SupCounter.v
`include "SupCounter.v"
`include "SupTester.v"
`include "DFlipFlop.v"

module SupCounter_tb;
	// connect the two modules
	wire q0, q1, q2, q3, clk, rst;
	//wire [1:0] XandY, XorY;

// declare an instance of the AND module
	SupCounter sup (q0, q1, q2, q3, clk, rst);
	
// declare an instance of the testIt module
	supTester aTester (clk, rst, q0, q1, q2, q3);

// file for gtkwave
	initial begin
		$dumpfile("SupCounter.vcd");
		$dumpvars(1, sup);
		
	end
endmodule