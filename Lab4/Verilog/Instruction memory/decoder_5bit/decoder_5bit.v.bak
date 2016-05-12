
// Module Dependencies
//`include "../shared_modules/mux_2to1/mux_2to1"

/*
Author: Ian Gilman
Title: Single-output 5:1 Decoder
Summary: Recieves a code on 5-bit inputs which raises a logic high on 1 of the
   32 outputs while the rest are held low
*/

module decoder_5bit(code, selection);
   input wire [4:0] code;  // code driving which selct is output
   output wire [31:0] selection;  // outputs including single selection
   wire [31:0] mux1, mux2, mux3, mux4;
   
   // shift high value to proper selection based on code (barrel shifter):
   // start with 32'b1 and shift its digits using a mux for each digit in 'code'
   genvar i;
   generate
      for(i=0; i<32; i=i+1) begin: BARREL
         // 1st shift (1-bit shift)
         if(i == 0)
            mux_2to1 BARREL0(.in0(1'b1), .in1(1'b0), .select(code[0]), .out(mux1[i]));
         else if(i == 1)
            mux_2to1 BARREL0(.in0(1'b0), .in1(1'b1), .select(code[0]), .out(mux1[i]));
         else
            mux_2to1 BARREL0(.in0(1'b0), .in1(1'b0), .select(code[0]), .out(mux1[i]));
         // 2nd shift (2-bit shift)
         if(i < 2)
            mux_2to1 BARREL1(.in0(mux1[i]), .in1(1'b0), .select(code[1]), .out(mux2[i]));
         else
            mux_2to1 BARREL1(.in0(mux1[i]), .in1(mux1[i-2]), .select(code[1]), .out(mux2[i]));
         // 3rd shift (4-bit shift)
         if(i < 4)
            mux_2to1 BARREL2(.in0(mux2[i]), .in1(1'b0), .select(code[2]), .out(mux3[i]));
         else
            mux_2to1 BARREL2(.in0(mux2[i]), .in1(mux2[i-4]), .select(code[2]), .out(mux3[i]));
         // 4th shift (8-bit shift)
         if(i < 8)
            mux_2to1 BARREL3(.in0(mux3[i]), .in1(1'b0), .select(code[3]), .out(mux4[i]));
         else
            mux_2to1 BARREL3(.in0(mux3[i]), .in1(mux3[i-8]), .select(code[3]), .out(mux4[i]));
         // 5th shift (16-bit shift)
         if(i < 16)
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(1'b0), .select(code[4]), .out(selection[i]));
         else
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(mux4[i-16]), .select(code[4]), .out(selection[i]));
      end
   endgenerate
endmodule