
// Module Dependencies
//`include "../shared_modules/d_flipflop/d_flipflop.v"

module other_test(data_up, data_down, rw, clk, rst);
   output data_up;
   input data_down, rw, clk, rst;
   wire from_reg, to_reg;
   
   assign data_up = rw ? from_reg : ???????
   
   d_flip_flop FF(.q(from_reg), .qBar(), .D(to_reg), .clk(clk), .rst(rst));

endmodule