
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"

/*
Author: Ian Gilman
Title: 32x32 File Register HW
Summary: MIPS-based 32 by 32-bit file register hardware module with dual-read
   and single enabled-write
*/

module file_register(
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
   input wire clk, we, rst_all,  // clock, write enable, low reset all registers
              reg_dst;  // register destination selector
   input wire [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    write0_addr, write1_addr;  // write register address
   input wire [31:0] write_data;  // data to be written to write address
   output wire [31:0] read0_data,  // data to be read from read0 address
                      read1_data;  // data to be read from read1 address
   wire [31:0] Q[31:0];  // data read from all registers
   wire [31:0] wreg_sel,  // write register selection
               we_sel;  // write enable to selected register
   wire [4:0] write_addr;  // data to write to registers
  
   // write enable register selection
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: WRITE
      mux_2to1 mux(.in0(1'b0), .in1(wreg_sel[i]), .select(we), .out(we_sel[i]));
   end
   endgenerate
   decoder_5bit write_decoder(.code(write_addr), .selection(wreg_sel));
   
   // choose address to write to
   genvar m;
   generate for(m=0; m<5; m=m+1) begin: WRITE_ADDR
      mux_2to1 mux(.in0(write0_addr[m]), .in1(write1_addr[m]), .select(reg_dst), .out(write_addr[m]));
   end
   endgenerate
   
   // read data selection
   genvar j;
   generate for(j=0; j<32; j=j+1) begin: READ
      buf buff_read0(read0_data[j], Q[read0_addr][j]);
      buf buff_read1(read1_data[j], Q[read1_addr][j]);
   end
   endgenerate   
   
   // 32, 32-bit register logic
   genvar k;
   generate for(k=0; k<32; k=k+1) begin: FILE_REGISTER
      if (k == 0)
         // Zero Register is Tied to Ground
         register_32bit F_REG(
                        .clk(clk), 
                        .we(1'b1), 
                        .rst(rst_all), 
                        .D(32'b0), 
                        .Q(Q[k])
                     );
      else
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