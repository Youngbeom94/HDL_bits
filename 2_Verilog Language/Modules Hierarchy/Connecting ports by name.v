//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 11:05:19
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================

// module mod_a ( output, output, input, input, input, input );
                                                            
module top_module 
( 
    input	a, 
    input	b, 
    input	c,
    input	d,
    
    output	out1,
    output	out2
);

mod_a ins (.in1(a), .in2(b), .in3(c), .in4(d), .out1(out1), .out2(out2));

endmodule

