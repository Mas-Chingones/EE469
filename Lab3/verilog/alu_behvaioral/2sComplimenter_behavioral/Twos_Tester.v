// Title:  32-bit adder Tester
// Author: David Dolengewicz
// A test bench module for the 32-bit adder
// that makes sure it works to spec


module Twos_Tester(in, out);

output reg [31:0] in;
input wire [31:0] out;

integer i;

parameter stimDelay = 1;

initial // Response
	begin
	// Displays the labels and data
	$display("\t\t in \t\t out ");
	$monitor("\t\t %d \t\t %d \t %g",in, out, $time );
	end

	initial // Stimulus
	begin
	#stimDelay;
	in = 32'h7FFFFFF;
	#stimDelay;
	in = 32'h8FFFFFF;
	#stimDelay;
	in = 32'h9FFFFFF;
	#stimDelay;
	in = 32'hAFFFFFF;
	#stimDelay;
	in = 32'hBFFFFFF;
	#stimDelay;
	in = 32'hCFFFFFF;
	#stimDelay;
	in = 32'hDFFFFFF;
	#stimDelay;

	#stimDelay;
	in = -2;
	#stimDelay;
	in = -2000;
	#stimDelay;
	in = -320000;	
	#stimDelay;
	in = -10;
	

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end



endmodule
