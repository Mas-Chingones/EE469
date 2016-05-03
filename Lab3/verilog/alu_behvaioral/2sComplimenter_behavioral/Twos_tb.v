// Title:  32-bit adder testbench
// Author: David Dolengewicz
// A test bench module for the 32-bit adder
// that makes sure it works to spec

//All files Used
`include "Twos_Complimenter.v"
`include "Twos_Tester.v"

module Twos_tb();

wire [31:0] in, out;

Twos_Complimenter dut (.in(in), .out(out));

Twos_Tester tester (.in(in), .out(out));
								
									// File for gtkwave
	initial begin
		$dumpfile("TwosTest.vcd");
		$dumpvars(1, dut);
		
	end
						


endmodule
