/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register
Summary: 32 synchronous d flip-flops configured to operate as a parallel in/out,
   register with write enable and reset.
*/

`include "../../shared_modules/dff/dff.v"

module register_32bit(clk, we, rst, D, Q);
   input wire clk, we, rst;  // clock, write enabled, active-low reset register
   input wire [31:0] D;  // parallel data to write
   output wire [31:0] Q;  // parallel data from register
   wire [31:0] parallel_write_data;  // parallel data to register
   
   // write new data to register if write is enabled, else keep same data
   assign parallel_write_data = we ? D : Q;
   
   // register of 32 d flip-flops
   genvar i;
   generate for(i = 0; i < 32; i = i + 1) begin: REGISTER
      dff U(.q(Q[i]), .qBar(), .D(parallel_write_data[i]), .clk, .rst);
   end
   endgenerate

endmodule