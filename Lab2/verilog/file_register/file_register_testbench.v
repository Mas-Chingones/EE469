
// Module Dependencies:
`include "register_32bit/d_flipflop/d_flipflop.v"
`include "register_32bit/register_32bit.v"
`include "shared_modules/mux_2to1/mux_2to1.v"
`include "decoder_5bit/decoder_5bit.v"
`include "file_register.v"
`include "file_register_tester.v"

/*
Author: Ian Gilman
Title: 32x32 File Register HW Test Bench
Summary: Link 32x32 file register DUT to test stimulus device and record 
   waveform data
*/

module file_register_testbench();
   wire clk, we, re, rst;  // clock, write enable, read enable, low reset
   wire [4:0] read0_addr,  // read0 register address selection 
              read1_addr,  // read1 register address selection
              write_addr;  // write register address selection
   wire [31:0] data_bus;  // data bus to/from file register

   // DUT and test stimulus
   file_register FILE_REG(
         .clk(clk), 
         .we(we), 
         .re(re),
	 .rs(1'b1),
         .rst(rst), 
         .read0_addr(read0_addr), 
         .read1_addr(read1_addr), 
         .write_addr(write_addr), 
         .data_bus(data_bus)
       );
   file_register_tester TESTER(
         .clk(clk), 
         .we(we),
         .re(re),
         .rst(rst), 
         .read0_addr(read0_addr), 
         .read1_addr(read1_addr), 
         .write_addr(write_addr), 
         .data_bus(data_bus)
       );
   
   // Store waveform data
   initial begin
      $dumpfile("file_register.vcd");
      $dumpvars(1, FILE_REG);
   end
endmodule