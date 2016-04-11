/*
Author: Ian Gilman
Title: 32x32 File Register HW Test Bench
Summary: Link 32x32 file register DUT to test stimulus device and record 
   waveform data
*/

// Module Dependencies:
`include "../shared_modules/d_flipflop/d_flipflop.v"
`include "register_32bit/register_32bit.v"
`include "decoder_5bit/decoder_5bit.v"
`include "file_register.v"
`include "file_register_tester.v"

module file_register_testbench();
   wire clk, we, rst_all;  // clock, write enable, low reset
   wire [4:0] read0_addr,  // read0 register address selection 
              read1_addr,  // read1 register address selection
              write_addr;  // write register address selection
   wire [31:0] write_data,  // data to be written to write address
               read0_data,  // data to be read from read0 address
               read1_data;  // data to be read from read1 address

   // DUT and test stimulus
   file_register FILE_REG(
         .clk(clk), 
         .we(we), 
         .rst_all(rst_all), 
         .read0_addr(read0_addr), 
         .read1_addr(read1_addr), 
         .write_addr(write_addr), 
         .write_data(write_data),
         .read0_data(read0_data), 
         .read1_data(read1_data)
       );
   file_register_tester TESTER( 
         .read0_data(read0_data), 
         .read1_data(read1_data),
         .clk(clk), 
         .we(we), 
         .rst_all(rst_all), 
         .read0_addr(read0_addr), 
         .read1_addr(read1_addr), 
         .write_addr(write_addr), 
         .write_data(write_data)
       );
   
   // Store waveform data
   initial begin
      $dumpfile("file_register.vcd");
      $dumpvars(1, FILE_REG);
   end
endmodule