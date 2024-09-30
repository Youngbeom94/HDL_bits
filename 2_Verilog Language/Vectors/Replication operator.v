//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:45:22
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module 
(
    input	[7:0] in,
    output	[31:0] out 
);

assign out = {{24{in[7]}}, in};

endmodule

// Anothor solution provied by HDL_bits.