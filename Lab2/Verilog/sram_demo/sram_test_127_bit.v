// Module Dependencies:
//`include "sram.v"

/*
Author: Ian Gilman
Title: SRAM Test on De1-soc
Summary: Test SRAM operation using De1-soc dev board.
*/

module sram_test_127_bit(CLOCK_50, SW, KEY, LEDR);
	//input reset;
	input wire CLOCK_50;  // 50 MHz clock
	input wire [1:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	wire sys_clk;  // system clock, !chip select, sram !out enable, read/!write 
	//wire [7:0] sw_data;  // data from switches
	wire [31:0] clocks, read_data;  // divide clocks, data bus, data read from bus, address
	wire [31:0] address_wire, data_bus_wire; 
	reg cs, oe, rw;
	wire [31:0] data_bus;
	
	// Interface signal assignment
	assign LEDR[9] = biggerState;
	assign LEDR[8:7] = state;
	
	// divide 50 MHz clock to get sys clock
	assign sys_clk = SW[8] ? clocks[23] : clocks[0];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	// write to bus
	assign data_bus = (!cs && oe && !rw) ? {25'b0, value} : 32'bz;
	// read bus
	//assign read_data = (!cs && !oe && rw) ? data_bus : 32'bz;
	assign address_wire = {25'd0, address};
	
	// SRAM
	sram memory(
			.clk(sys_clk),
			.cs(cs),
			.oe(oe),
			.rw(rw),
			.addr_bus(address_wire),
			.data_bus(data_bus)
    	  );
 	
	reg [6:0] address;
	reg [6:0] value;
	reg [1:0] state;
	reg biggerState;
	
	initial begin
		biggerState = 0;
		state = 0;
		value = 7'd127;
		address = 7'd0;
	end
	
	assign LEDR[6:0] = data_bus[6:0];
	always @(posedge sys_clk) begin
	
		if(SW[9]) begin
			biggerState <= 0;
			state <= 0;
			value <= 7'd127;
			address <= 7'd0;
		end 
		
		else begin 
			case (biggerState)
				
				// write //
				1'b0: begin
					case (state)
						2'b00: begin
							cs <= 0;
							rw <= 0;
							oe <= 1;
							if (value != 7'd0 && address != 7'd127) begin
								value <= value - 7'b1;
								address <= address + 7'b1;
							end
							state <= 1'b1;
						end
						
						2'b01: begin
							state <= 2'b10;
						end
						
						2'b10: begin
							if (value == 7'd0 && address == 7'd127) begin
								biggerState <= 1'b1;
							end
							state <= 2'b00;
						end
						
						default: state <= 2'b00;
					
					endcase
					
				end
				
				// read //
				1'b1: begin
					address <= SW[6:0];
					cs <= 0;
					rw <= 1;
					oe <= 0;
				end
			
			endcase
			
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