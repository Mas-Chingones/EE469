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
   wire [31:0] data_bus,  // data path
               fr_read0_data,  // value at fr read0 address
               fr_read1_data,  // value at fr read1 address
               alu_result;  // value resulting from alu operation
   // Control Flow
   wire [2:0] sm_state;  // indicates state of alu integration SM
   wire [1:0] sr_state,  // control state of SRAM
              fr_state;  // control state of FR
   wire cs, oe, rw,  // SRAM: chip select, output enable, read/write
        we, re,  // FR: write enable, read enable
        Z, V, C, N;  // ALU: zero result, over/underflow, carry out, negative result
   wire [10:0] sram_addr;  // address for reading/writing sram data
   wire [4:0] fr_read0_addr,  // address for fr reading read0 data
              fr_read1_addr,  // address for fr reading read1/data_bus data
              fr_write_addr;  // address for writing fr data
   wire [2:0] alu_operation;  // determines alu operation performed     
   // User Interface
   wire clk_slow;  // dramatically slows system clock
   wire [2:0] clk_select;  // select system clock
   wire next_state;  // triggers next state of the state machine
   wire reset_state;  // resets state machine
   
   
   /////  TIMING & CONTROL LOGIC  /////
   // Create System Clock using switches and 50 MHz clock
   assign sys_clk = slow_clock ? clocks[({2'b0, clk_select}) + 5'd18] : clocks[clk_select];
   div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   // Define User Interface
   // Inputs
   assign clk_slow = SW[0];
   assign clk_select = SW[9:7];
   assign next_state = KEY[0];
   assign reset_state = KEY[3];
   // Ouptuts
   assign LEDR[2:0] = {cs, oe, rw};  // sram control flags
   assign LEDR[5:3] = {we, re};  // fr control flags
   assign LEDR[9:6] = {Z, V, C, N};  // alu result flags
   
   // Computer Component Control States
   assign {cs, oe, rw} = sram_state;
   assign {we, re} = fr_state;
   
   // Determine SRAM and FR state from  SM State
   always @(sm_state) begin
      case(sm_state)
         SM_IDLE: begin
            sram_state = SR_IDLE;
            fr_state = FR_IDLE;
         end
         SM_LOAD_SRAM: begin
            sram_state = SR_WRITE;
            fr_state = FR_IDLE;
         SM_SRAM_TO_FR: begin
            sram_state = SR_READ;
            fr_state = FR_R_BUS;
         end
         SM_ALU_OP: begin
            sram_state = SR_READ;
            fr_state = FR_RW_ALU;
         end
      endcase   
   end
   
   
   /////  COMPUTER COMPONENTS  /////
   // SRAM
   sram alu_sram(
                  .clk(sys_clk), 
                  .cs(cs), 
                  .oe(oe), 
                  .rw(rw), 
                  .addr_bus(sram_addr), 
                  .data_bus(data_bus[15:0])
                );
   
   // File Register
   file_register alu_fr(
                     .clk(sys_clk), 
                     .we(we),
                     .re(re),
                     .rst(1'b1),
                     .read0_addr(fr_read0_addr), 
                     .read1_addr(fr_read1_addr),
                     .write_addr(fr_write_addr),
                     .data_bus(data_bus),
                     .read0_data(fr_read0_data),
                     .read1_data(fr_read1_data),
                     .write_data(alu_result)
                   );
   
   // ALU 
   alu_dataflow alu(
                     .operand0(fr_read0_data), 
                     .operand1(fr_read1_data), 
                     .control(alu_operation), 
                     .result(alu_result), 
                     .Z(Z), 
                     .V(V), 
                     .C(C), 
                     .N(N)
                   );
   
   // Integration SM Control
   alu_integration_sm alu_sm();
   
   
   /////  Control States  /////
   // State Machine States
   parameter SM_IDLE = 3'd0;
   parameter SM_LOAD_SRAM = 3'd1;
   parameter SM_SRAM_TO_FR = 3'd2;
   parameter SM_ALU_OP = 3'd3;
   // SRAM Control States
   parameter SR_IDLE =  3'b111;
   parameter SR_WRITE = 3'b010;
   parameter SR_READ = 3'b001;
   // FR Control States
   parameter FR_IDLE = 2'b00;
   parameter FR_W_BUS = 2'b10;
   parameter FR_R_BUS = 2'b01;
   parameter FR_RW_ALU = 2'b11;   
endmodule 



/*
Author: Ian Gilman
Title: ALU integration State Machine
Summary: Provides control signals for alu / sram / fr integration test. Acts as loader and decoder.
*/

module alu_integration_sm(clk, );


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