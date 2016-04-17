
// All files used
`include "sram.v"

// Title: SRAM Testbench
// Author: Adolfo Pineda
// A test bench module

module sram_tb;

	wire clk, cs, oe, rw;
	wire [31:0] addr_bus;
	wire [31:0] data_bus;
	
	// dut
	sram ram(clk, cs, oe, rw, addr_bus, data_bus);
	
	// tester
	sramTester aTester(clk, cs, oe, rw, addr_bus, data_bus);

	// File for gtkwave
	initial begin
		$dumpfile("sram.vcd");
		$dumpvars(1, ram);
	end
endmodule



// Title: SRAM Tester
// Author: Adolfo Pineda
// A testing module

module sramTester (clk, cs, oe, rw, addr_bus, data_bus);

	integer i;
	input [15:0] read_out;
	output reg clk, cs, oe, rw;
   inout [31:0] addr_bus;
   inout [31:0] data_bus;
	reg [10:0] address;
	reg [15:0] data;
   wire [10:0] addr_bus_mon;
   wire [15:0] data_bus_mon;
	parameter stimDelay = 1;
	
   assign data_bus = (!cs && rw && !oe) ? 32'bz : {16'b0, data};
   assign addr_bus = !cs ? {21'b0, address} : 32'bz;
   
   assign addr_bus_mon = addr_bus[10:0];
   assign data_bus_mon = data_bus[15:0];
	initial // Response
	begin
	
	// Displays the labels and data
	$display("\t\t cs rw oe   ad_b da_b  clk  Time");
	$monitor("\t\t %b  %b  %b    %h  %h  %b    %g",
			cs, rw, oe, addr_bus_mon, data_bus_mon, clk, $time);
	end

	initial // Stimulus
	begin
   
   // initial
	clk = 1; 
	cs = 1;
	rw = 0;
	oe = 0;
	data = 16'b0;
	address = 0;
   clk = 1;
	
   // write values to first 16 addresses
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
   cs = 1'b0;
   oe = 1'b1;
	for (i = 0; i < 32; i = i + 1) begin
			data = data + (i+1)%2;
         address = address + (i+1)%2;
         #stimDelay; clk = ~clk;
   end
	
	
   // read
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
   address = 0;
	rw = 1;
	oe = 0;
   for (i = 0; i < 32; i = i + 1) begin
      address = address + (i+1)%2;
      #stimDelay; clk = ~clk;
	end
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
	
   // write
   rw = 0;
   oe = 1;
   address = 11'h200;
   data = 16'hAAAA;
   for(i=0; i<4; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
	
   // read again
	rw = 1;
	oe = 0;
	for(i=0; i<4; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
   
	$finish; // finish simulation
	end
	
endmodule
