//===========================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-06 오후 1:07:06
//
//      Copyright (c) 2020 RANIX Inc. All Rights Reserved.
//
//===========================================================

module MDL_MLKEM_NTT128_XXX_modmul
#(
	parameter PRM_KYBER_Q 		= 12'd3329,
	parameter PRM_KYBER_DOUBLEQ = 13'd6658
)
(
	input			[11:0]  iSrc1		,
	input			[11:0]  iSrc2		,
	output			[11:0]  oDst
);

wire    [23:0]  modmul_tmp ;
wire	[14:0]	modred_t0_0	;
wire	[14:0]	modred_t0_1	;
wire	[14:0]	modred_t0_2	;
wire	[14:0]	modred_t0_3	;
wire	[14:0]	modred_t1_0	;
wire	[14:0]	modred_t1_1	;
wire	[14:0]	modred_t2_0	;
wire	[14:0]	modred_res	;

assign  modmul_tmp 		= 	iSrc1 * iSrc2;
assign  modred_t0_0		=	{3'b0,   modmul_tmp[11:0]} + {4'b0, modmul_tmp[13:12], modmul_tmp[12], ~modmul_tmp[19:12]};
assign	modred_t0_1		=	{4'b0,   modmul_tmp[17],    modmul_tmp[13],  modmul_tmp[17],        ~modmul_tmp[22:18]  , ~modmul_tmp[16:14]} + 
							{4'b0,   modmul_tmp[19],    modmul_tmp[15],  modmul_tmp[19],        ~modmul_tmp[23:19]  , ~modmul_tmp[17], ~modmul_tmp[17], ~modmul_tmp[17]};
assign	modred_t0_2		=	{4'b0,  ~modmul_tmp[18],    modmul_tmp[19], ~modmul_tmp[23], 1'b0 , ~modmul_tmp[23:20]  , ~modmul_tmp[18], ~modmul_tmp[18], ~modmul_tmp[18]} + 
                        	{4'b0,  ~modmul_tmp[16],    modmul_tmp[18], ~modmul_tmp[18], 3'b0 , ~modmul_tmp[23:22]  , ~modmul_tmp[19], ~modmul_tmp[20], ~modmul_tmp[19]};
assign	modred_t0_3		=	{4'b0,  ~modmul_tmp[15],    1'b0,           ~modmul_tmp[14], 4'b0 , ~modmul_tmp[23]     , ~modmul_tmp[21], ~modmul_tmp[21:20]} + 
                        	{12'b0, ~modmul_tmp[22],    2'b0} + 15'b110110101010010;
assign	modred_t1_0		=	modred_t0_0 + modred_t0_1;
assign	modred_t1_1		=	modred_t0_2 + modred_t0_3;
assign	modred_t2_0		=	modred_t1_0 + modred_t1_1;

assign	modred_res		=	(modred_t2_0[14] == 1) 					? (modred_t2_0 + PRM_KYBER_Q)			:
							(modred_t2_0 >= PRM_KYBER_DOUBLEQ)		? (modred_t2_0 - PRM_KYBER_DOUBLEQ)		:
							(modred_t2_0 >= PRM_KYBER_Q)			? (modred_t2_0 - PRM_KYBER_Q)			: modred_t2_0;
							
assign	oDst			=	modred_res[11:0];
endmodule