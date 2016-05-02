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
   wire sys_clk;  // system clock
   // Data / Instruction Flow
   wire [31:0] data_bus,  // data path
               fr_read0_data,  // value at fr read0 address
               fr_read1_data,  // value at fr read1 address
               alu_result;  // value resulting from alu operation
   // Control Flow
   wire [2:0] computer_state;  // indicates state of alu integration computer
   reg [2:0] sram_state;  // control state of SRAM
   reg [1:0] fr_state;  // control state of FR
   wire cs, oe, rw,  // SRAM: chip select, output enable, read/write
        we, re,  // FR: write enable, read enable
        Z, V, C, N;  // ALU: zero result, over/underflow, carry out, negative result
   wire [31:0] sram_addr;  // address for reading/writing sram data
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
   assign sys_clk = clk_slow ? clocks[{3'b0, clk_select} + 6'd18] : clocks[{3'b0, clk_select}];
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
   always @(*) begin
      case(computer_state)
         SM_IDLE: begin  // Idle Everything
            sram_state = SR_IDLE;
            fr_state = FR_IDLE;
         end
         SM_LOAD_SRAM: begin  // Write data block and op codes to SRAM
            sram_state = SR_WRITE;
            fr_state = FR_IDLE;
         end   
         SM_SRAM_TO_FR: begin  // transfer data block to FR
            sram_state = SR_READ;
            fr_state = FR_W_BUS;
         end
         SM_ALU_OP: begin  // Execute ALU op codes and store result in FR
            sram_state = SR_READ;
            fr_state = (alu_operation != OP_NOP) ? FR_RW_ALU : FR_IDLE;  // Write to fr if alu is not performing a NOP
         end
         default: begin
            sram_state <= sram_state;
            fr_state <= fr_state;         
         end
      endcase   
   end
   
  
   /////  COMPUTER COMPONENTS  /////
   // SRAM (Static RAM)
   sram alu_sram(
                  .clk(sys_clk), 
                  .cs(cs), 
                  .oe(oe), 
                  .rw(rw), 
                  .addr_bus(sram_addr), 
                  .data_bus(data_bus)
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
   
   // ALU (Arithmetic Logic Unit)
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
   
   // Integration State Machine
   alu_integration_sm alu_sm(
                             .clk(sys_clk),
                             .next_state(next_state), 
                             .reset_state(reset_state), 
                             .data_bus(data_bus),
                             .computer_state(computer_state),
                             .alu_opcode(alu_operation),
                             .sram_address(sram_addr),
                             .fr_read0_addr(fr_read0_addr), 
                             .fr_read1_addr(fr_read1_addr),
                             .fr_write_addr(fr_write_addr)
                            );
   
   
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

   
   /////  ALU OP CODES  /////
   parameter OP_NOP = 4'd0;
   parameter OP_ADD = 4'd1;
   parameter OP_SUB = 4'd2;
   parameter OP_AND = 4'd3;
   parameter OP_OR = 4'd4;
   parameter OP_XOR = 4'd5;
   parameter OP_SLT = 4'd6;
   parameter OP_SLL = 4'd7;
endmodule 





/*
Author: Ian Gilman
Title: ALU integration State Machine
Summary: Provides control signals for alu / sram / fr integration test. Acts as loader and decoder.
*/

module alu_integration_sm(
                          clk,
                          next_state, 
                          reset_state, 
                          data_bus,
                          computer_state,
                          alu_opcode,
                          sram_address,
                          fr_read0_addr, 
                          fr_read1_addr,
                          fr_write_addr
                         );
// Inputs
   input wire clk, next_state, reset_state;
// Outputs
   inout wire [31:0] data_bus;
   output reg [2:0] computer_state;
   output wire [2:0] alu_opcode;
   output wire [31:0] sram_address;
   output wire [4:0] fr_read0_addr, fr_read1_addr, fr_write_addr;
// Internal
   // data flow
   reg [31:0] data_to_bus;
   // addressing
   reg [10:0] sram_addr_proxy;
   reg [4:0] fr_addr_bus;
   reg [6:0] addr_count;
   // SM control
   wire next_top_state, reset_top_state;  // go to next top level state, reeset top level state
   reg next_prev, reset_prev;
   // SM state variables
   reg [2:0] sm_state;
   reg [1:0] srin_state,  // 
             srfr_state,  // 
             alu_state;  //
   // Constants
   parameter N_VALS = N_DATA + N_INSTR + 32'd1;
   
   
   /////  SM CONTROL  //////
   // Data bus control
   assign data_bus = (computer_state == COMP_LOAD_SRAM) ? data_to_bus : 32'bz;
   
   // ALU to/from FR Control
   assign alu_opcode = (computer_state == COMP_ALU_OP) ? data_bus[14:12] : OP_NOP;
   assign fr_read0_addr = (computer_state == COMP_ALU_OP) ? data_bus[11:8] : 4'b0;
   assign fr_read1_addr = (computer_state == COMP_ALU_OP) ? data_bus[7:4] : 4'b0;
   assign fr_write_addr = (
                           (computer_state == COMP_ALU_OP) ? data_bus[3:0] : 
                           (computer_state == COMP_SRAM_TO_FR) ? fr_addr_bus : 4'b0
                          );
   
   // Buffer SRAM Addresses
   assign sram_address = {21'b0, sram_addr_proxy};
   
   // Negative Edge Detection for button press
   assign next_top_state = !next_state && next_prev;
   assign reset_top_state = !reset_state && reset_prev;
   
   
   /////  RUN STATE MACHINE  /////
   // Initialize SM variables
   initial begin
     // data flow
     data_to_bus = 31'b0;
      // address
      addr_count = 6'b0;
      sram_addr_proxy = 11'b0;
      // control
      next_prev = 1'b1;
      reset_prev = 1'b1;
      // state
      computer_state = COMP_IDLE;
      sm_state = SM_IDLE;
      srin_state = SRIN_LOAD;
      srfr_state = SRFR_RW;
      alu_state = ALU_OP;
   end
   
   // Integration State Machine Logic
   always @(posedge clk) begin
      // previous variables for edge trigger
      next_prev <= next_state;
      reset_prev <= reset_state;
      
      // Reset SM variables
      if(reset_top_state) begin
         // data flow
         data_to_bus = 31'b0;
         // address
         addr_count <= 6'b0;
         sram_addr_proxy <= 11'b0;
         // state
         computer_state <= COMP_IDLE;
         sm_state <= SM_IDLE;
         srin_state <= SRIN_LOAD;
         srfr_state <= SRFR_RW;
         alu_state <= ALU_OP;
      end
      // Run SM
      else begin
         // Top Level State Machine
         case(sm_state)
            
            ////////////////////////
            // Everything is Idling
            SM_IDLE: begin
            if(next_top_state)
               sm_state <= SM_LOAD_SRAM;
            end
            
            ////////////////////////
            // Load values into SRAM
            SM_LOAD_SRAM: begin
               case(srin_state)
                  
                  // Load values into SRAM
                  SRIN_LOAD: begin
                     // Load
                     if(addr_count <= N_VALS) begin
                        sram_addr_proxy <= {4'b0, addr_count};
                        computer_state <= COMP_LOAD_SRAM;
                        addr_count <= addr_count + 6'b1;
                        // write data values to SRAM
                        if(addr_count <= N_DATA)
                           data_to_bus <= DATA_TO_SRAM[addr_count];
                        // write alu isntructions to SRAM
                        else
                           data_to_bus <= INSTR_TO_SRAM[addr_count - N_DATA - 32'd1];
                     end
                     // go to stop
                     if(addr_count == N_VALS)
                        srin_state <= SRIN_STOP;
                  end
                  
                  // Complete SRAM load
                  SRIN_STOP: begin
                     // idle computer and reset variables
                     computer_state <= COMP_IDLE;
                     sram_addr_proxy <= 11'b0;
                     data_to_bus <= 32'b0;
                     addr_count <= 6'b0;
                     // next top level state
                     if(next_top_state) begin
                        srin_state <= SRIN_LOAD;
                        sm_state <= SM_SRAM_TO_FR;
                     end
                  end
               
                  default:;
               endcase
            end
               
            ///////////////////   
            // Write SRAM to FR
            SM_SRAM_TO_FR: begin
               case(srfr_state)
                     
                  // Write SRAM data to bus
                  // Read data into file register
                  SRFR_RW: begin
                     // rw SRAM/FR
                     if(addr_count <= N_DATA) begin
                        sram_addr_proxy <= {4'b0, addr_count};
                        fr_addr_bus <= addr_count[4:0];
                        computer_state <= COMP_SRAM_TO_FR;
                        addr_count <= addr_count + 7'b1;
                     end
                     // go to stop
                     if(addr_count == N_DATA)
                        srfr_state <= SRFR_STOP;
                  end
                  
                  // Complete Read/Write
                  SRFR_STOP: begin
                     // idle computer and reset variables
                     computer_state <= COMP_IDLE;
                     sram_addr_proxy <= 11'b0;
                     fr_addr_bus <= 5'b0;
                     addr_count <= 6'b0;
                     // next top level state
                     if(next_top_state) begin
                        srfr_state <= SRFR_RW;
                        sm_state <= SM_ALU_OP;
                     end
                  end
                  
                  default:;
               endcase
            end
            
            ///////////////////////////////
            // ALU performs operation on FR
            // Data using instruction from SRAM
            // and stores data back into FR
            SM_ALU_OP: begin
               case(alu_state)
               
                  // Perform ALU operation
                  ALU_OP: begin
                     // run alu
                     if(addr_count <= N_INSTR) begin
                        sram_addr_proxy <= N_DATA + addr_count + 11'b1;
                        computer_state <= COMP_ALU_OP;
                        addr_count <= addr_count + 7'b1;
                     // go to stop
                     end
                     if(addr_count == N_INSTR)
                        alu_state <= ALU_STOP;
                  end
                  
                  // Halt ALU operation
                  ALU_STOP: begin
                     // idle computer and reset variables
                     computer_state <= COMP_IDLE;
                     sram_addr_proxy <= 11'b0;
                     addr_count <= 6'b0;
                     // next top level state
                     if(next_top_state) begin
                        alu_state <= ALU_OP;
                        sm_state <= SM_END;
                     end
                  end
               
                  default:;
               endcase
            end
            
            ////////////////////
            // End holding state
            SM_END:;
            
            default:;
         endcase
         
      end
   end
   
   /////  SRAM INITIALIZATION VALUES  /////
   parameter N_DATA = 32'd31;
   parameter N_INSTR = 32'd7;
   // data values written to SRAM
   
   parameter bit [31:0] DATA_TO_SRAM [N_DATA:0] = '{
                                                32'd1,    32'd2,    32'd3,    32'd4,    32'd5,    32'd6,    32'd7,    32'd8,
                                                32'd9,    32'd10,   32'd11,   32'd12,   32'd13,   32'd14,   32'd15,   32'd16,
                                                32'hFFFF, 32'hFFFE, 32'hFFFD, 32'hFFFC, 32'hFFFB, 32'hFFFA, 32'hFFF9, 32'hFFF8, 
                                                32'hFFF7, 32'hFFF6, 32'hFFF5,  32'hFFF4, 32'hFFF3, 32'hFFF2, 32'hFFF1, 32'hFFF0 
                                              };
   // ALU instructions written to SRAM
   parameter bit [31:0] INSTR_TO_SRAM [N_INSTR:0] = '{
                                                 // filler     op_code      fr_addr_op0  fr_addr_op1  fr_addr_result
                                                   {16'b0,     OP_ADD,      4'd0,        4'd1,        4'd2},
                                                   {16'b0,     OP_SUB,      4'd3,        4'd4,        4'd5},
                                                   {16'b0,     OP_NOP,      4'd6,        4'd7,        4'd8},
                                                   {16'b0,     OP_AND,      4'd3,        4'd4,        4'd5},
                                                   {16'b0,     OP_OR,       4'd3,        4'd4,        4'd5},
                                                   {16'b0,     OP_XOR,      4'd3,        4'd4,        4'd5},
                                                   {16'b0,     OP_SLT,      4'd3,        4'd4,        4'd5},
                                                   {16'b0,     OP_SLL,      4'd3,        4'd4,        4'd5}
                                                };
   
   /////  Control States  /////
   // Computer states
   parameter COMP_IDLE = 3'd0;
   parameter COMP_LOAD_SRAM = 3'd1;
   parameter COMP_SRAM_TO_FR = 3'd2;
   parameter COMP_ALU_OP = 3'd3;
   
   // Top State Machine Control
   parameter SM_IDLE = 3'd0;
   parameter SM_LOAD_SRAM = 3'd1;
   parameter SM_SRAM_TO_FR = 3'd2;
   parameter SM_ALU_OP = 3'd3;
   parameter SM_END = 3'd4;
   // Initialize SRAM
   parameter SRIN_LOAD = 2'b0;
   parameter SRIN_STOP = 2'b1;
   // Write SRAM to File Register
   parameter SRFR_RW = 2'b0;
   parameter SRFR_STOP = 2'b1;
   // Perform ALU operations
   parameter ALU_OP = 2'b0;
   parameter ALU_STOP = 2'b1;
   
   
   /////  ALU OP CODES  /////
   parameter OP_NOP = 4'd0;
   parameter OP_ADD = 4'd1;
   parameter OP_SUB = 4'd2;
   parameter OP_AND = 4'd3;
   parameter OP_OR = 4'd4;
   parameter OP_XOR = 4'd5;
   parameter OP_SLT = 4'd6;
   parameter OP_SLL = 4'd7;
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