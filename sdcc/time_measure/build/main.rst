                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Sun Jul 02 20:33:26 2023
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _ISR_ET1
                                     13 	.globl _ISR_ET0
                                     14 	.globl _main
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _mode_tmp
                                    112 	.globl _range_mode
                                    113 	.globl _setDisplay_PARM_2
                                    114 	.globl _digitIdx
                                    115 	.globl _pointIdx
                                    116 	.globl _digitVal_4
                                    117 	.globl _digitVal_3
                                    118 	.globl _digitVal_2
                                    119 	.globl _digitVal_1
                                    120 	.globl _time_mode0
                                    121 	.globl _time_mode1
                                    122 	.globl _factor
                                    123 	.globl _led7
                                    124 	.globl _init_GPIO
                                    125 	.globl _init_TC1
                                    126 	.globl _init_TC0
                                    127 	.globl _readRangeSW
                                    128 	.globl _readResetButton
                                    129 	.globl _resetTime
                                    130 	.globl _update
                                    131 	.globl _setDisplay
                                    132 	.globl _display
                                    133 	.globl _delay_ms
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 _B	=	0x00f0
                                    160 ;--------------------------------------------------------
                                    161 ; special function bits
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
                           000080   165 _P0_0	=	0x0080
                           000081   166 _P0_1	=	0x0081
                           000082   167 _P0_2	=	0x0082
                           000083   168 _P0_3	=	0x0083
                           000084   169 _P0_4	=	0x0084
                           000085   170 _P0_5	=	0x0085
                           000086   171 _P0_6	=	0x0086
                           000087   172 _P0_7	=	0x0087
                           000088   173 _IT0	=	0x0088
                           000089   174 _IE0	=	0x0089
                           00008A   175 _IT1	=	0x008a
                           00008B   176 _IE1	=	0x008b
                           00008C   177 _TR0	=	0x008c
                           00008D   178 _TF0	=	0x008d
                           00008E   179 _TR1	=	0x008e
                           00008F   180 _TF1	=	0x008f
                           000090   181 _P1_0	=	0x0090
                           000091   182 _P1_1	=	0x0091
                           000092   183 _P1_2	=	0x0092
                           000093   184 _P1_3	=	0x0093
                           000094   185 _P1_4	=	0x0094
                           000095   186 _P1_5	=	0x0095
                           000096   187 _P1_6	=	0x0096
                           000097   188 _P1_7	=	0x0097
                           000098   189 _RI	=	0x0098
                           000099   190 _TI	=	0x0099
                           00009A   191 _RB8	=	0x009a
                           00009B   192 _TB8	=	0x009b
                           00009C   193 _REN	=	0x009c
                           00009D   194 _SM2	=	0x009d
                           00009E   195 _SM1	=	0x009e
                           00009F   196 _SM0	=	0x009f
                           0000A0   197 _P2_0	=	0x00a0
                           0000A1   198 _P2_1	=	0x00a1
                           0000A2   199 _P2_2	=	0x00a2
                           0000A3   200 _P2_3	=	0x00a3
                           0000A4   201 _P2_4	=	0x00a4
                           0000A5   202 _P2_5	=	0x00a5
                           0000A6   203 _P2_6	=	0x00a6
                           0000A7   204 _P2_7	=	0x00a7
                           0000A8   205 _EX0	=	0x00a8
                           0000A9   206 _ET0	=	0x00a9
                           0000AA   207 _EX1	=	0x00aa
                           0000AB   208 _ET1	=	0x00ab
                           0000AC   209 _ES	=	0x00ac
                           0000AF   210 _EA	=	0x00af
                           0000B0   211 _P3_0	=	0x00b0
                           0000B1   212 _P3_1	=	0x00b1
                           0000B2   213 _P3_2	=	0x00b2
                           0000B3   214 _P3_3	=	0x00b3
                           0000B4   215 _P3_4	=	0x00b4
                           0000B5   216 _P3_5	=	0x00b5
                           0000B6   217 _P3_6	=	0x00b6
                           0000B7   218 _P3_7	=	0x00b7
                           0000B0   219 _RXD	=	0x00b0
                           0000B1   220 _TXD	=	0x00b1
                           0000B2   221 _INT0	=	0x00b2
                           0000B3   222 _INT1	=	0x00b3
                           0000B4   223 _T0	=	0x00b4
                           0000B5   224 _T1	=	0x00b5
                           0000B6   225 _WR	=	0x00b6
                           0000B7   226 _RD	=	0x00b7
                           0000B8   227 _PX0	=	0x00b8
                           0000B9   228 _PT0	=	0x00b9
                           0000BA   229 _PX1	=	0x00ba
                           0000BB   230 _PT1	=	0x00bb
                           0000BC   231 _PS	=	0x00bc
                           0000D0   232 _P	=	0x00d0
                           0000D1   233 _F1	=	0x00d1
                           0000D2   234 _OV	=	0x00d2
                           0000D3   235 _RS0	=	0x00d3
                           0000D4   236 _RS1	=	0x00d4
                           0000D5   237 _F0	=	0x00d5
                           0000D6   238 _AC	=	0x00d6
                           0000D7   239 _CY	=	0x00d7
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable register banks
                                    242 ;--------------------------------------------------------
                                    243 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        244 	.ds 8
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable bit register bank
                                    247 ;--------------------------------------------------------
                                    248 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        249 bits:
      000021                        250 	.ds 1
                           008000   251 	b0 = bits[0]
                           008100   252 	b1 = bits[1]
                           008200   253 	b2 = bits[2]
                           008300   254 	b3 = bits[3]
                           008400   255 	b4 = bits[4]
                           008500   256 	b5 = bits[5]
                           008600   257 	b6 = bits[6]
                           008700   258 	b7 = bits[7]
                                    259 ;--------------------------------------------------------
                                    260 ; internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area DSEG    (DATA)
      000022                        263 _led7::
      000022                        264 	.ds 10
      00002C                        265 _factor::
      00002C                        266 	.ds 2
      00002E                        267 _time_mode1::
      00002E                        268 	.ds 2
      000030                        269 _time_mode0::
      000030                        270 	.ds 2
      000032                        271 _digitVal_1::
      000032                        272 	.ds 2
      000034                        273 _digitVal_2::
      000034                        274 	.ds 2
      000036                        275 _digitVal_3::
      000036                        276 	.ds 2
      000038                        277 _digitVal_4::
      000038                        278 	.ds 2
      00003A                        279 _pointIdx::
      00003A                        280 	.ds 2
      00003C                        281 _digitIdx::
      00003C                        282 	.ds 2
      00003E                        283 _setDisplay_PARM_2:
      00003E                        284 	.ds 2
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable items in internal ram 
                                    287 ;--------------------------------------------------------
                                    288 	.area	OSEG    (OVR,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; Stack segment in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	SSEG
      000040                        293 __start__stack:
      000040                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; absolute internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area IABS    (ABS,DATA)
                                    304 	.area IABS    (ABS,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; bit data
                                    307 ;--------------------------------------------------------
                                    308 	.area BSEG    (BIT)
      000000                        309 _range_mode::
      000000                        310 	.ds 1
      000001                        311 _mode_tmp::
      000001                        312 	.ds 1
                                    313 ;--------------------------------------------------------
                                    314 ; paged external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area PSEG    (PAG,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XSEG    (XDATA)
                                    321 ;--------------------------------------------------------
                                    322 ; absolute external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area XABS    (ABS,XDATA)
                                    325 ;--------------------------------------------------------
                                    326 ; external initialized ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XISEG   (XDATA)
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT0 (CODE)
                                    331 	.area GSINIT1 (CODE)
                                    332 	.area GSINIT2 (CODE)
                                    333 	.area GSINIT3 (CODE)
                                    334 	.area GSINIT4 (CODE)
                                    335 	.area GSINIT5 (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.area GSFINAL (CODE)
                                    338 	.area CSEG    (CODE)
                                    339 ;--------------------------------------------------------
                                    340 ; interrupt vector 
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
      000000                        343 __interrupt_vect:
      000000 02 00 21         [24]  344 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  345 	reti
      000004                        346 	.ds	7
      00000B 02 03 DF         [24]  347 	ljmp	_ISR_ET0
      00000E                        348 	.ds	5
      000013 32               [24]  349 	reti
      000014                        350 	.ds	7
      00001B 02 04 37         [24]  351 	ljmp	_ISR_ET1
                                    352 ;--------------------------------------------------------
                                    353 ; global & static initialisations
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.globl __sdcc_gsinit_startup
                                    360 	.globl __sdcc_program_startup
                                    361 	.globl __start__stack
                                    362 	.globl __mcs51_genXINIT
                                    363 	.globl __mcs51_genXRAMCLEAR
                                    364 	.globl __mcs51_genRAMCLEAR
                                    365 ;	src/main.c:36: uint8_t led7[10] = { 0x84, 0x9F, 0xC8, 0x89, 0x93, 0xA1, 0xA0, 0x8F, 0x80, 0x81 };
      00007A 75 22 84         [24]  366 	mov	_led7,#0x84
      00007D 75 23 9F         [24]  367 	mov	(_led7 + 0x0001),#0x9F
      000080 75 24 C8         [24]  368 	mov	(_led7 + 0x0002),#0xC8
      000083 75 25 89         [24]  369 	mov	(_led7 + 0x0003),#0x89
      000086 75 26 93         [24]  370 	mov	(_led7 + 0x0004),#0x93
      000089 75 27 A1         [24]  371 	mov	(_led7 + 0x0005),#0xA1
      00008C 75 28 A0         [24]  372 	mov	(_led7 + 0x0006),#0xA0
      00008F 75 29 8F         [24]  373 	mov	(_led7 + 0x0007),#0x8F
      000092 75 2A 80         [24]  374 	mov	(_led7 + 0x0008),#0x80
      000095 75 2B 81         [24]  375 	mov	(_led7 + 0x0009),#0x81
                                    376 ;	src/main.c:42: unsigned int factor = 100;
      000098 75 2C 64         [24]  377 	mov	_factor,#0x64
      00009B 75 2D 00         [24]  378 	mov	(_factor + 1),#0x00
                                    379 ;	src/main.c:46: unsigned int time_mode1 = 0;
      00009E E4               [12]  380 	clr	a
      00009F F5 2E            [12]  381 	mov	_time_mode1,a
      0000A1 F5 2F            [12]  382 	mov	(_time_mode1 + 1),a
                                    383 ;	src/main.c:47: unsigned int time_mode0 = 0;
      0000A3 F5 30            [12]  384 	mov	_time_mode0,a
      0000A5 F5 31            [12]  385 	mov	(_time_mode0 + 1),a
                                    386 ;	src/main.c:48: unsigned int digitVal_1, digitVal_2, digitVal_3, digitVal_4 = 0;
      0000A7 F5 38            [12]  387 	mov	_digitVal_4,a
      0000A9 F5 39            [12]  388 	mov	(_digitVal_4 + 1),a
                                    389 ;	src/main.c:49: unsigned int pointIdx = 0;
      0000AB F5 3A            [12]  390 	mov	_pointIdx,a
      0000AD F5 3B            [12]  391 	mov	(_pointIdx + 1),a
                                    392 ;	src/main.c:50: unsigned int digitIdx = 1; // range in 1-4
      0000AF 75 3C 01         [24]  393 	mov	_digitIdx,#0x01
                                    394 ;	1-genFromRTrack replaced	mov	(_digitIdx + 1),#0x00
      0000B2 F5 3D            [12]  395 	mov	(_digitIdx + 1),a
                                    396 ;	src/main.c:41: __bit range_mode = 1;
      0000B4 D2 00            [12]  397 	setb	_range_mode
                                    398 	.area GSFINAL (CODE)
      0000B6 02 00 1E         [24]  399 	ljmp	__sdcc_program_startup
                                    400 ;--------------------------------------------------------
                                    401 ; Home
                                    402 ;--------------------------------------------------------
                                    403 	.area HOME    (CODE)
                                    404 	.area HOME    (CODE)
      00001E                        405 __sdcc_program_startup:
      00001E 02 00 B9         [24]  406 	ljmp	_main
                                    407 ;	return from main will return to caller
                                    408 ;--------------------------------------------------------
                                    409 ; code
                                    410 ;--------------------------------------------------------
                                    411 	.area CSEG    (CODE)
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'main'
                                    414 ;------------------------------------------------------------
                                    415 ;	src/main.c:68: void main (void)
                                    416 ;	-----------------------------------------
                                    417 ;	 function main
                                    418 ;	-----------------------------------------
      0000B9                        419 _main:
                           000007   420 	ar7 = 0x07
                           000006   421 	ar6 = 0x06
                           000005   422 	ar5 = 0x05
                           000004   423 	ar4 = 0x04
                           000003   424 	ar3 = 0x03
                           000002   425 	ar2 = 0x02
                           000001   426 	ar1 = 0x01
                           000000   427 	ar0 = 0x00
                                    428 ;	src/main.c:70: readRangeSW();
      0000B9 12 01 24         [24]  429 	lcall	_readRangeSW
                                    430 ;	src/main.c:71: init_GPIO();
      0000BC 12 00 FA         [24]  431 	lcall	_init_GPIO
                                    432 ;	src/main.c:74: TMOD = 0x11;
      0000BF 75 89 11         [24]  433 	mov	_TMOD,#0x11
                                    434 ;	src/main.c:76: ET0 = 1;
      0000C2 D2 A9            [12]  435 	setb	_ET0
                                    436 ;	src/main.c:77: if (range_mode == 1) {
      0000C4 30 00 08         [24]  437 	jnb	_range_mode,00102$
                                    438 ;	src/main.c:78: TH0 = 0xD8;
      0000C7 75 8C D8         [24]  439 	mov	_TH0,#0xD8
                                    440 ;	src/main.c:79: TL0 = 0xF0;
      0000CA 75 8A F0         [24]  441 	mov	_TL0,#0xF0
      0000CD 80 06            [24]  442 	sjmp	00103$
      0000CF                        443 00102$:
                                    444 ;	src/main.c:81: TH0 = 0xFC;
      0000CF 75 8C FC         [24]  445 	mov	_TH0,#0xFC
                                    446 ;	src/main.c:82: TL0 = 0x2F;
      0000D2 75 8A 2F         [24]  447 	mov	_TL0,#0x2F
      0000D5                        448 00103$:
                                    449 ;	src/main.c:85: PT0 = 1;
      0000D5 D2 B9            [12]  450 	setb	_PT0
                                    451 ;	src/main.c:86: TR0 = 1;         //Khoi dong timer1
      0000D7 D2 8C            [12]  452 	setb	_TR0
                                    453 ;	src/main.c:87: ET0 = 1;         //Ngat timer1
      0000D9 D2 A9            [12]  454 	setb	_ET0
                                    455 ;	src/main.c:89: ET1 = 1;
      0000DB D2 AB            [12]  456 	setb	_ET1
                                    457 ;	src/main.c:90: TH1 = 0xF8;
      0000DD 75 8D F8         [24]  458 	mov	_TH1,#0xF8
                                    459 ;	src/main.c:91: TL1 = 0x30;
      0000E0 75 8B 30         [24]  460 	mov	_TL1,#0x30
                                    461 ;	src/main.c:92: TR1 = 1;
      0000E3 D2 8E            [12]  462 	setb	_TR1
                                    463 ;	src/main.c:93: ET1 = 1;
      0000E5 D2 AB            [12]  464 	setb	_ET1
                                    465 ;	src/main.c:95: EA = 1;          // cho phep ngat toan cuc
      0000E7 D2 AF            [12]  466 	setb	_EA
                                    467 ;	src/main.c:98: update();
      0000E9 12 01 53         [24]  468 	lcall	_update
                                    469 ;	src/main.c:99: while (1)
      0000EC                        470 00105$:
                                    471 ;	src/main.c:101: readRangeSW();
      0000EC 12 01 24         [24]  472 	lcall	_readRangeSW
                                    473 ;	src/main.c:102: readResetButton();
      0000EF 12 01 37         [24]  474 	lcall	_readResetButton
                                    475 ;	src/main.c:103: delay_ms(2);
      0000F2 90 00 02         [24]  476 	mov	dptr,#0x0002
      0000F5 12 03 B4         [24]  477 	lcall	_delay_ms
      0000F8 80 F2            [24]  478 	sjmp	00105$
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'init_GPIO'
                                    481 ;------------------------------------------------------------
                                    482 ;	src/main.c:107: void init_GPIO(void)
                                    483 ;	-----------------------------------------
                                    484 ;	 function init_GPIO
                                    485 ;	-----------------------------------------
      0000FA                        486 _init_GPIO:
                                    487 ;	src/main.c:109: RESET = 0;
      0000FA C2 B7            [12]  488 	clr	_P3_7
                                    489 ;	src/main.c:110: COM = 1;
      0000FC D2 B1            [12]  490 	setb	_P3_1
                                    491 ;	src/main.c:111: RANGE_SW = 1;
      0000FE D2 B0            [12]  492 	setb	_P3_0
      000100 22               [24]  493 	ret
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'init_TC1'
                                    496 ;------------------------------------------------------------
                                    497 ;	src/main.c:115: void init_TC1(void)
                                    498 ;	-----------------------------------------
                                    499 ;	 function init_TC1
                                    500 ;	-----------------------------------------
      000101                        501 _init_TC1:
                                    502 ;	src/main.c:117: ET1 = 1;         // cho phep ngat timer 0
      000101 D2 AB            [12]  503 	setb	_ET1
                                    504 ;	src/main.c:119: TH1 = 0xF8;      //Nap gia tri bat dau 8bit
      000103 75 8D F8         [24]  505 	mov	_TH1,#0xF8
                                    506 ;	src/main.c:120: TL1 = 0x30;
      000106 75 8B 30         [24]  507 	mov	_TL1,#0x30
                                    508 ;	src/main.c:121: TR1 = 0;         //Khoi dong timer0
      000109 C2 8E            [12]  509 	clr	_TR1
                                    510 ;	src/main.c:122: ET1 = 1;         //Ngat timer0
      00010B D2 AB            [12]  511 	setb	_ET1
                                    512 ;	src/main.c:123: EA = 1;          // cho phep ngat toan cuc
      00010D D2 AF            [12]  513 	setb	_EA
      00010F 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'init_TC0'
                                    517 ;------------------------------------------------------------
                                    518 ;	src/main.c:127: void init_TC0(void)
                                    519 ;	-----------------------------------------
                                    520 ;	 function init_TC0
                                    521 ;	-----------------------------------------
      000110                        522 _init_TC0:
                                    523 ;	src/main.c:129: ET0 = 1;         // cho phep ngat timer 1
      000110 D2 A9            [12]  524 	setb	_ET0
                                    525 ;	src/main.c:130: TMOD = 0x11;    //Use Timer1 at 16-bit timer mode.
      000112 75 89 11         [24]  526 	mov	_TMOD,#0x11
                                    527 ;	src/main.c:131: TH0 = 0xFC;
      000115 75 8C FC         [24]  528 	mov	_TH0,#0xFC
                                    529 ;	src/main.c:132: TL0 = 0x2F;
      000118 75 8A 2F         [24]  530 	mov	_TL0,#0x2F
                                    531 ;	src/main.c:133: PT0 = 1;
      00011B D2 B9            [12]  532 	setb	_PT0
                                    533 ;	src/main.c:134: TR0 = 1;         //Khoi dong timer1
      00011D D2 8C            [12]  534 	setb	_TR0
                                    535 ;	src/main.c:135: ET0 = 1;         //Ngat timer1
      00011F D2 A9            [12]  536 	setb	_ET0
                                    537 ;	src/main.c:136: EA = 1;          // cho phep ngat toan cuc
      000121 D2 AF            [12]  538 	setb	_EA
      000123 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'readRangeSW'
                                    542 ;------------------------------------------------------------
                                    543 ;	src/main.c:139: void readRangeSW(void)
                                    544 ;	-----------------------------------------
                                    545 ;	 function readRangeSW
                                    546 ;	-----------------------------------------
      000124                        547 _readRangeSW:
                                    548 ;	src/main.c:141: if (range_mode != RANGE_SW) {
      000124 A2 00            [12]  549 	mov	c,_range_mode
      000126 20 B0 01         [24]  550 	jb	_P3_0,00108$
      000129 B3               [12]  551 	cpl	c
      00012A                        552 00108$:
      00012A 40 0A            [24]  553 	jc	00103$
                                    554 ;	src/main.c:142: delay_ms(2);
      00012C 90 00 02         [24]  555 	mov	dptr,#0x0002
      00012F 12 03 B4         [24]  556 	lcall	_delay_ms
                                    557 ;	src/main.c:143: mode_tmp = RANGE_SW;
      000132 A2 B0            [12]  558 	mov	c,_P3_0
      000134 92 01            [24]  559 	mov	_mode_tmp,c
      000136                        560 00103$:
      000136 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'readResetButton'
                                    564 ;------------------------------------------------------------
                                    565 ;	src/main.c:161: void readResetButton()
                                    566 ;	-----------------------------------------
                                    567 ;	 function readResetButton
                                    568 ;	-----------------------------------------
      000137                        569 _readResetButton:
                                    570 ;	src/main.c:163: if (RESET == 1) {
      000137 30 B7 0C         [24]  571 	jnb	_P3_7,00105$
                                    572 ;	src/main.c:164: delay_ms(1);
      00013A 90 00 01         [24]  573 	mov	dptr,#0x0001
      00013D 12 03 B4         [24]  574 	lcall	_delay_ms
                                    575 ;	src/main.c:165: if (RESET == 1){
      000140 30 B7 03         [24]  576 	jnb	_P3_7,00105$
                                    577 ;	src/main.c:166: resetTime();
      000143 02 01 47         [24]  578 	ljmp	_resetTime
      000146                        579 00105$:
      000146 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'resetTime'
                                    583 ;------------------------------------------------------------
                                    584 ;	src/main.c:171: void resetTime()
                                    585 ;	-----------------------------------------
                                    586 ;	 function resetTime
                                    587 ;	-----------------------------------------
      000147                        588 _resetTime:
                                    589 ;	src/main.c:173: time_mode1 = 0;
      000147 E4               [12]  590 	clr	a
      000148 F5 2E            [12]  591 	mov	_time_mode1,a
      00014A F5 2F            [12]  592 	mov	(_time_mode1 + 1),a
                                    593 ;	src/main.c:174: time_mode0 = 0;
      00014C F5 30            [12]  594 	mov	_time_mode0,a
      00014E F5 31            [12]  595 	mov	(_time_mode0 + 1),a
                                    596 ;	src/main.c:175: update();
      000150 02 01 53         [24]  597 	ljmp	_update
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'update'
                                    600 ;------------------------------------------------------------
                                    601 ;	src/main.c:178: void update(void)
                                    602 ;	-----------------------------------------
                                    603 ;	 function update
                                    604 ;	-----------------------------------------
      000153                        605 _update:
                                    606 ;	src/main.c:180: if (range_mode != mode_tmp){
      000153 A2 00            [12]  607 	mov	c,_range_mode
      000155 20 01 01         [24]  608 	jb	_mode_tmp,00120$
      000158 B3               [12]  609 	cpl	c
      000159                        610 00120$:
      000159 50 03            [24]  611 	jnc	00121$
      00015B 02 01 E8         [24]  612 	ljmp	00105$
      00015E                        613 00121$:
                                    614 ;	src/main.c:181: if (mode_tmp == 1) {
      00015E 30 01 5C         [24]  615 	jnb	_mode_tmp,00102$
                                    616 ;	src/main.c:182: factor = 100;
      000161 75 2C 64         [24]  617 	mov	_factor,#0x64
      000164 75 2D 00         [24]  618 	mov	(_factor + 1),#0x00
                                    619 ;	src/main.c:183: time_mode1 = ((time_mode1 / 1000) % 10) * 1000 + (time_mode0 / 10) % 1000;
      000167 75 08 E8         [24]  620 	mov	__divuint_PARM_2,#0xE8
      00016A 75 09 03         [24]  621 	mov	(__divuint_PARM_2 + 1),#0x03
      00016D 85 2E 82         [24]  622 	mov	dpl,_time_mode1
      000170 85 2F 83         [24]  623 	mov	dph,(_time_mode1 + 1)
      000173 12 04 7F         [24]  624 	lcall	__divuint
      000176 75 08 0A         [24]  625 	mov	__moduint_PARM_2,#0x0A
      000179 75 09 00         [24]  626 	mov	(__moduint_PARM_2 + 1),#0x00
      00017C 12 04 C5         [24]  627 	lcall	__moduint
      00017F 85 82 08         [24]  628 	mov	__mulint_PARM_2,dpl
      000182 85 83 09         [24]  629 	mov	(__mulint_PARM_2 + 1),dph
      000185 90 03 E8         [24]  630 	mov	dptr,#0x03E8
      000188 12 04 A8         [24]  631 	lcall	__mulint
      00018B AE 82            [24]  632 	mov	r6,dpl
      00018D AF 83            [24]  633 	mov	r7,dph
      00018F 75 08 0A         [24]  634 	mov	__divuint_PARM_2,#0x0A
      000192 75 09 00         [24]  635 	mov	(__divuint_PARM_2 + 1),#0x00
      000195 85 30 82         [24]  636 	mov	dpl,_time_mode0
      000198 85 31 83         [24]  637 	mov	dph,(_time_mode0 + 1)
      00019B C0 07            [24]  638 	push	ar7
      00019D C0 06            [24]  639 	push	ar6
      00019F 12 04 7F         [24]  640 	lcall	__divuint
      0001A2 75 08 E8         [24]  641 	mov	__moduint_PARM_2,#0xE8
      0001A5 75 09 03         [24]  642 	mov	(__moduint_PARM_2 + 1),#0x03
      0001A8 12 04 C5         [24]  643 	lcall	__moduint
      0001AB AC 82            [24]  644 	mov	r4,dpl
      0001AD AD 83            [24]  645 	mov	r5,dph
      0001AF D0 06            [24]  646 	pop	ar6
      0001B1 D0 07            [24]  647 	pop	ar7
      0001B3 EC               [12]  648 	mov	a,r4
      0001B4 2E               [12]  649 	add	a,r6
      0001B5 F5 2E            [12]  650 	mov	_time_mode1,a
      0001B7 ED               [12]  651 	mov	a,r5
      0001B8 3F               [12]  652 	addc	a,r7
      0001B9 F5 2F            [12]  653 	mov	(_time_mode1 + 1),a
      0001BB 80 27            [24]  654 	sjmp	00103$
      0001BD                        655 00102$:
                                    656 ;	src/main.c:185: factor = 1000;
      0001BD 75 2C E8         [24]  657 	mov	_factor,#0xE8
      0001C0 75 2D 03         [24]  658 	mov	(_factor + 1),#0x03
                                    659 ;	src/main.c:186: time_mode0 = (time_mode1 % 1000) * 10;
      0001C3 75 08 E8         [24]  660 	mov	__moduint_PARM_2,#0xE8
      0001C6 75 09 03         [24]  661 	mov	(__moduint_PARM_2 + 1),#0x03
      0001C9 85 2E 82         [24]  662 	mov	dpl,_time_mode1
      0001CC 85 2F 83         [24]  663 	mov	dph,(_time_mode1 + 1)
      0001CF 12 04 C5         [24]  664 	lcall	__moduint
      0001D2 85 82 08         [24]  665 	mov	__mulint_PARM_2,dpl
      0001D5 85 83 09         [24]  666 	mov	(__mulint_PARM_2 + 1),dph
      0001D8 90 00 0A         [24]  667 	mov	dptr,#0x000A
      0001DB 12 04 A8         [24]  668 	lcall	__mulint
      0001DE 85 82 30         [24]  669 	mov	_time_mode0,dpl
      0001E1 85 83 31         [24]  670 	mov	(_time_mode0 + 1),dph
      0001E4                        671 00103$:
                                    672 ;	src/main.c:189: range_mode = mode_tmp;
      0001E4 A2 01            [12]  673 	mov	c,_mode_tmp
      0001E6 92 00            [24]  674 	mov	_range_mode,c
      0001E8                        675 00105$:
                                    676 ;	src/main.c:191: if (factor == 1000){
      0001E8 74 E8            [12]  677 	mov	a,#0xE8
      0001EA B5 2C 14         [24]  678 	cjne	a,_factor,00107$
      0001ED 74 03            [12]  679 	mov	a,#0x03
      0001EF B5 2D 0F         [24]  680 	cjne	a,(_factor + 1),00107$
                                    681 ;	src/main.c:192: setDisplay(time_mode0, factor);
      0001F2 85 2C 3E         [24]  682 	mov	_setDisplay_PARM_2,_factor
      0001F5 85 2D 3F         [24]  683 	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
      0001F8 85 30 82         [24]  684 	mov	dpl,_time_mode0
      0001FB 85 31 83         [24]  685 	mov	dph,(_time_mode0 + 1)
      0001FE 02 02 10         [24]  686 	ljmp	_setDisplay
      000201                        687 00107$:
                                    688 ;	src/main.c:194: setDisplay(time_mode1, factor);
      000201 85 2C 3E         [24]  689 	mov	_setDisplay_PARM_2,_factor
      000204 85 2D 3F         [24]  690 	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
      000207 85 2E 82         [24]  691 	mov	dpl,_time_mode1
      00020A 85 2F 83         [24]  692 	mov	dph,(_time_mode1 + 1)
      00020D 02 02 10         [24]  693 	ljmp	_setDisplay
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'setDisplay'
                                    696 ;------------------------------------------------------------
                                    697 ;f                         Allocated with name '_setDisplay_PARM_2'
                                    698 ;number                    Allocated to registers r6 r7 
                                    699 ;------------------------------------------------------------
                                    700 ;	src/main.c:198: void setDisplay(unsigned int number, unsigned int f)
                                    701 ;	-----------------------------------------
                                    702 ;	 function setDisplay
                                    703 ;	-----------------------------------------
      000210                        704 _setDisplay:
                                    705 ;	src/main.c:200: digitVal_1 = number % 10;
      000210 AE 82            [24]  706 	mov	r6,dpl
      000212 AF 83            [24]  707 	mov	r7,dph
      000214 75 08 0A         [24]  708 	mov	__moduint_PARM_2,#0x0A
      000217 75 09 00         [24]  709 	mov	(__moduint_PARM_2 + 1),#0x00
      00021A C0 07            [24]  710 	push	ar7
      00021C C0 06            [24]  711 	push	ar6
      00021E 12 04 C5         [24]  712 	lcall	__moduint
      000221 85 82 32         [24]  713 	mov	_digitVal_1,dpl
      000224 85 83 33         [24]  714 	mov	(_digitVal_1 + 1),dph
      000227 D0 06            [24]  715 	pop	ar6
      000229 D0 07            [24]  716 	pop	ar7
                                    717 ;	src/main.c:201: digitVal_2 = (number /10) % 10;
      00022B 75 08 0A         [24]  718 	mov	__divuint_PARM_2,#0x0A
      00022E 75 09 00         [24]  719 	mov	(__divuint_PARM_2 + 1),#0x00
      000231 8E 82            [24]  720 	mov	dpl,r6
      000233 8F 83            [24]  721 	mov	dph,r7
      000235 C0 07            [24]  722 	push	ar7
      000237 C0 06            [24]  723 	push	ar6
      000239 12 04 7F         [24]  724 	lcall	__divuint
      00023C 75 08 0A         [24]  725 	mov	__moduint_PARM_2,#0x0A
      00023F 75 09 00         [24]  726 	mov	(__moduint_PARM_2 + 1),#0x00
      000242 12 04 C5         [24]  727 	lcall	__moduint
      000245 85 82 34         [24]  728 	mov	_digitVal_2,dpl
      000248 85 83 35         [24]  729 	mov	(_digitVal_2 + 1),dph
      00024B D0 06            [24]  730 	pop	ar6
      00024D D0 07            [24]  731 	pop	ar7
                                    732 ;	src/main.c:202: digitVal_3 = (number /100) % 10;
      00024F 75 08 64         [24]  733 	mov	__divuint_PARM_2,#0x64
      000252 75 09 00         [24]  734 	mov	(__divuint_PARM_2 + 1),#0x00
      000255 8E 82            [24]  735 	mov	dpl,r6
      000257 8F 83            [24]  736 	mov	dph,r7
      000259 C0 07            [24]  737 	push	ar7
      00025B C0 06            [24]  738 	push	ar6
      00025D 12 04 7F         [24]  739 	lcall	__divuint
      000260 75 08 0A         [24]  740 	mov	__moduint_PARM_2,#0x0A
      000263 75 09 00         [24]  741 	mov	(__moduint_PARM_2 + 1),#0x00
      000266 12 04 C5         [24]  742 	lcall	__moduint
      000269 85 82 36         [24]  743 	mov	_digitVal_3,dpl
      00026C 85 83 37         [24]  744 	mov	(_digitVal_3 + 1),dph
      00026F D0 06            [24]  745 	pop	ar6
      000271 D0 07            [24]  746 	pop	ar7
                                    747 ;	src/main.c:203: if ((number < 1000) && (f !=1000)){
      000273 C3               [12]  748 	clr	c
      000274 EE               [12]  749 	mov	a,r6
      000275 94 E8            [12]  750 	subb	a,#0xE8
      000277 EF               [12]  751 	mov	a,r7
      000278 94 03            [12]  752 	subb	a,#0x03
      00027A 50 14            [24]  753 	jnc	00102$
      00027C 74 E8            [12]  754 	mov	a,#0xE8
      00027E B5 3E 07         [24]  755 	cjne	a,_setDisplay_PARM_2,00137$
      000281 74 03            [12]  756 	mov	a,#0x03
      000283 B5 3F 02         [24]  757 	cjne	a,(_setDisplay_PARM_2 + 1),00137$
      000286 80 08            [24]  758 	sjmp	00102$
      000288                        759 00137$:
                                    760 ;	src/main.c:204: digitVal_4 = 10; // mean do not display
      000288 75 38 0A         [24]  761 	mov	_digitVal_4,#0x0A
      00028B 75 39 00         [24]  762 	mov	(_digitVal_4 + 1),#0x00
      00028E 80 1C            [24]  763 	sjmp	00103$
      000290                        764 00102$:
                                    765 ;	src/main.c:206: digitVal_4 = (number /1000) % 10;
      000290 75 08 E8         [24]  766 	mov	__divuint_PARM_2,#0xE8
      000293 75 09 03         [24]  767 	mov	(__divuint_PARM_2 + 1),#0x03
      000296 8E 82            [24]  768 	mov	dpl,r6
      000298 8F 83            [24]  769 	mov	dph,r7
      00029A 12 04 7F         [24]  770 	lcall	__divuint
      00029D 75 08 0A         [24]  771 	mov	__moduint_PARM_2,#0x0A
      0002A0 75 09 00         [24]  772 	mov	(__moduint_PARM_2 + 1),#0x00
      0002A3 12 04 C5         [24]  773 	lcall	__moduint
      0002A6 85 82 38         [24]  774 	mov	_digitVal_4,dpl
      0002A9 85 83 39         [24]  775 	mov	(_digitVal_4 + 1),dph
      0002AC                        776 00103$:
                                    777 ;	src/main.c:209: if (f == 1){
      0002AC 74 01            [12]  778 	mov	a,#0x01
      0002AE B5 3E 06         [24]  779 	cjne	a,_setDisplay_PARM_2,00138$
      0002B1 E4               [12]  780 	clr	a
      0002B2 B5 3F 02         [24]  781 	cjne	a,(_setDisplay_PARM_2 + 1),00138$
      0002B5 80 02            [24]  782 	sjmp	00139$
      0002B7                        783 00138$:
      0002B7 80 06            [24]  784 	sjmp	00114$
      0002B9                        785 00139$:
                                    786 ;	src/main.c:210: pointIdx = 0;
      0002B9 E4               [12]  787 	clr	a
      0002BA F5 3A            [12]  788 	mov	_pointIdx,a
      0002BC F5 3B            [12]  789 	mov	(_pointIdx + 1),a
      0002BE 22               [24]  790 	ret
      0002BF                        791 00114$:
                                    792 ;	src/main.c:211: } else if (f == 10) {
      0002BF 74 0A            [12]  793 	mov	a,#0x0A
      0002C1 B5 3E 06         [24]  794 	cjne	a,_setDisplay_PARM_2,00140$
      0002C4 E4               [12]  795 	clr	a
      0002C5 B5 3F 02         [24]  796 	cjne	a,(_setDisplay_PARM_2 + 1),00140$
      0002C8 80 02            [24]  797 	sjmp	00141$
      0002CA                        798 00140$:
      0002CA 80 07            [24]  799 	sjmp	00111$
      0002CC                        800 00141$:
                                    801 ;	src/main.c:212: pointIdx = 2;
      0002CC 75 3A 02         [24]  802 	mov	_pointIdx,#0x02
      0002CF 75 3B 00         [24]  803 	mov	(_pointIdx + 1),#0x00
      0002D2 22               [24]  804 	ret
      0002D3                        805 00111$:
                                    806 ;	src/main.c:213: } else if (f == 100) {
      0002D3 74 64            [12]  807 	mov	a,#0x64
      0002D5 B5 3E 06         [24]  808 	cjne	a,_setDisplay_PARM_2,00142$
      0002D8 E4               [12]  809 	clr	a
      0002D9 B5 3F 02         [24]  810 	cjne	a,(_setDisplay_PARM_2 + 1),00142$
      0002DC 80 02            [24]  811 	sjmp	00143$
      0002DE                        812 00142$:
      0002DE 80 07            [24]  813 	sjmp	00108$
      0002E0                        814 00143$:
                                    815 ;	src/main.c:214: pointIdx = 3;
      0002E0 75 3A 03         [24]  816 	mov	_pointIdx,#0x03
      0002E3 75 3B 00         [24]  817 	mov	(_pointIdx + 1),#0x00
      0002E6 22               [24]  818 	ret
      0002E7                        819 00108$:
                                    820 ;	src/main.c:215: } else if (f == 1000) {
      0002E7 74 E8            [12]  821 	mov	a,#0xE8
      0002E9 B5 3E 0B         [24]  822 	cjne	a,_setDisplay_PARM_2,00116$
      0002EC 74 03            [12]  823 	mov	a,#0x03
      0002EE B5 3F 06         [24]  824 	cjne	a,(_setDisplay_PARM_2 + 1),00116$
                                    825 ;	src/main.c:216: pointIdx = 4;
      0002F1 75 3A 04         [24]  826 	mov	_pointIdx,#0x04
      0002F4 75 3B 00         [24]  827 	mov	(_pointIdx + 1),#0x00
      0002F7                        828 00116$:
      0002F7 22               [24]  829 	ret
                                    830 ;------------------------------------------------------------
                                    831 ;Allocation info for local variables in function 'display'
                                    832 ;------------------------------------------------------------
                                    833 ;	src/main.c:220: void display(void)
                                    834 ;	-----------------------------------------
                                    835 ;	 function display
                                    836 ;	-----------------------------------------
      0002F8                        837 _display:
                                    838 ;	src/main.c:222: LED7_1 = 1;
      0002F8 D2 B5            [12]  839 	setb	_P3_5
                                    840 ;	src/main.c:223: LED7_2 = 1;
      0002FA D2 B4            [12]  841 	setb	_P3_4
                                    842 ;	src/main.c:224: LED7_3 = 1;
      0002FC D2 B3            [12]  843 	setb	_P3_3
                                    844 ;	src/main.c:225: LED7_4 = 1;
      0002FE D2 B2            [12]  845 	setb	_P3_2
                                    846 ;	src/main.c:226: switch (digitIdx) {
      000300 C3               [12]  847 	clr	c
      000301 74 04            [12]  848 	mov	a,#0x04
      000303 95 3C            [12]  849 	subb	a,_digitIdx
      000305 E4               [12]  850 	clr	a
      000306 95 3D            [12]  851 	subb	a,(_digitIdx + 1)
      000308 50 03            [24]  852 	jnc	00142$
      00030A 02 03 97         [24]  853 	ljmp	00115$
      00030D                        854 00142$:
      00030D E5 3C            [12]  855 	mov	a,_digitIdx
      00030F 75 F0 03         [24]  856 	mov	b,#0x03
      000312 A4               [48]  857 	mul	ab
      000313 90 03 17         [24]  858 	mov	dptr,#00143$
      000316 73               [24]  859 	jmp	@a+dptr
      000317                        860 00143$:
      000317 02 03 97         [24]  861 	ljmp	00115$
      00031A 02 03 26         [24]  862 	ljmp	00101$
      00031D 02 03 40         [24]  863 	ljmp	00104$
      000320 02 03 5A         [24]  864 	ljmp	00107$
      000323 02 03 74         [24]  865 	ljmp	00110$
                                    866 ;	src/main.c:227: case 1: {
      000326                        867 00101$:
                                    868 ;	src/main.c:228: P1 = led7[digitVal_1];
      000326 E5 32            [12]  869 	mov	a,_digitVal_1
      000328 24 22            [12]  870 	add	a,#_led7
      00032A F9               [12]  871 	mov	r1,a
      00032B 87 90            [24]  872 	mov	_P1,@r1
                                    873 ;	src/main.c:229: if (pointIdx == 1){
      00032D 74 01            [12]  874 	mov	a,#0x01
      00032F B5 3A 06         [24]  875 	cjne	a,_pointIdx,00144$
      000332 E4               [12]  876 	clr	a
      000333 B5 3B 02         [24]  877 	cjne	a,(_pointIdx + 1),00144$
      000336 80 02            [24]  878 	sjmp	00145$
      000338                        879 00144$:
      000338 80 02            [24]  880 	sjmp	00103$
      00033A                        881 00145$:
                                    882 ;	src/main.c:230: LED7DP = 0;
      00033A C2 97            [12]  883 	clr	_P1_7
      00033C                        884 00103$:
                                    885 ;	src/main.c:232: LED7_1 = 0;
      00033C C2 B5            [12]  886 	clr	_P3_5
                                    887 ;	src/main.c:233: break;
                                    888 ;	src/main.c:235: case 2: {
      00033E 80 57            [24]  889 	sjmp	00115$
      000340                        890 00104$:
                                    891 ;	src/main.c:236: P1 = led7[digitVal_2];
      000340 E5 34            [12]  892 	mov	a,_digitVal_2
      000342 24 22            [12]  893 	add	a,#_led7
      000344 F9               [12]  894 	mov	r1,a
      000345 87 90            [24]  895 	mov	_P1,@r1
                                    896 ;	src/main.c:237: if (pointIdx == 2){
      000347 74 02            [12]  897 	mov	a,#0x02
      000349 B5 3A 06         [24]  898 	cjne	a,_pointIdx,00146$
      00034C E4               [12]  899 	clr	a
      00034D B5 3B 02         [24]  900 	cjne	a,(_pointIdx + 1),00146$
      000350 80 02            [24]  901 	sjmp	00147$
      000352                        902 00146$:
      000352 80 02            [24]  903 	sjmp	00106$
      000354                        904 00147$:
                                    905 ;	src/main.c:238: LED7DP = 0;
      000354 C2 97            [12]  906 	clr	_P1_7
      000356                        907 00106$:
                                    908 ;	src/main.c:240: LED7_2 = 0;
      000356 C2 B4            [12]  909 	clr	_P3_4
                                    910 ;	src/main.c:241: break;
                                    911 ;	src/main.c:243: case 3: {
      000358 80 3D            [24]  912 	sjmp	00115$
      00035A                        913 00107$:
                                    914 ;	src/main.c:244: P1 = led7[digitVal_3];
      00035A E5 36            [12]  915 	mov	a,_digitVal_3
      00035C 24 22            [12]  916 	add	a,#_led7
      00035E F9               [12]  917 	mov	r1,a
      00035F 87 90            [24]  918 	mov	_P1,@r1
                                    919 ;	src/main.c:245: if (pointIdx == 3){
      000361 74 03            [12]  920 	mov	a,#0x03
      000363 B5 3A 06         [24]  921 	cjne	a,_pointIdx,00148$
      000366 E4               [12]  922 	clr	a
      000367 B5 3B 02         [24]  923 	cjne	a,(_pointIdx + 1),00148$
      00036A 80 02            [24]  924 	sjmp	00149$
      00036C                        925 00148$:
      00036C 80 02            [24]  926 	sjmp	00109$
      00036E                        927 00149$:
                                    928 ;	src/main.c:246: LED7DP = 0;
      00036E C2 97            [12]  929 	clr	_P1_7
      000370                        930 00109$:
                                    931 ;	src/main.c:248: LED7_3 = 0;
      000370 C2 B3            [12]  932 	clr	_P3_3
                                    933 ;	src/main.c:249: break;
                                    934 ;	src/main.c:251: case 4: {
      000372 80 23            [24]  935 	sjmp	00115$
      000374                        936 00110$:
                                    937 ;	src/main.c:252: if (digitVal_4 == 10) break;
      000374 74 0A            [12]  938 	mov	a,#0x0A
      000376 B5 38 06         [24]  939 	cjne	a,_digitVal_4,00150$
      000379 E4               [12]  940 	clr	a
      00037A B5 39 02         [24]  941 	cjne	a,(_digitVal_4 + 1),00150$
      00037D 80 18            [24]  942 	sjmp	00115$
      00037F                        943 00150$:
                                    944 ;	src/main.c:253: P1 = led7[digitVal_4];
      00037F E5 38            [12]  945 	mov	a,_digitVal_4
      000381 24 22            [12]  946 	add	a,#_led7
      000383 F9               [12]  947 	mov	r1,a
      000384 87 90            [24]  948 	mov	_P1,@r1
                                    949 ;	src/main.c:254: if (pointIdx == 4){
      000386 74 04            [12]  950 	mov	a,#0x04
      000388 B5 3A 06         [24]  951 	cjne	a,_pointIdx,00151$
      00038B E4               [12]  952 	clr	a
      00038C B5 3B 02         [24]  953 	cjne	a,(_pointIdx + 1),00151$
      00038F 80 02            [24]  954 	sjmp	00152$
      000391                        955 00151$:
      000391 80 02            [24]  956 	sjmp	00114$
      000393                        957 00152$:
                                    958 ;	src/main.c:255: LED7DP = 0;
      000393 C2 97            [12]  959 	clr	_P1_7
      000395                        960 00114$:
                                    961 ;	src/main.c:257: LED7_4 = 0;	
      000395 C2 B2            [12]  962 	clr	_P3_2
                                    963 ;	src/main.c:260: }
      000397                        964 00115$:
                                    965 ;	src/main.c:262: if (digitIdx == 4) {
      000397 74 04            [12]  966 	mov	a,#0x04
      000399 B5 3C 06         [24]  967 	cjne	a,_digitIdx,00153$
      00039C E4               [12]  968 	clr	a
      00039D B5 3D 02         [24]  969 	cjne	a,(_digitIdx + 1),00153$
      0003A0 80 02            [24]  970 	sjmp	00154$
      0003A2                        971 00153$:
      0003A2 80 07            [24]  972 	sjmp	00117$
      0003A4                        973 00154$:
                                    974 ;	src/main.c:263: digitIdx = 1;
      0003A4 75 3C 01         [24]  975 	mov	_digitIdx,#0x01
      0003A7 75 3D 00         [24]  976 	mov	(_digitIdx + 1),#0x00
      0003AA 22               [24]  977 	ret
      0003AB                        978 00117$:
                                    979 ;	src/main.c:265: digitIdx++;
      0003AB 05 3C            [12]  980 	inc	_digitIdx
      0003AD E4               [12]  981 	clr	a
      0003AE B5 3C 02         [24]  982 	cjne	a,_digitIdx,00155$
      0003B1 05 3D            [12]  983 	inc	(_digitIdx + 1)
      0003B3                        984 00155$:
      0003B3 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'delay_ms'
                                    988 ;------------------------------------------------------------
                                    989 ;itime                     Allocated to registers r6 r7 
                                    990 ;i                         Allocated to registers r4 r5 
                                    991 ;j                         Allocated to registers r2 r3 
                                    992 ;d                         Allocated to registers 
                                    993 ;------------------------------------------------------------
                                    994 ;	src/main.c:269: void delay_ms(unsigned int itime)
                                    995 ;	-----------------------------------------
                                    996 ;	 function delay_ms
                                    997 ;	-----------------------------------------
      0003B4                        998 _delay_ms:
      0003B4 AE 82            [24]  999 	mov	r6,dpl
      0003B6 AF 83            [24] 1000 	mov	r7,dph
                                   1001 ;	src/main.c:273: for (i=0;i < itime;i++) {
      0003B8 7C 00            [12] 1002 	mov	r4,#0x00
      0003BA 7D 00            [12] 1003 	mov	r5,#0x00
      0003BC                       1004 00107$:
      0003BC C3               [12] 1005 	clr	c
      0003BD EC               [12] 1006 	mov	a,r4
      0003BE 9E               [12] 1007 	subb	a,r6
      0003BF ED               [12] 1008 	mov	a,r5
      0003C0 9F               [12] 1009 	subb	a,r7
      0003C1 50 1B            [24] 1010 	jnc	00109$
                                   1011 ;	src/main.c:274: for(j=0;j<500;j++) {
      0003C3 7A F4            [12] 1012 	mov	r2,#0xF4
      0003C5 7B 01            [12] 1013 	mov	r3,#0x01
      0003C7                       1014 00105$:
                                   1015 ;	src/main.c:275: d=0;
      0003C7 EA               [12] 1016 	mov	a,r2
      0003C8 24 FF            [12] 1017 	add	a,#0xFF
      0003CA F8               [12] 1018 	mov	r0,a
      0003CB EB               [12] 1019 	mov	a,r3
      0003CC 34 FF            [12] 1020 	addc	a,#0xFF
      0003CE F9               [12] 1021 	mov	r1,a
      0003CF 88 02            [24] 1022 	mov	ar2,r0
      0003D1 89 03            [24] 1023 	mov	ar3,r1
                                   1024 ;	src/main.c:274: for(j=0;j<500;j++) {
      0003D3 E8               [12] 1025 	mov	a,r0
      0003D4 49               [12] 1026 	orl	a,r1
      0003D5 70 F0            [24] 1027 	jnz	00105$
                                   1028 ;	src/main.c:273: for (i=0;i < itime;i++) {
      0003D7 0C               [12] 1029 	inc	r4
      0003D8 BC 00 E1         [24] 1030 	cjne	r4,#0x00,00107$
      0003DB 0D               [12] 1031 	inc	r5
      0003DC 80 DE            [24] 1032 	sjmp	00107$
      0003DE                       1033 00109$:
      0003DE 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'ISR_ET0'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	src/main.c:281: void ISR_ET0 (void) __interrupt 1
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function ISR_ET0
                                   1041 ;	-----------------------------------------
      0003DF                       1042 _ISR_ET0:
      0003DF C0 E0            [24] 1043 	push	acc
      0003E1 C0 D0            [24] 1044 	push	psw
                                   1045 ;	src/main.c:283: if (COM == 1){
      0003E3 30 B1 4C         [24] 1046 	jnb	_P3_1,00110$
                                   1047 ;	src/main.c:284: if (range_mode == 1) {
      0003E6 30 00 10         [24] 1048 	jnb	_range_mode,00106$
                                   1049 ;	src/main.c:285: time_mode1++;
      0003E9 05 2E            [12] 1050 	inc	_time_mode1
      0003EB E4               [12] 1051 	clr	a
      0003EC B5 2E 02         [24] 1052 	cjne	a,_time_mode1,00126$
      0003EF 05 2F            [12] 1053 	inc	(_time_mode1 + 1)
      0003F1                       1054 00126$:
                                   1055 ;	src/main.c:286: TH0 = 0xD8;
      0003F1 75 8C D8         [24] 1056 	mov	_TH0,#0xD8
                                   1057 ;	src/main.c:287: TL0 = 0xF0;
      0003F4 75 8A F0         [24] 1058 	mov	_TL0,#0xF0
      0003F7 80 39            [24] 1059 	sjmp	00110$
      0003F9                       1060 00106$:
                                   1061 ;	src/main.c:289: time_mode0++;
      0003F9 05 30            [12] 1062 	inc	_time_mode0
      0003FB E4               [12] 1063 	clr	a
      0003FC B5 30 02         [24] 1064 	cjne	a,_time_mode0,00127$
      0003FF 05 31            [12] 1065 	inc	(_time_mode0 + 1)
      000401                       1066 00127$:
                                   1067 ;	src/main.c:290: if (time_mode0 == 10000) {
      000401 74 10            [12] 1068 	mov	a,#0x10
      000403 B5 30 26         [24] 1069 	cjne	a,_time_mode0,00104$
      000406 74 27            [12] 1070 	mov	a,#0x27
      000408 B5 31 21         [24] 1071 	cjne	a,(_time_mode0 + 1),00104$
                                   1072 ;	src/main.c:291: time_mode0 = 0;
      00040B E4               [12] 1073 	clr	a
      00040C F5 30            [12] 1074 	mov	_time_mode0,a
      00040E F5 31            [12] 1075 	mov	(_time_mode0 + 1),a
                                   1076 ;	src/main.c:292: time_mode1 += 1000; 
      000410 74 E8            [12] 1077 	mov	a,#0xE8
      000412 25 2E            [12] 1078 	add	a,_time_mode1
      000414 F5 2E            [12] 1079 	mov	_time_mode1,a
      000416 74 03            [12] 1080 	mov	a,#0x03
      000418 35 2F            [12] 1081 	addc	a,(_time_mode1 + 1)
      00041A F5 2F            [12] 1082 	mov	(_time_mode1 + 1),a
                                   1083 ;	src/main.c:293: if (time_mode1 >= 10000) {
      00041C C3               [12] 1084 	clr	c
      00041D E5 2E            [12] 1085 	mov	a,_time_mode1
      00041F 94 10            [12] 1086 	subb	a,#0x10
      000421 E5 2F            [12] 1087 	mov	a,(_time_mode1 + 1)
      000423 94 27            [12] 1088 	subb	a,#0x27
      000425 40 05            [24] 1089 	jc	00104$
                                   1090 ;	src/main.c:294: time_mode1 = 0;
      000427 E4               [12] 1091 	clr	a
      000428 F5 2E            [12] 1092 	mov	_time_mode1,a
      00042A F5 2F            [12] 1093 	mov	(_time_mode1 + 1),a
      00042C                       1094 00104$:
                                   1095 ;	src/main.c:297: TH0 = 0xFC;
      00042C 75 8C FC         [24] 1096 	mov	_TH0,#0xFC
                                   1097 ;	src/main.c:298: TL0 = 0x2F;
      00042F 75 8A 2F         [24] 1098 	mov	_TL0,#0x2F
      000432                       1099 00110$:
      000432 D0 D0            [24] 1100 	pop	psw
      000434 D0 E0            [24] 1101 	pop	acc
      000436 32               [24] 1102 	reti
                                   1103 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1104 ;	eliminated unneeded push/pop dpl
                                   1105 ;	eliminated unneeded push/pop dph
                                   1106 ;	eliminated unneeded push/pop b
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'ISR_ET1'
                                   1109 ;------------------------------------------------------------
                                   1110 ;	src/main.c:304: void ISR_ET1 (void) __interrupt 3 
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function ISR_ET1
                                   1113 ;	-----------------------------------------
      000437                       1114 _ISR_ET1:
      000437 C0 21            [24] 1115 	push	bits
      000439 C0 E0            [24] 1116 	push	acc
      00043B C0 F0            [24] 1117 	push	b
      00043D C0 82            [24] 1118 	push	dpl
      00043F C0 83            [24] 1119 	push	dph
      000441 C0 07            [24] 1120 	push	(0+7)
      000443 C0 06            [24] 1121 	push	(0+6)
      000445 C0 05            [24] 1122 	push	(0+5)
      000447 C0 04            [24] 1123 	push	(0+4)
      000449 C0 03            [24] 1124 	push	(0+3)
      00044B C0 02            [24] 1125 	push	(0+2)
      00044D C0 01            [24] 1126 	push	(0+1)
      00044F C0 00            [24] 1127 	push	(0+0)
      000451 C0 D0            [24] 1128 	push	psw
      000453 75 D0 00         [24] 1129 	mov	psw,#0x00
                                   1130 ;	src/main.c:306: update();
      000456 12 01 53         [24] 1131 	lcall	_update
                                   1132 ;	src/main.c:307: display();
      000459 12 02 F8         [24] 1133 	lcall	_display
                                   1134 ;	src/main.c:308: TH1 = 0xF8;      //Nap gia tri bat dau 8bit
      00045C 75 8D F8         [24] 1135 	mov	_TH1,#0xF8
                                   1136 ;	src/main.c:309: TL1 = 0x30;
      00045F 75 8B 30         [24] 1137 	mov	_TL1,#0x30
      000462 D0 D0            [24] 1138 	pop	psw
      000464 D0 00            [24] 1139 	pop	(0+0)
      000466 D0 01            [24] 1140 	pop	(0+1)
      000468 D0 02            [24] 1141 	pop	(0+2)
      00046A D0 03            [24] 1142 	pop	(0+3)
      00046C D0 04            [24] 1143 	pop	(0+4)
      00046E D0 05            [24] 1144 	pop	(0+5)
      000470 D0 06            [24] 1145 	pop	(0+6)
      000472 D0 07            [24] 1146 	pop	(0+7)
      000474 D0 83            [24] 1147 	pop	dph
      000476 D0 82            [24] 1148 	pop	dpl
      000478 D0 F0            [24] 1149 	pop	b
      00047A D0 E0            [24] 1150 	pop	acc
      00047C D0 21            [24] 1151 	pop	bits
      00047E 32               [24] 1152 	reti
                                   1153 	.area CSEG    (CODE)
                                   1154 	.area CONST   (CODE)
                                   1155 	.area XINIT   (CODE)
                                   1156 	.area CABS    (ABS,CODE)
