/*
Author: Ian Gilman
Title: testbench for 5-bit decoder
Summary: Test module for 5-bit decoder 
*/

// Module Dependencies:
`include "decoder_5bit.v"
`include "decoder_5bit_tester.v"

module decoder_5bit_testbench();
   wire [4:0] code;
   wire [31:0] selection;
   
   // DUT & Tester
   decoder_5bit decoder(.code, .selection);
   decoder_5bit_tester tester(.selection, .code);

   // create wave data file
   initial begin
      $dumpfile("decoder_5bit.vcd");
      $dumpvars(1, decoder);
   end
endmodule