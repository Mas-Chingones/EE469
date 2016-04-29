/*
Author: Ian Gilman
Title: Gate-Level Arithmetic Logic Unit
Summary: two-operand / one-result implementation with Add/Sub/And/Or/Xor/Slt/Sll
   functions selected by control code and produces status flags for 
   zero result (Z), overflow (V), carry out (C), and negative result (N).
*/

// Module Dependencies:


module alu_gate(operand0, operand1, control, result, Z, V, C, N);
   // I/O
   input wire [31:0] operand0, operand1;  // values used as operands
   input wire [2:0] control;  // determines operation performed
   output wire [31:0] result;  // result of operation
   output wire Z, V, C, N;  // status flags after operation
   // Internal
   wire [31:0] sum, difference, and_result,         //  wires connected to 
               or_result, xor_result, slt_result,   //  operation sub-module
               sll_result;                          //  results
   wire Z,  // zero flag
        add_V, sub_V,  // overflow flags
        add_C, sub_C,  // carry flags
        N;  // negative value flag
   
    // operation sub-modules
    
   
   
   //// Store Operation Results and flags ////
   // use and-or mask with control to assign valid operation to result
   assign result = (
                    ({32{control == ADD}} & sum) +
                    ({32{control == SUB}) & difference) +
                    ({32{control == AND}} & and_result) +
                    ({32{control == OR}} & or_result) +
                    ({32{control == XOR}} & xor_result) +
                    ({32{control == SLT}} & slt_result) +
                    ({32{control == SLL}} & sll_result)
                   );
   // over/underflow flag assignment with and-or mask using control
   assign V = (
                 ((control == ADD) & add_V) +
                 ((control == SUB) & sub_V) +
              );
   // carry flag assignment with and-or mask using control
   assign C = (
                 ((control == ADD) & add_C) +
                 ((control == SUB) & sub_C) +
              );
              
   // ALU operation control codes
   parameter NOP = 3'b0;
   parameter ADD = 3'b1;
   parameter SUB = 3'b10;
   parameter AND = 3'b11;
   parameter OR = 3'b100;
   parameter XOR = 3'b101;
   parameter SLT = 3'b110;
   parameter SLL = 3'b111;
endmodule