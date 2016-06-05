
/*
Author: Adolfo Pineda and Ian Gilman
Title: 2kx16 SRAM 
Summary: 2k memory registers of 16 bits memory with data-in & data-out with
   chip select, output enable, write enable
*/

module sram(clk, cs, oe, rw, wr_fwd, addr, write_data, forward, read_data);
	// I/O
   input wire clk, cs, oe, rw,  // clock, !chip select, !out enable, read/!write
              wr_fwd;  // whether data is forwarded to mem
	input wire [31:0] addr,  // address of sram to index (only first 11 bits)
                     write_data,  // data to sram (only first 16 bits)
                     forward;  // data to forward to the sram
   output reg [31:0] read_data;  // data from sram
	reg [15:0] memory [0:2047];  // sram array of 16-bit registers
   // Internal
   wire [15:0] data_to_mem;
   
   
   /////  SRAM READ  /////
   always @(*) begin
      if(!cs && (rw && !oe)) begin
         // sign extend data from memory
         read_data = {{16{memory[addr[10:0]][15]}}, {memory[addr[10:0]]}};
      end
      else
         read_data = 32'bz;
   end
   
   /////  SRAM WRITE  /////
	assign data_to_mem = wr_fwd ? forward[15:0] : write_data[15:0];
   always @(posedge clk) begin
      if (!cs && (!rw && oe))
         memory[addr[10:0]] = data_to_mem[15:0];
      else
         memory[addr[10:0]] = memory[addr[10:0]];
	end
endmodule
