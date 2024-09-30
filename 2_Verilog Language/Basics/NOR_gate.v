//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 9:47:52
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
(
	input		a	,		
	input		b	,		
	output		out		
);                                                                                                      

	assign out = ~(a | b);
       
endmodule

// Anothor solution provied by HDL_bits.