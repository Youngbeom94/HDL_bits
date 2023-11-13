//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-07 오후 11:44:56
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


//Problem : Create a one-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b.
// My solution
module top_module
(
	input	a	,
	input	b	,
	input	sel	,
	output	out	
);
	
	assign	out = ~sel ? a : b;
	
endmodule



//anothor solution provied by HDL_bits
module top_module 
(
	input	a	,
	input	b	,
	input	sel	,
	output	out
);

	assign out = (sel & b) | (~sel & a);	// Mux expressed as AND and OR
	
	// Ternary operator is easier to read, especially if vectors are used:
	// assign out = sel ? b : a;
	
endmodule
