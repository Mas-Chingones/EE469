// Module Dependencies:
//`include "sram.v"

/*
Author: Ian Gilman
Title: SRAM Test on De1-soc
Summary: Test SRAM operation using De1-soc dev board.
*/

module sram_test_de1soc(CLOCK_50, SW, KEY, LEDR);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [1:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	wire sys_clk, cs, oe, rw;  // system clock, !chip select, sram !out enable, read/!write 
	wire [7:0] sw_data;  // data from switches
	wire [31:0] clocks, data_bus, read_data, address;  // divide clocks, data bus, data read from bus, address
	reg [7:0] led_data;  // data to leds
	reg [31:0] write_data;  // data written to bus
	
	// Interface signal assignment
	assign LEDR[7:0] = led_data;
	assign LEDR[9:8] = 2'b0;
	assign sw_data = SW[7:0];
	assign address = {30'b0, {SW[9:8]}};
	assign cs = KEY[0];
	assign oe = !KEY[1];
	assign rw = KEY[1];
	
	// divide 50 MHz clock to get sys clock
	assign sys_clk = clocks[20];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	// write to bus
	assign data_bus = (oe && !rw) ? write_data : 32'bz;
	// read bus
	assign read_data = (!oe && rw) ? data_bus : 32'bz;
	
	// SRAM
	sram memory(
			.clk(sys_clk),
			.cs(cs),
			.oe(oe),
			.rw(rw),
			.addr_bus(address),
			.data_bus(data_bus)
    	  );
 	
	// write data to leds & read data from switches
	assign LEDR[7:0] = led_data[7:0];
	always @(posedge sys_clk) begin
		if(!cs) begin
			if(rw && !oe)
				led_data <= read_data[7:0];
			else
				write_data <= {24'b0, {sw_data[7:0]}};
		end
	end
endmodule
	
	
	
	
	
	
	
	
	
	
	
	
/*
Author: Ian Gilman
Title: clock divider
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