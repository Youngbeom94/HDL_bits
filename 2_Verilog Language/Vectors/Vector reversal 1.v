//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:39:47
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
( 
    input	[7:0] in,
    output	[7:0] out
);

//assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

genvar cnt_i;
generate
    for (cnt_i = 0; cnt_i < 8; cnt_i = cnt_i + 1)
    begin : bit_reverse
        assign out[cnt_i] = in[8-1-cnt_i];
    end
endgenerate

endmodule

// Anothor solution provied by HDL_bits.