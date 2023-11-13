//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-08 오전 12:13:28
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


//Problem : Create a 16-bit wide, 9-to-1 multiplexer. sel=0 chooses a, sel=1 chooses b, etc. For the unused cases (sel=9 to 15), set all output bits to '1'.
// My solution
module top_module
(
	input	[15:0]	a	,
	input	[15:0]	b	,
	input	[15:0]	c	,
	input	[15:0]	d	,
	input	[15:0]	e	,
	input	[15:0]	f	,
	input	[15:0]	g	,
	input	[15:0]	h	,
	input	[15:0]	i	,
	
	input	[ 3:0]	sel	,
		
	output	[15:0]	out	
);
	
	assign	out =	(sel == 0) ? a : 
					(sel == 1) ? b :
					(sel == 2) ? c :
					(sel == 3) ? d :
					(sel == 4) ? e :
					(sel == 5) ? f :
					(sel == 6) ? g :
					(sel == 7) ? h :
					(sel == 8) ? i : 16'hffff;				

endmodule

// Anothor solution provied by HDL_bits.
module top_module
(
	input			[15:0]	a	,
	input			[15:0]	b	,
	input			[15:0]	c	,
	input			[15:0]	d	,
	input			[15:0]	e	,
	input			[15:0]	f	,
	input			[15:0]	g	,
	input			[15:0]	h	,
	input			[15:0]	i	,
	
	input			[ 3:0]	sel	,
		
	output	logic	[15:0]	out	
);

	// Case statements can only be used inside procedural blocks (always block)
	// This is a combinational circuit, so use a combinational always @(*) block.
	always @(*) begin
		out = '1;		// '1 is a special literal syntax for a number with all bits set to 1.
						// '0, 'x, and 'z are also valid.
						// I prefer to assign a default value to 'out' instead of using a
						// default case.
		case (sel)
			4'h0: out = a;
			4'h1: out = b;
			4'h2: out = c;
			4'h3: out = d;
			4'h4: out = e;
			4'h5: out = f;
			4'h6: out = g;
			4'h7: out = h;
			4'h8: out = i;
		endcase
	end
	
endmodule
