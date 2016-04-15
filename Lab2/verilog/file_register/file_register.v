
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"


/*
Author: Ian Gilman
Title: 32x32 File Register
Summary: MIPS-based 32 by 32 file register with data-bus-based dual-read/write
*/

module file_register(
         clk, 
         we, 
         rst,
         read0_addr, 
         read1_addr,
         write_addr,
         data_bus
       );
   input wire clk, we, rst;  // clock, write enable, low reset file registers
   input wire [4:0] read0_addr,  // read0 register address selection
                     read1_addr,  // read1 register address selection
                     write_addr;  // write register address selection
   inout [31:0] data_bus;  // bus for data read/write
   wire [31:0] read0_data,  // data from read0_addr 
               read1_data,  // data from read1_addr 
               write_data;  // data to write to write_addr
   
   // read from file register buffer
   assign data_bus = we ? 32'bz : read1_data;
   // write to file register buffer
   assign write_data = we ? data_bus : 32'bz;

   // file register hardware
   file_register_low FILE_REG_HW(
                       .clk(clk), 
                       .we(we), 
                       .rst_all(rst), 
                       .read0_addr(read0_addr), 
                       .read1_addr(read1_addr), 
                       .write_addr(write_addr), 
                       .write_data(write_data),
                       .read0_data(read0_data), 
                       .read1_data(read1_data)
                     );
endmodule



/*
Author: Ian Gilman
Title: 32x32 File Register Lower-Level HW
Summary: MIPS-based 32 by 32-bit file register hardware module with dual-read
   and single enabled-write
*/

module file_register_low(
         clk, 
         we, 
         rst_all, 
         read0_addr, 
         read1_addr, 
         write_addr, 
         write_data,
         read0_data, 
         read1_data
       );
   input wire clk, we, rst_all;  // clock, write enable, low reset all registers
   input wire [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    write_addr;  // write register address selection
   input wire [31:0] write_data;  // data to be written to write address
   output wire [31:0] read0_data,  // data to be read from read0 address
                      read1_data;  // data to be read from read1 address
   wire [31:0] Q[31:0];  // data read from all registers
   wire [31:0] wreg_sel,  // write register selection
               we_sel;  // write enable to selected register
  
   // write enable register selection
   assign we_sel = we ? wreg_sel : 32'b0;
   decoder_5bit write_decoder(.code(write_addr), .selection(wreg_sel));
   // read data selection
   assign read0_data = Q[read0_addr];
   assign read1_data = Q[read1_addr];
   
   // 32, 32-bit registers
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: FILE_REGISTER
      register_32bit F_REG(
                        .clk(clk), 
                        .we(we_sel[i]), 
                        .rst(rst_all), 
                        .D(write_data), 
                        .Q(Q[i])
                     );
   end
   endgenerate
endmodule