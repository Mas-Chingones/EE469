/**************************************************************
*	Lab 2 - hexEncoder
	by David Dolengewicz
	converts a 4-bit number in into a 7-segment display representation
	of its hex value
**************************************************************/


module HexEncoder(in, hexOut);
input wire [3:0] in;
output reg [6:0] hexOut;

always @(in) begin
case (in) 
	0: 	hexOut = 7'b1000000; // 0 
	1: 	hexOut = 7'b1111001; // 1 
	2: 	hexOut = 7'b0100100; // 2 
	3: 	hexOut = 7'b0110000; // 3 
	4: 	hexOut = 7'b0011001; // 4 
	5: 	hexOut = 7'b0010010; // 5 
	6: 	hexOut = 7'b0000010; // 6 
	7: 	hexOut = 7'b1111000; // 7 
	8: 	hexOut = 7'b0000000; // 8 
	9: 	hexOut = 7'b0010000; // 9 
	10:	hexOut = 7'b0001000; // A
	11:	hexOut = 7'b0000011; // b	
	12:	hexOut = 7'b1000110; // C
	13:	hexOut = 7'b0100001; // d
	14:	hexOut = 7'b0000110; // E
	15:	hexOut = 7'b0001110; // F
	default hexOut = 7'bx; 		// default state

endcase
end

endmodule



