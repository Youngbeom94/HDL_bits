//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-13 오후 10:04:58
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


// Problem
/*
Build a 4-bit binary counter that counts from 0 through 15, inclusive, with a period of 16. The reset input is synchronous, and should reset the counter to 0.
*/
// Solution
module top_module
(
	input	        clk     ,
	input	        reset   ,   // Synchronous active-high reset
		
	output	[3:0]   q
);                                                                                                      
reg [3:0]   ctr;

    always@(posedge clk)
    begin
        if(reset)   ctr <= 4'b0 ;
        else        ctr <= (ctr == 9) ? (0) : (ctr + 1'b1);
    end
       
assign q = ctr;

endmodule

// Anothor solution provied by HDL_bits.
module top_module
(
	input	        clk     ,
	input	        reset   ,   // Synchronous active-high reset
		
	output	[3:0]   q
);               
	
	always @(posedge clk)
		if (reset || q == 9)	// Count to 10 requires rolling over 9->0 instead of the more natural 15->0
			q <= 0;
		else
			q <= q+1;
	
endmodule