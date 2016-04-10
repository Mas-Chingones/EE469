/*
Author: Ian Gilman
Title: 5-bit decoder test device
Summary: Provides stimulus signals for decoder testing, prints out test results
*/

module decoder_5bit_tester(selection, code);
   input wire [31:0] selection;
   output reg [4:0] code;
   
   parameter delay = 1;

   // display logic data
   initial begin
      $display("\t\tcod\tsel     \ttime");
      $monitor("\t\t%b\t%h\t%g", code, selection, $time);
   end
   
   // create stimulus signals
   initial begin
      code = 5'b0;
      
      while(code < 5'b11111) begin
         #delay;
         code = code + 5'b1;
      end
      
      $finish;   
   end
endmodule