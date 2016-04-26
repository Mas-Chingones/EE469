/*
Author: Ian Gilman
Title: Adder Testebench
Summary: Test bench for signed adder test, dumps waveform data
*/

// Module Dependencies
`include "half_adder_gate.v"
`include "adder_gate.v"
`include "adder_tester.v"

module adder_testbench();
   wire [31:0] addend0, addend1;
   wire [31:0] sum;
   wire Z, V, C, N;

   // dut
   adder_gate addition(
                        .addend0(addend0),
                        .addend1(addend1),
                        .sum(sum), 
                        .Z(Z), 
                        .V(V), 
                        .C(C), 
                        .N(N)
                       );
   // tester
   adder_tester addition_tester(
                        .addend0(addend0),
                        .addend1(addend1),
                        .sum(sum), 
                        .Z(Z), 
                        .V(V), 
                        .C(C), 
                        .N(N)
                       );

   // create waveform data file
   initial begin
      $dumpfile("adder_gate.vcd");
      $dumpvars(1, addition);
   end
endmodule