/*
Author: Adolfo Pineda
Title: Memory / Writeback Buffer Registers
Summary: Buffer stores data, addresses, control signals, and instrutions between
   the Memory and Writeback stages of a pipelined CPU
*/


module mem_wb_buffer( 
         clk,
         rst,
         wb_ctrl,
         alu_data,
         mem_data,
         instruction,
         wb_ctrl_out,
         alu_data_out,
         mem_data_out,
         instruction_out
);
	
   // INPUT
   // buffer control
	input wire clk, rst;
   // cpu control in
   input wire [2:0] wb_ctrl;
   // data in
	input wire [31:0] alu_data, mem_data;
	// instr in
   input wire [31:0] instruction;
	// OUTPUT
   // cpu control out
	output reg [2:0]  wb_ctrl_out;
   // data out
	output reg [31:0] alu_data_out, mem_data_out;
	// instr out
   output reg [31:0] instruction_out;
	
   
	initial begin
		wb_ctrl_out = 3'b0;  // no write
		alu_data_out = 7'b0;
		mem_data_out = 32'b0;
		instruction_out = 32'b0;
	end
	always @(posedge clk or negedge rst) begin
		if (!rst) begin;
         wb_ctrl_out <= 3'b0; 
			alu_data_out <= 7'b0;
			mem_data_out <= 32'b0;
			instruction_out <= 32'b0;
		end
      else begin
			wb_ctrl_out <= wb_ctrl;
			alu_data_out <= alu_data;
			mem_data_out <= mem_data;
			instruction_out <= instruction;
		end
	end
endmodule