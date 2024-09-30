//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:23:51
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
( 
    input	[31:0] in,
    output	[31:0] out 
);//

assign out[31:24] = in[7:0];
assign out[23:16] = in[15:8];
assign out[15:8] = in[23:16];
assign out[7:0] = in[31:24];

endmodule

// Anothor solution provied by HDL_bits.