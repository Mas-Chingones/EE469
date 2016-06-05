/*
Author: Ian Gilman
Title: Pipelined Computer Integration Hardware & Program
Summary: Instantiates integrated pipelined computer, programs it, and runs the 
   programmed instructions
*/

/* Module Dependencies
`include "../file_register/file_register.v"
`include "../sram/sram.v"
`include "../alu/alu.v"
`include "../instruction_memory/instruction_memory.v"
`include "../instruction_memory/decoder_7bit/decoder_7bit.v"
`include "../Program_Control/Program_Control.v"
`include "../control_signals/control_signals.v"
`include "../file_register/register_32bit/d_flipflop/d_flipflop.v"
`include "../file_register/mux_2to1/mux_2to1.v"
`include "../file_register/register_32bit/register_32bit.v"
`include "../file_register/decoder_5bit/decoder_5bit.v"
`include "../computer_integration/computer_integration.v"
*/

module computer_integration_HW_test(CLOCK_50, SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
// I/O
   input wire CLOCK_50;  // 50 MHz clock
   input wire [9:0] SW;  // switches
   input wire [3:0] KEY;  // keypad
   output wire [9:0] LEDR;  // LEDs
   output wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;  // 7-Seg displays
// Internal
   // Timing
   wire sys_clk;  // system clock
   wire [32:0] clocks;  // divided clocks to choose the system clock from
   // Control
   wire comp_rst, comp_en, wr_instr_en;  // computer !reset, computer !enable, write instruction enable
   wire [2:0] program_select;  // select program to execute
   // Data
   wire [6:0] wr_instr_addr;  // address to write instruction
   wire [31:0] wr_instr;  // instruction to write to instruction memory
   // User Interface
   wire[2:0] clk_select;  // selects clocks to use
   wire clk_speed, next_state,  // select fast or slow clock, start next state for sm, 
        reset_sm;  // reset sm to default state
   
   
   // Define User Interface
   assign clk_select = SW[8:6];
   assign clk_speed = SW[9];
   assign next_state = KEY[0];
   assign reset_sm = KEY[3];
   assign program_select = SW[2:0];
   // Inactive Outputs
   assign LEDR = 10'd0;
   assign HEX0 = 7'h7F;
   assign HEX1 = 7'h7F;
   assign HEX2 = 7'h7F;
   assign HEX3 = 7'h7F;
   assign HEX4 = 7'h7F;
   assign HEX5 = 7'h7F;
   
   // Define System Clock
   div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks[32:1]));
   assign clocks[0] = CLOCK_50;
   assign sys_clk = clk_speed ? clocks[clk_select] : clocks[(clk_select + 18)];
   
   // Integrated Computer
   computer_integration Computer(
      .clk(sys_clk),
      .comp_rst(comp_rst),
      .comp_en(comp_en),
      .wr_instr_en(wr_instr_en),
      .wr_instr_addr(wr_instr_addr),
      .wr_instr(wr_instr)
   );

   // Computer State Machine
   computer_integration_HW_SM Computer_Control_SM(
      .clk(sys_clk),
      .comp_rst(comp_rst),
      .comp_en(comp_en),
      .wr_instr_en(wr_instr_en),
      .wr_instr_addr(wr_instr_addr),
      .wr_instr(wr_instr),
      .next_state(next_state),
      .reset_sm(reset_sm),
      .program_select(program_select)
   );
   
endmodule






/*
Author: Ian Gilman
Title: Computer Integration HW Test State Machine
Summary: State machine for programming and running computer integration
*/

module computer_integration_HW_SM(
   clk,
   comp_rst,
   comp_en,
   wr_instr_en,
   wr_instr_addr,
   wr_instr,
   next_state,
   reset_sm,
   program_select
);
// I/O
   input wire clk, next_state, reset_sm;  // sm clock, PB indicating transition to next state, reset sm signal
   input wire [2:0] program_select;  // select program to run
   output reg comp_rst, comp_en, wr_instr_en;  // reset computer, enable computer, enable write instruction
   output reg [6:0] wr_instr_addr;  // address for writing instruction
   output reg [31:0] wr_instr;  // instruction to write
