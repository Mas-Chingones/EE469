/*
Author: Adolfo Pineda
Title: Execution / Memory Buffer Registers
Summary: Buffer stores data, addresses, control signals, and instrutions between
   the Execution and Memory stages of a pipelined CPU
*/


module ex_mem_buffer( 
         clk,
         rst,
         wb_ctrl,
         mem_ctrl,
         alu_data,
         data_to_mem,
         instruction,
         wb_ctrl_out,
         mem_ctrl_out,
         alu_data_out,
         data_to_mem_out,
         instruction_out
);
	
   // INPUT
   // buffer control
	input wire clk, rst;
   // cpu control in
   input wire [2:0] wb_ctrl, mem_ctrl;
   // data in
	input wire [31:0] alu_data, data_to_mem;
	// instr in
   input wire [15:0] instruction;
	// OUTPUT
   // cpu control out
	output reg [2:0]  wb_ctrl_out, mem_ctrl_out;
   // data out
	output reg [31:0] alu_data_out, data_to_mem_out;
	// instr out
   output reg [15:0] instruction_out;
	
   
	initial begin
		wb_ctrl_out = 3'b011;  // no write
		mem_ctrl_out = 3'b100;  // cs high disable mem
		alu_data_out = 7'b0;
		data_to_mem_out = 32'b0;
		instruction_out = 32'b0;
	end
	always @(posedge clk or negedge rst) begin
		if (!rst) begin;
         wb_ctrl_out <= 3'b011; 
         mem_ctrl_out <= 3'b100;
			alu_data_out <= 7'b0;
			data_to_mem_out <= 32'b0;
			instruction_out <= 32'b0;
		end
      else begin
			wb_ctrl_out <= wb_ctrl; 
			mem_ctrl_out <= mem_ctrl;
			alu_data_out <= alu_data;
			data_to_mem_out <= data_to_mem;
			instruction_out <= instruction;
		end
	end
endmodule