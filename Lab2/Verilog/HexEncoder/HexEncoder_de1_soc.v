

/*
Author: Ian Gilman, David Dolengewicz
Title: Hex Encoder Test on De1-soc
Summary: Test Hex Encoder operation using De1-soc dev board.
*/

module HexEncoder_de1_soc(CLOCK_50, SW, KEY, LEDR, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [1:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	output wire [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0; //HEXs
	
	wire sys_clk;  // system clock
	wire [31:0] clocks;  // divide clocks
	
	// divide 50 MHz clock to get sys clock
	assign sys_clk = clocks[23];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	
	// Interface signal assignment
	wire [3:0] in [5:0];
	wire [6:0] hexOut [5:0];
	//assign hexs
	assign HEX5 = hexOut[5];
	assign HEX4 = hexOut[4];
	assign HEX3 = hexOut[3];
	assign HEX2 = hexOut[2];
	assign HEX1 = hexOut[1];
	assign HEX0 = hexOut[0];
	
	//assign inputs and values for test
	reg [3:0] j;
	assign in[5] = j;
	assign in[4] = j;
	assign in[3] = 15;
	assign in[2] = 10;
	assign in[1] = 12;
	assign in[0] = 3;
	
	//tester code
	genvar i;
	generate for(i=0; i<6; i=i+1) begin: READ

		HexEncoder dut (.in(in[i]), .hexOut(hexOut[i]));
	
		end
	endgenerate	
  
   always @(posedge sys_clk) begin
		j = j+1;
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