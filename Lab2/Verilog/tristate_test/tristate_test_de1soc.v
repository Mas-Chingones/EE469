/*
Author: Ian Gilman
Title: Tristate Test on the De1-soc Dev Board
Summary: Test tristate data bus from register/sw to leds
*/

module tristate_test_de1soc(CLOCK_50, SW, LEDR);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [3:0] SW;  // Switches
	output wire [9:0] LEDR;  // LEDs
	wire [31:0] clocks;  // vector of divided clocks
	wire bus, rst, sys_clk, init_data;  // data line, reset, system clock, initial data
	wire [1:0] RWI; // read/write/initializse mode
	
	// hold extra LEDS low
	assign LEDR[9:1] = 8'b0;
	
	// 50 MHz clock divider
	div_clock divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	// data and signals
	assign init_data = SW[3];
	assign RWI = SW[2:1];
	assign rst = SW[0];
	assign sys_clk = clocks[23];
	
	// bus states
	parameter R0W1 = 2'b00;   // read FF0, write FF1
	parameter R1W0 = 2'b01;  // read FF1, write FF0
	parameter INIT0 = 2'b10;  // write to FF0
	parameter INIT1 = 2'b11;  // write to FF1
	
	// write to bus
	bufif1(bus, init_data, (RWI == INIT0 || RWI == INIT1));
	// read from bus
	bufif1(LEDR[0], bus, (RWI == R0W1 || RWI == R1W0));
	
	// tristate registers
	tristate_test test(.data(bus), .rwi(RWI), .clk(sys_clk), .rst(rst));	
endmodule



/*
Author: Ian Gilman
Title: clock divier
Summary: create vector of divided clocks based on original clock
*/

module div_clock(orig_clk, div_clks);
	input wire orig_clk;
	output reg [31:0] div_clks;

	// increment vector of clocks for every orig_clk pulse
	always @(posedge orig_clk) begin
		div_clks = div_clks + 32'b1;
	end	
endmodule