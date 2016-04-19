
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "shared_module/mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"
//`include "file_register.v"

/*
Author: Ian Gilman David Dolengewicz
Title: File Register Test on De1-soc
Summary: Test file register operation using De1-soc dev board.
*/

module file_reg_de1soc_test(CLOCK_50, SW, KEY, LEDR, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [3:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
	output wire [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0; //HEXs
	
	wire rst, we, re;  // system clock, reset, write enable, read enable
	//wire [7:0] sw_data;  // data from switches
	wire [31:0] clocks, data_bus, read_data;  // divide clocks, data bus, data read from bus
	wire sys_clk;
	wire [3:0] hexIn [5:0];
	
	reg [2:0] rw_state; //read write state
	reg [4:0] address;  // file register address
	reg [31:0] write_data;  // data written to bus
	
	// Interface signal assignment
	assign LEDR[4:0] = address;
	//assign LEDR[8:5] = 4'b0;
	assign rst = KEY[3];
	assign {we, re, LEDR[9]} = rw_state;
	
	
	assign	hexIn[5] = data_bus[23:20];
	assign	hexIn[4] = data_bus[19:16];
	
	assign	hexIn[3] = data_bus[15:12];
	assign	hexIn[2] = data_bus[11:8];
	assign	hexIn[1] = data_bus[7:4];
	assign	hexIn[0] = data_bus[3:0];
	
	
	// divide 50 MHz clock to get sys clock
	
	assign sys_clk = SW[0] ? clocks[23] : clocks[1];
	//assign sys_clk = CLOCK_50;
	
	
	
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
	
	
	
	// write to bus
	assign data_bus = (we && !re) ? write_data : 32'bz;
	// read bus
	//assign read_data = (we && !re) ? 32'bz : data_bus;
	//LEDR[9] on3 when writing
	
	
	parameter [2:0] WRITE_ENABLE = 3'b101;
	parameter [2:0] READ_ENABLE = 3'b010;
	parameter [2:0] IDLE_STATE = 3'b000;
	
	// file register
	file_register reg_file(
						 .clk(sys_clk), 
						 .we(we),
                   .re(re),
                   .rs(1'b1),
						 .rst(rst),
				 		 .read0_addr(), 
				 		 .read1_addr(address),
						 .write_addr(address),
						 .data_bus(data_bus)
					  );
	
	

	//assign HEX5 = 7'b0001011; //h
	//assign HEX4 = 7'b1011111; //'
	
	//hook hexes up to hexIn wires
	HexEncoder hex5(.in(hexIn[5]), .hexOut(HEX5));
	HexEncoder hex4(.in(hexIn[4]), .hexOut(HEX4));
	HexEncoder hex3(.in(hexIn[3]), .hexOut(HEX3));
	HexEncoder hex2(.in(hexIn[2]), .hexOut(HEX2));
	HexEncoder hex1(.in(hexIn[1]), .hexOut(HEX1));
	HexEncoder hex0(.in(hexIn[0]), .hexOut(HEX0));
	
	
	reg [5:0] i;
	reg [3:0] j;
	reg [31:0] hex_value;
	reg hold;
	
	initial begin
	hex_value  = 32'hFFFF000F;
	rw_state = IDLE_STATE;
	i = 0;
	j = 0;
	hold = 0;
	end
	
	
	
	always @(posedge sys_clk) begin
		if(!rst) begin
         rw_state <= IDLE_STATE;
			hex_value  <= 32'hFFFF000F;
			i <= 0;
			j <= 0;
			hold <= 0;
			address <= 0;
		end
//		else if(hold != 0) begin
//		//do nothing this clock cycle
//		end
		else if(i < 32) begin
			rw_state <= WRITE_ENABLE;
			address <= i;
		
			if (i < 15) begin				
					write_data <= hex_value;
					hex_value <= hex_value - 1;
			end
			else if (i == 15) begin
					write_data <= hex_value;
					hex_value <= 32'h0000FFF0;
			
			end 
			else if(i < 31) begin
				   write_data <= hex_value;
					hex_value <= hex_value + 1;
			end
			else begin
			write_data <= hex_value;
			end
			i <= i+1;
		end
		else begin
			rw_state <= READ_ENABLE;
				
				if(!KEY[0]) begin
					address <= j;
				end
				else begin
					address <= j+16;
				end
				
				j = (j+1)%16;
		end
		//hold <= hold + 1;
	end
	
	
endmodule


module file_reg_de1soc_testbench();

	reg CLOCK_50; // 50MHz clock.
	wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	wire [9:0] LEDR;
	reg [3:0] KEY; // True when not pressed, False when pressed
	reg [9:0] SW;
	reg clk;
	
	parameter CLOCK_PERIOD=100;
	
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end


	file_reg_de1soc_test dut (	.CLOCK_50(clk), 
										.SW(SW), 
										.KEY(KEY), 
										.LEDR(LEDR), 
										.HEX5(HEX5), 
										.HEX4(HEX4), 
										.HEX3(HEX3), 
										.HEX2(HEX2), 
										.HEX1(HEX1), 
										.HEX0(HEX0)
										);

	
	initial begin

	KEY[3] = 1;	@(posedge clk);@(posedge clk);@(posedge clk);
	KEY[3] = 0;	@(posedge clk);@(posedge clk);@(posedge clk);
	KEY[3] = 1;											@(posedge clk);
															@(posedge clk);	@(posedge clk);
	//SW[8:0] = 9'b000000001;							@(posedge clk);
															@(posedge clk);
															@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	
	KEY[3] = 1;	@(posedge clk);@(posedge clk);@(posedge clk);
	KEY[3] = 0;	@(posedge clk);@(posedge clk);@(posedge clk);
	KEY[3] = 1;											@(posedge clk);
															@(posedge clk);	@(posedge clk);
	//SW[8:0] = 9'b000000001;							@(posedge clk);
															@(posedge clk);
															@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
	
	$stop;
	 
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