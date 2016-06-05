/*
Author: Ian Gilman
Title: Computer Integration Tester
Summary: Creates stimulus signals to test a MIPS-like computer integration
*/

module computer_integration_tester(
   clk,
   comp_rst,
   comp_en,
   wr_instr_en,
   wr_instr_addr,
   wr_instr
);
// Outputs
   output reg clk, comp_rst, comp_en,  // clock, computer !reset, computer !enable
       wr_instr_en;  // write instruction enable
   output reg [6:0] wr_instr_addr;  // instruction memory address to write to
   output reg [31:0] wr_instr;  // instruction to write to memory
// Internal
   parameter delay = 10;
   parameter SHIFT = 5'h1F;
   
   // Test Stimulus Signals
   // clock
   always begin
      #delay; clk = ~clk;
   end
   
   integer i;
   initial begin
   // initialize computer
   clk = 1'b1;
   comp_rst = 1'b1;
   comp_en = 1'b1;
   wr_instr_en = 1'b0;
   #delay; comp_rst = 1'b0;
   #delay; comp_rst = 1'b1;
   
   // write program instructions to memory
   @(posedge clk);
   wr_instr_en = 1'b1;
   /*
   // mem(0) = reg(NOP)
   wr_instr = {6'd0, 5'd0, 5'd0, 5'd0, SHIFT, 6'd0};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = addi(zero, t0, 13)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd13};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = sw(zero, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = lw(zero, t1, 0)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd0};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = jr(t1)
   wr_instr = {6'd0, 5'd9, 5'd0, 5'd0, SHIFT, 6'd8};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(13) = reg(t0, t1, t2, add)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd10, SHIFT, 6'd32};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = j(17)
   wr_instr = {6'd2, 26'd17};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(17) = reg(t0, t1, t0, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd8, SHIFT, 6'd34};
   wr_instr_addr = 32'd17;
   @(posedge clk);
   
   // mem(18) = bgt(t0, t1, 26)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd24};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = bgt(t0, t0, 26)
   wr_instr = {6'd7, 5'd8, 5'd8, 16'd24};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = bgt(t2, t1, 26)
   wr_instr = {6'd7, 5'd10, 5'd9, 16'd26};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(26) = slli(t1, t1, 2)
   wr_instr = {6'd15, 5'd9, 5'd9, 16'd2};
   wr_instr_addr = 32'd26;
   @(posedge clk);

   // mem(27) = sw(t1, t2, 0x1)
   wr_instr = {6'd43, 5'd9, 5'd10, 16'd1};
   wr_instr_addr = 32'd27;
   @(posedge clk);
   
   // mem(28) = lw(t1, t1, 0x1)
   wr_instr = {6'd35, 5'd9, 5'd9, 16'd1};
   wr_instr_addr = 32'd28;
   @(posedge clk);
   
   // mem(29) = reg(t1, t2, t2, add)
   wr_instr = {6'd0, 5'd9, 5'd9, 5'd10, SHIFT, 6'd32};
   wr_instr_addr = 32'd29;
   @(posedge clk);
   
   // mem(30) = addi(t1, t2, 2)
   wr_instr = {6'd8, 5'd9, 5'd10, 16'd2};
   wr_instr_addr = 32'd30;
   @(posedge clk);
   
   // mem(31) = reg(t1, t2, t0, sub)
   wr_instr = {6'd0, 5'd10, 5'd10, 5'd8, SHIFT, 6'd34};
   wr_instr_addr = 32'd31;
   @(posedge clk);
   */
   
   /////////////////////////////////////////////////////////
   /* Program 1 */ /*
   // mem(0) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd7};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = sw (0, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = addi(0, t0, 16'd5)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd5};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = sw (0, t0, 1)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd1};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = addi(0, t0, 16'd2)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(5) = sw (0, t0, 2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd5;
   @(posedge clk);
   
   // mem(6) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd6;
   @(posedge clk);
   
   // mem(7) = sw (0, t0, 3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd7;
   @(posedge clk);
   
   // mem(8) = addi(0, t0, 3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd8;
   @(posedge clk);
   
   // mem(9) = sw (0, t0, 4)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd9;
   @(posedge clk);
   
   // mem(10) = lw (0, t0, 0)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd10;
   @(posedge clk);
   
   // mem(11) = lw (0, t1, 1)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd1};
   wr_instr_addr = 32'd11;
   @(posedge clk);
   
   // mem(12) = reg(t0, t1, t1, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd9, 5'b11111, 6'd34};
   wr_instr_addr = 32'd12;
   @(posedge clk);
   
   // mem(13) = addi(0, t0, 16'd3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = bgt(t1, t0, 16'd6)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd6};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(15) = addi(0, t0, 16'd6)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd6};
   wr_instr_addr = 32'd15;
   @(posedge clk);
   
   // mem(16) = sw(0, t0, 16'd2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd16;
   @(posedge clk);
   
   // mem(17) = lw(0, t0, 16'd3)
   wr_instr =  {6'd35, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd17;
   @(posedge clk);   
      
   // mem(18) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = sw(0, t0, 16'd3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = jmp(27)
   wr_instr = {6'd2, 26'd27};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(21) = lw(0, t0, 16'd2)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd21;
   @(posedge clk);
   
   // mem(22) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd22;
   @(posedge clk);
   
   // mem(23) = sw(0, t0, 16'd2)
   wr_instr =  {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd23;
   @(posedge clk);
   
   // mem(24) = lw(0, t0, 4)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd24;
   @(posedge clk);
   
   // mem(25) = addi(0, t1, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd9, 16'd7};
   wr_instr_addr = 32'd25;
   @(posedge clk);
   
   // mem(26) = sw(t0, t1, 16'd0)   
   wr_instr = {6'd43, 5'd8, 5'd9, 16'd0};
   wr_instr_addr = 32'd26;
   @(posedge clk);
   */
   
   /////////////////////////////////////////////////////////////
   /* Program 2 */ /*
   // Program
   // mem(0) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd8};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = sw (0, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = addi(0, t0, 16'd5)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = sw (0, t0, 1)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd1};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = addi(0, t0, 16'd2)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(5) = sw (0, t0, 2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd5;
   @(posedge clk);
   
   // mem(6) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd6;
   @(posedge clk);
   
   // mem(7) = sw (0, t0, 3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd7;
   @(posedge clk);
   
   // mem(8) = addi(0, t0, 3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd8;
   @(posedge clk);
   
   // mem(9) = sw (0, t0, 4)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd9;
   @(posedge clk);
   
   // mem(10) = lw (0, t0, 0)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd10;
   @(posedge clk);
   
   // mem(11) = lw (0, t1, 1)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd1};
   wr_instr_addr = 32'd11;
   @(posedge clk);
   
   // mem(12) = reg(t0, t1, t1, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd9, 5'b11111, 6'd34};
   wr_instr_addr = 32'd12;
   @(posedge clk);
   
   // mem(13) = addi(0, t0, 16'd3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = bgt(t1, t0, 16'd6)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd6};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(15) = addi(0, t0, 16'd6)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd6};
   wr_instr_addr = 32'd15;
   @(posedge clk);
   
   // mem(16) = sw(0, t0, 16'd2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd16;
   @(posedge clk);
   
   // mem(17) = lw(0, t0, 16'd3)
   wr_instr =  {6'd35, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd17;
   @(posedge clk);   
      
   // mem(18) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd2};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = sw(0, t0, 16'd3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = jmp(27)
   wr_instr = {6'd2, 26'd27};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(21) = lw(0, t0, 16'd2)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd21;
   @(posedge clk);
   
   // mem(22) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd22;
   @(posedge clk);
   
   // mem(23) = sw(0, t0, 16'd2)
   wr_instr =  {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd23;
   @(posedge clk);
   
   // mem(24) = lw(0, t0, 4)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd24;
   @(posedge clk);
   
   // mem(25) = addi(0, t1, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd9, 16'd7};
   wr_instr_addr = 32'd25;
   @(posedge clk);
   
   // mem(26) = sw(t0, t1, 16'd0)   
   wr_instr = {6'd43, 5'd8, 5'd9, 16'd0};
   wr_instr_addr = 32'd26;
   @(posedge clk);
   */
   
   {ADDI,   zero,    t0,   16'd7    },              //  0     int A = 7;            A = 7
   {SW,     zero,    t0,   A        },              //  1
   {ADDI,   zero,    t0,   16'd5    },              //  2     int B = 5;            B = 5
   {SW,     zero,    t0,   B        },              //  3
   {ADDI,   zero,    t0,   16'd3    },              //  4     int C = 3;            C = 3
   {SW,     zero,    t0,   C        },              //  5
   {ADDI,   zero,    t0,   16'd5    },              //  6     int D = 5;            D = 5
   {SW,     zero,    t0,   D        },              //  7
   {ADDI,   zero,    t0,   D        },              //  8     int* DPtr = &D;       DPtr = 3
   {SW,     zero,    t0,   DPtr     },              //  9
   {ADDI,   zero,    t0,   16'h5A5A },              //  10    int E = 0x5A5A;       E = 0x5A5A
   {SW,     zero,    t0,   E        },              //  11
   {ADDI,   zero,    t0,   16'h6767 },              //  12    int F = 0x6767;       F = 0x6767
   {SW,     zero,    t0,   F        },              //  13
   {ADDI,   zero,    t0,   16'h3C   },              //  14    int G = 0x3C;         G = 0x3C
   {SW,     zero,    t0,   G        },              //  15
   {ADDI,   zero,    t0,   16'hFF   },              //  16    int H = 0xFF;         H = 0xFF
   {SW,     zero,    t0,   H        },              //  17
   {LW,     zero,    t0,   A        },              //  18    if(A-B) > 3 {         
   {LW,     zero,    t1,   B        },              //  19
   {ADDI,   zero,    t2,   16'd3    },              //  20
   {REG,    t0,      t1,   t0,      SHAMT,   SUB},  //  21
   {BGT,    t2,      t0,   16'd11   },              //  22
   {LW,     zero,    t0,   C        },              //  23     C = C + 4;           C = 7
   {ADDI,   t0,      t1,   16'd4    },              //  24
   {SW,     zero,    t1,   C        },              //  25
   {ADDI,   zero,    t1,   16'd3    },              //  26     D = C - 3;           D = 4
   {REG,    t0,      t1,   t1,      SHAMT,   SUB},  //  27
   {SW,     zero,    t1,   D        },              //  28
   {LW,     zero,    t0,   E        },              //  29     G = E | F;}          G = 0x7F7F
   {LW,     zero,    t1,   F        },              //  30
   {REG,    t0,      t1,   t0,      SHAMT,   OR },  //  31     
   {SW,     zero,    t0,   G        },              //  32
   {JMP,    26'd44},                                //  33     else {
   {LW,     zero,    t0,   C        },              //  34     C = C << 3;          C = 24
   {SLLI,   t0,      t0,   16'd3    },              //  35
   {SW,     zero,    t0,   C        },              //  36
   {ADDI,   zero,    t0,   16'd7    },              //  37     *dPTR = 7;           D = 7
   {LW,     zero,    t1,   DPtr     },              //  38
   {SW,     DPtr,    t0,   16'd0    },              //  39
   {LW,     zero,    t0,   E        },              //  40     G = E & F;}          G = 0x4242
   {LW,     zero,    t1,   F        },              //  41
   {REG,    t0,      t1,   t0,      SHAMT,   AND},  //  42
   {SW,     zero,    t0,   G        },              //  43                        {BRANCH_1}           {BRANCH_2}
   {LW,     zero,    t0,   A        },              //  44     A = A + B;           A = 12               A = 12
   {LW,     zero,    t1,   B        },              //  45
   {REG,    t0,      t1,   t0,      SHAMT,   ADD},  //  46
   {SW,     zero,    t0,   A        },              //  47
   {LW,     zero,    t0,   E        },              //  48     G = (E ^ F) & H      G = 0x3D             G = 0x3D
   {LW,     zero,    t1,   F        },              //  49
   {LW,     zero,    t2,   H        },              //  50
   {REG,    t0,      t1,   t0,      SHAMT,   XOR},  //  51
   {REG,    t0,      t2,   t0,      SHAMT,   AND},  //  52
   {SW,     zero,    t0,   H        }  
   
   // run program
   wr_instr_en = 1'b0;
   comp_en = 1'b0;
   for(i=0; i<64; i=i+1) begin
      #delay;
   end
   
   $finish;
   end

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
   parameter t0 = 5'd8;
   parameter t1 = 5'd9;
   parameter t2 = 5'd10;
   parameter t3 = 5'd11;
   parameter t4 = 5'd12;
   parameter t5 = 5'd13;
   parameter t6 = 5'd14;
   parameter t7 = 5'd15;

   parameter SHAMT = 5'b11111;  // SHAMT filler for REG instructions
   
endmodule