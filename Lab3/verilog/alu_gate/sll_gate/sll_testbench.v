/*
Author: Ian Gilman
Title: Shift Left Logical Testbench
Summary: Tests DUT SLL device with tester and saves waveform data
*/

// Module Dependencies
`include "../shared_modules/mux_2to1.v"
`include "sll_gate.v"
`include "sll_tester.v"

module sll_testbench();
   wire [31:0] num;  // number to be bit-shifted to the left
   wire [5:0] shift;  // amount to shift 'num' by
   wire [31:0] shift_num;  // number shifted by 'shift' amount
   
   // SLL under Test
   sll_gate sll_dut(
                     .num(num),
                     .shift(shift),
                     .shift_num(shift_num)
                   );
   // SLL tester
   sll_tester sll_test(
                     .shift_num(shift_num),
                     .num(num),
                     .shift(shift)
                   );
                   
   // save waveform data
   initial begin
      $dumpfile("sll_gate.vcd");
      $dumpvars(1, sll_dut);
   end
endmodule