//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2024-09-30 오전 9:47:52
//
//      Copyright (c) 2024 Crypto & Security Engineering Laboratory. MIT license
//
//============================================================================


// Problem
// Solution
module top_module 
( 
    input	p1a	, 
    input	p1b	, 
    input	p1c	, 
    input	p1d	, 
    input	p1e	, 
    input	p1f	,
    input	p2a	, 
    
    input	p2b	, 
    input	p2c	, 
    input	p2d	,
    
    output p1y	,
    output p2y 
);

wire	left_in1	;
wire	left_in2	;
wire	right_in1	;
wire	right_in2	;

assign	left_in1 =	p2c & p2d; 
assign	left_in2 =	p2a & p2b; 
assign	right_in1 =	p1a & p1c & p1b; 
assign	right_in2 =	p1f & p1e & p1d; 

assign	p2y = left_in1 | left_in2;
assign	p1y = right_in1 | right_in2;                
         
endmodule


// Anothor solution provied by HDL_bits.