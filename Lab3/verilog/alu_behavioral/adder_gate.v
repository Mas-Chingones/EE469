/*
Author: Ian Gilman
Title: 32-bit Full Adder
Summary: adds signed addends together into sum. Controls flags: zero value (Z),
   overflow (V), carry (C), and negative value (N)
*/

// Module Dependencies
//`include "half_adder_gate.v"

module adder_gate(addend0, addend1, Cin, sum, Z, V, C, N);
// I/O
   input wire [31:0] addend0, addend1;  // signed values to add
   input wire Cin;  // Carry in value (used for negative)
   output wire [31:0] sum;  // sum of addends
   output wire Z, V, C, N;  // zero, overflow, carry_out, negative value
// Internal
   // adder flag wires
   wire [30:0] pre_zero;
   wire msb_addend_same, msb_sum_diff, not_overflow;
   // look-ahead carry wires
   wire [31:0] and_addend_pairs,
               carry,
               prop_carry,
               carry_propogate;
   
    
   //// ADDER FLAG LOGIC ////
   // zero flag
   // Z = sum[n] + sum[n-1] + ... + sum[1] + sum[0]
   not define_zero(Z, pre_zero[30]);
   buf init_prezero(pre_zero[0], sum[0]);
   genvar k;
   generate for(k=1; k<31; k=k+1) begin: ZERO_FLAG
      or prezero_or(pre_zero[k], pre_zero[k-1], sum[k]);
   end
   endgenerate
   
   // overflow flag
   // addend0 = A, addend1 = B
   // V = (A[31] x^ B[31]) * (A[31] x sum[31])
   xnor same_addend_msb(msb_addend_same, addend0[31], addend1[31]);
   xor diff_sum_msb(msb_sum_diff, sum[31], addend0[31]);
   and overflow_check(V, msb_addend_same, msb_sum_diff);
   
   // carry out flag
   // Cout = carry[31]
   not negate_overflow(not_overflow, V);
   buf carry_out_buf(C, carry[31]);
   
   // negative value flag
   // V = sum[31]
   buf negative_val_buf(N, sum[31]);
   
   
   // FULL_ADDERS
   // Produce sums using full-adders
   full_adder bit0_summation(  // first sum is an exception
                           .addend0(addend0[0]),
                           .addend1(addend1[0]),
                           .carry_in(Cin),
                           .sum(sum[0]),
                           .carry_out(carry[0]) // 1st carry calc'd here
                        );
   genvar j;
   generate for(j=1; j<32; j=j+1) begin: HALF_ADDERS
      full_adder summation(
                           .addend0(addend0[j]),
                           .addend1(addend1[j]),
                           .carry_in(carry[j-1]),
                           .sum(sum[j]),
                           .carry_out()
                          );
   end
   endgenerate
   
   
   // Determine carry using several stages of combinational logic
   // LOOK AHEAD CARRY
   /* carry = C, addend0 = A, addend1 = B 
      for n=(1-31) bits: C[n] = A[n]*B[n] + (A[n] + B[n])*C([n]-1)
      special case: C[0] = A[0]*B[0],
   */
   buf(prop_carry[0], 1'b0);
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: CARRY_CALC
      // determine definite carry from anding addend pairs
      and and_pairs(and_addend_pairs[i], addend0[i], addend1[i]);
      // determine if carry propogates (oring or xoring addends)
      or or_pairs(carry_propogate[i], addend0[i], addend1[i]);
      if(i>0) begin
         // determine final carry value
         or carry_or(carry[i], prop_carry[i], and_addend_pairs[i]);
         // determine propogation carry (prop_carry)
         and pre_carry_and(prop_carry[i], carry[i-1], carry_propogate[i]);
      end
   end
   endgenerate
endmodule