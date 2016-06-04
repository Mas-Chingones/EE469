/*
Author: Ian Gilman
Title: Computer Integration Testbench
Summary: Connect tester to dut and gather test waveform data
*/

/*/ Module Dependencies */
`include "computer_integration.v"
`include "computer_integration_tester.v"
`include "../file_register/file_register.v"
`include "../file_register/decoder_5bit/decoder_5bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "../shared_modules/synch_register_32bit/synch_register_32bit.v"
`include "../shared_modules/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../sram/sram.v"
`include "../alu/alu.v"
`include "../buffers/if_id_buffer.v"
`include "../buffers/id_ex_buffer.v"
`include "../buffers/ex_mem_buffer.v"
`include "../buffers/mem_wb_buffer.v"
`include "../instruction_memory/instruction_memory.v"
`include "../instruction_memory/decoder_7bit/decoder_7bit.v"
`include "../Program_Control/Program_Control.v"
`include "../control_signals/control_signals.v"
`include "../dataForwarding/dataForwarding.v"

module computer_integration_testbench();
   wire clk, comp_rst,  // clock, computer !reset, 
              comp_en,  //computer !enable  
              wr_instr_en;  // enable instruction writing
   wire [6:0] wr_instr_addr;  // instr memory address to be written to
   wire [31:0] wr_instr;

   // Device Under Test
   computer_integration dut(
      clk,
      comp_rst,
      comp_en,
      wr_instr_en,
      wr_instr_addr,
      wr_instr
   );
   
   // Test Device
   computer_integration_tester tester(
      clk,
      comp_rst,
      comp_en,
      wr_instr_en,
      wr_instr_addr,
      wr_instr
   );

   initial begin
      $dumpfile("computer_integration_test.vcd");
      $dumpvars(5, dut);
   end
   
endmodule