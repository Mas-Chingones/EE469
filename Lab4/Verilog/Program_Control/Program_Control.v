/*
Author David Dolengewicz
Program_Control is an integrated instruction memory and program counter



*/

module Program_Control(       clk, 
                        jumpRegAddr,       //input from register Data1
                        instruction,       //main output
                        writeInstruction,   // for loading instruction data
                        writeAddress,       // for loading instruction data
                        writeEnable,      // for loading instruction data
                        jump,            //
                        jumpReg,         //
                        branch,            //
                        negative,         //
                        reset,            // active low
                        suspendEnable  );   // active high
// I/O
input wire [31:0] jumpRegAddr, writeInstruction; //data inputs
input wire [6:0] writeAddress;
input wire clk, writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable; //1-bit flags
output wire [31:0] instruction; // instruction output
// Internal
reg [6:0] counter; //Program counter value
wire [31:0] signExtended;

//connect instruction memory module
instruction_memory inst_mem(
         .clk(clk), 
         .we(writeEnable && suspendEnable), 
         .rst_all(reset),        //low reset
         .read_addr(counter),
         .read_data(instruction),    
         .write_addr(writeAddress), 
         .write_data(writeInstruction)

       );
                        
sign_extender extender( .in16(instruction[15:0]), .out32(signExtended) );
                        
always @(posedge clk or negedge reset) begin
   
   if(!reset)
      counter <= 7'b0;
   else if(suspendEnable) begin
      counter <= counter;  //do nothing
   end 
   else begin
      // Branching Opcodes
      if(jump) begin  //if jumping
         // Branch Greater Than (bgt)
         if(branch & ~negative) begin
            counter <= counter + instruction[6:0] + 1'b1;
         end
         
         //  NOT NEEDED
         /*if(branch & negative) begin //Branch Less Than
            counter = counter - instruction[6:0];
         end */
         
         // Jump Register (jr)
         else if(jumpReg) begin
            counter <= jumpRegAddr[6:0];
         end
         
         // Jump (j)
         else begin 
            counter <= instruction[6:0]; 
         end
      end
      
      // No Branching
      else begin
         counter <= counter + 7'b1;  // Increment Program Counter
      end
         
   end
   
end   
                        
endmodule



                        

module sign_extender( in16, out32 );

input wire [15:0] in16;
output wire [31:0] out32;

assign out32 = {in16[15], 15'b0, in16[14:0] }; 



endmodule                        
                        
                        
