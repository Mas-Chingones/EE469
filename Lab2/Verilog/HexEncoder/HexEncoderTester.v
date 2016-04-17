/**************************************************************
*	Lab 2 - HexEncoderTester
	by David Dolengewicz and Ian Gilman
	HexEncoderTester tester, tests HexEncoder used by HexEncoder_tb
**************************************************************/

module HexEncoderTester(in, hexOut);
input wire [6:0] hexOut;
output reg [3:0] in;

integer i;
parameter stimDelay = 1;
	
	initial // Response
	begin
	// Displays the labels and data
	$display("in out[6] out[5] out[4] out[3] out[2] out[1] out[0] time");	
	$monitor("%d     %b      %b      %b      %b      %b      %b      %b    %g ", in, hexOut[6], hexOut[5], hexOut[4], hexOut[3], hexOut[2], hexOut[1], hexOut[0], $time );
	end

	initial // Stimulus
	begin
	#stimDelay;

	// Counting starts at this point

	for (i = 0; i < 32; i = i + 1) begin
		#stimDelay;
		in = i;
	end
	

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
endmodule