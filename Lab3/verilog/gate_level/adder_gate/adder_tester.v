/*
Author: Ian Gilman
Title: Adder Tester
Summary: Provides stimulus to test a signed binary adder, prints test data
*/

module adder_tester(addend0, addend1, sum, Z, V, C, N);
// I/O
   output reg [31:0] addend0, addend1;
   input wire [31:0] sum;
   input wire Z, V, C, N;
// Internal
   parameter delay = 1;
   
   // display data
   initial begin
      $display("\tC\tZ\tV\tN\t       sum\t   addend0\t    addend1\ttime");
      $monitor(
               "\t%b\t%b\t%b\t%b\t%d\t%d\t%d\t%g",
               C, Z, V, N, sum, addend0, addend1, $time
              );
   end
   
   // stimulus
   integer i, j;
   initial begin
      // start
      #delay;
      addend0 <= 32'h0;
      addend1 <= 32'h0;
      #delay;
      
      // test regular
      addend0 <= 32'h12;
      addend1 <= 32'h38;
      #delay;
      
      // test zero
      addend0 <= 32'h80007655;
      addend1 <= 32'h7FFF89AA + 32'h1;
      #delay;
      
      // test overflow
      addend0 <= 32'h80000000;
      addend1 <= 32'h2;
      #delay;
      
      // test negative
      addend0 <= 32'hFFFFFFFF;
      addend1 <= 32'hF;
      #delay;
      
      // loop test
      for(i=0; i<16; i=i+1) begin
         addend1 <= i;
         for(j=0; j<16; j=j+1) begin
            addend0 <= -j;
            #delay;
         end
      end
      
   end
   
endmodule