

/*
Author: Ian Gilman David Dolengewicz
Title: ALU Dataflow Test on De1-soc
Summary: Test ALU operation using De1-soc dev board.
*/

module alu_dataflow_de1soc_test(CLOCK_50, SW, KEY, LEDR, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
   input wire CLOCK_50;  // 50 MHz clock
   input wire [3:0] KEY;  // keypad 
   input wire [9:0] SW;  // switches
   output wire [9:0] LEDR;  // LED's
   output wire [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0; //HEXs
   
   wire sys_clk;  // system clock;
   wire [31:0] clocks;  // divide clocks
   //wire [3:0] hexIn [5:0]; 
   
   reg [31:0] operand0, operand1; //input1, input2
   reg [3:0] hex_value [5:0]; //4-bit hex values to be displayed on one of 6 hex displays.
   reg [3:0] hexOff;
   
   wire [1:0] displaySelect;
   wire Z, V, C, N; //zero, overflow, carry, negative
   wire [31:0] result; //result
   
   wire [3:0] digitIn; //links the value of SW[3:0] to proper input.
   wire [2:0] control; //controls the output operation of the ALU 
   reg enter, backspace, rst; // KEY functions. 
   wire run; //
   
   //ALU STUFF
   assign digitIn = SW[3:0];
   assign control = SW[6:4];
   assign displaySelect = SW[9:8];
   
   assign run = KEY[2];
	/* rst <= KEY[3];		JUST FOR REFERENCE KEY ASSIGNS
      backspace <= KEY[1];
      enter <= KEY[0];
	*/
	
	
   
	reg [2:0]  digitA, digitB, digitDisplayed;
   
   /*
	assign LEDR[8] = Zp;
   assign LEDR[7] = Vp;
   assign LEDR[6] = Cp;
   assign LEDR[5] = Np;
   */
	
   assign LEDR [6:4] = control;
   
   assign LEDR[0] = ~enter;
   assign LEDR[1] = ~run;
   assign LEDR[2] = ~rst;
   
   reg [2:0] rw_state; //read write state
   reg [4:0] address;  // file register address
   reg [31:0] write_data;  // data written to bus
   
/*   // ALU operation control codes
   parameter NOP = 3'b000;
   parameter ADD = 3'b001;
   parameter SUB = 3'b010;
   parameter AND = 3'b011;
   parameter OR  = 3'b100;
   parameter XOR = 3'b101;
   parameter SLT = 3'b110;
   parameter SLL = 3'b111;
*/

   
   // divide 50 MHz clock to get sys clock
   //assign sys_clk = SW[7] ? clocks[23] : clocks[1];
   wire sig_clk;
	reg test; 
	
	assign sys_clk =  CLOCK_50;
   assign sig_clk = clocks[23];
	assign LEDR[7] = test;
	assign LEDR[8] = sig_clk;
	assign LEDR[9] = sys_clk;

	initial begin
		test = 1'b0;
	end
	
	always @(posedge sig_clk) begin
		test = ~test;
	end
	
   div_clock clock_divider(.orig_clk(CLOCK_50), .div_clks(clocks));
   
   
   // instantiate alu
   alu_dataflow alu (
                   .operand0(operand0), 
                   .operand1(operand1), 
                   .control(control), 
                   .result(result), 
                   .Z(Z), 
                   .V(V), 
                   .C(C), 
                   .N(N)
                 );
   
   

   //hook hexes up to hexIn wires
   HexEncoder hex5(.in(   hex_value[5]   ), .hexOut(HEX5)   , .off(		1'b0)	  );
   HexEncoder hex3(.in(   hex_value[3]   ), .hexOut(HEX3)   , .off(hexOff[3])   );
   HexEncoder hex2(.in(   hex_value[2]   ), .hexOut(HEX2)   , .off(hexOff[2])   );
   HexEncoder hex1(.in(   hex_value[1]   ), .hexOut(HEX1)   , .off(hexOff[1])   );
   HexEncoder hex0(.in(   hex_value[0]   ), .hexOut(HEX0)   , .off(hexOff[0])   );
   
   assign HEX4 = 7'b0111111; //HEX4 is a '-'
   
   
   //OUTPUT Select logic
   always @(posedge sys_clk) begin
      if (displaySelect[1] == 1'b1) begin //display Result
         hex_value[5] = 4'd0; //output 
         hex_value[3] = run ? hex_value[3] : result[15:12];
         hex_value[2] = run ? hex_value[2] : result[11:8 ];
         hex_value[1] = run ? hex_value[1] : result[7 :4 ];
         hex_value[0] = run ? hex_value[0] : result[3 :0 ];
       
      end
      else begin
      
         if (displaySelect[0] == 1'b1) begin //display input B
            hex_value[5] = 4'd11;
            hex_value[3] = operand1[15:12];
            hex_value[2] = operand1[11:8 ];
            hex_value[1] = operand1[7 :4 ];
            hex_value[0] = operand1[3 :0 ];   
         end
         else begin //display input A
            hex_value[5] = 4'd10;
            hex_value[3] = operand0[15:12];
            hex_value[2] = operand0[11:8 ];
            hex_value[1] = operand0[7 :4 ];
            hex_value[0] = operand0[3 :0 ];   
         end
      end
   end
   
   
   initial begin
      digitA = 2'b0;
      digitB = 2'b0;
   end
      
   always @(posedge sys_clk) begin
      if (displaySelect == 2'b00) begin //display current state of input A
         case(digitA)
            0: begin
               hexOff = 4'b0111;
               operand0[15:12] = digitIn;
            end
            1: begin
               hexOff = 4'b0011;
               operand0[11:8] = digitIn;
            end
            2: begin
               hexOff = 4'b0001;
               operand0[7:4] = digitIn;
            end
            3: begin
               hexOff = 4'b0000;
               operand0[3:0] = digitIn;
            end
            default begin
               hexOff = 4'b0000;
               operand0 = operand0;
            end
         endcase
			digitDisplayed = digitA;
         operand1 = operand1;
      end
      else if (displaySelect == 2'b01) begin //display current state of input B
         case(digitB)
            0: begin
               hexOff = 4'b0111;
               operand1[15:12] = digitIn;
            end
            1: begin
               hexOff = 4'b0011;
               operand1[11:8] = digitIn;
            end
            2: begin
               hexOff = 4'b0001;
               operand1[7:4] = digitIn;
            end
            3: begin
               hexOff = 4'b0000;
               operand1[3:0] = digitIn;
            end
            default begin
               hexOff = 4'b0000;
               operand1 = operand1;
            end
         endcase
         digitDisplayed = digitB;
			
			operand0 = operand0;
      end
      else begin 
         hexOff = 4'b0000;
         operand0 = operand0;
         operand1 = operand1;
      end      
   end
   
   
   always @(posedge sys_clk) begin 
      rst <= KEY[3];
      backspace <= KEY[1];
      enter <= KEY[0];
      
      
      if(~KEY[3] && rst) begin //woah!      
         digitA <= 3'b0; //////ERROR TO FIX, figure out how to reset the digits
         digitB <= 3'b0;
      end
      else if (~KEY[1] && backspace) begin
         case (displaySelect)
         2'b00:begin
            digitB <= digitB;
            if (digitA > 3'd0)
               digitA <= digitA - 3'b1;
            end
         2'b01:begin
            digitA <= digitA;
            if (digitB > 3'd0)
               digitB <= digitB - 3'b1;   
            end
         default: begin
            digitA <= digitA;
            digitB <= digitB;
         end
         endcase 
      end
      else if(~KEY[0] && enter) begin
         case (displaySelect)
            2'b00:begin
               digitB <= digitB;
               if (digitA < 3'd4)
                  digitA <= digitA + 3'b1;
               end
            2'b01:begin
               digitA <= digitA;
               if (digitB < 3'd4)
                  digitB <= digitB + 3'b1;   
               end
            default: begin
               digitA <= digitA;
               digitB <= digitB;
            end
         endcase
      end
      else begin
         digitA <= digitA;
         digitB <= digitB;
      end
   end
   
   
endmodule



/*
module alu_dataflow_de1soc_testbench();

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


   alu_dataflow_de1soc_test dut (   .CLOCK_50(clk), 
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

   KEY[3] = 1;   @(posedge clk);@(posedge clk);@(posedge clk);
   KEY[3] = 0;   @(posedge clk);@(posedge clk);@(posedge clk);
   KEY[3] = 1;                                 @(posedge clk);
                                             @(posedge clk);   @(posedge clk);
   //SW[8:0] = 9'b000000001;                     @(posedge clk);
                                             @(posedge clk);
                                             @(posedge clk);
   @(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);
   
   
   $stop;
    
   end
   
endmodule
*/






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