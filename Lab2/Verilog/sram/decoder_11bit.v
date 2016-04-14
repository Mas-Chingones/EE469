/*
Author: Adolfo Pineda
Title: Single-output 11:1 Decoder
Summary: Recieves a code on 11-bit inputs which raises a logic high on 1 of the
   2048 outputs while the rest are held low
*/

module decoder_11bit(code, selection);
   input wire [10:0] code;  // code driving which selct is output
   output wire [2047:0] selection;  // outputs including single selection
   
   // shift high value to proper selection based on code
   assign selection = {2048'b1 << (code)};
endmodule