
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "shared_module/mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"

/*
Author: Ian Gilman
Title: File Register Test on De1-soc
Summary: Test file register operation using De1-soc dev board.
*/

module file_reg_de1soc_test(CLOCK_50, SW, KEY, LEDR);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [1:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	wire sys_clk, rst, we;  // system clock, reset, write enable 
	wire [4:0] address;  // file register address
	wire [7:0] sw_data;  // data from switches
	wire [31:0] clocks, data_bus, read_data;  // divide clocks, data bus, data read from bus
	reg [7:0] led_data;  // data to leds
	reg [31:0] write_data;  // data written to bus
	
	// Interface signal assignment
	assign LEDR[7:0] = led_data;
	assign LEDR[9:8] = 2'b0;
	assign sw_data = SW[7:0];
	assign address = {3'b0, {SW[9:8]}};
	assign rst = KEY[0];
	assign we = !KEY[1];
	
	// divide 50 MHz clock to get sys clock
	assign sys_clk = clocks[20];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	// write to bus
	assign data_bus = we ? write_data : 32'bz;
	// read bus
	assign read_data = we ? 32'bz : data_bus;
	
	// file register
	file_register reg_file(
						 .clk(sys_clk), 
						 .we(we), 
						 .rst(rst),
				 		 .read0_addr(), 
				 		 .read1_addr(address),
						 .write_addr(address),
						 .data_bus(data_bus)
					  );
	
	// write data to leds & read data from switches
	assign LEDR[7:0] = led_data[7:0];
	always @(posedge sys_clk) begin
		if(!we) begin
			led_data <= read_data[7:0];
		end
		else begin
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