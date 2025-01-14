//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오후 1:24:55
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================

//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module top_module
(
    input	[31:0]	a,
    input	[31:0]	b,
    input			sub,
    
    output	[31:0]	sum
);

wire [31:0] in2;
wire [15:0] sumlo;
wire [15:0] sumhi;
wire		carry;

assign in2 = b ^ {32{sub}};

add16 ins1 (.a(a[15:0]), .b(in2[15:0]), .cin(sub), .sum(sumlo), .cout(carry));
add16 ins2 (.a(a[31:16]), .b(in2[31:16]), .cin(carry), .sum(sumhi), .cout());

assign sum = {sumhi, sumlo};

endmodule