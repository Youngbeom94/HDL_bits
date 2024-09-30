//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:53:40
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================

// Problem
// Solution
module top_module 
(
    input a, b, c, d, e,
    output [24:0] out 
);

// The output is XNOR of two vectors created by 
// concatenating and replicating the five inputs.

// assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {{5{a, b, c, d, e}}};
assign out = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ~^ {{5{a, b, c, d, e}}};

endmodule
// Anothor solution provied by HDL_bits.