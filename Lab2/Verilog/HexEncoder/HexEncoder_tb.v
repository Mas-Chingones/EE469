/**************************************************************
*	Lab 2 - HexEncoder_tb
	by David Dolengewicz
	HexEncoder test bench, tests HexEncoder using HexEncoderTester
**************************************************************/

`include "HexEncoder.v" 
`include "HexEncoderTester.v"


module HexEncoder_tb();
wire [3:0] in;
wire [6:0] hexOut;

//tester code
HexEncoder dut (.in(in), .hexOut(hexOut));
HexEncoderTester tester (.in(in), .hexOut(hexOut));


// file for gtkwave
	initial begin
		$dumpfile("HexEncoder.vcd");
		$dumpvars(1, dut);
		
	end


endmodule