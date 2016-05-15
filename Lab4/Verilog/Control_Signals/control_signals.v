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
   parameter IBGT = 6'd7;
   parameter IADD = 6'd8;
   parameter ISLT = 6'd10;
   parameter IAND = 6'd12;
   parameter IOR = 6'd13;
   parameter IXOR = 6'd14;
   parameter ISLL = 6'd15;
   parameter ILW = 6'd35;
   parameter ISW = 6'd43;
   
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
      cs = 0;
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
            if(alu_function == NOP || alu_function == JR)
               reg_write = 0;
            else
               reg_write = 1;
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
         IBGT: begin
            reg_dst = reg_dst;
            jump = 1;
            jump_reg = jump_reg;
            branch = 1;
            cs = 1;
            oe = oe;
            rw = rw;
            mem_to_reg = mem_to_reg;
            alu_op = SUB;
            alu_src = 0;
            reg_write = 0;            
         end
         
         IADD: begin
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
         
         ISLT: begin
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
         
         IAND: begin
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
         
         IOR: begin
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
         
         IXOR: begin
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
         
         ISLL: begin
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
         
         ILW: begin
            reg_dst = 0;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 0;
            oe = 1;
            rw = 0;
            mem_to_reg = 1;
            alu_op = ADD;
            alu_src = 1;
            reg_write = 1;
         end
         
         ISW: begin
            reg_dst = reg_dst;
            jump = 0;
            jump_reg = 0;
            branch = 0;
            cs = 0;
            oe = 0;
            rw = 1;
            mem_to_reg = 0;
            alu_op = ADD;
            alu_src = 1;
            reg_write = 0;      
         end
      
      endcase
   end

endmodule
