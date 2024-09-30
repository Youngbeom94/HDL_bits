//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:21:58
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.

module top_module
( 
    input	wire [15:0]	in,
    output	wire [7:0]	out_hi,
    output	wire [7:0]	out_lo    
);

assign out_hi = in[15:8];
assign out_lo = in[7:0];
	
endmodule

// Anothor solution provied by HDL_bits.