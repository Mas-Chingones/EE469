
// Module Dependencies:
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "shared_module/mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"
//`include "file_register.v"
//`include "sram.v"

/*
Author: Ian Gilman
Title: SRAM to/from file register Test
Summary: Test SRAM and file register operation on same bus using De1-soc dev board.
*/

module fr_sram(CLOCK_50, SW, KEY, LEDR);
	input wire CLOCK_50;  // 50 MHz clock
	input wire [3:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
   wire sys_clk, writing_db,  // system clock, write data bus condition
        cs, oe, rw,  // sram !chip select, sram !out enable, sram read/!write
        we, re, rst;  // fr write enable, fr_read_enable, !fr reset
   wire [3:0] db_state;  // determines databus state
	wire [5:0] sw_data;  // data from switches
	wire [31:0] clocks, data_bus,  // divide clocks, data bus
               addr_sram, addr_fr;  // address sram, address fr
   reg [2:0] sram_state, fr_state;  // sram control aggregation, fr control aggregation
   reg [3:0] db_saved_state;  // Last data bus state
	reg [7:0] led_data;  // data to leds
	reg [31:0] write_data;  // data written to bus
   
   // divide 50 MHz clock to get sys clock
	assign sys_clk = clocks[1];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   // Interface signal assignment
	assign LEDR[7:0] = led_data;
	assign LEDR[9:8] = 2'b0;
	assign sw_data = SW[5:0];
	assign addr_fr = {3'b0, {SW[9:8]}};
   assign addr_sram = {30'b0, {SW[7:6]}};
   assign db_state = {!KEY[3], !KEY[2], !KEY[1], !KEY[0]};
   
   //// SRAM and FR control states ////
   // sram control states
   parameter [2:0] SRAM_WRITE = 3'b010;
   parameter [2:0] SRAM_READ = 3'b001;
   parameter [2:0] SRAM_IDLE = 3'b111;
   parameter [2:0] FR_WRITE = 3'b101;
   parameter [2:0] FR_READ = 3'b011;
   parameter [2:0] FR_IDLE = 3'b001;
   parameter [2:0] FR_RST = 3'b000;
   // sram and fr state control signals
   assign {cs, oe, rw} = sram_state;
   assign {we, re, rst} = fr_state;
   // initialize fr and sram state control
   initial begin
      // databus initial state
      db_saved_state = DB_IDLE;
     // sram initial state
     sram_state = SRAM_IDLE;
     // fr initial state
     fr_state = FR_IDLE;
   end
   
   // data bus logic
   assign writing_db = (db_saved_state == DATA_TO_SRAM || db_saved_state == DATA_TO_FR);
   assign data_bus = writing_db ? write_data : 32'bz;
   
   //// Test Control States ////
   // data_bus read/write states
   parameter [3:0] DATA_TO_SRAM = 4'b0001;
   parameter [3:0] DATA_TO_FR = 4'b0100;
   parameter [3:0] DATA_FROM_SRAM = 4'b0010;
   parameter [3:0] DATA_FROM_FR = 4'b1000;
   parameter [3:0] FR_TO_SRAM = 4'b1001;
   parameter [3:0] SRAM_TO_FR = 4'b0110;
   parameter [3:0] DB_IDLE = 4'b0000;
   always @(posedge sys_clk) begin
      // save data state
      db_saved_state <= db_state;
      // data transfer test cases
      case(db_state)
         DATA_TO_SRAM: begin
            sram_state <= SRAM_WRITE;
            fr_state <= FR_IDLE;
            write_data <= {26'b0, sw_data};
         end
         DATA_TO_FR: begin
            sram_state <= SRAM_IDLE;
            fr_state <= FR_WRITE;
            write_data <= {26'b0, sw_data};
         end
         DATA_FROM_SRAM: begin
            sram_state <= SRAM_READ;
            fr_state <= FR_IDLE;
            led_data <= data_bus[5:0];
         end
         DATA_FROM_FR: begin
            sram_state <= SRAM_IDLE;
            fr_state <= FR_READ;
            led_data <= data_bus[5:0];
         end
         FR_TO_SRAM: begin
            sram_state <= SRAM_WRITE;
            fr_state <= FR_READ;
         end
         SRAM_TO_FR: begin
            sram_state <= SRAM_READ;
            fr_state <= FR_WRITE;
         end
         default: begin
            sram_state <= SRAM_IDLE;
            fr_state <= FR_IDLE;
         end
      endcase
   end
   
   // file register
	file_register reg_file(
						 .clk(sys_clk), 
						 .we(we),
                                                 .re(re),
                                                 .rs(1'b1), 
						 .rst(rst),
				 		 .read0_addr(), 
				 		 .read1_addr(addr_fr),
						 .write_addr(addr_fr),
						 .data_bus(data_bus)
					  );
   
   // SRAM
	sram memory(
			.clk(sys_clk),
			.cs(cs),
			.oe(oe),
			.rw(rw),
			.addr_bus(addr_sram),
			.data_bus(data_bus)
    	  );
   
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