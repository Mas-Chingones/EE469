
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
         mem_to_reg,
         read0_addr,
         read1_addr,
         imm_addr,
         reg_addr,
         mem_data,
         alu_data,
         read0_data, 
         read1_data
       );
   input wire clk, we, rst_all,  // clock, write enable, low reset all registers
              reg_dst, mem_to_reg;  // register destination selector, write data selection
   input wire [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    imm_addr, reg_addr;  // write register address
   input wire [31:0] mem_data, alu_data;  // data from mem or alu to be written to write address 
   output wire [31:0] read0_data,  // data to be read from read0 address
                      read1_data;  // data to be read from read1 address
   wire [31:0] Q[31:0];  // data read from all registers
   wire [31:0] wreg_sel,  // write register selection
               we_sel,  // write enable to selected register
               write_data;  // data to be written to registers
   wire [4:0] write_addr;  // address to write to in registers
  
   // write enable register selection
   decoder_5bit write_decoder(.code(write_addr), .selection(wreg_sel));
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: WRITE_REGISTER_SELECT
      mux_2to1 mux(.in0(1'b0), .in1(wreg_sel[i]), .select(we), .out(we_sel[i]));
   end
   endgenerate
   
   // choose address to write to
   genvar m;
   generate for(m=0; m<5; m=m+1) begin: WRITE_ADDR
      mux_2to1 mux(.in0(imm_addr[m]), .in1(reg_addr[m]), .select(reg_dst), .out(write_addr[m]));
   end
   endgenerate
   
   // choose data to write to registers
   genvar n;
   generate for(n=0; n<32; n=n+1) begin: WRITE_DATA
      mux_2to1 mux(.in0(mem_data[n]), .in1(alu_data[n]), .select(mem_to_reg), .out(write_data[n]));
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