/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register test bench
Summary: Test module for 32-bit register
*/

`include "register_32bit.v"
`include "register_32bit_tester.v"

module register_32bit_testbench();
   wire [31:0] D, Q;  // data to write to register, data read from register
   wire clk, we, rst;  // clock, register write enable, reset register
   
   // DUT and test device
   register_32bit register(.clk, .we, .rst, .D, .Q);
   register_32bit_tester tester(.Q, .clk, .we, .rst, .D);
   
   // Store waveform data from test
   initial begin
      $dumpfile("register_32bit.vcd");
      $dumpvars(1, register);
   end

endmodule