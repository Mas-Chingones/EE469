/*
Author: Ian Gilman
Title: 32-bit Subtraction Module
Summary: Subtract two 32-bit signed operands into difference. Controls flags:
 zero value (Z), underflow (V), carry (C), and negative value (N)
*/

// Module Dependencies
//`include "../adder_gate/adder_gate.v"
//`include "../adder_gate/full_adder_gate.v"
//`include "one_complement.v"

module subtract_gate(minuend, subtrahend, difference, Z, V, C, N);
// I/O
   input wire [31:0] minuend, subtrahend;
   output wire [31:0] difference;
   output wire Z, V, C, N;
// Internal
   wire [31:0] comp_subtrahend;
   
   // turn subtrahend into one_complements complement
   one_complement negate_value(subtrahend, comp_subtrahend);
   // add negative subtrahend to minuend (Cin = 1 makes subtrahend two's comp)
   adder_gate adding_negative(
               .addend0(minuend),
               .addend1(comp_subtrahend),
               .Cin(1'b1),
               .sum(difference),
               .Z(Z),
               .V(V),
               .C(C),
               .N(N)
             );
endmodule