/*
Author: Ian Gilman
Title: Tri-State Device Test
Summary: Test Reading/Writing From/To a tri-state connected register
*/

// Module Dependencies
//`include "../shared_modules/d_flipflop/d_flipflop.v"

module tristate_test(data, rwi, clk, rst);
   inout wire data;  // data bus input/output to register
   input wire [1:0] rwi; // read/write/initializse mode
	input wire clk, rst;  // clock, reset
   wire d0, d1, q0, q1;  // reg d-port, reg q-port
   
	// bus states
	parameter R0W1 = 2'b00;   // read FF0, write FF1
	parameter R1W0 = 2'b01;  // read FF1, write FF0
	parameter INIT0 = 2'b10;  // write to FF0
	parameter INIT1 = 2'b11;  // write to FF1
	
   // write data bus logic
   bufif1(data, q0, (rwi == R0W1));
	bufif1(data, q1, (rwi == R1W0));
	// write register logic
	assign d0 = (rwi == INIT0 || rwi == R1W0) ? data : q0;
	assign d1 = (rwi == INIT1 || rwi == R0W1) ? data : q1;
	
   // register
   d_flipflop FF0(.q(q0), .qBar(), .D(d0), .clk(clk), .rst(rst));
	d_flipflop FF1(.q(q1), .qBar(), .D(d1), .clk(clk), .rst(rst));
endmodule