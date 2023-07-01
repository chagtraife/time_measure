;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Sat Jul 01 23:53:59 2023
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ISR_ET1
	.globl _ISR_ET0
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _range_mode
	.globl _setDisplay_PARM_2
	.globl _digitIdx
	.globl _pointIdx
	.globl _digitVal_4
	.globl _digitVal_3
	.globl _digitVal_2
	.globl _digitVal_1
	.globl _time_mode0
	.globl _time_1000
	.globl _time
	.globl _factor
	.globl _led7
	.globl _init_GPIO
	.globl _init_TC0
	.globl _init_TC1
	.globl _setTimer1Value
	.globl _readRangeSW
	.globl _readResetButton
	.globl _resetTime
	.globl _update
	.globl _setDisplay
	.globl _display
	.globl _delay_ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_led7::
	.ds 10
_factor::
	.ds 2
_time::
	.ds 2
_time_1000::
	.ds 2
_time_mode0::
	.ds 2
_digitVal_1::
	.ds 2
_digitVal_2::
	.ds 2
_digitVal_3::
	.ds 2
_digitVal_4::
	.ds 2
_pointIdx::
	.ds 2
_digitIdx::
	.ds 2
_setDisplay_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_range_mode::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_ISR_ET0
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_ET1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	src/main.c:36: uint8_t led7[10] = { 0x84, 0x9F, 0xC8, 0x89, 0x93, 0xA1, 0xA0, 0x8F, 0x80, 0x81 };
	mov	_led7,#0x84
	mov	(_led7 + 0x0001),#0x9F
	mov	(_led7 + 0x0002),#0xC8
	mov	(_led7 + 0x0003),#0x89
	mov	(_led7 + 0x0004),#0x93
	mov	(_led7 + 0x0005),#0xA1
	mov	(_led7 + 0x0006),#0xA0
	mov	(_led7 + 0x0007),#0x8F
	mov	(_led7 + 0x0008),#0x80
	mov	(_led7 + 0x0009),#0x81
;	src/main.c:42: unsigned int factor = 100;
	mov	_factor,#0x64
	mov	(_factor + 1),#0x00
;	src/main.c:44: unsigned int time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	src/main.c:45: unsigned int time_1000 = 0;
	mov	_time_1000,a
	mov	(_time_1000 + 1),a
;	src/main.c:46: unsigned int time_mode0 = 0;
	mov	_time_mode0,a
	mov	(_time_mode0 + 1),a
;	src/main.c:47: unsigned int digitVal_1, digitVal_2, digitVal_3, digitVal_4 = 0;
	mov	_digitVal_4,a
	mov	(_digitVal_4 + 1),a
;	src/main.c:48: unsigned int pointIdx = 0;
	mov	_pointIdx,a
	mov	(_pointIdx + 1),a
;	src/main.c:49: unsigned int digitIdx = 1; // range in 1-4
	mov	_digitIdx,#0x01
;	1-genFromRTrack replaced	mov	(_digitIdx + 1),#0x00
	mov	(_digitIdx + 1),a
;	src/main.c:41: __bit range_mode = 1;
	setb	_range_mode
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/main.c:68: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:70: readRangeSW();
	lcall	_readRangeSW
;	src/main.c:71: init_GPIO();
	lcall	_init_GPIO
;	src/main.c:72: init_TC0();
	lcall	_init_TC0
;	src/main.c:73: init_TC1();
	lcall	_init_TC1
;	src/main.c:75: update();
	lcall	_update
;	src/main.c:76: while (1)
00102$:
;	src/main.c:78: readRangeSW();
	lcall	_readRangeSW
;	src/main.c:79: readResetButton();
	lcall	_readResetButton
;	src/main.c:80: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'init_GPIO'
;------------------------------------------------------------
;	src/main.c:84: void init_GPIO(void)
;	-----------------------------------------
;	 function init_GPIO
;	-----------------------------------------
_init_GPIO:
;	src/main.c:86: RESET = 0;
	clr	_P3_7
;	src/main.c:87: COM = 1;
	setb	_P3_1
;	src/main.c:88: RANGE_SW = 1;
	setb	_P3_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_TC0'
;------------------------------------------------------------
;	src/main.c:92: void init_TC0(void)
;	-----------------------------------------
;	 function init_TC0
;	-----------------------------------------
_init_TC0:
;	src/main.c:94: ET0 = 1;         // cho phep ngat timer 0
	setb	_ET0
;	src/main.c:95: TMOD = 0x02;    //Sd Timer0 che do 8bit tu nap lai (ngat timer)
	mov	_TMOD,#0x02
