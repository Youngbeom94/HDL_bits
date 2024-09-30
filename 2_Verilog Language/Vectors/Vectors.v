//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 10:13:57
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module 
( 
    input	wire [2:0] vec,
    
    output	wire [2:0] outv,
    output	wire o2,
    output	wire o1,
    output	wire o0  
); // Module body starts after module declaration


assign outv = vec;
assign o0 = vec[0];
assign o1 = vec[1];
assign o2 = vec[2];

endmodule
// Anothor solution provied by HDL_bits.