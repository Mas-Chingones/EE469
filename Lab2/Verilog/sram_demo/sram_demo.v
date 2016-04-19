// Module Dependencies:
//`include "sram.v"

/*
Author: Adolfo Pineda
Title: SRAM Test on De1-soc
Summary: Test SRAM operation using De1-soc dev board.
*/

module sram_demo(CLOCK_50, SW, LEDR);
	//input reset;
	input wire CLOCK_50;  // 50 MHz clock
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	wire sys_clk;  // system clock, !chip select, sram !out enable, read/!write 
	//wire [7:0] sw_data;  // data from switches
	wire [31:0] clocks;  // divide clocks, data bus
	wire [31:0] address_wire;  // address to sram
	reg cs, oe, rw;  // sram control bits
	wire [31:0] data_bus;  // data to sram
   reg [6:0] address;  // set sddress to sram
	reg [6:0] value;  // value to data bus
	reg [1:0] state;  // state machine variable
	
	// Interface signal assignment
   assign LEDR[9:7] = 3'b0;
	assign LEDR[6:0] = data_bus[6:0];
   
	// divide 50 MHz clock to get sys clock
	assign sys_clk = SW[8] ? clocks[20] : clocks[0];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	// write to bus
	assign data_bus = (!cs && oe && !rw) ? {25'b0, value} : 32'bz;
   // address
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
 	
	
	
	initial begin
		state = 0;
		value = 7'd127;
		address = 7'd0;
	end
	
	always @(posedge sys_clk) begin
	
		if(SW[9]) begin
			state <= 0;
			value <= 7'd127;
			address <= 7'd0;
		end 
      else begin   
			// write //
				case (state)
					// start sram write
               2'b00: begin
						cs <= 0;
						rw <= 0;
						oe <= 1;
						state <= 2'b1;
					end
					
               // pause
					2'b01: begin
                  value <= value - 7'b1;
						address <= address + 7'b1;
						state <= 2'b10;
					end
               
               // loop   
               2'b10: begin
                  if (value == 0 && address == 127) begin
                     state <= 2'b11;
                  end else
                     state <= 2'b00;
               end
               
               // read address
               2'b11: begin
                  address <= SW[6:0];
                  cs <= 0;
                  rw <= 1;
                  oe <= 0;
               end
               
               default: state <= 2'b00;
					
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