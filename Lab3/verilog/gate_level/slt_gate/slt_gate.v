/*
Author: Ian Gilman
Title: Set Less Than
Summary: Sets result equal to 1 if operand0 less than operand1, else set to 0
*/

module slt_gate(operand0, operand1, result);
// I/O
   input wire [31:0] operand0, operand1;  // operands to compare values
   output wire [31:0] result;  // result of less than comparison
// Internal
   // general calc wires
   wire [31:0] neg_op0, neg_op1;  // negate operand bits
   // primary calculation wires
   wire fast_calc,  // fast part of the calculation
        slow_calc;  // slower part of the calc
  // slow calculation wires
   wire msb_same;   // determines if msb is the same
   wire [30:0] digit_lesser,  // check if op0 digit < op1 digit
               digit_less_eq;  // check if op0 digit <= op1 digit
   wire [29:0] sum_less_eq,  // cumulative check if all digits op0 <= op1
               valid_less_than,  // individual digit valid less than check
               sum_valid_less_than;  // cumulative valid less than check
   // other wires
   wire [30:0] equal_val,  // checks if digits of operands are equal
               sum_equal_val;  // sums equal values checked
   
   
   // negate complementary values
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: NEGATE
      not neg_op0_not(neg_op0[i], operand0[i]);
      not neg_op1_not(neg_op1[i], operand1[i]);
   end
   endgenerate
   
   // calc fast part
   and fast_calc_and(fast_calc, operand0[31], neg_op1[31]);
 

   // SLOW CALCULATION SERIES
   // find if msbs are the same
   xnor msb_same_xnor(msb_same, operand0[31], operand1[31]);
   
   // digit compares
   genvar j;
   generate for(j=30; j>=0; j=j-1) begin: DIGIT_COMPARE
      and digit_lesser_and(digit_lesser[j], neg_op0[j], operand1[j]);
      or digit_less_eq_or(digit_less_eq[j], neg_op0[j], operand1[j]);
   end
   endgenerate
   
   // accumulate less than or equal values
   and sum_less_eq_and(sum_less_eq[29], digit_less_eq[30], digit_less_eq[29]);
   genvar k;
   generate for(k=28; k>=0; k=k-1) begin: TOTAL_LESS_EQ
      and sum_less_eq_and(sum_less_eq[k], sum_less_eq[k+1], digit_less_eq[k]);
   end
   endgenerate
   
   /*
      ///// Slow Logic, accumulative values /////
      VARS:
      op0[30:0] = A, op1[30:0] = B
      inidivdual less thans = L, individual less than or equal to = F,
      cumulative less than or equal = G,
      individual valid less than detected = D, final less than found check = C
      LOGIC:
      Ln = ^A*B     Fn = ^An + Bn     G30 = L30 else Gn = G30*...*G(n-1) * Ln      
      D30 = L30 else Dn = Gn + D30 + ... + D(n+1)    C = D0
   */
   // determine whether valid <= is found and propogate < if present
   and valid_less_than_and(valid_less_than[29], digit_less_eq[30], digit_lesser[29]);
   or sum_valid_less_than_or(sum_valid_less_than[29], valid_less_than[29], digit_lesser[30]);
   genvar m;
   generate for(m=28; m>=0; m=m-1) begin: VALID_LESS_THAN
      and valid_less_than_and(valid_less_than[m], sum_less_eq[m+1], digit_lesser[m]);
      or sum_valid_less_than_or(sum_valid_less_than[m], valid_less_than[m], sum_valid_less_than[m+1]);
   end
   endgenerate
   
   // final slow calc
   and slow_and(slow, msb_same, sum_valid_less_than[0]);
   
   
   // RESULT CALCULATIONS
   // final result
   or result_or(result[0], fast_calc, slow);
   
   // buffer unused part of result with zeros
   genvar o;
   generate for(o=1; o<32; o=o+1) begin: BUFF_ZERO
      buf result_buf(result[o], 1'b0);
   end
   endgenerate
endmodule