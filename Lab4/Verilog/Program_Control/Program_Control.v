/*
Author David Dolengewicz
Program_Control is an integrated instruction memory and program counter



*/

// Module dependencies
// instruction_memory.v

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
                        suspendEnable,  
                        immediate_value);   // active high
// I/O
input wire [31:0] jumpRegAddr, writeInstruction; //data inputs
input wire [6:0] writeAddress;
input wire clk, writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable; //1-bit flags
output wire [31:0] instruction, immediate_value; // instruction output, immediate value to alu
// Internal
reg [6:0] counter, nextcount; //Program counter value
reg susHold, wasSE;

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
                        
sign_extender extender( .in16(instruction[15:0]), .out32(immediate_value) );
                        
											
						
always @(*) begin
   
   if(suspendEnable) begin
      nextcount <= counter;  //do nothing
	  wasSE <= 1'b1;
   end 
   else begin
      // Branching Opcodes
      if(jump) begin  //if jumping
         // Branch Greater Than (bgt)
         if(branch) begin
            if(~negative)
               nextcount <= counter + instruction[6:0] + 6'b1;
            else
               nextcount <= counter + 6'b1;
         end
             
         // Jump Register (jr)
         else if(jumpReg) begin
            nextcount <= jumpRegAddr[6:0];
         end
         
         // Jump (j)
         else begin 
            nextcount <= instruction[6:0]; 
         end
      end
      
      // No Branching
      else begin
         nextcount <= counter + 7'b1;  // Increment Program Counter
      end
       wasSE <= 1'b0;  
   end
   
end  

always @ (posedge clk or negedge reset) begin

   // Reset PC Control
	if(!reset) begin
        counter <= 7'b0;
	end
   // Suspend PC Control
	else if(~suspendEnable & wasSE)
		counter <= counter;
	// Program Ended: Stop PC
   else if(counter == 7'd127 || instruction == 32'b0)
      counter <= counter;
   // PC Active
   else begin
	   counter <= nextcount;
    end
	

end

 
                        
endmodule



                        

module sign_extender( in16, out32 );

input wire [15:0] in16;
output wire [31:0] out32;

assign out32 = {in16[15], 15'b0, in16[14:0] }; 



endmodule                        
                        
                        
