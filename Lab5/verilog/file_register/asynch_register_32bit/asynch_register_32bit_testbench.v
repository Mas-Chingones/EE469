
// Module Dependencies:
`include "../../shared_modules/mux_2to1/mux_2to1.v"
`include "gated_d_latch/gated_d_latch.v"
`include "asynch_register_32bit.v"
`include "asynch_register_32bit_tester.v"

/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register test bench
Summary: Test module for 32-bit register
*/

module asynch_register_32bit_testbench();
   wire [31:0] D, Q;  // data to write to register, data read from register
   wire we, rst;  // register write enable, reset register
   
   // DUT and test device
   asynch_register_32bit register(.we(we), .rst(rst), .D(D), .Q(Q));
   asynch_register_32bit_tester tester(.Q(Q), .we(we), .rst(rst), .D(D));
   
   // Store waveform data from test
   initial begin
      $dumpfile("asynch_register_32bit.vcd");
      $dumpvars(1, register);
   end
endmodule