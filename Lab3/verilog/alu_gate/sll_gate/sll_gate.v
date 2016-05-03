/*
Author: Ian Gilman
Title: 32-bit Shift Left Logical
Summary: shift bits left up to 32 times, shifting zeros in at same time
*/

// Module Dependencies
//`include "../shared_modules/mux_2to1.v"

module sll_gate(num, shift, shift_num);
// I/O
   input wire [31:0] num;  // number to be bit-shifted to the left
   input wire [5:0] shift;  // amount to shift 'num' by
   output wire [31:0] shift_num;  // number shifted by 'shift' amount
// Internal
   wire [31:0] mux1, mux2, mux3, mux4, mux5;  // wires btwn barrel shifter mux-levels
   wire [5:0] shift_filter;  // filters out invalid shift values
   
   
   // filter invalid shift values from shift
   genvar j;
   generate 
      for(j=0; j<6; j=j+1) begin: FILTER_SHIFT
         if(j < 5)
            mux_2to1 filter_mux(.in0(shift[j]), .in1(1'b0), .select(shift[5]), .out(shift_filter[j]));
         else
            mux_2to1 filter_mux(.in0(1'b0), .in1(shift[j]), .select(shift[5]), .out(shift_filter[j]));
      end
   endgenerate
   
   /*//// Left-Shift Barrel Shifter Using Muxes
      Each nth level of the shifter shifts bits from the (n-1)th level to the
      left by 2^n bits if the value shift[n] is high:
         total shift = sum(shift(5)*2^5 + ... + shift(0)*2^0)
      RECALL: valid shifts are only up to 32 bits shifted TOTAL
   */
   genvar i;
   generate
      for(i=0; i<32; i=i+1) begin: BARREL
         // 1st shift (1-bit shift)
         if(i == 0)
            mux_2to1 BARREL0(.in0(num[i]), .in1(1'b0), .select(shift_filter[0]), .out(mux1[i]));
         else
            mux_2to1 BARREL0(.in0(num[i]), .in1(num[i-1]), .select(shift_filter[0]), .out(mux1[i]));
         // 2nd shift (2-bit shift)
         if(i < 2)
            mux_2to1 BARREL1(.in0(mux1[i]), .in1(1'b0), .select(shift_filter[1]), .out(mux2[i]));
         else
            mux_2to1 BARREL1(.in0(mux1[i]), .in1(mux1[i-2]), .select(shift_filter[1]), .out(mux2[i]));
         // 3rd shift (4-bit shift)
         if(i < 4)
            mux_2to1 BARREL2(.in0(mux2[i]), .in1(1'b0), .select(shift_filter[2]), .out(mux3[i]));
         else
            mux_2to1 BARREL2(.in0(mux2[i]), .in1(mux2[i-4]), .select(shift_filter[2]), .out(mux3[i]));
         // 4th shift (8-bit shift)
         if(i < 8)
            mux_2to1 BARREL3(.in0(mux3[i]), .in1(1'b0), .select(shift_filter[3]), .out(mux4[i]));
         else
            mux_2to1 BARREL3(.in0(mux3[i]), .in1(mux3[i-8]), .select(shift_filter[3]), .out(mux4[i]));
         // 5th shift (16-bit shift)
         if(i < 16)
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(1'b0), .select(shift_filter[4]), .out(mux5[i]));
         else
            mux_2to1 BARREL4(.in0(mux4[i]), .in1(mux4[i-16]), .select(shift_filter[4]), .out(mux5[i]));
         // 6th shift (32-bit shift)
            mux_2to1 BARREL5(.in0(mux5[i]), .in1(1'b0), .select(shift_filter[5]), .out(shift_num[i]));
      end
   endgenerate
endmodule