;	src/main.c:96: TH0 = 0x1F;      //Nap gia tri bat dau 8bit
	mov	_TH0,#0x1F
;	src/main.c:97: TL0 = 0x1F;
	mov	_TL0,#0x1F
;	src/main.c:98: TR0 = 1;         //Khoi dong timer0
	setb	_TR0
;	src/main.c:99: ET0 = 1;         //Ngat timer0
	setb	_ET0
;	src/main.c:100: EA = 1;          // cho phep ngat toan cuc
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_TC1'
;------------------------------------------------------------
;	src/main.c:104: void init_TC1(void)
;	-----------------------------------------
;	 function init_TC1
;	-----------------------------------------
_init_TC1:
;	src/main.c:106: ET1 = 1;         // cho phep ngat timer 1
	setb	_ET1
;	src/main.c:107: TMOD |= 0x10;    //Use Timer1 at 16-bit timer mode.
	orl	_TMOD,#0x10
;	src/main.c:108: setTimer1Value();
	lcall	_setTimer1Value
;	src/main.c:109: TR1 = 1;         //Khoi dong timer1
	setb	_TR1
;	src/main.c:110: ET1 = 1;         //Ngat timer1
	setb	_ET1
;	src/main.c:111: EA = 1;          // cho phep ngat toan cuc
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTimer1Value'
;------------------------------------------------------------
;	src/main.c:114: void setTimer1Value(void)
;	-----------------------------------------
;	 function setTimer1Value
;	-----------------------------------------
_setTimer1Value:
;	src/main.c:117: TH1 = 0x03;
	mov	_TH1,#0x03
