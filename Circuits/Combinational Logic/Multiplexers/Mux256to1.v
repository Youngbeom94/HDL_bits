//============================================================================
//
//  AUTHOR      : YoungBeom Kim
//  SPEC        :
//  HISTORY     : 2023-11-08 오전 12:13:28
//
//      Copyright (c) 2023 Crypto Optimization & Application LAb. MIT license
//
//============================================================================


//Problem : Create a 1-bit wide, 256-to-1 multiplexer. The 256 inputs are all packed into a single 256-bit input vector. sel=0 should select in[0], sel=1 selects bits in[1], sel=2 selects bits in[2], etc.
// My solution
module top_module
(
	input	[255:0]	in	,
	input	[7:0]	sel	,
		
	output			out	
);
            
assign	out = (sel == 0  ) ? in[0  ] : (sel == 1  ) ? in[1  ] : (sel == 2  ) ? in[2  ] : (sel == 3  ) ? in[3  ] : 
              (sel == 4  ) ? in[4  ] : (sel == 5  ) ? in[5  ] : (sel == 6  ) ? in[6  ] : (sel == 7  ) ? in[7  ] : 
              (sel == 8  ) ? in[8  ] : (sel == 9  ) ? in[9  ] : (sel == 10 ) ? in[10 ] : (sel == 11 ) ? in[11 ] : 
              (sel == 12 ) ? in[12 ] : (sel == 13 ) ? in[13 ] : (sel == 14 ) ? in[14 ] : (sel == 15 ) ? in[15 ] : 
              (sel == 16 ) ? in[16 ] : (sel == 17 ) ? in[17 ] : (sel == 18 ) ? in[18 ] : (sel == 19 ) ? in[19 ] : 
              (sel == 20 ) ? in[20 ] : (sel == 21 ) ? in[21 ] : (sel == 22 ) ? in[22 ] : (sel == 23 ) ? in[23 ] : 
              (sel == 24 ) ? in[24 ] : (sel == 25 ) ? in[25 ] : (sel == 26 ) ? in[26 ] : (sel == 27 ) ? in[27 ] : 
              (sel == 28 ) ? in[28 ] : (sel == 29 ) ? in[29 ] : (sel == 30 ) ? in[30 ] : (sel == 31 ) ? in[31 ] : 
              (sel == 32 ) ? in[32 ] : (sel == 33 ) ? in[33 ] : (sel == 34 ) ? in[34 ] : (sel == 35 ) ? in[35 ] : 
              (sel == 36 ) ? in[36 ] : (sel == 37 ) ? in[37 ] : (sel == 38 ) ? in[38 ] : (sel == 39 ) ? in[39 ] : 
              (sel == 40 ) ? in[40 ] : (sel == 41 ) ? in[41 ] : (sel == 42 ) ? in[42 ] : (sel == 43 ) ? in[43 ] : 
              (sel == 44 ) ? in[44 ] : (sel == 45 ) ? in[45 ] : (sel == 46 ) ? in[46 ] : (sel == 47 ) ? in[47 ] : 
              (sel == 48 ) ? in[48 ] : (sel == 49 ) ? in[49 ] : (sel == 50 ) ? in[50 ] : (sel == 51 ) ? in[51 ] : 
              (sel == 52 ) ? in[52 ] : (sel == 53 ) ? in[53 ] : (sel == 54 ) ? in[54 ] : (sel == 55 ) ? in[55 ] : 
              (sel == 56 ) ? in[56 ] : (sel == 57 ) ? in[57 ] : (sel == 58 ) ? in[58 ] : (sel == 59 ) ? in[59 ] : 
              (sel == 60 ) ? in[60 ] : (sel == 61 ) ? in[61 ] : (sel == 62 ) ? in[62 ] : (sel == 63 ) ? in[63 ] : 
              (sel == 64 ) ? in[64 ] : (sel == 65 ) ? in[65 ] : (sel == 66 ) ? in[66 ] : (sel == 67 ) ? in[67 ] : 
              (sel == 68 ) ? in[68 ] : (sel == 69 ) ? in[69 ] : (sel == 70 ) ? in[70 ] : (sel == 71 ) ? in[71 ] : 
              (sel == 72 ) ? in[72 ] : (sel == 73 ) ? in[73 ] : (sel == 74 ) ? in[74 ] : (sel == 75 ) ? in[75 ] : 
              (sel == 76 ) ? in[76 ] : (sel == 77 ) ? in[77 ] : (sel == 78 ) ? in[78 ] : (sel == 79 ) ? in[79 ] : 
              (sel == 80 ) ? in[80 ] : (sel == 81 ) ? in[81 ] : (sel == 82 ) ? in[82 ] : (sel == 83 ) ? in[83 ] : 
              (sel == 84 ) ? in[84 ] : (sel == 85 ) ? in[85 ] : (sel == 86 ) ? in[86 ] : (sel == 87 ) ? in[87 ] : 
              (sel == 88 ) ? in[88 ] : (sel == 89 ) ? in[89 ] : (sel == 90 ) ? in[90 ] : (sel == 91 ) ? in[91 ] : 
              (sel == 92 ) ? in[92 ] : (sel == 93 ) ? in[93 ] : (sel == 94 ) ? in[94 ] : (sel == 95 ) ? in[95 ] : 
              (sel == 96 ) ? in[96 ] : (sel == 97 ) ? in[97 ] : (sel == 98 ) ? in[98 ] : (sel == 99 ) ? in[99 ] : 
              (sel == 100) ? in[100] : (sel == 101) ? in[101] : (sel == 102) ? in[102] : (sel == 103) ? in[103] : 
              (sel == 104) ? in[104] : (sel == 105) ? in[105] : (sel == 106) ? in[106] : (sel == 107) ? in[107] : 
              (sel == 108) ? in[108] : (sel == 109) ? in[109] : (sel == 110) ? in[110] : (sel == 111) ? in[111] : 
              (sel == 112) ? in[112] : (sel == 113) ? in[113] : (sel == 114) ? in[114] : (sel == 115) ? in[115] : 
              (sel == 116) ? in[116] : (sel == 117) ? in[117] : (sel == 118) ? in[118] : (sel == 119) ? in[119] : 
              (sel == 120) ? in[120] : (sel == 121) ? in[121] : (sel == 122) ? in[122] : (sel == 123) ? in[123] : 
              (sel == 124) ? in[124] : (sel == 125) ? in[125] : (sel == 126) ? in[126] : (sel == 127) ? in[127] : 
              (sel == 128) ? in[128] : (sel == 129) ? in[129] : (sel == 130) ? in[130] : (sel == 131) ? in[131] : 
              (sel == 132) ? in[132] : (sel == 133) ? in[133] : (sel == 134) ? in[134] : (sel == 135) ? in[135] : 
              (sel == 136) ? in[136] : (sel == 137) ? in[137] : (sel == 138) ? in[138] : (sel == 139) ? in[139] : 
              (sel == 140) ? in[140] : (sel == 141) ? in[141] : (sel == 142) ? in[142] : (sel == 143) ? in[143] : 
              (sel == 144) ? in[144] : (sel == 145) ? in[145] : (sel == 146) ? in[146] : (sel == 147) ? in[147] : 
              (sel == 148) ? in[148] : (sel == 149) ? in[149] : (sel == 150) ? in[150] : (sel == 151) ? in[151] : 
              (sel == 152) ? in[152] : (sel == 153) ? in[153] : (sel == 154) ? in[154] : (sel == 155) ? in[155] : 
              (sel == 156) ? in[156] : (sel == 157) ? in[157] : (sel == 158) ? in[158] : (sel == 159) ? in[159] : 
              (sel == 160) ? in[160] : (sel == 161) ? in[161] : (sel == 162) ? in[162] : (sel == 163) ? in[163] : 
              (sel == 164) ? in[164] : (sel == 165) ? in[165] : (sel == 166) ? in[166] : (sel == 167) ? in[167] : 
              (sel == 168) ? in[168] : (sel == 169) ? in[169] : (sel == 170) ? in[170] : (sel == 171) ? in[171] : 
              (sel == 172) ? in[172] : (sel == 173) ? in[173] : (sel == 174) ? in[174] : (sel == 175) ? in[175] : 
              (sel == 176) ? in[176] : (sel == 177) ? in[177] : (sel == 178) ? in[178] : (sel == 179) ? in[179] : 
              (sel == 180) ? in[180] : (sel == 181) ? in[181] : (sel == 182) ? in[182] : (sel == 183) ? in[183] : 
              (sel == 184) ? in[184] : (sel == 185) ? in[185] : (sel == 186) ? in[186] : (sel == 187) ? in[187] : 
              (sel == 188) ? in[188] : (sel == 189) ? in[189] : (sel == 190) ? in[190] : (sel == 191) ? in[191] : 
              (sel == 192) ? in[192] : (sel == 193) ? in[193] : (sel == 194) ? in[194] : (sel == 195) ? in[195] : 
              (sel == 196) ? in[196] : (sel == 197) ? in[197] : (sel == 198) ? in[198] : (sel == 199) ? in[199] : 
              (sel == 200) ? in[200] : (sel == 201) ? in[201] : (sel == 202) ? in[202] : (sel == 203) ? in[203] : 
              (sel == 204) ? in[204] : (sel == 205) ? in[205] : (sel == 206) ? in[206] : (sel == 207) ? in[207] : 
              (sel == 208) ? in[208] : (sel == 209) ? in[209] : (sel == 210) ? in[210] : (sel == 211) ? in[211] : 
              (sel == 212) ? in[212] : (sel == 213) ? in[213] : (sel == 214) ? in[214] : (sel == 215) ? in[215] : 
              (sel == 216) ? in[216] : (sel == 217) ? in[217] : (sel == 218) ? in[218] : (sel == 219) ? in[219] : 
              (sel == 220) ? in[220] : (sel == 221) ? in[221] : (sel == 222) ? in[222] : (sel == 223) ? in[223] : 
              (sel == 224) ? in[224] : (sel == 225) ? in[225] : (sel == 226) ? in[226] : (sel == 227) ? in[227] : 
              (sel == 228) ? in[228] : (sel == 229) ? in[229] : (sel == 230) ? in[230] : (sel == 231) ? in[231] : 
              (sel == 232) ? in[232] : (sel == 233) ? in[233] : (sel == 234) ? in[234] : (sel == 235) ? in[235] : 
              (sel == 236) ? in[236] : (sel == 237) ? in[237] : (sel == 238) ? in[238] : (sel == 239) ? in[239] : 
              (sel == 240) ? in[240] : (sel == 241) ? in[241] : (sel == 242) ? in[242] : (sel == 243) ? in[243] : 
              (sel == 244) ? in[244] : (sel == 245) ? in[245] : (sel == 246) ? in[246] : (sel == 247) ? in[247] : 
              (sel == 248) ? in[248] : (sel == 249) ? in[249] : (sel == 250) ? in[250] : (sel == 251) ? in[251] : 
              (sel == 252) ? in[252] : (sel == 253) ? in[253] : (sel == 254) ? in[254] : (sel == 255) ? in[255] : 'b0;

endmodule

// Anothor solution provied by HDL_bits.
module top_module
(
	input	[255:0]	in	,
	input	[7:0]	sel	,
		
	output			out	
);

	// Select one bit from vector in[]. The bit being selected can be variable.
	assign out = in[sel];
	
endmodule