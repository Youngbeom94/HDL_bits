//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 11:06:47
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================

// module mod_a ( output, output, input, input, input, input );
                                                            
module top_module 
( 
	input	clk, 
	input	d, 
	output	q 
);

wire oins1;
wire oins2;
wire oins3;

my_dff ins1 (.clk(clk), .d(d), .q(oins1));
my_dff ins2 (.clk(clk), .d(oins1), .q(oins2));
my_dff ins3 (.clk(clk), .d(oins2), .q(oins3));

assign q = oins3;

endmodule


