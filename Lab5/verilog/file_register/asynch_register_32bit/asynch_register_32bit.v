
// Module Dependencies:
//`include "../../shared_modules/mux_2to1/mux_2to1.v"
//`include "gated_d_latch/gated_d_latch.v"

/*
Author: Ian Gilman
Title: 32-bit Parallel In/Out Register
Summary: 32 asynchronous d latches configured to operate as a parallel in/out,
   register with write enable and reset.
*/

module asynch_register_32bit(clk, we, rst, D, Q);
   input wire clk, we, rst;  // clock, write enabled, active-low reset register
   input wire [31:0] D;  // parallel data to write
   output wire [31:0] Q;  // parallel data from register
   
   // register of 32 d latches
   genvar i;
   generate for(i=0; i<32; i=i+1) begin: REGISTER
      gated_d_latch latch(
                           .q(Q[i]),
                           .qBar(),
                           .en(we),
                           .d(D[i]),  
                           .rst(rst)
                         );
   end
   endgenerate
endmodule