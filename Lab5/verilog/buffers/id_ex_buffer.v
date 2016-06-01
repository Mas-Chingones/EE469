module id_ex_buffer( 
						clk,
						rst,
						write_back,
						memory,
						execute,
						r_data_0,
						r_data_1,
						extended,
						instructions
					);
					
	input wire [2:0] write_back, memory; //change name
	input wire [6:0] execute; // change name
	input wire [31:0] r_data_0, r_data_1;
	input wire [31:0] extended;
	input wire [15:0] instructions;
	
	output reg [2:0] write_back_out, memory_out; //change name
	output reg [6:0] execute_out; // change name
	output reg [31:0] r_data_0_out, r_data_1_out;
	output reg [31:0] extended_out;
	output reg [15:0] instructions_out;
	
	initial begin
		write_back_out = 0; 
		memory_out = 0; //change name
		execute_out = 0; // change name
		r_data_0_out = 0;
		r_data_1_out = 0;
		extended_out = 0;
		instructions_out = 0;
	end
	
	always @(posedge clk) begin
		if (!rst) begin;
			write_back_out = 0; 
			memory_out = 0; //change name
			execute_out = 0; // change name
			r_data_0_out = 0;
			r_data_1_out = 0;
			extended_out = 0;
			instructions_out = 0;
		end else begin
			write_back_out = write_back; 
			memory_out = memory; //change name
			execute_out = execute; // change name
			r_data_0_out = r_data_0;
			r_data_1_out = r_data_1;
			extended_out = extended;
			instructions_out = instructions;
		end
		
	end
	
endmodule
