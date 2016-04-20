/*
Author: Ian Gilman
Title: Tristate Testbench
Summary: connect tester with DUT, output waveform data
*/

// Module Dependencies
`include "../shared_modules/d_flipflop/d_flipflop.v"
`include "tristate_test.v"
`include "tristate_tester.v"

module tristate_testbench();
   inout wire data;  // data bus input/output to register
   wire clk, rst;  // clock, reset
   wire [1:0] rwi;  // read/write/initialize
   
   // DUT and tester connections
   tristate_test dut(.data(data), .rwi(rwi), .clk(clk), .rst(rst));
   tristate_tester tester(.data(data), .rwi(rwi), .clk(clk), .rst(rst));
   
   // store waveform data
   initial begin
      $dumpfile("tristate_test.vcd");
      $dumpvars(1, dut);
   end

endmodule