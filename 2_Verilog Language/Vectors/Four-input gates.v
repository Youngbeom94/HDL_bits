//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:35:00
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
( 
    input	[3:0] in,
    output	out_and,
    output	out_or,
    output	out_xor
);

assign out_and = in[0] & in[1] & in[2] & in[3];
assign out_or  = in[0] | in[1] | in[2] | in[3];
assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];

endmodule

// Anothor solution provied by HDL_bits.