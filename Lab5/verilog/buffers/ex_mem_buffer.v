module ex_mem_buffer( 
						clk,
						rst,
						write_back,
						memory,
						alu_data,
						data_to_mem,
						extended,
						instructions
					);
					
	input wire [2:0]  write_back, memory; //change name
	input wire [31:0] alu_data, data_to_mem;
	input wire [31:0] extended;
	input wire [15:0] instructions;
	
	output reg [2:0]  write_back_out, memory_out; //change name
	output reg [31:0] alu_data_out, data_to_mem_out;
	output reg [31:0] extended_out;
	output reg [15:0] instructions_out;
	
	initial begin
		write_back_out = 0; 
		memory_out = 0; //change name
		alu_data = 0;
		data_to_mem = 0;
		extended_out = 0;
		instructions_out = 0;
	end
	
	always @(posedge clk) begin
		if (!rst) begin;
			write_back_out = 0; 
			memory_out = 0; //change name
			alu_data_out = 0;
			data_to_mem_out = 0;
			extended_out = 0;
			instructions_out = 0;
		end else begin
			write_back_out = write_back; 
			memory_out = memory; //change name
			alu_data_out = alu_data;
			data_to_mem_out = data_to_mem;
			extended_out = extended;
			instructions_out = instructions;
		end
		
	end
	
endmodule
