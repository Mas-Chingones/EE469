/*
Author: Ian Gilman
Title: Half-Adder
Summary: Logic for adding addend0, addend1, and carry_in to produce sum and carry
*/

module half_adder(addend0, addend1, carry_in, sum, carry_out);
   // I/O
   input wire addend0, addend1, carry_in;
   output wire sum, carry_out;
   // Internal
   wire carry0, carry1, carry2;
   
   // find sum
   // S = A0 x A1 x Cin
   xor xor0(sum, addend0, addend1, carry_in);
   
   // find carry_out
   // Cout = A0*A1 + A0*Cin + A1*Cin
   and and0(carry0, addend0, addend1);
   and and1(carry1, addend0, carry_in);
   and and2(carry2, addend1, carry_in);
   or or0(carry_out, carry0, carry1, carry2);
endmodule