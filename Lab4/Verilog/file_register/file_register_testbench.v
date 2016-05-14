
// Module Dependencies:
`include "register_32bit/d_flipflop/d_flipflop.v"
`include "register_32bit/register_32bit.v"
`include "mux_2to1/mux_2to1.v"
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
   wire clk, we, rst_all,  // clock, write enable, low reset all registers
        reg_dst;  // register destination selector
   wire [4:0] read0_addr,  // read0 register address selection
              read1_addr,  // read1 register address selection
              write0_addr, write1_addr;  // write register address
   wire [31:0] write_data;  // data to be written to write address
   wire [31:0] read0_data,  // data to be read from read0 address
               read1_data;  // data to be read from read1 address

   // DUT and test stimulus
   file_register dut(
                     clk, 
                     we, 
                     rst_all,
                     reg_dst, 
                     read0_addr, 
                     read1_addr, 
                     write0_addr,
                     write1_addr,
                     write_data,
                     read0_data, 
                     read1_data
   );
   file_register_tester tester(
                                 clk, 
                                 we, 
                                 rst_all,
                                 reg_dst, 
                                 read0_addr, 
                                 read1_addr, 
                                 write0_addr,
                                 write1_addr,
                                 write_data,
                                 read0_data, 
                                 read1_data
   );
   
   // Store waveform data
   initial begin
      $dumpfile("file_register.vcd");
      $dumpvars(1, dut);
   end
endmodule
