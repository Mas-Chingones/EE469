/*
Author David Dolengewicz
Program_Control is an integrated instruction memory and program counter
*/

/* Module dependencies
`include "../shared_modules/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../shared_modules/synch_register_32bit/synch_register_32bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "../Instruction_Memory/decoder_7bit/decoder_7bit.v"
`include "../Instruction_Memory/instruction_memory.v"
*/ 

module Program_Control( 
         clk,
         stall,
         flush,
         instruction,       //main output
         writeInstruction,   // for loading instruction data
         writeAddress,       // for loading instruction data
         writeEnable,      // for loading instruction data
         jump_address,
         jump,            //
         jumpReg,         //
         branch,            //
         fr_read0,         //
         fr_read1,
         fwd_data0,
         fwd_data1,
         jmp0_mux,
         jmp1_mux,
         reset,            // active low
         suspendEnable
      );   // active high
// I/O
input wire [31:0] writeInstruction, //data inputs
                  fr_read0, fr_read1,  // used for calc branch and jumpreg
                  fwd_data0, fwd_data1;  // forwarded data fr_data
input wire [25:0] jump_address;                  
input wire [6:0] writeAddress;
input wire clk, stall, flush, writeEnable, jump, jumpReg, branch, reset, suspendEnable, //1-bit flags
           jmp0_mux, jmp1_mux;  // jump data muxes
output wire [31:0] instruction; // instruction output
// Internal
wire [31:0] instruction_proxy, jump_data0, jump_data1;
reg [6:0] counter, nextcount; //Program counter value
reg susHold, wasSE;


// define where data used for calculating branch or jr comes from
assign jump_data0 = jmp0_mux ? fwd_data0 : fr_read0;
assign jump_data1 = jmp1_mux ? fwd_data1 : fr_read1;

//connect instruction memory module
assign instruction = (
                        (
                           suspendEnable || 
                           flush || 
                           (branch && (jump_data0 > jump_data1))
                        )  ? 32'b0 : instruction_proxy
                     );
instruction_memory inst_mem(
         .clk(clk),
         .we(writeEnable && suspendEnable),
         .rst_all(reset),
         .read_addr(counter),
         .read_data(instruction_proxy),
         .write_addr(writeAddress),
         .write_data(writeInstruction)
       );
                                              
											
						
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
            if(jump_data0 > jump_data1)
               nextcount <= counter + jump_address[6:0];
            else
               nextcount <= counter + 6'b1;
         end
             
         // Jump Register (jr)
         else if(jumpReg) begin
            nextcount <= jump_data0[6:0];
         end
         
         // Jump (j)
         else begin 
            nextcount <= jump_address[6:0]; 
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
      else if((suspendEnable && wasSE) || stall)
         counter <= counter;
      // Program Ended: Stop PC
      else if((counter == 7'd127 || instruction == 32'b0) && !jump)
         counter <= counter;
      // PC Active
      else begin
         counter <= nextcount;
      end
   end               
endmodule                   
                        
                        
