module mem_wb_buffer( 
						clk,
						rst,
						write_back,
						memory_data,
						alu_data,
						extended,
						instructions
					);
					
	input wire [2:0]  write_back; //change name
	input wire [31:0] memory_data, alu_data;
	input wire [31:0] extended;
	input wire [15:0] instructions;
	
	output reg [2:0]  write_back_out;
	output reg [31:0] memory_data_out, alu_data_out;
	output reg [31:0] extended_out;
	output reg [15:0] instructions_out;
	
	initial begin
		write_back_out = 0; 
		memory_data_out = 0; //change name
		alu_data_out = 0;
		extended_out = 0;
		instructions_out = 0;
	end
	
	always @(posedge clk) begin
		if (!rst) begin;
			write_back_out = 0; 
			memory_data_out = 0; //change name
			alu_data_out = 0;
			extended_out = 0;
			instructions_out = 0;
		end else begin
			write_back_out = write_back; 
			memory_data_out = memory_data; //change name
			alu_data_out = alu_data;
			extended_out = extended;
			instructions_out = instructions;
		end
		
	end
	
endmodule
