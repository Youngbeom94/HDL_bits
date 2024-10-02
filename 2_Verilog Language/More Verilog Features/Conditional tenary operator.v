//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-10-02 오후 6:41:49
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem : Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with standard comparison operators (a < b). Use the conditional operator to make two-way min circuits, then compose a few of them to create a 4-way min circuit. You'll probably want some wire vectors for the intermediate results.

module top_module 
(
    input	[7:0] a, b, c, d,
    output	[7:0] min
);

wire [7:0] imm1;
wire [7:0] imm2;
wire [7:0] res;

assign	imm1 = a <= b ? a : b;
assign	imm2 = c <= d ? c : d;
assign	res	 = imm1 <= imm2 ? imm1 : imm2;

assign min = res;	   

endmodule