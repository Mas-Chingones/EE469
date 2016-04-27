/*
Author: Ian Gilman
Title: SLT Testebench
Summary: Test bench for set less than test, dumps waveform data
*/

// Module Dependencies
`include "../adder_gate/full_adder_gate.v"
`include "../adder_gate/adder_gate.v"
`include "../subtract_gate/subtract_gate.v"
`include "../subtract_gate/one_complement.v"
`include "slt_tester.v"
`include "slt_gate.v"

module slt_testbench();
   wire [31:0] operand0, operand1;
   wire [31:0] result;
   
   // SLT device under test
   slt_gate slt_dut(
                  .operand0(operand0),
                  .operand1(operand1),
                  .result(result)
               );
   // SLT tester
   slt_tester slt_test(
                  .operand0(operand0),
                  .operand1(operand1),
                  .result(result)                  
                  );
   
   // Waveform data   
   initial begin
      $dumpfile("slt_gate.vcd");
      $dumpvars(1, slt_dut);
   end
   
endmodule