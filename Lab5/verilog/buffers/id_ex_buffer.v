/*
Author: Adolfo Pineda
Title: Instruction Decode / Execution Buffer Registers
Summary: Buffer stores read_data, addresses, control signals, and instrutions 
   between the Instruction Decode and Execution stages of a pipelined CPU
*/


module id_ex_buffer( 
         clk,
         stall,
         rst,
         wb_ctrl,
         mem_ctrl,
         ex_ctrl,
         r_data_0,
         r_data_1,
         instruction,
         wb_ctrl_out, 
         mem_ctrl_out,
         ex_ctrl_out,
         wb_ctrl_saved, 
         mem_ctrl_saved,
         ex_ctrl_saved,
         r_data_0_out,
         r_data_1_out,
         instruction_out,
         instruction_saved
);
   // INPUT
   // buffer control
   input wire clk, stall, rst;
   // control in
	input wire [2:0] wb_ctrl, mem_ctrl;
	input wire [6:0] ex_ctrl;
   // data in
	input wire [31:0] r_data_0, r_data_1;
	// instruction in
   input wire [31:0] instruction;
	// OUTPUT
   // control out
   output wire [2:0] wb_ctrl_out, mem_ctrl_out;  // to id stage
   output wire [6:0] ex_ctrl_out;  // to id stage
	output reg [2:0] wb_ctrl_saved, mem_ctrl_saved;  // checked by data fwd
	output reg [6:0] ex_ctrl_saved;  // checked by data fwd
   // data out
	output reg [31:0] r_data_0_out, r_data_1_out;
	// instruction out
   output wire [31:0] instruction_out;
   output reg [31:0] instruction_saved;
	
   
   // output logic (incorporate stall)
   assign wb_ctrl_out = stall ? 3'b011 : wb_ctrl_saved;
   assign mem_ctrl_out = stall ? 3'b100 : mem_ctrl_saved;
   assign ex_ctrl_out = stall ? 7'b0 : ex_ctrl_saved;
   assign instruction_out = stall ? 32'b0 : instruction_saved;
   
   // storage logic
	initial begin
		wb_ctrl_saved = 3'b0;  // no write
		mem_ctrl_saved = 3'b100;  // cs high disable mem
		ex_ctrl_saved = 7'b0;  // NOP
		r_data_0_out = 32'b0;
		r_data_1_out = 32'b0;
		instruction_saved = 32'b0;
	end
	always @(posedge clk or negedge rst) begin
		if (!rst) begin;
         wb_ctrl_saved <= 3'b0; 
         mem_ctrl_saved <= 3'b100;
         ex_ctrl_saved <= 7'b0;
         r_data_0_out <= 32'b0;
         r_data_1_out <= 32'b0;
         instruction_saved <= 32'b0;
		end 
      else if (stall) begin
         wb_ctrl_saved <= wb_ctrl_saved; 
         mem_ctrl_saved <= mem_ctrl_saved;
         ex_ctrl_saved <= ex_ctrl_saved;
         r_data_0_out <= r_data_0_out;
         r_data_1_out <= r_data_1_out;
         instruction_saved <= instruction_saved;
      end
      else begin
			wb_ctrl_saved <= wb_ctrl; 
         mem_ctrl_saved <= mem_ctrl;
         ex_ctrl_saved <= ex_ctrl;
         r_data_0_out <= r_data_0;
         r_data_1_out <= r_data_1;
         instruction_saved <= instruction;
		end
	end
endmodule
