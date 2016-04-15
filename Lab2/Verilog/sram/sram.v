module sram(clk, rst, oe, we, address, data, read_out);
	input clk, rst;
	input oe, we;
	input [10:0] address;
	input [15:0] data;
	output reg [15:0] read_out;
	reg [15:0] memory [0:2047];
	
	always @(posedge clk) begin
		// Read/~Write control line is strobed low then high
		// to perform the write operation?
		// Also, Low true output enable?
		if (~we & oe) begin
			memory[address] = data;
		end else begin
			if (we & ~oe) begin
				read_out = memory[address];
			end else begin
				read_out = 16'bz;
			end
		end
	end
	
	// For read only, else you want impedence.
	//assign out = (we & ~oe) ? register : 16'bz; // asynchronous reading
	
	//reg q;
	
	/*genvar i
	generate for(i=0; i<2048; i=i+1) begin: REGISTER
    register_16bit regi(.clk(clk), .we(), .rst(rst), .D(), .Q());
	end
	endgenerate
	
	decoder_11bit de(.code(), .selection());*/
endmodule 
