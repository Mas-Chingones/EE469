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
        $display("\top_code alu_op \talu_function \treg_dst jump \tjump_reg \tbranch \t\tcs \toe \trw \tmem_to_reg \alu_src \treg_write \ttime");
        $monitor("\t%h \t%h \t%h \t\t%b \t%b \t%b  \t\t%b \t\t%b \t%b \t%b \t%b \t\t%b \t%b \t%g",
                  op_code, alu_op, alu_function, reg_dst, jump, jump_reg, branch, cs, oe, rw, 
                  mem_to_reg, alu_src, reg_write, $time);
	end
	
	parameter REG = 6'b0;
	parameter JUMP = 6'b000010;
	parameter IBGT = 6'b000111;
	parameter IADD = 6'b001000;
	parameter ISLT = 6'b001010;
	parameter IAND = 6'b001100;
	parameter IOR = 6'b001101;
	parameter IXOR = 6'b001110;
	parameter ISLL = 6'b001111;
	parameter ILW = 6'b100011;
	parameter ISW = 6'b101011;
	
	parameter NOP = 6'b0;
	parameter SLLV = 6'b000100;
	parameter JR = 6'b001000;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter AND = 6'b100100;
	parameter OR = 6'b100101;
	parameter XOR = 6'b100110;
	parameter SLT = 6'b101010;
   
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
