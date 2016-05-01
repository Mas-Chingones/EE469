/*
Author: Ian Gilman
Title: Arithmetic Logic Unit (ALU) Integration Test
Summary: Integrate the ALU with file register and SRAM with state machine providing 
   control - acting as loader and decoder:
      1) load block of data to sram
      2) write sram block to fr
      3) decode alu instruction from SRAM
      4) execute alu operation
      5) write result to fr
*/

module alu_integration_test(CLOCK_50, SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
// Inputs
   input wire CLOCK_50;  // 50 Mhz clock
   input wire [9:0] SW;  // Switches
   input wire [3:0] KEY;  // Keypad
// Outputs
   output [9:0] LEDR;  // LEDs
   output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;  // 7-seg display
// Internal
   // Timing
   wire [31:0] clocks;  // clock wires used to create system clock from 50 MHz clock
   wire sys_clock;  // system clock
   // Data / Instruction Flow
   wire [31:0] data_bus;
   // Control Flow
   wire cs, oe, rw,  // SRAM: chip select, output enable, read/write
        we, re  // FR: write enable
        
   
   // User Interface
   wire [2:0] clk_select;  // select system clock
   wire next_state;  // triggers next state of state machine control
   wire reset_state;  // resets state machine control
   
   
   // Define User Interface
   assign clk_select = SW[9:7];
   assign next_state = KEY[0];
   assign reset_state = KEY[3];
   
   // Create System Clock using switches
   assign sys_clk = clock[clk_select];
   div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   
   // SRAM
   sram alu_sram(
                  .clk(sys_clk), 
                  .cs(), 
                  .oe(), 
                  .rw(), 
                  .addr_bus(), 
                  .data_bus()
                );
   
   // File Register
   file_register alu_fr(
                     .clk(sys_clk), 
                     .we(),
                     .re(),
                     .rst(),
                     .read0_addr(), 
                     .read1_addr(),
                     .write_addr(),
                     .data_bus(),
                     .read0_data()
                   );
   
   // ALU 
   
   // State MAchine Control
   alu_integration_sm alu_sm

endmodule 



/*
Author: Ian Gilman
Title: ALU integration State Machine
Summary: Provides control signals for alu / sram / fr integration test. Acts as
   loader and decoder.
*/

module alu_integration_sm();


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