/*
Author: Ian Gilman
Title: 32x32 File Register HW
Summary: MIPS-based 32 by 32-bit general register hardware module with dual-read
   and a single, asynchronous enabled-write
*/

/*
// Module Dependencies //
`include "../shared_modules/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../shared_modules/synch_register_32bit/synch_register_32bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "decoder_5bit/decoder_5bit.v"
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
   wire rd0_data_src, rd1_data_src;  // determines if read data comes from fr or write data
  
   // write enable register selection
   decoder_5bit write_decoder(.code(write_addr), .selection(wreg_sel));
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: WRITE_REGISTER_SELECT
      mux_2to1 mux(.in0(1'b0), .in1(wreg_sel[i]), .select(we), .out(we_sel[i]));
   end
   endgenerate
   
   // choose address to write to: if reg_dst is 1 use REG instr addr else use IMM addr
   genvar m;
   generate for(m=0; m<5; m=m+1) begin: WRITE_ADDR
      mux_2to1 mux(.in0(imm_addr[m]), .in1(reg_addr[m]), .select(reg_dst), .out(write_addr[m]));
   end
   endgenerate
   
   // choose data to write to registers: if mem_to_reg is 1 use mem_data else use alu_data
   genvar n;
   generate for(n=0; n<32; n=n+1) begin: WRITE_DATA
      mux_2to1 mux(.in0(alu_data[n]), .in1(mem_data[n]), .select(mem_to_reg), .out(write_data[n]));
   end
   endgenerate
   
   // read data selection
   assign rd0_data_src = (read0_addr == write_addr) && we;
   assign rd1_data_src = (read1_addr == write_addr) && we;
   // route chosen data to read out
   genvar j;
   generate for(j=0; j<32; j=j+1) begin: READ
      mux_2to1 mux_read0(.in0(Q[read0_addr][j]), .in1(write_data[j]), .select(rd0_data_src), .out(read0_data[j]));
      mux_2to1 mux_read1(.in0(Q[read1_addr][j]), .in1(write_data[j]), .select(rd1_data_src), .out(read1_data[j]));
   end
   endgenerate   
   
   // 32, 32-bit register logic
   genvar k;
   generate for(k=0; k<32; k=k+1) begin: FILE_REGISTER
      if (k == 0)
         // Zero Register is Tied to Ground
         synch_register_32bit F_REG(
                        .clk(clk),
                        .we(1'b1), 
                        .rst(rst_all), 
                        .D(32'b0), 
                        .Q(Q[k])
                     );
      else
         synch_register_32bit F_REG(
                           .clk(clk),
                           .we(we_sel[k]), 
                           .rst(rst_all), 
                           .D(write_data), 
                           .Q(Q[k])
                        );
   end
   endgenerate
   
   /*-------------------------------------------------------
            MIPS File Register Location Reference
   ---------------------------------------------------------
   ||  Conventional Name    ||  Register Number           ||
   ---------------------------------------------------------
   ||  $zero                ||  0                         ||
   ||  $at                  ||  1                         ||
   ||  $v0, $v1             ||  2 to 3                    ||
   ||  $ao to $a3           ||  4 to 7                    || 
   ||  $t0 to $t7           ||  8 to 15                   ||
   ||  $s0 to $s7           ||  16 to 23                  ||
   ||  $t8 to $t9           ||  24 to 25                  ||
   ||  $k0 to $k1           ||  26 to 27                  ||
   ||  $gp                  ||  28                        ||
   ||  $sp                  ||  29                        ||
   ||  $fp                  ||  30                        ||
   ||  $ra                  ||  31                        ||
   -------------------------------------------------------*/
 
endmodule