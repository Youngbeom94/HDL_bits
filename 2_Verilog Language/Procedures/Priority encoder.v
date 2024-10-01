//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-10-01 오후 7:26:51
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================

// synthesis verilog_input_version verilog_2001
module top_module 
(
    input	[3:0] in,
    output	reg [1:0] pos  
);

wire [1:0] imm_pos;

assign imm_pos =	in[0] ? 2'd0 : 
					in[1] ? 2'd1 : 
					in[2] ? 2'd2 : 
					in[3] ? 2'd3 : 0;

	always @(*) begin
		pos <= imm_pos;
	end
	
// Another solution
	always @(*) begin
    casez (in[3:0])
        4'bzzz1: out = 0;   // in[3:1] can be anything
        4'bzz1z: out = 1;
        4'bz1zz: out = 2;
        4'b1zzz: out = 3;
        default: out = 0;
    endcase
end

	
endmodule