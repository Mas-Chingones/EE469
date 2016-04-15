/*
Author: Ian Gilman
Title: 2:1 Output Multiplexer
Summary: choose one of 2 inputs to output based on select
*/

module mux_2to1(in0, in1, select, out);
   input wire in0, in1, select;
   output wire out;
   wire sel0, sel1;
   
   and and_sel0(sel0, in0, !select);
   and and_sel1(sel1, in1, select);
   or or_sel(out, sel0, sel1);
endmodule