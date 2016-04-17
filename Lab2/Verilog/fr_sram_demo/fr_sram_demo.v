
// Module Dependencies:
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
   wire [6:0] hex_display;  // 7-seg display values
	wire [31:0] clocks, data_bus,  // divide clocks, data bus
               address  // address sram & fr
   reg [2:0] sram_state, fr_state;  // sram control aggregation, fr control aggregation
   reg [3:0] hex_data [5:0];  // data to hex encoders
	reg [31:0] write_data;  // data written to bus
   
   // divide 50 MHz clock to get sys clock
	assign sys_clk = clocks[1];
	div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   // Interface signal assignment
   
   
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
     // sram initial state
     sram_state = SRAM_IDLE;
     // fr initial state
     fr_state = FR_IDLE;
   end
   
   // data bus logic
   assign writing_db = (db_state == DATA_TO_SRAM || db_state == DATA_TO_FR);
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
            hex_data <= data_bus[6:0];
         end
         DATA_FROM_FR: begin
            sram_state <= SRAM_IDLE;
            fr_state <= FR_READ;
            hex_data <= data_bus[5:0];
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
   
   // state machine
   fr_sram_demo_sm state_mach(
                      .clk(sys_clk),
                      .key(KEY), 
                      .sw(SW), 
                      .fr_read_sel(), 
                      .addr_bus(), 
                      .db_state(db_state), 
                      .data_bus(write_data)
                   );
   
   // file register
	file_register reg_file(
						 .clk(sys_clk), 
						 .we(we),
                   .re(re), 
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

module fr_sram_demo_sm(clk, key, sw, fr_read_sel, addr_bus, db_state, data_bus);
   input wire clk, fr_read_sel;  // clock, file reg read0/1 select
   input wire [3:0] key;  // keys
   input wire [9:0] sw;  // switches
   output reg [3:0] db_state;  // data bus state
   output reg [32:0] addr_bus, data_bus;  // address bus, data bus
   wire start_top_state, rst;  // condition for starting a new top_state, reset
   reg [1:0] init_sram_state;  // initialize ram state variable
   reg [2:0] top_state;  // top state machine variable
   reg [3:0] key_prev;  // previous key press values
   reg [6:0] count;  // count for iterative processes
   
   assign start_top_state = !key[0] && key_prev[0];
   
   // initialize state machine regs
   initial begin
      top_state <= TOP_IDLE;
      init_sram_state = 2'b0;
      key_prev = 1'b1;
      count = 7'b0;
   end
   
   // state machine
   always @(posedge clk) begin
      key_prev <= key; // used to detect key press edges
      
      // reset state machine
      if(rst) begin
         top_state <= TOP_IDLE;
         init_sram_state = 2'b0;
         key_prev = 1'b1;
         count = 7'b0;
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
            case(init_sram_state)
               
               // prepare to write to sram
               SRIN_SETUP_WRITE: begin
                  db_state <= DATA_TO_SRAM;
                  init_sram_state <= SRIN_WRITE;
               end
               
               // write initial data to sram
               SRIN_WRITE: begin
                  if(count < 127) begin
                     addr_bus <= count;
                     data_bus <= ~count;
                     count <= count + 7'b1;
                  end
                  else
                     init_sram_state <= SRIN_PAUSE;
               end  
               
               // idle before top_state change (also to complete last write)      
               SRIN_PAUSE: begin
                  count <= 7'b0;
                  db_state <= SRAM_IDLE;
                  top_state <= TOP_TEST;
                  /*
                  if(start_top_state)
                     top_state <= TOP_WRITE_BLOCK
                  */
               end
               
            endcase
         end
         
         // test values on SRAM by reading them
         TOP_TEST: begin
            addr_bus <= sw;
            db_state <= SRAM_READ;
         end
         
      endcase  
   end
   
   //// State Machine Control //// 
   // top level state machine control
   parameter TOP_IDLE = 3'b0;
   parameter TOP_SRIN = 3'b1;
   parameter TOP_TEST = 3'b10;
   parameter TOP_WRITE_BLOCK = 3'b11;
   // state machine initialize sram states
   parameter SRIN_SETUP_WRITE = 2'b0;
   parameter SRIN_WRITE = 2'b1;
   parameter SRIN_PAUSE = 2'b10;
   
   // data_bus read/write states
   parameter [3:0] DATA_TO_SRAM = 4'b0001;
   parameter [3:0] DATA_TO_FR = 4'b0100;
   parameter [3:0] DATA_FROM_SRAM = 4'b0010;
   parameter [3:0] DATA_FROM_FR = 4'b1000;
   parameter [3:0] FR_TO_SRAM = 4'b1001;
   parameter [3:0] SRAM_TO_FR = 4'b0110;
   parameter [3:0] DB_IDLE = 4'b0000;
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