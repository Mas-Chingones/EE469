// Title:  4-bit Ripple Down Counter
// Author: Adolfo Pineda
// This module is the 4-bit ripple down counter with active low reset

module FourBitRC(q0, q1, q2, q3, clk, rst);
input clk, rst;
output wire q0, q1, q2, q3;
wire w1, w2, w3, w4;
	
	// Flip flops connected in such a way that
    // emulate a 4-bit ripple down counter
	DFlipFlop d1(.q(q0), .qBar(w1), .D(w1), .clk(clk), .rst(rst));
	DFlipFlop d2(.q(q1), .qBar(w2), .D(w2), .clk(q0), .rst(rst));
	DFlipFlop d3(.q(q2), .qBar(w3), .D(w3), .clk(q1), .rst(rst));
	DFlipFlop d4(.q(q3), .qBar(w4), .D(w4), .clk(q2), .rst(rst));

endmodule 