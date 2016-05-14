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
						reg_write
					   );
					   
	input wire [5:0] op_code, alu_function;
	output reg reg_dst, jump, jump_reg,
			   branch, cs, oe, rw,
			   mem_to_reg, alu_src, reg_write;
	output reg [5:0] alu_op;
	
	parameter REG = 6'b0;
	parameter JUMP = 6'b000010;
	parameter IBGT = 6'b000111;
	parameter IADD = 6'b001000;
	parameter ISLT = 6'b001010;
	parameter IAND = 6'b001100;
	parameter IOR = 6'b001101;
	parameter IXOR = 6'b001110;
	parameter ILW = 6'b100011;
	parameter ISW = 6'b101011;
	
	parameter NOP = 6'b0;
	parameter SLLV = 6'b000100;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter AND = 6'b100100;
	parameter OR = 6'b100101;
	parameter XOR = 6'b100110;
	parameter SLT = 6'b101010;
	
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
		
			REG: begin
				reg_dst = 1;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = alu_function;
				alu_src = 0;
				reg_write = 0; // I forget, is this 1?
			end
			
			JUMP: begin
				jump = 1;
				jump_reg = 0;
				branch = 0;
				cs = 1;
				reg_write = 0;
			end
			
			IBGT: begin
				jump = 1;
				branch = 1;
				cs = 1;
				alu_op = SUB;
				alu_src = 0;
				reg_write = 0;
			end
			
			IADD: begin
				reg_dst = 0;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = ADD;
				alu_src = 1;
				reg_write = 1;
			end
			
			ISLT: begin
				reg_dst = 0;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = SLT;
				alu_src = 1;
				reg_write = 1;
				
			end
			
			IAND: begin
				reg_dst = 0;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = AND;
				alu_src = 1;
				reg_write = 1;
				
			end
			
			IOR: begin
				reg_dst = 0;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = OR;
				alu_src = 1;
				reg_write = 1;
				
			end
			
			IXOR: begin
				reg_dst = 0;
				jump = 0;
				cs = 1;
				mem_to_reg = 0;
				alu_op = XOR;
				alu_src = 1;
				reg_write = 1;
				
			end
			
			ILW: begin
				reg_dst = 0;
				jump = 0;
				cs = 0;
				oe = 1;
				rw = 0;
				mem_to_reg = 1;
				alu_op = ADD;
				alu_src = 1;
				reg_write = 1;
				
			end
			
			ISW: begin
				jump = 0;
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
