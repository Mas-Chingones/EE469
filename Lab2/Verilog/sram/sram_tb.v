// Title:
// Author: Adolfo Pineda
// A test bench module

// All files used
`include "sram.v"

module sram_tb;

	wire clk, rst, oe, we;
	wire [10:0] address;
	wire [15:0] data;
	wire [15:0] read_out;
	//reg [15:0] other_out;
	
	// Declare an instance of the Johnson module
	sram ram (clk, rst, oe, we, address, data, read_out);
	
	// Declare an instance of the JohnsonTester module
	sramTester aTester (read_out, clk, rst, oe, we, address, data);

	// File for gtkwave
	initial begin
		$dumpfile("sram.vcd");
		$dumpvars(1, ram);
		
	end
endmodule

// Title:
// Author: Adolfo Pineda
// A testing module

module sramTester (read_out, clk, rst, oe, we, address, data);

	integer i;
	input [15:0] read_out;
	output reg clk, rst, oe, we;
	output reg [10:0] address;
	output reg [15:0] data;
	parameter stimDelay = 1;
	
	initial // Response
	begin
	
	// Displays the labels and data
	$display("\t\t clk \t rst \t we \t oe \t addr \t data \t r_out \t Time");
	$monitor("\t\t %b \t %b \t %b \t %b \t %d \t %h \t %h \t %g",
			clk, rst, we, oe, address, data, read_out, $time);
	end

	initial // Stimulus
	begin
	clk = 0; 
	rst = 1;
	we = 0;
	oe = 0;
	data = 16'b0;
	address = 0;
	
	#stimDelay;
	rst = 0;
	#stimDelay;
	rst = 1;
	#stimDelay;
	clk = 1;
	oe = 1;
	//sram[0] = data;
	for (i = 0; i < 32; i = i + 1) begin
		#stimDelay;
		clk = ~clk;
		if (clk) begin
			address = address + 1;
			data = data + 1;
		end
	end
	clk = ~clk;
	#stimDelay;
	
	clk = ~clk;
	#stimDelay;
	
	clk = ~clk;
	#stimDelay;
	
	clk = 0;
	we = 0;
	oe = 0;
	#stimDelay;
	
	clk = 1;
	we = 1;
	oe = 0;
	#stimDelay;
	
	address = 5;
	#stimDelay;
	
	clk = 0;
	#stimDelay;
	
	clk = 1;
	#stimDelay;
	
	address = 10;
	clk = 0;
	#stimDelay;
	
	clk = 1;
	#stimDelay;
	
	clk = 0;
	#stimDelay;
	
	we = 0;
	oe = 1;
	clk = 1;
	#stimDelay;
	
	clk = 0;
	#stimDelay;
	
	clk = 1;
	#stimDelay;
	
	clk = 0;
	#stimDelay;
	
	address = 2000; 
	data = 16'hAAAA;
	clk = 1;
	#stimDelay;
	
	we = 1;
	oe = 0;
	clk = ~clk;
	#stimDelay;
	
	clk = ~clk;
	#stimDelay;
	
	clk = ~clk;
	#stimDelay;
	
	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
	
endmodule
