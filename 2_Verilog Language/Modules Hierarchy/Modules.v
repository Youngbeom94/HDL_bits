//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:59:51
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================

module top_module
( 
	input	a, 
	input	b, 
	output	out 
);

mod_a ins(.in1(a), .in2(b), .out(out));
//mod_a inst2 ( a, b, out );

endmodule
