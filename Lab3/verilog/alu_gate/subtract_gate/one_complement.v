/*
Author: Ian Gilman
Title: One's Complementer
Summary: Returns one complement of value
*/

module one_complement(num, comp);
// I/O
   input wire [31:0] num;
   output wire [31:0] comp;
   
   // negate bits to take ones complement
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: ONECOMP
      not one_complement(comp[i], num[i]);
   end
   endgenerate
endmodule