/*
Author: Ian Gilman
Title: Negate a signed number
Summary: Return the negative value of a signed number
*/

module negate_signed_gate(orig_num, neg_num);
// I/O
   input wire [31:0] orig_num;
   output wire [31:0] neg_num;
// Internal
   wire [31:0] one_comp, mask;
   
   
   // Calculate one's complement
   genvar i;
   // special case
   buf(mask[0], 1);
   generate for(i=0; i<32; i=i+1) begin: Negate
      // one's complement
      not one_comp_not(one_comp[i], orig_num[i]);
      
      if(i > 0)
         // produce mask for creating two's complement
         and mask_and(mask[i], one_comp[i-1], mask[i-1]);
         
      // two's complement
      xor two_comp_xor(neg_num[i], one_comp[i], mask[i]);
   end
   endgenerate
endmodule