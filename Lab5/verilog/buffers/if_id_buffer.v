/*
Author: Ian Gilman
Title: Instruction Fetch / Instruction Decode Buffer Registers
Summary: Buffer stores instrution between the Instruction Fetch and Instruction
   Decode stages of a pipelined CPU
*/


module if_id_buffer(
         clk,
         rst,
         stall,
         instruction,
         instruction_out,
         instruction_saved
);
   // INPUTS
   // buffer control
   input wire clk, rst, stall,  // clock, reset buf data, stall buf changes
   // instruction
   input wire [31:0] instruction;
   // OUTPUTS
   output wire [31:0] instruction_out,  // instr to id stage
   output reg [31:0]  instruction_saved;  // instr checked by data fwd
   
   
   // instruction output logic (incorporate stall)
   assign instruction_out = stall ? 32'b0 : instruction_saved;
   
   // instruction storage logic
   initial begin
      instruction_saved = 32'b0;
   end
   always @(posedge clk or negedge rst) begin
      if(!rst)
         instruction_saved <= 32'b0;
      else if(stall)
         instruction_saved <= instruction_saved;
      else
         instruction_saved <= instruction;
   end
endmodule