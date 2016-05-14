
// Module Dependencies:
//`include "../mux_2to1/mux_2to1.v"
//`include "d_flipflop/d_flipflop.v"

/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register
Summary: 32 synchronous d flip-flops configured to operate as a parallel in/out,
   register with write enable and reset.
*/

module register_32bit(clk, we, rst, D, Q);
   input wire clk, we, rst;  // clock, write enabled, active-low reset register
   input wire [31:0] D;  // parallel data to write
   output wire [31:0] Q;  // parallel data from register
   wire [31:0] parallel_write_data;  // parallel data to register
   
   // write new data to register if write is enabled, else keep same data
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: TO_FF
      mux_2to1 mux(
                  .in0(Q[i]), 
                  .in1(D[i]), 
                  .select(we), 
                  .out(parallel_write_data[i])
               );
   end
   endgenerate
   
   // register of 32 d flip-flops
   genvar j;
   generate for(i=0; i<32; i=i+1) begin: REGISTER
      d_flipflop FF(
                  .q(Q[i]),
                  .qBar(),
                  .d(parallel_write_data[i]), 
                  .clk(clk), 
                  .rst(rst)
                 );
   end
   endgenerate
endmodule