;	src/main.c:118: TL1 = 0x8E;
	mov	_TL1,#0x8E
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readRangeSW'
;------------------------------------------------------------
;	src/main.c:121: void readRangeSW(void)
;	-----------------------------------------
;	 function readRangeSW
;	-----------------------------------------
_readRangeSW:
;	src/main.c:123: if (range_mode != RANGE_SW) {
	mov	c,_range_mode
	jb	_P3_0,00119$
	cpl	c
00119$:
	jc	00108$
;	src/main.c:124: delay_ms(50);
	mov	dptr,#0x0032
	lcall	_delay_ms
;	src/main.c:125: if (range_mode != RANGE_SW){
	mov	c,_range_mode
	jb	_P3_0,00121$
	cpl	c
00121$:
	jc	00108$
;	src/main.c:126: range_mode = RANGE_SW;
	mov	c,_P3_0
;	src/main.c:127: if (range_mode == 1) {
	mov	_range_mode,c
	jnc	00102$
;	src/main.c:128: factor = 100;
	mov	_factor,#0x64
	mov	(_factor + 1),#0x00
	sjmp	00103$
00102$:
;	src/main.c:130: factor = 1000;
	mov	_factor,#0xE8
	mov	(_factor + 1),#0x03
00103$:
;	src/main.c:133: update();
	ljmp	_update
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readResetButton'
;------------------------------------------------------------
;	src/main.c:138: void readResetButton()
;	-----------------------------------------
;	 function readResetButton
;	-----------------------------------------
_readResetButton:
;	src/main.c:140: if (RESET == 1) {
	jnb	_P3_7,00106$
;	src/main.c:141: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	src/main.c:142: while (RESET == 1){
00101$:
	jnb	_P3_7,00103$
;	src/main.c:143: delay_ms(10);
	mov	dptr,#0x000A
	lcall	_delay_ms
	sjmp	00101$
00103$:
;	src/main.c:145: resetTime();
	ljmp	_resetTime
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetTime'
;------------------------------------------------------------
;	src/main.c:149: void resetTime()
;	-----------------------------------------
;	 function resetTime
;	-----------------------------------------
_resetTime:
;	src/main.c:151: time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	src/main.c:152: update();
	ljmp	_update
;------------------------------------------------------------
;Allocation info for local variables in function 'update'
;------------------------------------------------------------
;	src/main.c:155: void update(void)
;	-----------------------------------------
;	 function update
;	-----------------------------------------
_update:
;	src/main.c:157: if (factor == 1000){
	mov	a,#0xE8
	cjne	a,_factor,00102$
	mov	a,#0x03
	cjne	a,(_factor + 1),00102$
;	src/main.c:158: time_mode0	= (time % 1000) *10 + time_1000;
	mov	__moduint_PARM_2,#0xE8
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_time
	mov	dph,(_time + 1)
	lcall	__moduint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	add	a,_time_1000
	mov	_time_mode0,a
	mov	a,(_time_1000 + 1)
	addc	a,b
	mov	(_time_mode0 + 1),a
;	src/main.c:159: setDisplay(time_mode0, factor);
	mov	_setDisplay_PARM_2,_factor
	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
	mov	dpl,_time_mode0
	mov	dph,(_time_mode0 + 1)
	ljmp	_setDisplay
00102$:
;	src/main.c:161: setDisplay(time, factor);
	mov	_setDisplay_PARM_2,_factor
	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
	mov	dpl,_time
	mov	dph,(_time + 1)
	ljmp	_setDisplay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDisplay'
;------------------------------------------------------------
;f                         Allocated with name '_setDisplay_PARM_2'
;number                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:165: void setDisplay(unsigned int number, unsigned int f)
;	-----------------------------------------
;	 function setDisplay
;	-----------------------------------------
_setDisplay:
;	src/main.c:167: digitVal_1 = number % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	_digitVal_1,dpl
	mov	(_digitVal_1 + 1),dph
	pop	ar6
	pop	ar7
;	src/main.c:168: digitVal_2 = (number /10) % 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	_digitVal_2,dpl
	mov	(_digitVal_2 + 1),dph
	pop	ar6
	pop	ar7
;	src/main.c:169: digitVal_3 = (number /100) % 10;
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	_digitVal_3,dpl
	mov	(_digitVal_3 + 1),dph
	pop	ar6
	pop	ar7
;	src/main.c:170: digitVal_4 = (number /1000) % 10;
	mov	__divuint_PARM_2,#0xE8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	_digitVal_4,dpl
	mov	(_digitVal_4 + 1),dph
;	src/main.c:172: if (f == 1){
	mov	a,#0x01
	cjne	a,_setDisplay_PARM_2,00126$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00126$
	sjmp	00127$
00126$:
	sjmp	00110$
00127$:
;	src/main.c:173: pointIdx = 0;
	clr	a
	mov	_pointIdx,a
	mov	(_pointIdx + 1),a
	ret
00110$:
;	src/main.c:174: } else if (f == 10) {
	mov	a,#0x0A
	cjne	a,_setDisplay_PARM_2,00128$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00128$
	sjmp	00129$
00128$:
	sjmp	00107$
00129$:
;	src/main.c:175: pointIdx = 2;
	mov	_pointIdx,#0x02
	mov	(_pointIdx + 1),#0x00
	ret
00107$:
;	src/main.c:176: } else if (f == 100) {
	mov	a,#0x64
	cjne	a,_setDisplay_PARM_2,00130$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00130$
	sjmp	00131$
00130$:
	sjmp	00104$
00131$:
;	src/main.c:177: pointIdx = 3;
	mov	_pointIdx,#0x03
	mov	(_pointIdx + 1),#0x00
	ret
00104$:
;	src/main.c:178: } else if (f == 1000) {
	mov	a,#0xE8
	cjne	a,_setDisplay_PARM_2,00112$
	mov	a,#0x03
	cjne	a,(_setDisplay_PARM_2 + 1),00112$
;	src/main.c:179: pointIdx = 4;
	mov	_pointIdx,#0x04
	mov	(_pointIdx + 1),#0x00
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	src/main.c:183: void display(void)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	src/main.c:185: LED7_1 = 1;
	setb	_P3_5
;	src/main.c:186: LED7_2 = 1;
	setb	_P3_4
;	src/main.c:187: LED7_3 = 1;
	setb	_P3_3
;	src/main.c:188: LED7_4 = 1;
	setb	_P3_2
;	src/main.c:189: switch (digitIdx) {
	clr	c
	mov	a,#0x04
	subb	a,_digitIdx
	clr	a
	subb	a,(_digitIdx + 1)
	jnc	00137$
	ljmp	00113$
00137$:
	mov	a,_digitIdx
	mov	b,#0x03
	mul	ab
	mov	dptr,#00138$
	jmp	@a+dptr
00138$:
	ljmp	00113$
	ljmp	00101$
	ljmp	00104$
	ljmp	00107$
	ljmp	00110$
;	src/main.c:190: case 1: {
00101$:
;	src/main.c:191: P1 = led7[digitVal_1];
	mov	a,_digitVal_1
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:192: if (pointIdx == 1){
	mov	a,#0x01
	cjne	a,_pointIdx,00139$
	clr	a
	cjne	a,(_pointIdx + 1),00139$
	sjmp	00140$
00139$:
	sjmp	00103$
00140$:
;	src/main.c:193: LED7DP = 0;
	clr	_P1_7
00103$:
;	src/main.c:195: LED7_1 = 0;
	clr	_P3_5
;	src/main.c:196: break;
;	src/main.c:198: case 2: {
	sjmp	00113$
00104$:
;	src/main.c:199: P1 = led7[digitVal_2];
	mov	a,_digitVal_2
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:200: if (pointIdx == 2){
	mov	a,#0x02
	cjne	a,_pointIdx,00141$
	clr	a
	cjne	a,(_pointIdx + 1),00141$
	sjmp	00142$
00141$:
	sjmp	00106$
00142$:
;	src/main.c:201: LED7DP = 0;
	clr	_P1_7
00106$:
;	src/main.c:203: LED7_2 = 0;
	clr	_P3_4
;	src/main.c:204: break;
;	src/main.c:206: case 3: {
	sjmp	00113$
00107$:
;	src/main.c:207: P1 = led7[digitVal_3];
	mov	a,_digitVal_3
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:208: if (pointIdx == 3){
	mov	a,#0x03
	cjne	a,_pointIdx,00143$
	clr	a
	cjne	a,(_pointIdx + 1),00143$
	sjmp	00144$
00143$:
	sjmp	00109$
00144$:
;	src/main.c:209: LED7DP = 0;
	clr	_P1_7
00109$:
;	src/main.c:211: LED7_3 = 0;
	clr	_P3_3
;	src/main.c:212: break;
;	src/main.c:214: case 4: {
	sjmp	00113$
00110$:
;	src/main.c:215: P1 = led7[digitVal_4];
	mov	a,_digitVal_4
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:216: if (pointIdx == 4){
	mov	a,#0x04
	cjne	a,_pointIdx,00145$
	clr	a
	cjne	a,(_pointIdx + 1),00145$
	sjmp	00146$
00145$:
	sjmp	00112$
00146$:
;	src/main.c:217: LED7DP = 0;
	clr	_P1_7
00112$:
;	src/main.c:219: LED7_4 = 0;	
	clr	_P3_2
;	src/main.c:222: }
00113$:
;	src/main.c:224: if (digitIdx == 4) {
	mov	a,#0x04
	cjne	a,_digitIdx,00147$
	clr	a
	cjne	a,(_digitIdx + 1),00147$
	sjmp	00148$
00147$:
	sjmp	00115$
00148$:
;	src/main.c:225: digitIdx = 1;
	mov	_digitIdx,#0x01
	mov	(_digitIdx + 1),#0x00
	ret
00115$:
;	src/main.c:227: digitIdx++;
	inc	_digitIdx
	clr	a
	cjne	a,_digitIdx,00149$
	inc	(_digitIdx + 1)
00149$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;itime                     Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;d                         Allocated to registers 
;------------------------------------------------------------
;	src/main.c:231: void delay_ms(unsigned int itime)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:235: for (i=0;i < itime;i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	src/main.c:236: for(j=0;j<1275;j++) {
	mov	r2,#0xFB
	mov	r3,#0x04
00105$:
;	src/main.c:237: d=0;
	mov	a,r2
	add	a,#0xFF
	mov	r0,a
	mov	a,r3
	addc	a,#0xFF
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
;	src/main.c:236: for(j=0;j<1275;j++) {
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	src/main.c:235: for (i=0;i < itime;i++) {
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ET0'
;------------------------------------------------------------
;	src/main.c:243: void ISR_ET0 (void) __interrupt 1 
;	-----------------------------------------
;	 function ISR_ET0
;	-----------------------------------------
_ISR_ET0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	src/main.c:245: display();
	lcall	_display
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ET1'
;------------------------------------------------------------
;	src/main.c:249: void ISR_ET1 (void) __interrupt 3
;	-----------------------------------------
;	 function ISR_ET1
;	-----------------------------------------
_ISR_ET1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	src/main.c:251: if (COM == 1){
	jnb	_P3_1,00104$
;	src/main.c:252: time_1000++;
	inc	_time_1000
	clr	a
	cjne	a,_time_1000,00114$
	inc	(_time_1000 + 1)
00114$:
;	src/main.c:253: if (time_1000 == 10) {
	mov	a,#0x0A
	cjne	a,_time_1000,00115$
	clr	a
	cjne	a,(_time_1000 + 1),00115$
	sjmp	00116$
00115$:
	sjmp	00102$
00116$:
;	src/main.c:254: time_1000 = 0;
	clr	a
	mov	_time_1000,a
	mov	(_time_1000 + 1),a
;	src/main.c:255: time++;	
	inc	_time
;	genFromRTrack removed	clr	a
	cjne	a,_time,00117$
	inc	(_time + 1)
00117$:
00102$:
;	src/main.c:257: update();
	lcall	_update
00104$:
;	src/main.c:259: setTimer1Value();
	lcall	_setTimer1Value
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
