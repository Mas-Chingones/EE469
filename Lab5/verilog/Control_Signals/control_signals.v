module control_signals(
                  op_code,
                  alu_function,
                  reg_dst,
                  jump,
                  jump_reg,
                  branch, 
                  cs, oe, rw, // goes into data memory
                  mem_to_reg,
                  alu_src,
                  reg_write,
                  alu_op
               );
                  
   input wire [5:0] op_code, alu_function;
   output reg reg_dst, jump, jump_reg,
            branch, cs, oe, rw,
            mem_to_reg, alu_src, reg_write;
   output reg [5:0] alu_op;
   
   // Instruction OP Codes
   parameter REG = 6'd0;
   parameter JUMP = 6'd2;
   parameter BGTI = 6'd7;
   parameter ADDI = 6'd8;
   parameter SLTI = 6'd10;
   parameter ANDI = 6'd12;
   parameter ORI = 6'd13;
   parameter XORI = 6'd14;
   parameter SLLI = 6'd15;
   parameter LW = 6'd35;
   parameter SW = 6'd43;
   
   // ALU Functions
   parameter NOP = 6'd0;
   parameter SLLV = 6'd4;
   parameter JR = 6'd8;
   parameter ADD = 6'd32;
   parameter SUB = 6'd34;
   parameter AND = 6'd36;
   parameter OR = 6'd37;
   parameter XOR = 6'd38;
   parameter SLT = 6'd42;
   
   initial begin;
      reg_dst = 0;
      jump = 0;
      jump_reg = 0;
      branch = 0;
      cs = 1;
      oe = 0;
      rw = 0;
      mem_to_reg = 0;
      alu_op = 6'b0;
      alu_src = 0;
      reg_write = 0;
   end
   
   always @(*) begin
      case(op_code)
         // Register Instruction Logic
         REG: begin
            if (alu_function == JR ) begin
               jump = 1;
               jump_reg = 1;
               alu_op = NOP;
            end else begin
               jump = 0;
               jump_reg = 0;
               alu_op = alu_function;   
            end
            
            reg_dst = 1;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;      
            alu_src = 0;
            if(
               alu_function == SLLV ||
               alu_function == ADD  ||
               alu_function == SUB  || 
               alu_function == AND  ||
               alu_function == OR   || 
               alu_function == XOR  ||
               alu_function == SLT
              )
               reg_write = 1;
            else
               reg_write = 0;
         end
         
         
         // Jump Instruction Logic
         JUMP: begin
            reg_dst = reg_dst;
            jump = 1;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = mem_to_reg;
            alu_op = alu_op;
            alu_src = alu_src;
            reg_write = 0;         
         end
         
         
         // Immediate Instructions Logic
         BGTI: begin
            reg_dst = 1;
            jump = 1;
            jump_reg = jump_reg;
            branch = 1;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = mem_to_reg;
            alu_op = NOP;  // alu is not used for bgt w/ pipelined cpu
            alu_src = 0;
            reg_write = 0;            
         end
         
         ADDI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = ADD;
            alu_src = 1;
            reg_write = 1;   
         end
         
         SLTI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = SLT;
            alu_src = 1;
            reg_write = 1;
         end
         
         ANDI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = AND;
            alu_src = 1;
            reg_write = 1;   
         end
         
         ORI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = OR;
            alu_src = 1;
            reg_write = 1;   
         end
         
         XORI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = XOR;
            alu_src = 1;
            reg_write = 1;   
            
         end
         
         SLLI: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = 0;
            alu_op = SLLV;
            alu_src = 1;
            reg_write = 1;   
         end
         
         LW: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 0;
            oe = 0;
            rw = 1;
            mem_to_reg = 1;
            alu_op = ADD;
            alu_src = 1;
            reg_write = 1;
         end
         
         SW: begin
            reg_dst = reg_dst;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 0;
            oe = 1;
            rw = 0;
            mem_to_reg = 0;
            alu_op = ADD;
            alu_src = 1;
            reg_write = 0;      
         end
         
         default: begin  // Do Nothing
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 1;
            oe = 0;
            rw = 0;
            mem_to_reg = 0;
            alu_op = 6'b0;
            alu_src = 0;
            reg_write = 0;   
         end
      
      endcase
   end

endmodule