// Internal
   reg [6:0] instr_count;  // current write instruction count
   reg [1:0] comp_state;  // state that the sm is driving the computer in
   reg curr_state;  // used to detect transition to next state
   wire state_change;  // detects when sm should start changing state
   reg [31:0] num_of_instr;  // number of instructions to write
   reg [31:0] instr_to_write;  // instruction that will be written to instruction memory
   
   // Detect when comp SM receives a state change command
   assign state_change = !next_state && curr_state;
   
   // Initialize SM regs
   initial begin
      // Output regs
      comp_rst = 1'b0;
      comp_en = 1'b1;
      wr_instr_en = 1'b0;
      wr_instr_addr = 7'b0;
      wr_instr = 32'b0;
      // SM regs
      instr_count = 7'b0;
      comp_state = IDLE;
      curr_state = 1'b0;
   end
   
   // Computer State Machine Logic
   always @(posedge clk or negedge reset_sm) begin
            
      // Reset Computer SM
      if(!reset_sm) begin
         // Output regs
         comp_rst <= 1'b0;
         comp_en <= 1'b1;
         wr_instr_en <= 1'b0;
         wr_instr_addr <= 7'b0;
         wr_instr <= 32'b0;
         // SM regs
         instr_count = 7'b0;
         comp_state <= IDLE;
         curr_state <= 1'b0;
      end
      
      // Computer States Defined
      else begin   
         // sm state change command found
         curr_state <= next_state;
      
         // STATES START HERE
         case(comp_state)
         
            // Computer is Idling and nothing changes
            IDLE: begin
               comp_rst <= 1'b0;
               if(state_change) begin
                  comp_rst <= 1'b1;
                  comp_state <= WRITE_PROGRAM;
               end
            end
         
            // Program instructions are being written to the computer
            WRITE_PROGRAM: begin
               if(instr_count < num_of_instr) begin
                  wr_instr_en <= 1'b1;
                  wr_instr_addr <= instr_count;
                  wr_instr <= instr_to_write;
                  instr_count <= instr_count + 7'b1;
               end
               else begin
                  wr_instr_en <= 1'b0;
                  comp_state <= RUN_PROGRAM;
               end
            end
            
            // Let computer Run through all of the instructions written to instruction memory
            RUN_PROGRAM: begin
               comp_en <= 1'b0;
            end
         
         endcase
         
      end
      
   end
   
   // Computer States
   parameter IDLE = 2'b00;
   parameter WRITE_PROGRAM = 2'b01;
   parameter RUN_PROGRAM = 2'b10;
   
   // Instructions to Write
   always @(*) begin
      case (program_select)
         0: begin
            instr_to_write = INSTR_TO_COMPUTER_1[instr_count];
            num_of_instr = N_INSTR_1;
         end
         1: begin
            instr_to_write = INSTR_TO_COMPUTER_2[instr_count];
            num_of_instr = N_INSTR_2;
         end
         2: begin
            instr_to_write = INSTR_TO_COMPUTER_3[instr_count];
            num_of_instr = N_INSTR_3;
         end
         3: begin
            instr_to_write = INSTR_TO_COMPUTER_4[instr_count];
            num_of_instr = N_INSTR_4;
         end
         4: begin
            instr_to_write = INSTR_TO_COMPUTER_5[instr_count];
            num_of_instr = N_INSTR_5;
         end
         5: begin
            instr_to_write = INSTR_TO_COMPUTER_6[instr_count];
            num_of_instr = N_INSTR_6;
         end
         6: begin
            instr_to_write = INSTR_TO_COMPUTER_7[instr_count];
            num_of_instr = N_INSTR_7;
         end
      endcase   
   end
   
   /* C Program 1 */
   parameter N_INSTR_1 = 27;
   parameter bit [31:0] INSTR_TO_COMPUTER_1 [0:(N_INSTR_1-1)] = 
   '{                                              //       C Equivalent                 Updated Memory Values
      {ADDI,   zero,    t0,   16'd7},              //  0     int A = 7;                   A = 7
      {SW,     zero,    t0,   A    },              //  1
      {ADDI,   zero,    t0,   16'd5},              //  2     int B = 5;                   B = 5
      {SW,     zero,    t0,   B    },              //  3
      {ADDI,   zero,    t0,   16'd2},              //  4     int C = 2;                   C = 2
      {SW,     zero,    t0,   C    },              //  5
      {ADDI,   zero,    t0,   16'd4},              //  6     int D = 4;                   D = 4
      {SW,     zero,    t0,   D    },              //  7
      {ADDI,   zero,    t0,   D    },              //  8     int* DPtr = &D;              DPtr = 3
      {SW,     zero,    t0,   DPtr },              //  9
      {LW,     zero,    t0,   A    },              //  10    if (A-B) > 3 {
      {LW,     zero,    t1,   B    },              //  11
      {REG,    t0,      t1,   t1,   SHAMT,   SUB}, //  12
      {ADDI,   zero,    t0,   16'd3},              //  13
      {BGT,    t0,      t1,   16'd6},              //  14
      {ADDI,   zero,    t0,   16'd6},              //  15    //C = 6;                     //C = 6
      {SW,     zero,    t0,   C    },              //  16
      {LW,     zero,    t0,   D    },              //  17    //D = D << 2;}               //D = 16
      {SLLI,   t0,      t0,   16'd2},              //  18
      {SW,     zero,    t0,   D    },              //  19
      {JMP,    26'd27},                            //  20    else {
      {LW,     zero,    t0,   C    },              //  21    C = C << 5;                  C = 64
      {SLLI,   t0,      t0,   16'd5},              //  22
      {SW,     zero,    t0,   C    },              //  23
      {LW,     zero,    t0,   DPtr },              //  24    *DPtr = 7;}                  D = 7
      {ADDI,   zero,    t1,   16'd7},              //  25
      {SW,     t0,      t1,   16'd0}               //  26    
    };
    
   /* C Program 2 */
   parameter N_INSTR_2 = 27;
   parameter bit [31:0] INSTR_TO_COMPUTER_2 [0:(N_INSTR_2-1)] = 
   '{                                              //      C Equivalent                 Updated Memory Values
      {ADDI,   zero,    t0,   16'd8},              //  0     int A = 8;                   A = 8
      {SW,     zero,    t0,   A    },              //  1
      {ADDI,   zero,    t0,   16'd4},              //  2     int B = 4;                   B = 4
      {SW,     zero,    t0,   B    },              //  3
      {ADDI,   zero,    t0,   16'd2},              //  4     int C = 2;                   C = 2
      {SW,     zero,    t0,   C    },              //  5
      {ADDI,   zero,    t0,   16'd4},              //  6     int D = 4;                   D = 4
      {SW,     zero,    t0,   D    },              //  7
      {ADDI,   zero,    t0,   D    },              //  8     int* DPtr = &D;              DPtr = 3
      {SW,     zero,    t0,   DPtr },              //  9
      {LW,     zero,    t0,   A    },              //  10    if (A-B) > 3 {               
      {LW,     zero,    t1,   B    },              //  11
      {REG,    t0,      t1,   t1,   SHAMT,   SUB}, //  12   
      {ADDI,   zero,    t0,   16'd3},              //  13
      {BGT,    t0,      t1,   16'd6},              //  14
      {ADDI,   zero,    t0,   16'd6},              //  15    C = 6;                       C = 6
      {SW,     zero,    t0,   C    },              //  16
      {LW,     zero,    t0,   D    },              //  17    D = D << 2;}                 D = 16
      {SLLI,   t0,      t0,   16'd2},              //  18
      {SW,     zero,    t0,   D    },              //  19
      {JMP,    26'd27},                            //  20    else {
      {LW,     zero,    t0,   C    },              //  21    //C = C << 5;                //C = 64
      {SLLI,   t0,      t0,   16'd5},              //  22
      {SW,     zero,    t0,   C    },              //  23
      {LW,     zero,    t0,   DPtr },              //  24    //*DPtr = 7;}                //D = 7
      {ADDI,   zero,    t1,   16'd7},              //  25
      {SW,     t0,      t1,   16'd0}               //  26    
    };
   
   // Program with every operation
   /* C Program 3 */
   parameter N_INSTR_3 = 25;
   parameter bit [31:0] INSTR_TO_COMPUTER_3 [0:(N_INSTR_3-1)] = 
   '{                                                 //        Mem/Reg State  
      {ADDI,   zero,    t0,   16'd10},                //  0       t0 = 10
      {SW,     zero,    t0,   A    },                 //  1       A = 10       
      {ADDI,   zero,    t0,   16'd3},                 //  2       t0 = 3
      {SW,     zero,    t0,   B    },                 //  3       B = 3
      {LW,     zero,    t0,   A    },                 //  4       t0 = 10
      {LW,     zero,    t1,   B    },                 //  5       t1 = 3
      {REG,    t0,      t1,    t2,    SHAMT,  ADD},   //  6       t2 = 13
      {REG,    t0,      t1,    t2,    SHAMT,  SUB},   //  7       t2 = 7
      {REG,    t0,      t1,    t2,    SHAMT,  AND},   //  8       t2 = 2
      {REG,    t0,      t1,    t2,    SHAMT,  OR},    //  9       t2 = 11
      {REG,    t0,      t1,    t2,    SHAMT,  XOR},   //  10      t2 = 9
      {REG,    t0,      t1,    t2,    SHAMT,  SLT},   //  11      t2 = 0
      {REG,    t0,      t1,    t2,    SHAMT,  SLLV},  //  12      t2 = 80
      {ADDI,   zero,    t0,    16'd18},               //  13      t0 = 18
      {REG,    t0,      10'b0, SHAMT, JR},            //  14      
      {REG,    t0,      t1,    t2,    SHAMT,  NOP},   //  15
      {REG,    t0,      t1,    t2,    SHAMT,  NOP},   //  16
      {REG,    t0,      t1,    t2,    SHAMT,  NOP},   //  17
      {REG,    t0,      t1,    t2,    SHAMT,  NOP},   //  18
      {ADDI,   t0,      t2,   16'd3},                 //  19      t2 = 21
      {SLTI,   t0,      t2,   16'd3},                 //  20      t2 = 0
      {ANDI,   t0,      t2,   16'd3},                 //  21      t2 = 2
      {ORI,    t0,      t2,   16'd3},                 //  22      t2 = 19
      {XORI,   t0,      t2,   16'd3},                 //  23      t2 = 17
      {SLLI,   t0,      t2,   16'd3}                  //  24      t2 = 144
    };                                                
   
   // Lab 5 Program 1
   /* C Program 4 */
   parameter N_INSTR_4 = 54;
   parameter bit [31:0] INSTR_TO_COMPUTER_4 [0:(N_INSTR_4-1)] = 
   '{                                                  //Hex Instruction          C Equivalent           Updated Memory Values
      {ADDI,   zero,    t0,   16'd7    },              //  20080007       //  0     int A = 7;            A = 7
      {SW,     zero,    t0,   A        },              //  AC080000       //  1
      {ADDI,   zero,    t0,   16'd5    },              //  20080005       //  2     int B = 5;            B = 5
      {SW,     zero,    t0,   B        },              //  AC080001       //  3
      {ADDI,   zero,    t0,   16'd3    },              //  20080003       //  4     int C = 3;            C = 3
      {SW,     zero,    t0,   C        },              //  AC080002       //  5
      {ADDI,   zero,    t0,   16'd5    },              //  20080005       //  6     int D = 5;            D = 5
      {SW,     zero,    t0,   D        },              //  AC080003       //  7
      {ADDI,   zero,    t0,   D        },              //  20080003       //  8     int* DPtr = &D;       DPtr = 3
      {SW,     zero,    t0,   DPtr     },              //  AC080004       //  9
      {ADDI,   zero,    t0,   16'h5A5A },              //  20085A5A       //  10    int E = 0x5A5A;       E = 0x5A5A
      {SW,     zero,    t0,   E        },              //  AC080005       //  11
      {ADDI,   zero,    t0,   16'h6767 },              //  20086767       //  12    int F = 0x6767;       F = 0x6767
      {SW,     zero,    t0,   F        },              //  AC080006       //  13
      {ADDI,   zero,    t0,   16'h3C   },              //  2008003C       //  14    int G = 0x3C;         G = 0x3C
      {SW,     zero,    t0,   G        },              //  AC080007       //  15
      {ADDI,   zero,    t0,   16'hFF   },              //  200800FF       //  16    int H = 0xFF;         H = 0xFF
      {SW,     zero,    t0,   H        },              //  AC080008       //  17
      {LW,     zero,    t0,   A        },              //  8C080000       //  18    if(A-B) > 3 {         
      {LW,     zero,    t1,   B        },              //  8C090001       //  19
      {ADDI,   zero,    t2,   16'd3    },              //  200A0003       //  20
      {REG,    t0,      t1,   t0,      SHAMT,   SUB},  //  010947E2       //  21
      {BGT,    t2,      t0,   16'd11   },              //  1D48000B       //  22
      {LW,     zero,    t0,   C        },              //  8C080002       //  23     //C = C + 4;         //C = 7
      {ADDI,   t0,      t1,   16'd4    },              //  21090004       //  24
      {SW,     zero,    t1,   C        },              //  AC090002       //  25
      {ADDI,   zero,    t1,   16'd3    },              //  20080003       //  26     //D = C - 3;         //D = 4
      {REG,    t0,      t1,   t1,      SHAMT,   SUB},  //  01284FE2       //  27
      {SW,     zero,    t1,   D        },              //  AC090003       //  28
      {LW,     zero,    t0,   E        },              //  8C080005       //  29     //G = E | F;}        //G = 0x7F7F
      {LW,     zero,    t1,   F        },              //  8C090006       //  30
      {REG,    t0,      t1,   t0,      SHAMT,   OR },  //  010947E5       //  31     
      {SW,     zero,    t0,   G        },              //  AC080007       //  32
      {JMP,    26'd44},                                //  0800002C       //  33     else {
      {LW,     zero,    t0,   C        },              //  8C080002       //  34     C = C << 3;          C = 24
      {SLLI,   t0,      t0,   16'd3    },              //  3D080003       //  35
      {SW,     zero,    t0,   C        },              //  AC080002       //  36
      {ADDI,   zero,    t0,   16'd7    },              //  20080006       //  37     *dPTR = 7;           D = 7
      {LW,     zero,    t1,   DPtr     },              //  8C090004       //  38
      {SW,     t1,      t0,   16'd0    },              //  AD280000       //  39
      {LW,     zero,    t0,   E        },              //  8C080005       //  40     G = E & F;}          G = 0x4242
      {LW,     zero,    t1,   F        },              //  8C090006       //  41
      {REG,    t0,      t1,   t0,      SHAMT,   AND},  //  010947E4       //  42
      {SW,     zero,    t0,   G        },              //  AC080007       //  43                        
      {LW,     zero,    t0,   A        },              //  8C080000       //  44     A = A + B;           A = 12
      {LW,     zero,    t1,   B        },              //  8C090001       //  45
      {REG,    t0,      t1,   t0,      SHAMT,   ADD},  //  010947E0       //  46
      {SW,     zero,    t0,   A        },              //  AC080000       //  47
      {LW,     zero,    t0,   E        },              //  8C080005       //  48     G = (E ^ F) & H      G = 0x3D
      {LW,     zero,    t1,   F        },              //  8C090006       //  49
      {LW,     zero,    t2,   H        },              //  8C0A0008       //  50
      {REG,    t0,      t1,   t0,      SHAMT,   XOR},  //  010947E6       //  51
      {REG,    t0,      t2,   t0,      SHAMT,   AND},  //  010A47E4       //  52
      {SW,     zero,    t0,   G        }               //  AC080007       //  53
    };     
   
   // Lab 5 Program 2
   /* C Program 5 */
   parameter N_INSTR_5 = 54;
   parameter bit [31:0] INSTR_TO_COMPUTER_5 [0:(N_INSTR_5-1)] = 
   '{                                                  //Hex Instruction  //      C Equivalent           Updated Memory Values
      {ADDI,   zero,    t0,   16'd8    },              //  20080008       //  0     int A = 8;            A = 8
      {SW,     zero,    t0,   A        },              //  AC080000       //  1
      {ADDI,   zero,    t0,   16'd3    },              //  20080003       //  2     int B = 3;            B = 3
      {SW,     zero,    t0,   B        },              //  AC080001       //  3
      {ADDI,   zero,    t0,   16'd3    },              //  20080003       //  4     int C = 3;            C = 3
      {SW,     zero,    t0,   C        },              //  AC080002       //  5
      {ADDI,   zero,    t0,   16'd5    },              //  20080005       //  6     int D = 5;            D = 5
      {SW,     zero,    t0,   D        },              //  AC080003       //  7
      {ADDI,   zero,    t0,   D        },              //  20080003       //  8     int* DPtr = &D;       DPtr = 3
      {SW,     zero,    t0,   DPtr     },              //  AC080004       //  9
      {ADDI,   zero,    t0,   16'h5A5A },              //  20085A5A       //  10    int E = 0x5A5A;       E = 0x5A5A
      {SW,     zero,    t0,   E        },              //  AC080005       //  11
      {ADDI,   zero,    t0,   16'h6767 },              //  20086767       //  12    int F = 0x6767;       F = 0x6767
      {SW,     zero,    t0,   F        },              //  AC080006       //  13
      {ADDI,   zero,    t0,   16'h3C   },              //  2008003C       //  14    int G = 0x3C;         G = 0x3C
      {SW,     zero,    t0,   G        },              //  AC080007       //  15
      {ADDI,   zero,    t0,   16'hFF   },              //  200800FF       //  16    int H = 0xFF;         H = 0xFF
      {SW,     zero,    t0,   H        },              //  AC080008       //  17
      {LW,     zero,    t0,   A        },              //  8C080000       //  18    if(A-B) > 3 {         
      {LW,     zero,    t1,   B        },              //  8C090001       //  19
      {ADDI,   zero,    t2,   16'd3    },              //  200A0003       //  20
      {REG,    t0,      t1,   t0,      SHAMT,   SUB},  //  010947E2       //  21
      {BGT,    t2,      t0,   16'd11   },              //  1D48000B       //  22
      {LW,     zero,    t0,   C        },              //  8C080002       //  23     C = C + 4;           C = 7
      {ADDI,   t0,      t1,   16'd4    },              //  21090004       //  24
      {SW,     zero,    t1,   C        },              //  AC090002       //  25
      {ADDI,   zero,    t0,   16'd3    },              //  20080003       //  26     D = C - 3;           D = 4
      {REG,    t1,      t0,   t1,      SHAMT,   SUB},  //  01284FE2       //  27
      {SW,     zero,    t1,   D        },              //  AC090003       //  28
      {LW,     zero,    t0,   E        },              //  8C080005       //  29     G = E | F;}          G = 0x7F7F
      {LW,     zero,    t1,   F        },              //  8C090006       //  30
      {REG,    t0,      t1,   t0,      SHAMT,   OR },  //  010947E5       //  31     
      {SW,     zero,    t0,   G        },              //  AC080007       //  32
      {JMP,    26'd44},                                //  0800002C       //  33     else {
      {LW,     zero,    t0,   C        },              //  8C080002       //  34     //C = C << 3;        //C = 24
      {SLLI,   t0,      t0,   16'd3    },              //  3D080003       //  35
      {SW,     zero,    t0,   C        },              //  AC080002       //  36
      {ADDI,   zero,    t0,   16'd7    },              //  20080006       //  37     //*dPTR = 7;         //D = 7
      {LW,     zero,    t1,   DPtr     },              //  8C090004       //  38
      {SW,     t1,      t0,   16'd0    },              //  AD280000       //  39
      {LW,     zero,    t0,   E        },              //  8C080005       //  40     //G = E & F;}        //G = 0x4242
      {LW,     zero,    t1,   F        },              //  8C090006       //  41
      {REG,    t0,      t1,   t0,      SHAMT,   AND},  //  010947E4       //  42
      {SW,     zero,    t0,   G        },              //  AC080007       //  43                                   
      {LW,     zero,    t0,   A        },              //  8C080000       //  44     A = A + B;           A = 11
      {LW,     zero,    t1,   B        },              //  8C090001       //  45
      {REG,    t0,      t1,   t0,      SHAMT,   ADD},  //  010947E0       //  46
      {SW,     zero,    t0,   A        },              //  AC080000       //  47
      {LW,     zero,    t0,   E        },              //  8C080005       //  48     G = (E ^ F) & H      G = 0x3D 
      {LW,     zero,    t1,   F        },              //  8C090006       //  49
      {LW,     zero,    t2,   H        },              //  8C0A0008       //  50
      {REG,    t0,      t1,   t0,      SHAMT,   XOR},  //  010947E6       //  51
      {REG,    t0,      t2,   t0,      SHAMT,   AND},  //  010A47E4       //  52
      {SW,     zero,    t0,   G        }               //  AC080007       //  53
    };     
   
   // Lab 5 Program 1 Version 2
   /* C Program 6 */
   parameter N_INSTR_6 = 39;
   parameter bit [31:0] INSTR_TO_COMPUTER_6 [0:(N_INSTR_6-1)] = 
   '{                                                  //Hex Instruction  //      C Equivalent           Updated Memory Values
      {ADDI,   zero,    s0,   16'd7    },              //  20100007       //  0     int A = 7;            A = 7
      {SW,     zero,    s0,   A        },              //  AC100000       //  1
      {ADDI,   zero,    s1,   16'd5    },              //  20110005       //  2     int B = 5;            B = 5
      {SW,     zero,    s1,   B        },              //  AC110001       //  3
      {ADDI,   zero,    s2,   16'd3    },              //  20120003       //  4     int C = 3;            C = 3
      {SW,     zero,    s2,   C        },              //  AC120002       //  5
      {ADDI,   zero,    s3,   16'd5    },              //  20130005       //  6     int D = 5;            D = 5
      {SW,     zero,    s3,   D        },              //  AC130003       //  7
      {ADDI,   zero,    t7,   D        },              //  200F0003       //  8     int* DPtr = &D;       DPtr = 3
      {SW,     zero,    t7,   DPtr     },              //  AC0F0004       //  9
      {ADDI,   zero,    s4,   16'h5A5A },              //  20145A5A       //  10    int E = 0x5A5A;       E = 0x5A5A
      {SW,     zero,    s4,   E        },              //  AC140005       //  11
      {ADDI,   zero,    s5,   16'h6767 },              //  20156767       //  12    int F = 0x6767;       F = 0x6767
      {SW,     zero,    s5,   F        },              //  AC150006       //  13
      {ADDI,   zero,    s6,   16'h3C   },              //  2016003C       //  14    int G = 0x3C;         G = 0x3C
      {SW,     zero,    s6,   G        },              //  AC160007       //  15
      {ADDI,   zero,    s7,   16'hFF   },              //  201700FF       //  16    int H = 0xFF;         H = 0xFF
      {SW,     zero,    s7,   H        },              //  AC170008       //  17
      {ADDI,   zero,    t0,   16'd3    },              //  20080003       //  18    if(A-B) > 3 {
      {REG,    s0,      s1,   t1,      SHAMT,   SUB},  //  02114FE2       //  19
      {BGT,    t0,      t1,   16'd7    },              //  1D090007       //  20 
      {ADDI,   s2,      s2,   16'd4    },              //  22520004       //  21    //C = C + 4;         //C = 7
      {SW,     zero,    s2,   C        },              //  AC120002       //  22
      {ADDI,   s2,      s3,   16'hFFFD },              //  2253FFFD       //  23    //D = C - 3;         //D = 4
      {SW,     zero,    s3,   D        },              //  AC130003       //  24
      {REG,    s4,      s5,   s6,      SHAMT,   OR },  //  0295B7E5       //  25    //G = E | F;}        //G = 0x7F7F
      {SW,     zero,    s6,   G        },              //  AC160007       //  26
      {JMP,    26'd34},                                //  08000022       //  27    else {
      {SLLI,   s2,      s2,   16'd3    },              //  3E520003       //  28    C = C << 3;          C = 24
      {SW,     zero,    s2,   C        },              //  AC120002       //  29
      {ADDI,   zero,    s3,   16'd7    },              //  20130007       //  30    *dPTR = 7;           D = 7
      {SW,     t7,      s3,   16'd0    },              //  ADF30000       //  31
      {REG,    s4,      s5,   s6,      SHAMT,   AND},  //  0295B7E4       //  32    G = E & F;}          G = 0x4242
      {SW,     zero,    s6,   G        },              //  AC160007       //  33                        
      {REG,    s0,      s1,   s0,      SHAMT,   ADD},  //  021187E0       //  34    A = A + B;           A = 12
      {SW,     zero,    s0,   A        },              //  AC100000       //  35
      {REG,    s4,      s5,   s6,      SHAMT,   XOR},  //  0295B7E6       //  36    G = (E ^ F) & H      G = 0x3D
      {REG,    s6,      s7,   s6,      SHAMT,   AND},  //  02D7B7E4       //  37
      {SW,     zero,    s6,   G        }               //  AC160007       //  38
    };     
   
   
   // Lab 5 Program 2 Version 2
   /* C Program 7 */
   parameter N_INSTR_7 = 39;
   parameter bit [31:0] INSTR_TO_COMPUTER_7 [0:(N_INSTR_7-1)] = 
   '{                                                  //Hex Instruction   //      C Equivalent           Updated Memory Values
      {ADDI,   zero,    s0,   16'd8    },              //  20100007        //  0     int A = 8;            A = 8
      {SW,     zero,    s0,   A        },              //  AC100000        //  1
      {ADDI,   zero,    s1,   16'd3    },              //  20110005        //  2     int B = 3;            B = 3
      {SW,     zero,    s1,   B        },              //  AC110001        //  3
      {ADDI,   zero,    s2,   16'd3    },              //  20120003        //  4     int C = 3;            C = 3
      {SW,     zero,    s2,   C        },              //  AC120002        //  5
      {ADDI,   zero,    s3,   16'd5    },              //  20130005        //  6     int D = 5;            D = 5
      {SW,     zero,    s3,   D        },              //  AC130003        //  7
      {ADDI,   zero,    t7,   D        },              //  200F0003        //  8     int* DPtr = &D;       DPtr = 3
      {SW,     zero,    t7,   DPtr     },              //  AC0F0004        //  9
      {ADDI,   zero,    s4,   16'h5A5A },              //  20145A5A        //  10    int E = 0x5A5A;       E = 0x5A5A
      {SW,     zero,    s4,   E        },              //  AC140005        //  11
      {ADDI,   zero,    s5,   16'h6767 },              //  20156767        //  12    int F = 0x6767;       F = 0x6767
      {SW,     zero,    s5,   F        },              //  AC150006        //  13
      {ADDI,   zero,    s6,   16'h3C   },              //  2016003C        //  14    int G = 0x3C;         G = 0x3C
      {SW,     zero,    s6,   G        },              //  AC160007        //  15
      {ADDI,   zero,    s7,   16'hFF   },              //  201700FF        //  16    int H = 0xFF;         H = 0xFF
      {SW,     zero,    s7,   H        },              //  AC170008        //  17
      {ADDI,   zero,    t0,   16'd3    },              //  20080003        //  18    if(A-B) > 3 {
      {REG,    s0,      s1,   t1,      SHAMT,   SUB},  //  02114FE2        //  19
      {BGT,    t0,      t1,   16'd7    },              //  1D090007        //  20 
      {ADDI,   s2,      s2,   16'd4    },              //  22520004        //  21    C = C + 4;            C = 7
      {SW,     zero,    s2,   C        },              //  AC120002        //  22
      {ADDI,   s2,      s3,   16'hFFFD },              //  2253FFFD        //  23    D = C - 3;            D = 4
      {SW,     zero,    s3,   D        },              //  AC130003        //  24
      {REG,    s4,      s5,   s6,      SHAMT,   OR },  //  0295B7E5        //  25    G = E | F;}           G = 0x7F7F
      {SW,     zero,    s6,   G        },              //  AC160007        //  26
      {JMP,    26'd34},                                //  08000022        //  27    else {
      {SLLI,   s2,      s2,   16'd3    },              //  3E520003        //  28    //C = C << 3;        //C = 24
      {SW,     zero,    s2,   C        },              //  AC120002        //  29
      {ADDI,   zero,    s3,   16'd7    },              //  20130007        //  30    //*dPTR = 7;         //D = 7
      {SW,     t7,      s3,   16'd0    },              //  ADF30000        //  31
      {REG,    s4,      s5,   s6,      SHAMT,   AND},  //  0295B7E4        //  32    //G = E & F;}        //G = 0x4242
      {SW,     zero,    s6,   G        },              //  AC160007        //  33                        
      {REG,    s0,      s1,   s0,      SHAMT,   ADD},  //  021187E0        //  34    A = A + B;           A = 11
      {SW,     zero,    s0,   A        },              //  AC100000        //  35
      {REG,    s4,      s5,   s6,      SHAMT,   XOR},  //  0295B7E6        //  36    G = (E ^ F) & H      G = 0x3D
      {REG,    s6,      s7,   s6,      SHAMT,   AND},  //  02D7B7E4        //  37
      {SW,     zero,    s6,   G        }               //  AC160007        //  38
    };  
   
   
   /*--------------------------------
   ///// INSTRUCTIONS Reference /////
   ----------------------------------
   // Format for the various instructions are below:
   1) Immediate Instr = {6-bit OPCODE, 5-bit FR_ADDR (operand0), 5-bit FR_ADDR (result destination), 16-bit Immediate Value (Operand2)}
   2) Reg Instr = {6-bit OP-CODE, 5-bit FR_ADDR (operand0), 5-bit FR_ADDR (operand1), 5-bit FR_ADDR (result destination), SHIFT_AMOUNT (Fill with 1's), ALU_FUNCTION}
   3) Jump = {6-bit OP-CODE, 27-bit instruction address}
   */
   
   // C-Program Variable Memory locations
   parameter A = 16'd0;
   parameter B = 16'd1;
   parameter C = 16'd2;
   parameter D = 16'd3;
   parameter DPtr = 16'd4;
   parameter E = 16'd5;
   parameter F = 16'd6;
   parameter G = 16'd7;
   parameter H = 16'd8;
   
   
   // Computer OP-CODES
   parameter REG = 6'd0;
   parameter JMP = 6'd2;
   parameter BGT = 6'd7;
   parameter ADDI = 6'd8;
   parameter SLTI = 6'd10;
   parameter ANDI = 6'd12;
   parameter ORI = 6'd13;
   parameter XORI = 6'd14;
   parameter SLLI = 6'd15;
   parameter LW = 6'd35;
   parameter SW = 6'd43;
   
   // Function Codes
   parameter NOP = 6'd0;
   parameter SLLV = 6'd4;
   parameter JR = 6'd8;
   parameter ADD = 6'd32;
   parameter SUB = 6'd34;
   parameter AND = 6'd36;
   parameter OR = 6'd37;
   parameter XOR = 6'd38;
   parameter SLT = 6'd42;
   
   // FR Register Common Names
   parameter zero = 5'd0;
   // temp regs
   parameter t0 = 5'd8;
   parameter t1 = 5'd9;
   parameter t2 = 5'd10;
   parameter t3 = 5'd11;
   parameter t4 = 5'd12;
   parameter t5 = 5'd13;
   parameter t6 = 5'd14;
   parameter t7 = 5'd15;
   // program var regs
   parameter s0 = 5'd16;
   parameter s1 = 5'd17;
   parameter s2 = 5'd18;
   parameter s3 = 5'd19;
   parameter s4 = 5'd20;
   parameter s5 = 5'd21;
   parameter s6 = 5'd22;
   parameter s7 = 5'd23;

   parameter SHAMT = 5'b11111;  // SHAMT filler for REG instructions
   
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