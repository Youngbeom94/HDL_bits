//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:27:54
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
( 
    input	[2:0] a,
    input	[2:0] b,
    
    output	[2:0] out_or_bitwise,
    output	out_or_logical,
    output	[5:0] out_not
);

assign out_or_bitwise = a | b;
assign out_or_logical = a || b;
assign out_not = ~{b, a};


endmodule
// Anothor solution provied by HDL_bits.