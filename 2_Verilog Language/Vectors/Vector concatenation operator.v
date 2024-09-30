//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:36:51
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module 
(
    input	[4:0] a, b, c, d, e, f,
    output	[7:0] w, x, y, z 
);


assign {w, x, y, z} = {a, b, c, d, e, f, 2'b11};


endmodule

// Anothor solution provied by HDL_bits.