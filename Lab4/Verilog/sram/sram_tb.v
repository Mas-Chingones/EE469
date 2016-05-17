
// All files used
`include "sram.v"

// Title: SRAM Testbench
// Author: Adolfo Pineda
// A test bench module

module sram_tb;

	wire clk, cs, oe, rw;
	wire [31:0] addr,
               write_data,
               read_data;
	
	// dut
	sram dut(clk, cs, oe, rw, addr, write_data, read_data);
	
	// tester
	sramTester Tester(clk, cs, oe, rw, addr, write_data, read_data);

	// File for gtkwave
	initial begin
		$dumpfile("sram.vcd");
		$dumpvars(1, dut);
	end
endmodule



// Title: SRAM Tester
// Author: Adolfo Pineda
// A testing module

module sramTester (clk, cs, oe, rw, addr, write_data, read_data);
	output reg clk, cs, oe, rw;  // clock, !chip select, !out enable, read/!write
	output reg [31:0] addr,  // address of sram to index
                     write_data;  // data to sram
   input wire [31:0] read_data;  // data from sram
	parameter stimDelay = 10;
	
	initial // Response
	begin
	
	// Displays the labels and data
	$display("\t\t cs rw oe   adr \twrd \t\trdd\t\tclk  time");
	$monitor("\t\t %b  %b  %b    %h  \t%h  \t%h  \t%b    %g",
			cs, rw, oe, addr, write_data, read_data, clk, $time);
	end

   integer i;
	initial // Stimulus
	begin
   
   // initial
	clk = 1; 
	cs = 1;
	rw = 0;
	oe = 0;
	write_data = 16'b0;
	addr = 0;
   clk = 1;
	
   // write values to first 16 addresses
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
   cs = 1'b0;
   oe = 1'b1;
	for (i = 0; i < 32; i = i + 1) begin
			write_data = write_data + (i+1)%2;
         addr = addr + (i+1)%2;
         #stimDelay; clk = ~clk;
   end
	
	
   // read
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
   addr = 0;
	rw = 1;
	oe = 0;
   for (i = 0; i < 32; i = i + 1) begin
      addr = addr + (i+1)%2;
      #stimDelay; clk = ~clk;
	end
   for(i=0; i<2; i=i+1) begin
      #stimDelay; clk = ~clk;
   end
	
   // write
   rw = 0;
   oe = 1;
   addr = 11'h200;
   write_data = 16'hAAAA;
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