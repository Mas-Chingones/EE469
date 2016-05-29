
// Module Dependencies:
`include "../shared_modules/register_32bit/d_flipflop/d_flipflop.v"
`include "../shared_modulesregister_32bit/register_32bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "decoder_7bit/decoder_7bit.v"
`include "instruction_memory.v"
`include "instruction_memory_tester.v"

/*
Author: Ian Gilman
Title: 128x32 Instruction Memory Test Bench
Summary: Link 128x32 Instruction Memory DUT to test stimulus device and record 
   waveform data
*/

module file_register_testbench();
   wire clk, we, rst_all;  // clock, write enable, low reset
   wire [6:0] read_addr,  // read address selection
              write_addr;  // write register address selection
   wire [31:0] read_data,  // data to be read from read address
               write_data;  // data to be written to write address
   

   // DUT and test stimulus
   instruction_memory DUT(
         .clk(clk), 
         .we(we), 
         .rst_all(rst_all), 
         .read_addr(read_addr),
         .write_addr(write_addr), 
         .write_data(write_data),
         .read_data(read_data)
       );
   instruction_memory_tester TESTER(
         .clk(clk), 
         .we(we), 
         .rst_all(rst_all), 
         .read_addr(read_addr),
         .write_addr(write_addr), 
         .write_data(write_data),
         .read_data(read_data)
       );
   
   // Store waveform data
   initial begin
      $dumpfile("instruction_memory.vcd");
      $dumpvars(3, DUT);
   end
endmodule