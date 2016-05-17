module control_signals_tester (
                  .op_code(op_code),
                  .alu_function(alu_function),
                  .reg_dst(reg_dst),
                  .jump(jump),
                  .jump_reg(jump_reg),
                  .branch(branch), 
                  .cs(cs),
                  .oe(oe),
                  .rw(rw),
                  .mem_to_reg(mem_to_reg),
                  .alu_src(alu_src),
                  .reg_write(reg_write),
                  .alu_op(alu_op)
                  );
                  
   output reg [5:0] op_code, alu_function;
   input wire [5:0] alu_op;
   input wire reg_dst, jump, jump_reg,
            branch, cs, oe, rw,
            mem_to_reg, alu_src, reg_write;
            
    // print out test results
   initial begin
        $display("\topc\taluop\taluf\trgdst\tjmp\tjmprg\tbranch\tcs\toe\trw\tm2r\tsrc\trgw\ttime");
        $monitor("\t%d \t%d \t%d \t%b\t%b \t%b\t%b \t%b \t%b \t%b \t%b \t%b \t%b \t%g",
                  op_code, alu_op, alu_function, reg_dst, jump, jump_reg, branch, cs, oe, rw, 
                  mem_to_reg, alu_src, reg_write, $time);
   end
   
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
   
   parameter NOP = 6'd0;
   parameter SLLV = 6'd4;
   parameter JR = 6'd8;
   parameter ADD = 6'd32;
   parameter SUB = 6'd34;
   parameter AND = 6'd36;
   parameter OR = 6'd37;
   parameter XOR = 6'd38;
   parameter SLT = 6'd42;
   
   // create stimulus signals
   parameter delay = 10;
   integer i;
   integer j;
   initial begin
      #delay;
      op_code = REG; alu_function = JR; #delay;
      #delay;
      #delay;
      #delay;
      #delay;
      alu_function = SLLV; #delay;
      #delay;
      op_code = JUMP; #delay;
      #delay;
      op_code = IBGT; #delay;
      #delay;
      op_code = IADD; #delay;
      #delay;
      op_code = ISLT; #delay;
      #delay;
      op_code = IAND; #delay;
      #delay;
      op_code = IOR; #delay;
      #delay;
      op_code = IXOR; #delay;
      #delay;
      op_code = ISLL; #delay;
      #delay;
      op_code = ILW; #delay;
      #delay;
      op_code = ISW; #delay;
      #delay;
      
      

   end

endmodule
