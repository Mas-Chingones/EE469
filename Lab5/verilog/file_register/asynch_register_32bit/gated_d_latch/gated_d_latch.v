/*
Author: Lab-provided code
Title: Gated D Latch
Summary: Behavioral model of an D latch
*/

module gated_d_latch(q, qBar, en, d, rst);
   input wire en, d, rst; // latch enable, input data, !reset
   output reg q;  // latch data
   output wire qBar; // latch negated data

   
   // latch logic
   not(qBar, q);
   always @(*) begin
      if(!rst)
         q = 0;
      else if(en)
         q = d;
      else
         q = q;
   end
endmodule 