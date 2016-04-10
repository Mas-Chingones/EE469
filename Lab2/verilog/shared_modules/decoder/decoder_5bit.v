/*
Author: Ian Gilman
Title: Single-output 5:1 Decoder
Summary: Recieves a code on 5-bit inputs which raises a logic high on 1 of the
   32 outputs while the rest are held low
*/

module decoder_5bit(code, selection);
   input wire [4:0] code;  // code driving which selct is output
   output wire [31:0] selection;  // outputs including single selection
   
   // shift high value to proper selection based on code
   assign selection = {32'b1 << (code)};

endmodule