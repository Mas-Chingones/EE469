// Title:  32-bit adder testbench
// Author: David Dolengewicz
// A test bench module for the 32-bit adder
// that makes sure it works to spec

//All files Used
`include "Adder_32_Behav.v"
`include "Adder_32_Behav_Tester.v"

module Adder_tb();

wire [31:0] a, b;
wire [31:0] sum;
wire zero, overflow, carryOut, negative;



Adder_32_Behav_Tester tester (	.a(a), 
								.b(b), 
								.sum(sum), 
								.zero(zero), 
								.overflow(overflow), 
								.carryOut(carryOut), 
								.negative(negative) 	);
								
Adder_32_Behav dut ( 			.a(a), 
								.b(b), 
								.sum(sum), 
								.zero(zero), 
								.overflow(overflow), 
								.carryOut(carryOut), 
								.negative(negative) 	);
								
									// File for gtkwave
	initial begin
		$dumpfile("AdderTest.vcd");
		$dumpvars(1, dut);
		
	end
						


endmodule
