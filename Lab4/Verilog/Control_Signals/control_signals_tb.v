`include "control_signals.v"
`include "control_signals_tester.v"

module control_signals_tb();
	wire [5:0] op_code, alu_function, alu_op;
	wire reg_dst, jump, jump_reg,
		 branch, cs, oe, rw,
		 mem_to_reg, alu_src, reg_write;
	
	control_signals signals (
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
					   
	control_signals_tester tester (
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
					   
	initial begin
		$dumpfile("control_signals.vcd");
		$dumpvars(1, signals);
	end
	
endmodule

