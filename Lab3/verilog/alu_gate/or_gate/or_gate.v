/*
Author: Ian Gilman
Title: 32-bit bitwaise OR
Summary: Or each bit of operand0 with equivalent bit in operand1 save in result
*/

module or_gate(operand0, operand1, result);
// I/O
   input wire [31:0] operand0, operand1;  // operands to or together
   output wire [31:0] result;  // or'd result
   
   genvar i;
   generate
      for(i=0; i<31; i=i+1) begin: OR
         or result_or(result[i], operand0[i], operand1[i]);
      end
   endgenerate
endmodule