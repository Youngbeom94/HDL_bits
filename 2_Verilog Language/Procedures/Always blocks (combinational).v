//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-10-01 오후 6:47:19
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================

// synthesis verilog_input_version verilog_2001
module top_module
(
    input	a, 
    input	b,
    output	wire out_assign,
    output	reg  out_alwaysblock
);

assign out_assign = a & b;

	always @(*) 
	begin
		out_alwaysblock <= a & b;	
	end

endmodule
