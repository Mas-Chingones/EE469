
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "shared_module/mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"

/*
Author: Ian Gilman, David Dolengewicz
Title: 128x32 File Register
Summary: MIPS-based 32 by 32 file register with data-bus-based dual-read/write
*/

module file_register(
         clk, 
         we,
         re,
         rst,
         read0_addr, 
         read1_addr,
         write_addr,
         data_bus,
         read0_data,
         read1_data,
         write_data
       );
   input wire clk, we, re,  // clock, write enable, read enable
              rst;  // !reset file registers
   input wire [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    write_addr;  // write register address selection
   input wire [31:0] write_data;  // direct data to write to fr              
   inout wire [31:0] data_bus;  // bus for data read1/write
   output wire [31:0] read0_data,  // direct data from read0_addr
                      read1_data;  // direct data from read1_addr
   wire [31:0]  write_proxy,  // data to write to write_addr in fr
                write_bus_proxy;  // data to write from bus to fr
   wire read_bus, write_bus,  // read from fr to bus, write to bus from fr
        rw_direct,  // reading & writing directly to fr
        n_we, n_re;  // !write enable, !read enable
   
   // negate read and write enables
   not not_re(n_re, re);
   not not_we(n_we, we);
   // read/write bus conditions
   and read_bus_cond(read_bus, re, n_we);
   and write_bus_cond(write_bus, we, n_re);
   // read & write directly from & to fr
   and write_direct_cond(rw_direct, re, we);
   
   // read1 from file register to data bus
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: READ
      bufif1 read_tri(data_bus[i], read1_data[i], read_bus);
   end
   endgenerate
   
   // write to file register
   genvar k;
   generate for(k=0; k<32; k=k+1) begin: WRITE
      bufif1 write_bus_tri(write_bus_proxy[k], data_bus[k], write_bus);
      mux_2to1 write_direct_mux(.out(write_proxy[k]), .in0(write_bus_proxy[k]), .in1(write_data[k]), .select(rw_direct));
   end
   endgenerate

   // file register hardware
   file_register_low FILE_REG_HW(
                       .clk(clk), 
                       .we(we), 
                       .rst_all(rst), 
                       .read0_addr(read0_addr), 
                       .read1_addr(read1_addr), 
                       .write_addr(write_addr), 
                       .write_data(write_proxy),
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
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: WRITE
      mux_2to1 mux(.in0(1'b0), .in1(wreg_sel[i]), .select(we), .out(we_sel[i]));
   end
   endgenerate
   decoder_5bit write_decoder(.code(write_addr), .selection(wreg_sel));
   
   // read data selection
   genvar j;
   generate for(j=0; j<32; j=j+1) begin: READ
      buf buff_read0(read0_data[j], Q[read0_addr][j]);
      buf buff_read1(read1_data[j], Q[read1_addr][j]);
   end
   endgenerate
   
   // 32, 32-bit registers
   genvar k;
   generate for(k=0; k<32; k=k+1) begin: FILE_REGISTER
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