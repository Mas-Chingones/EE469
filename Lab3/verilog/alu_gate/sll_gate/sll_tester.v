/*
Author: Ian Gilman
Title: Shift Left Logical Tester
Summary: Provides stimulus signals to SLL and prints out test results data
*/

module sll_tester(shift_num, num, shift);
// I/O
   input wire [31:0] shift_num;  // number shifted by 'shift' amount
   output reg [31:0] num;  // number to be bit-shifted to the left
   output reg [5:0] shift;  // amount to shift 'num' by
// Internal
   parameter delay = 5;  // delay between stimulus changes
   
   // print test results data
   initial begin
      $display("\tshift\tnum\t        shift_num\ttime");
      $monitor("\t%d\t%h\t%h\t%g", shift, num, shift_num, $time);
   end
   
   // stimulus values
   initial begin
      #delay;
      
      // increasing shifts
      num = 32'hF0F0F50F;
      shift = 6'd0;
      #delay;
      
      shift = 6'd4;
      #delay;
      
      shift = 6'd7;
      #delay;
      
      shift = 6'd31;
      #delay;
      
      shift = 6'd32;
      #delay;
      
      // invalid shift
      shift = 6'd33;
      #delay;
      
      $finish;
   end
endmodule