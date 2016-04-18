
// Module Dependencies:
//`include "HexEncoder/hexEncoder.v"
//`include "register_32bit/d_flipflop/d_flipflop.v"
//`include "shared_module/mux_2to1/mux_2to1.v"
//`include "register_32bit/register_32bit.v"
//`include "decoder_5bit/decoder_5bit.v"
//`include "file_register.v"
//`include "sram.v"

/*
Author: Ian Gilman
Title: File Register and SRAM Demo Module
Summary: Module demonstrating the coordination of SRAM and file register computer
   architecture for a MIPs machine.
*/

module fr_sram_demo(CLOCK_50, SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
   input wire CLOCK_50;  // 50 MHz clock
	input wire [3:0] KEY;  // keypad 
	input wire [9:0] SW;  // switches
	output wire [9:0] LEDR;  // LED's
   output wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;  // 7-seg displays
   wire sys_clk, writing_db,  // system clock, write data bus condition
        cs, oe, rw,  // sram !chip select, sram !out enable, sram read/!write
        we, re, rst;  // fr write enable, fr_read_enable, !fr reset     
   wire [3:0] db_state;  // determines databus state
	wire [31:0] clocks, data_bus,  // divide clocks, data bus
               address, sm_data;  // address sram & fr, data from state machine
   wire [2:0] sram_state, fr_state;  // sram control aggregation, fr control aggregation
   wire [3:0] hex_data [5:0];  // data to hex encoders
   
   // divide 50 MHz clock to get sys clock
	assign sys_clk = SW[9] ? clocks[23] : clocks[1];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   // Interface signal assignment
   HexEncoder hex0(.in(hex_data[0]), .hexOut(HEX0));
   HexEncoder hex1(.in(hex_data[1]), .hexOut(HEX1));
   HexEncoder hex2(.in(hex_data[2]), .hexOut(HEX2));
   HexEncoder hex3(.in(hex_data[3]), .hexOut(HEX3));
   HexEncoder hex4(.in(hex_data[4]), .hexOut(HEX4));
   HexEncoder hex5(.in(hex_data[5]), .hexOut(HEX5));
   
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
   
   // data bus logic
   assign writing_db = (db_state == DATA_TO_SRAM || db_state == DATA_TO_FR);
   assign data_bus = writing_db ? sm_data : 32'bz;
   
   //// Test Control States ////
   // data_bus read/write states
   parameter DATA_TO_SRAM = 4'b0001;
   parameter DATA_TO_FR = 4'b0100;
   parameter DATA_FROM_SRAM = 4'b0010;
   parameter DATA_FROM_FR = 4'b1000;
   parameter FR_TO_SRAM = 4'b1001;
   parameter SRAM_TO_FR = 4'b0110;
   parameter DB_IDLE = 4'b0000;
   
   // sram control state logic for reading, writing, and idling
   assign sram_state = (
                        // db_states when sram is being written
                        (db_state == DATA_TO_SRAM || db_state == FR_TO_SRAM) ? SRAM_WRITE :
                        // db_states when sram is being read
                        ((db_state == DATA_FROM_SRAM || db_state == SRAM_TO_FR) ? SRAM_READ : 
                        // else sram is idling
                        SRAM_IDLE)
                       );
   // fr control state logic for reading, writing, and idling
   assign fr_state = (
                        // db_states when fr is being written
                        (db_state == DATA_TO_FR || db_state == SRAM_TO_FR) ? FR_WRITE :
                        // db_states when fr is beign read
                        ((db_state == DATA_FROM_FR || db_state == FR_TO_SRAM) ? FR_READ : 
                        // else fr is idle
                        FR_IDLE)
                      );
                       
   // display data bus logic
   assign hex_data[0] = ((db_state == DATA_FROM_SRAM || db_state == DATA_FROM_FR) ? data_bus[3:0] : 
                        4'b1111);
   assign hex_data[1] = ((db_state == DATA_FROM_SRAM || db_state == DATA_FROM_FR) ? data_bus[7:4] : 
                        4'b1111);
   assign LEDR = ((db_state == DATA_FROM_SRAM || db_state == DATA_FROM_FR) ? data_bus[9:0] :
                 8'b0);
                      
   // demonstration state machine
   fr_sram_demo_sm state_mach(
                      .clk(sys_clk),
                      .key(KEY), 
                      .sw(SW),
                      .rst(!SW[8]),
                      .fr_read_sel(), 
                      .leds(leds),
                      .db_state(db_state),
                      .addr_bus(address), 
                      .data_bus(sm_data)
                   );
   
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
   
   // SRAM
	sram memory(
			.clk(sys_clk),
			.cs(cs),
			.oe(oe),
			.rw(rw),
			.addr_bus(address),
			.data_bus(data_bus)
    	  );
   
endmodule



/*
Author: Ian Gilman
Title: file register and sram demo state machine
Summary: file reg and sram demo machine for demonstrating read/write - controls
   addressing and writing
*/

module fr_sram_demo_sm(clk, key, sw, rst, fr_read_sel, db_state, leds, addr_bus, data_bus);
   input wire clk, rst;  // clock, !reset
   input wire [3:0] key;  // keys
   input wire [9:0] sw;  // switches
   output wire fr_read_sel; // file reg read0/1 select
   output reg [3:0] db_state;  // data bus state
   output reg [9:0] leds;  // data to leds
   output reg [31:0] addr_bus, data_bus;  // address bus, data bus
   wire start_top_state;  // condition for starting a new top_state, reset
   reg [1:0] srin_state;  // initialize ram state variable
   reg [2:0] top_state,  // top state machine variable
             srfr_state;  // transfer sram block to fr state variable
   reg [3:0] key_prev;  // previous key press values
   reg [1:0] block_select;  // select data block (0-3)
   reg [6:0] count,  // count for iterative processes
             addr_select;  // sram address corresponding to block in block_select
   
   // choose fr read ports with key0
   assign fr_read_sel = !key[0];
   // start machine on key3 press
   assign start_top_state = !key[3] && key_prev[3];
   
   // initialize state machine regs
   initial begin
      leds = 10'b0;
      top_state = TOP_IDLE;
      srin_state = SRIN_WRITE;
      srfr_state = SRFR_SELECT_BLOCK;
      db_state = DB_IDLE;
      key_prev = 1'b1;
      count = 7'b0;
      block_select = 2'b0;
      addr_select = 7'b0;
   end
   
   // state machine
   always @(posedge clk) begin
      key_prev <= key; // used to detect key press edges
      
      // reset state machine values to default
      if(!rst) begin
         top_state <= TOP_IDLE;
         srin_state <= SRIN_WRITE;
         srfr_state <= SRFR_SELECT_BLOCK;
         db_state <= DB_IDLE;
         key_prev <= 1'b1;
         count <= 7'b0;
         block_select <= 2'b0;
         addr_select <= 7'b0;
      end
      
      // top level state machine flow
      case(top_state)
         
         // Idles before start detected
         TOP_IDLE: begin
            if(start_top_state)
               top_state <= TOP_SRIN;
         end
         
         // start loading initial values in SRAM
         TOP_SRIN: begin
            // initialize sram state machine
            case(srin_state)
              
               // write initial data to sram
               SRIN_WRITE: begin
                  db_state <= DATA_TO_SRAM;
                  if(count <= 127) begin
                     addr_bus <= {25'b0 ,count};
                     data_bus <= {25'b0 ,~count};
                  end
                  if(count < 127)
                     count <= count + 7'b1;
                  if(count == 127) begin
                     srin_state <= SRIN_STOP_WRITE;
                  end   
               end
               
               // stop write and transition to next top state
               SRIN_STOP_WRITE: begin
                  db_state <= DB_IDLE;
                  //top_state <= TOP_TEST_SRIN;
                  if(start_top_state) begin
                     count <= 7'b0;
                     srin_state <= SRIN_WRITE;
                     top_state <= TOP_SRFR;
                  end
               end
               
            endcase
         end
         
         // test values on SRAM by reading them
         /*
         TOP_TEST_SRIN: begin
            addr_bus <= {25'b0, {sw[6:0]}};
            db_state <= DATA_FROM_SRAM;
         end
         */
         
         TOP_SRFR: begin
            // transfer block data from sram to fr
            case(srfr_state)
               
               // select sram block to transfer data from
               SRFR_SELECT_BLOCK: begin
                  block_select <= sw[1:0];
                  addr_select <= {5'b0, {sw[1:0]}} * 7'b32;
                  srfr_state <= SRFR_READ_SRAM;
               end
               
               // read data from sram block to data bus
               SRFR_READ_SRAM: begin
                  db_state <= SRAM_TO_FR;
                  addr_bus <= {25'b0 ,{count + addr_select}};
                  count <= count + 7'b1;
                  srfr_state <= SRFR_WRITE_FR;
               end
               
               // write data to fr from data bus
               SRFR_WRITE_FR: begin
                  if(count < 7'b32)
                     srfr_state <= SRFR_READ_SRAM;
                  else begin
                     count <= 7'b0;
                     adr_select <= 7'b0;
                     srfr_state <= SRFR_DISPLAY_FR;
                  end
               end
               
               // display data from fr
               SRFR_DISPLAY_FR: begin
                  db_state <= DATA_FROM_FR;
                  addr_select <= 
                  /*
                  if(start_top_state)
                     top_state <= ;
                  */
               end
               
            endcase
         end
         
      endcase  
   end
   
   //// State Machine Control //// 
   // top level state machine control
   parameter TOP_IDLE = 3'b0;
   parameter TOP_SRIN = 3'b1;
   parameter TOP_TEST_SRIN = 3'b10;
   parameter TOP_SRFR = 3'b10;
   parameter TOP_TEST_SRFR = 3'b11;
   // state machine initialize sram states
   parameter SRIN_WRITE = 2'b0;
   parameter SRIN_STOP_WRITE = 2'b11;
   // state machine transfer block from sram to fr
   parameter SRFR_SELECT_BLOCK = 3'b0;
   parameter SRFR_READ_SRAM = 3'b1;
   parameter SRFR_WRITE_FR = 3'b10;
   parameter SRFR_DISPLAY_FR = 3'b11;
   
   
   // data_bus read/write states
   parameter DATA_TO_SRAM = 4'b0001;
   parameter DATA_TO_FR = 4'b0100;
   parameter DATA_FROM_SRAM = 4'b0010;
   parameter DATA_FROM_FR = 4'b1000;
   parameter FR_TO_SRAM = 4'b1001;
   parameter SRAM_TO_FR = 4'b0110;
   parameter DB_IDLE = 4'b0000;
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