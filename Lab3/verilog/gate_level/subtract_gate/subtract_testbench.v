/*
Author: Ian Gilman
Title: Subtractor Testebench
Summary: Test bench for signed subtractor test, dumps waveform data
*/

// Module Dependencies
`include "../adder_gate/full_adder_gate.v"
`include "../adder_gate/adder_gate.v"
`include "subtract_gate.v"
`include "one_complement.v"
`include "subtract_tester.v"

module subtract_testbench();
   wire [31:0] minuend, subtrahend;
   wire [31:0] difference;
   wire Z, V, C, N;

   // dut
   subtract_gate subtraction(
                        .minuend(minuend),
                        .subtrahend(subtrahend),
                        .difference(difference), 
                        .Z(Z), 
                        .V(V), 
                        .C(C), 
                        .N(N)
                       );
   // tester
   subtract_tester addition_tester(
                        .minuend(minuend),
                        .subtrahend(subtrahend),
                        .difference(difference), 
                        .Z(Z), 
                        .V(V), 
                        .C(C), 
                        .N(N)
                       );

   // create waveform data file
   initial begin
      $dumpfile("subtract_gate.vcd");
      $dumpvars(1, subtraction);
   end
endmodule