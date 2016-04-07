// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 15.1.1 Build 189 12/02/2015 SJ Standard Edition"
// CREATED		"Mon Apr 04 14:35:22 2016"

module SupCounter(
	Clock,
	Reset,
	Q3,
	Q2,
	Q1,
	Q0
);


input wire	Clock;
input wire	Reset;
output wire	Q3;
output wire	Q2;
output wire	Q1;
output wire	Q0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_7;
reg	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
reg	SYNTHESIZED_WIRE_10;
reg	DFF_inst3;
wire	SYNTHESIZED_WIRE_6;

assign	Q3 = DFF_inst3;
assign	Q2 = SYNTHESIZED_WIRE_10;
assign	Q1 = SYNTHESIZED_WIRE_8;
assign	Q0 = SYNTHESIZED_WIRE_7;




always@(posedge Clock or negedge Reset)
begin
if (!Reset)
	begin
	SYNTHESIZED_WIRE_7 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge Clock or negedge Reset)
begin
if (!Reset)
	begin
	SYNTHESIZED_WIRE_8 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge Clock or negedge Reset)
begin
if (!Reset)
	begin
	SYNTHESIZED_WIRE_10 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_2;
	end
end


always@(posedge Clock or negedge Reset)
begin
if (!Reset)
	begin
	DFF_inst3 <= 0;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_8 ^ SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_10 ^ SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_3 = DFF_inst3 ^ SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_7;


endmodule
