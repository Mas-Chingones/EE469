
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "register_32bit/register_32bit.v"
//`include "mux_2to1/mux_2to1.v"
//`include "decoder_7bit/decoder_7bit.v"


/*
Author: Ian Gilman and David Dolengewicz
Title: 128x32 instruction memory
Summary: MIPS-based 128 by 32-bit file register hardware module with single read
   and single enabled-write. Modified for instruction memory use
*/

module instruction_memory(
         clk, 
         we, 
         rst_all, 
         read_addr,
		   read_data, 	
         write_addr, 
         write_data
       );
		 
		 
   input wire clk, we, rst_all;  // clock, write enable, low reset all registers
   input wire [6:0] read_addr,  // read register address selection               
						  write_addr;  // write register address selection
   input wire [31:0] write_data;  // data to be written to write address
   output wire [31:0] read_data;  // data to be read from read address
                      
   wire [31:0] Q[127:0];  // data read from all registers
   wire [127:0] wreg_sel,  // write register selection
               we_sel;  // write enable to selected register
  
   // write enable register selection
   genvar i;
   generate for(i=0; i<128; i=i+1) begin: WRITE
      mux_2to1 mux(.in0(1'b0), .in1(wreg_sel[i]), .select(we), .out(we_sel[i]));
   end
   endgenerate
   decoder_7bit write_decoder(.code(write_addr), .selection(wreg_sel));
   
   // read data selection
   genvar j;
   generate for(j=0; j<32; j=j+1) begin: READ
      buf buff_read(read_data[j], Q[read_addr][j]);
   end
   endgenerate
   
   // 128, 32-bit registers
   genvar k;
   generate for(k=0; k<128; k=k+1) begin: FILE_REGISTER
      register_32bit F_REG(
                        .clk(clk), 
                        .we(we_sel[k]), 
                        .rst(rst_all), 
                        .D(write_data), 
                        .Q(Q[k])
                     );
   end
   endgenerate
endmodule