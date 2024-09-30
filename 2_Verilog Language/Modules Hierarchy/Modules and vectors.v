//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오후 12:38:35
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================

module top_module 
( 
    input	clk, 
    input	[7:0] d, 
    input	[1:0] sel, 
    
    output	[7:0] q 
);

wire [7:0] imm1;
wire [7:0] imm2;
wire [7:0] imm3;

my_dff8 ins1(.clk(clk), .d(d), .q(imm1));
my_dff8 ins2(.clk(clk), .d(imm1), .q(imm2));
my_dff8 ins3(.clk(clk), .d(imm2), .q(imm3));

assign q =	sel == 2'd0 ? d		:
			sel == 2'd1 ? imm1	:
			sel == 2'd2 ? imm2	:
			sel == 2'd3 ? imm3	:
			q;

//	always @(*) // Combinational always block
//		case(sel)
//			2'h0: q = d;
//			2'h1: q = imm1;
//			2'h2: q = imm2;
//			2'h3: q = imm3;
//		endcase
					
endmodule