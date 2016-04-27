/*
Author: Ian Gilman
Title: Subtractor Tester
Summary: Provides stimulus to test a signed binary subtractor, prints test data
*/

module subtract_tester(minuend, subtrahend, difference, Z, V, C, N);
// I/O
   output reg [31:0] minuend, subtrahend;
   input wire [31:0] difference;
   input wire Z, V, C, N;
// Internal
   parameter delay = 1;
   
   // display data
   initial begin
      $display("\tC\tZ\tV\tN\tdifference\t minuend\tsubtrahend\ttime");
      $monitor(
               "\t%b\t%b\t%b\t%b\t%h  \t%h\t  %h\t%g",
               C, Z, V, N, difference, minuend, subtrahend, $time
              );
   end
   integer k = -1;
   // stimulus
   integer i, j;
   initial begin
      // start
      #delay;
      minuend <= 32'h0;
      subtrahend <= 32'h0;
      #delay;
      
      // test regular
      minuend <= 32'h12;
      subtrahend <= 32'h38;
      #delay;
      
      // test zero
      minuend <= 32'h80007655;
      subtrahend <= 32'h7FFF89AA + 32'h1;
      #delay;
      
      // test overflow
      minuend <= 32'h7FFFFFFF;
      subtrahend <= 32'h2;
      #delay;
      
      // test negative
      minuend <= 32'h80000001;
      subtrahend <= 32'hF;
      #delay;
      
      // loop test
      for(i=0; i<16; i=i+1) begin
         subtrahend <= i;
         for(j=0; j<16; j=j+1) begin
            minuend <= -j;
            #delay;
         end
      end
      
   end
   
endmodule