//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오후 1:13:10
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module top_module
(
    input	[31:0] a,
    input	[31:0] b,
    
    output	[31:0] sum
);

wire [15:0] sumlo;
wire [15:0] sumhi1;
wire [15:0] sumhi2;
wire [15:0] sumhires;
wire		carry;

add16 ins1 (.a(a[15:0]),  .b(b[15:0]),  .cin(1'b0), .sum(sumlo),  .cout(carry));
add16 ins2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sumhi1), .cout());
add16 ins3 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sumhi2), .cout());

assign sumhires = carry == 0 ? sumhi1 : sumhi2 ;
assign sum = {sumhires, sumlo};

endmodule
                                     

