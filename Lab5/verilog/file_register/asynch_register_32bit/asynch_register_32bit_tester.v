/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register test device
Summary: Provides stimulus signals for asynch register testing, 
   prints out test results
*/

module asynch_register_32bit_tester(Q, we, rst, D);
   input wire [31:0] Q;  // parallel data from register
   output reg we, rst;  // write enabled, active-low reset register
   output reg [31:0] D;  // parallel data to write
   
   // print data out
   initial begin
      $display("\tQ       \tD       \twe \trst\ttime");
      $monitor("\t%h\t%h\t%b  \t%b  \t%g", Q, D, we, rst, $time);
   end

   // control register stimulus signals
   integer i;
   parameter delay = 1;
   initial begin
   
      // initial state and reset register
      D = 32'h0;
      we = 1'b0;
      rst = 1'b1;    #delay;
      rst = 1'b0;    #delay;
      rst = 1'b1;    #delay;
      
      // write data
      we = 1'b1; #delay;
      D = 32'hACE5F8ED; #delay;
      we = 1'b0; #delay;
      
      // write data again
      D = 32'h1EE7BA17; #delay;
      we = 1'b1; #delay;
      we = 1'b0; #delay;
      $finish;
   end
endmodule