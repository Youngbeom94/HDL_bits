//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-13 오후 9:50:44
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
        else        ctr <= ctr + 1'b1;
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
		if (reset)
			q <= 0;
		else
			q <= q+1;		// Because q is 4 bits, it rolls over from 15 -> 0.
		// If you want a counter that counts a range different from 0 to (2^n)-1, 
		// then you need to add another rule to reset q to 0 when roll-over should occur.
	
endmodule