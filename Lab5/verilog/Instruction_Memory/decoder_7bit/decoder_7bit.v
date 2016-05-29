
// Module Dependencies
//`include "../shared_modules/mux_2to1/mux_2to1"

/*
Author: Ian Gilman and David Dolengewicz
Title: Single-output 7:1 Decoder
Summary: Recieves a code on 7-bit inputs which raises a logic high on 1 of the
   128 outputs while the rest are held low
*/

module decoder_7bit(code, selection);
   input wire [6:0] code;  // code driving which select is output
   output wire [127:0] selection;  // outputs including single selection
   wire [127:0] mux1, mux2, mux3, mux4, mux5, mux6;
   
   // shift high value to proper selection based on code (barrel shifter):
   // start with 32'b1 and shift its digits using a mux for each digit in 'code'
   genvar i;
   generate
      for(i=0; i<128; i=i+1) begin: BARREL
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
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(1'b0), .select(code[4]), .out(mux5[i]));
         else
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(mux4[i-16]), .select(code[4]), .out(mux5[i]));
		   // 6th shift (32-bit shift)
         if(i < 32)
            mux_2to1 BARREL5(.in0(mux5[i]), .in1(1'b0), .select(code[5]), .out(mux6[i]));
         else
            mux_2to1 BARREL5(.in0(mux5[i]), .in1(mux5[i-32]), .select(code[5]), .out(mux6[i]));
			// 7th shift (64-bit shift)
         if(i < 64)
            mux_2to1 BARREL6(.in0(mux6[i]), .in1(1'b0), .select(code[6]), .out(selection[i]));
         else
            mux_2to1 BARREL6(.in0(mux6[i]), .in1(mux6[i-64]), .select(code[6]), .out(selection[i]));
				
      end
   endgenerate
endmodule