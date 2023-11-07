//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-07 오후 11:44:56
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


// Problem : Create a 100-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b.
// My solution
module top_module
(
	input	[99:0]	a	,
	input	[99:0]	b	,
	input			sel	,
	output	[99:0]	out	
);
	
	assign	out = ~sel ? a : b;

endmodule


// Consider Point provied by HDL_bits. 
module top_module
(
	input	[99:0]	a	,
	input	[99:0]	b	,
	input			sel	,
	output	[99:0]	out	
);

	assign out = sel ? b : a;
	// The following doesn't work. Why?
	// assign out = (sel & b) | (~sel & a);
	
endmodule