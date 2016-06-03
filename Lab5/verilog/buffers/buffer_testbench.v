/*
Author:  Ian Gilman
Title:   Pipelined CPU Buffers Testbench
Summary: Links cpu buffers under test with test stimulus, record dut signals 
   response to stimulus
*/

// Module Dependencies
`include "if_id_buffer.v"
`include "id_ex_buffer.v"
`include "ex_mem_buffer.v"
`include "mem_wb_buffer.v"
`include "buffer_tester.v"


module buffer_testbench();
   // buffer control signals
   wire clk, rst, if_id_stall, id_ex_stall, ex_mem_fwd;
   // instructions between buffers
   wire [31:0] if_instruction, id_instruction, ex_instruction, mem_instruction,
               wb_instruction;
   // instructions saved for forwarding
   wire [31:0] if_id_instruction_saved, id_ex_instruction_saved;
   // writeback control signals between buffers
   wire [2:0] id_wb_ctrl, ex_wb_ctrl, mem_wb_ctrl, wb_wb_ctrl; 
   // writeback control signal saved for data forwarding
   wire [2:0] id_ex_wb_ctrl_saved;
   // memory control signals between buffers
   wire [2:0] id_mem_ctrl, ex_mem_ctrl, mem_mem_ctrl;
   // memory control signal saved for data forwarding
   wire [2:0] id_ex_mem_ctrl_saved;
   // execution control signals between buffers
   wire [6:0] id_ex_ctrl, ex_ex_ctrl;
   // execution control signal save for data forwarding
   wire [6:0] id_ex_ex_ctrl_saved;
   // file register data between buffers
   wire [31:0] id_fr_d0, id_fr_d1, ex_fr_d0, ex_fr_d1;
   // alu data between buffers
   wire [31:0] ex_alu_data, mem_alu_data, wb_alu_data;
   // memory bus data between buffers
   wire [31:0] ex_data_to_mem, mem_data_to_mem, mem_data_from_mem, 
               wb_data_from_mem;
   // memory data forwarded to buffer
   wire [31:0] ex_mem_data_fwd;
   
   
 // Buffer Tester
   buffer_tester tester(
      .clk(clk),
      .rst(rst),
      .if_id_stall(if_id_stall),
      .id_ex_stall(id_ex_stall),
      .ex_mem_fwd(ex_mem_fwd),
      .instruction(if_instruction),
      .wb_ctrl(id_wb_ctrl),
      .mem_ctrl(id_mem_ctrl),
      .ex_ctrl(id_ex_ctrl),
      .fr_d0(id_fr_d0),
      .fr_d1(id_fr_d1),
      .alu_data(ex_alu_data),
      .data_to_mem(ex_data_to_mem),
      .mem_data_fwd(ex_mem_data_fwd),
      .data_from_mem(mem_data_from_mem)
   );

 // Buffer Devies under Test
   // INSTRUCTION_FETCH/INSTRUCTION_DECODE Intermediary Buffer
   if_id_buffer if_id_dut(
      .clk(clk),
      .rst(rst),
      .stall(if_id_stall),
      .instruction(if_instruction),
      .instruction_out(id_instruction),
      .instruction_saved(if_id_instruction_saved)
   );
   // INSTRUCTION_DECODE/EXECUTION Intermediary Buffer
   id_ex_buffer id_ex_dut( 
      .clk(clk),
      .stall(id_ex_stall),
      .rst(rst),
      .wb_ctrl(id_wb_ctrl),
      .mem_ctrl(id_mem_ctrl),
      .ex_ctrl(id_ex_ctrl),
      .r_data_0(id_fr_d0),
      .r_data_1(id_fr_d1),
      .instruction(id_instruction),
      .wb_ctrl_out(ex_wb_ctrl), 
      .mem_ctrl_out(ex_mem_ctrl),
      .ex_ctrl_out(ex_ex_ctrl),
      .wb_ctrl_saved(id_ex_wb_ctrl_saved), 
      .mem_ctrl_saved(id_ex_mem_ctrl_saved),
      .ex_ctrl_saved(id_ex_ex_ctrl_saved),
      .r_data_0_out(ex_fr_d0),
      .r_data_1_out(ex_fr_d1),
      .instruction_out(ex_instruction),
      .instruction_saved(id_ex_instruction_saved)
   );
   // EXECUTION/MEMORY Intermediary Buffer
   ex_mem_buffer ex_mem_dut( 
      .clk(clk),
      .rst(rst),
      .mem_fwd(ex_mem_fwd),
      .wb_ctrl(ex_wb_ctrl),
      .mem_ctrl(ex_mem_ctrl),
      .alu_data(ex_alu_data),
      .data_to_mem(ex_data_to_mem),
      .mem_data_forward(ex_mem_data_fwd),
      .instruction(ex_instruction),
      .wb_ctrl_out(mem_wb_ctrl),
      .mem_ctrl_out(mem_mem_ctrl),
      .alu_data_out(mem_alu_data),
      .data_to_mem_out(mem_data_to_mem),
      .instruction_out(mem_instruction)
   );
   // MEMORY/WRITEBACK Intermediary Buffer
   mem_wb_buffer mem_wb_dut( 
      .clk(clk),
      .rst(rst),
      .wb_ctrl(mem_wb_ctrl),
      .alu_data(mem_alu_data),
      .mem_data(mem_data_from_mem),
      .instruction(mem_instruction),
      .wb_ctrl_out(wb_wb_ctrl),
      .alu_data_out(wb_alu_data),
      .mem_data_out(wb_data_from_mem),
      .instruction_out(wb_instruction)
   );
   
   
   // Collect DUT signal data
   initial begin
      $dumpfile("buffer_test.vcd");
      $dumpvars(0, if_id_dut, id_ex_dut, ex_mem_dut, mem_wb_dut);
   end
endmodule