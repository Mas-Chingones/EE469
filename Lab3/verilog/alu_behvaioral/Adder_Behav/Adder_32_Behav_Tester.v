// Title:  32-bit adder Tester
// Author: David Dolengewicz
// A test bench module for the 32-bit adder
// that makes sure it works to spec


module Adder_32_Behav_Tester(a, b, sum, zero, overflow, carryOut, negative);

output reg [31:0] a, b;
input wire [31:0] sum;
input wire zero, overflow, carryOut, negative;

integer i;

parameter stimDelay = 1;

initial // Response
	begin
	// Displays the labels and data
	$display("\t\t\t a \t\t\t b \t\t\t sum \t\t zero \t overflow carryOut \t negative \t Time ");
	$monitor("\t\t %d \t\t %d \t\t %d \t\t %d \t %b \t     %b \t\t %b \t %g",a, b, sum, zero, overflow, carryOut, negative, $time );
	end

	initial // Stimulus
	begin
	#stimDelay;
	a = 32; b = 32;
	#stimDelay;
	a = 320; b = 32;
	#stimDelay;
	a = 3200; b = 32;
	#stimDelay;
	a = 32000; b = 32;
	#stimDelay;
	a = 320000; b = 32;
	#stimDelay;
	a = 3200000; b = 32;
	#stimDelay;
	a = 32000000; b = 32;
	#stimDelay;
	a = 320000000; b = 32;
	#stimDelay;
	
	a = 320000000; b = 320;
	#stimDelay;
	a = 320000000; b = 3200;
	#stimDelay;
	a = 320000000; b = 320000000;
	#stimDelay;
	
	a = 32'h7FFFFFFF; b = 15;
	#stimDelay;
	
	a = 3200000000; b = 3200000000;
	#stimDelay;
	
	a = 32000000000; b = 32;
	#stimDelay;
	a = 320000000000; b = 32;
	#stimDelay;
	a = 3200000000000; b = 32;
	#stimDelay;
	a = 32000000000000; b = 32;
	#stimDelay;
	
	
	#stimDelay;
	a = 32; b = -32;
	#stimDelay;
	a = 320; b = -320;
	#stimDelay;
	a = -3200; b = -32;
	#stimDelay;
	a = -32000; b = 32000;
	#stimDelay;
	a = -32000; b = 320000;
	#stimDelay;
	a = 3200000; b = 32;
	#stimDelay;
	a = 32000000; b = 32;
	
	a = 32'h80000000; b = -3200000;
	#stimDelay;
	
	a = 3200000000; b = 32;
	#stimDelay;
	a = -3200000000; b = -3200000000;
	#stimDelay;


	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end



endmodule
