//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 9:47:52
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module
(
    input	a,
    input	b,
    input	c,
    input	d,
    output	out,
    output	out_n   
); 

wire imm_in1;
wire imm_in2;

assign imm_in1 = a & b;
assign imm_in2 = c & d;

assign out = imm_in1 | imm_in2	;
assign out_n = ~(imm_in1 | imm_in2); // Maybe Synthesis Optimization

endmodule

// Anothor solution provied by HDL_bits.