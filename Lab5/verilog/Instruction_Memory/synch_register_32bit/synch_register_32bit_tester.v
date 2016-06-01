/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register test device
Summary: Provides stimulus signals for register testing, prints out test results
*/

module synch_register_32bit_tester(Q, clk, we, rst, D);
   input wire [31:0] Q;  // parallel data from register
   output reg clk, we, rst;  // clock, write enabled, active-low reset register
   output reg [31:0] D;  // parallel data to write
   
   // print data out
   initial begin
      $display("\tQ       \tD       \twe \trst\tclk\ttime");
      $monitor("\t%h\t%h\t%b  \t%b  \t%b  \t%g", Q, D, we, rst, clk, $time);
   end

   // control register stimulus signals
   integer i;
   parameter delay = 1;
   initial begin
   
      // initial state and reset register
      D = 32'h0;
      we = 1'b0;
      clk = 1'b1;
      rst = 1'b1;    #delay;
      rst = 1'b0;    #delay;
      rst = 1'b1;    #delay;
      
      // write data
      D = 32'hACE5F8ED; #delay;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b0;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      // write data again
      D = 32'h1EE7BA17; #delay;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b0;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      $finish;
   end
endmodule