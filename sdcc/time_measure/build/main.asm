;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Sun Jul 02 20:33:26 2023
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
	.globl _mode_tmp
	.globl _range_mode
	.globl _setDisplay_PARM_2
	.globl _digitIdx
	.globl _pointIdx
	.globl _digitVal_4
	.globl _digitVal_3
	.globl _digitVal_2
	.globl _digitVal_1
	.globl _time_mode0
	.globl _time_mode1
	.globl _factor
	.globl _led7
	.globl _init_GPIO
	.globl _init_TC1
	.globl _init_TC0
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
_time_mode1::
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
_mode_tmp::
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
;	src/main.c:46: unsigned int time_mode1 = 0;
	clr	a
	mov	_time_mode1,a
	mov	(_time_mode1 + 1),a
;	src/main.c:47: unsigned int time_mode0 = 0;
	mov	_time_mode0,a
	mov	(_time_mode0 + 1),a
;	src/main.c:48: unsigned int digitVal_1, digitVal_2, digitVal_3, digitVal_4 = 0;
	mov	_digitVal_4,a
	mov	(_digitVal_4 + 1),a
;	src/main.c:49: unsigned int pointIdx = 0;
	mov	_pointIdx,a
	mov	(_pointIdx + 1),a
;	src/main.c:50: unsigned int digitIdx = 1; // range in 1-4
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
;	src/main.c:74: TMOD = 0x11;
	mov	_TMOD,#0x11
;	src/main.c:76: ET0 = 1;
	setb	_ET0
;	src/main.c:77: if (range_mode == 1) {
	jnb	_range_mode,00102$
;	src/main.c:78: TH0 = 0xD8;
	mov	_TH0,#0xD8
;	src/main.c:79: TL0 = 0xF0;
	mov	_TL0,#0xF0
	sjmp	00103$
00102$:
;	src/main.c:81: TH0 = 0xFC;
	mov	_TH0,#0xFC
;	src/main.c:82: TL0 = 0x2F;
	mov	_TL0,#0x2F
00103$:
;	src/main.c:85: PT0 = 1;
	setb	_PT0
;	src/main.c:86: TR0 = 1;         //Khoi dong timer1
	setb	_TR0
;	src/main.c:87: ET0 = 1;         //Ngat timer1
	setb	_ET0
;	src/main.c:89: ET1 = 1;
	setb	_ET1
;	src/main.c:90: TH1 = 0xF8;
	mov	_TH1,#0xF8
;	src/main.c:91: TL1 = 0x30;
	mov	_TL1,#0x30
;	src/main.c:92: TR1 = 1;
	setb	_TR1
;	src/main.c:93: ET1 = 1;
	setb	_ET1
;	src/main.c:95: EA = 1;          // cho phep ngat toan cuc
	setb	_EA
;	src/main.c:98: update();
	lcall	_update
;	src/main.c:99: while (1)
00105$:
;	src/main.c:101: readRangeSW();
	lcall	_readRangeSW
;	src/main.c:102: readResetButton();
	lcall	_readResetButton
;	src/main.c:103: delay_ms(2);
	mov	dptr,#0x0002
	lcall	_delay_ms
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'init_GPIO'
;------------------------------------------------------------
;	src/main.c:107: void init_GPIO(void)
;	-----------------------------------------
;	 function init_GPIO
;	-----------------------------------------
_init_GPIO:
;	src/main.c:109: RESET = 0;
	clr	_P3_7
;	src/main.c:110: COM = 1;
	setb	_P3_1
;	src/main.c:111: RANGE_SW = 1;
	setb	_P3_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_TC1'
;------------------------------------------------------------
;	src/main.c:115: void init_TC1(void)
;	-----------------------------------------
;	 function init_TC1
;	-----------------------------------------
_init_TC1:
;	src/main.c:117: ET1 = 1;         // cho phep ngat timer 0
	setb	_ET1
;	src/main.c:119: TH1 = 0xF8;      //Nap gia tri bat dau 8bit
	mov	_TH1,#0xF8
;	src/main.c:120: TL1 = 0x30;
	mov	_TL1,#0x30
;	src/main.c:121: TR1 = 0;         //Khoi dong timer0
	clr	_TR1
;	src/main.c:122: ET1 = 1;         //Ngat timer0
	setb	_ET1
;	src/main.c:123: EA = 1;          // cho phep ngat toan cuc
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_TC0'
;------------------------------------------------------------
;	src/main.c:127: void init_TC0(void)
;	-----------------------------------------
;	 function init_TC0
;	-----------------------------------------
_init_TC0:
;	src/main.c:129: ET0 = 1;         // cho phep ngat timer 1
	setb	_ET0
;	src/main.c:130: TMOD = 0x11;    //Use Timer1 at 16-bit timer mode.
	mov	_TMOD,#0x11
;	src/main.c:131: TH0 = 0xFC;
	mov	_TH0,#0xFC
;	src/main.c:132: TL0 = 0x2F;
	mov	_TL0,#0x2F
;	src/main.c:133: PT0 = 1;
	setb	_PT0
;	src/main.c:134: TR0 = 1;         //Khoi dong timer1
	setb	_TR0
;	src/main.c:135: ET0 = 1;         //Ngat timer1
	setb	_ET0
;	src/main.c:136: EA = 1;          // cho phep ngat toan cuc
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readRangeSW'
;------------------------------------------------------------
;	src/main.c:139: void readRangeSW(void)
;	-----------------------------------------
;	 function readRangeSW
;	-----------------------------------------
_readRangeSW:
;	src/main.c:141: if (range_mode != RANGE_SW) {
	mov	c,_range_mode
	jb	_P3_0,00108$
	cpl	c
00108$:
	jc	00103$
;	src/main.c:142: delay_ms(2);
	mov	dptr,#0x0002
	lcall	_delay_ms
;	src/main.c:143: mode_tmp = RANGE_SW;
	mov	c,_P3_0
	mov	_mode_tmp,c
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readResetButton'
;------------------------------------------------------------
;	src/main.c:161: void readResetButton()
;	-----------------------------------------
;	 function readResetButton
;	-----------------------------------------
_readResetButton:
;	src/main.c:163: if (RESET == 1) {
	jnb	_P3_7,00105$
;	src/main.c:164: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	src/main.c:165: if (RESET == 1){
	jnb	_P3_7,00105$
;	src/main.c:166: resetTime();
	ljmp	_resetTime
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetTime'
;------------------------------------------------------------
;	src/main.c:171: void resetTime()
;	-----------------------------------------
;	 function resetTime
;	-----------------------------------------
_resetTime:
;	src/main.c:173: time_mode1 = 0;
	clr	a
	mov	_time_mode1,a
	mov	(_time_mode1 + 1),a
;	src/main.c:174: time_mode0 = 0;
	mov	_time_mode0,a
	mov	(_time_mode0 + 1),a
;	src/main.c:175: update();
	ljmp	_update
;------------------------------------------------------------
;Allocation info for local variables in function 'update'
;------------------------------------------------------------
;	src/main.c:178: void update(void)
;	-----------------------------------------
;	 function update
;	-----------------------------------------
_update:
;	src/main.c:180: if (range_mode != mode_tmp){
	mov	c,_range_mode
	jb	_mode_tmp,00120$
	cpl	c
00120$:
	jnc	00121$
	ljmp	00105$
00121$:
;	src/main.c:181: if (mode_tmp == 1) {
	jnb	_mode_tmp,00102$
;	src/main.c:182: factor = 100;
	mov	_factor,#0x64
	mov	(_factor + 1),#0x00
;	src/main.c:183: time_mode1 = ((time_mode1 / 1000) % 10) * 1000 + (time_mode0 / 10) % 1000;
	mov	__divuint_PARM_2,#0xE8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,_time_mode1
	mov	dph,(_time_mode1 + 1)
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_time_mode0
	mov	dph,(_time_mode0 + 1)
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0xE8
	mov	(__moduint_PARM_2 + 1),#0x03
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	_time_mode1,a
	mov	a,r5
	addc	a,r7
	mov	(_time_mode1 + 1),a
	sjmp	00103$
00102$:
;	src/main.c:185: factor = 1000;
	mov	_factor,#0xE8
	mov	(_factor + 1),#0x03
;	src/main.c:186: time_mode0 = (time_mode1 % 1000) * 10;
	mov	__moduint_PARM_2,#0xE8
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_time_mode1
	mov	dph,(_time_mode1 + 1)
	lcall	__moduint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_time_mode0,dpl
	mov	(_time_mode0 + 1),dph
00103$:
;	src/main.c:189: range_mode = mode_tmp;
	mov	c,_mode_tmp
	mov	_range_mode,c
00105$:
;	src/main.c:191: if (factor == 1000){
	mov	a,#0xE8
	cjne	a,_factor,00107$
	mov	a,#0x03
	cjne	a,(_factor + 1),00107$
;	src/main.c:192: setDisplay(time_mode0, factor);
	mov	_setDisplay_PARM_2,_factor
	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
	mov	dpl,_time_mode0
	mov	dph,(_time_mode0 + 1)
	ljmp	_setDisplay
00107$:
;	src/main.c:194: setDisplay(time_mode1, factor);
	mov	_setDisplay_PARM_2,_factor
	mov	(_setDisplay_PARM_2 + 1),(_factor + 1)
	mov	dpl,_time_mode1
	mov	dph,(_time_mode1 + 1)
	ljmp	_setDisplay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDisplay'
;------------------------------------------------------------
;f                         Allocated with name '_setDisplay_PARM_2'
;number                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:198: void setDisplay(unsigned int number, unsigned int f)
;	-----------------------------------------
;	 function setDisplay
;	-----------------------------------------
_setDisplay:
;	src/main.c:200: digitVal_1 = number % 10;
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
;	src/main.c:201: digitVal_2 = (number /10) % 10;
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
;	src/main.c:202: digitVal_3 = (number /100) % 10;
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
;	src/main.c:203: if ((number < 1000) && (f !=1000)){
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	subb	a,#0x03
	jnc	00102$
	mov	a,#0xE8
	cjne	a,_setDisplay_PARM_2,00137$
	mov	a,#0x03
	cjne	a,(_setDisplay_PARM_2 + 1),00137$
	sjmp	00102$
00137$:
;	src/main.c:204: digitVal_4 = 10; // mean do not display
	mov	_digitVal_4,#0x0A
	mov	(_digitVal_4 + 1),#0x00
	sjmp	00103$
00102$:
;	src/main.c:206: digitVal_4 = (number /1000) % 10;
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
00103$:
;	src/main.c:209: if (f == 1){
	mov	a,#0x01
	cjne	a,_setDisplay_PARM_2,00138$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00138$
	sjmp	00139$
00138$:
	sjmp	00114$
00139$:
;	src/main.c:210: pointIdx = 0;
	clr	a
	mov	_pointIdx,a
	mov	(_pointIdx + 1),a
	ret
00114$:
;	src/main.c:211: } else if (f == 10) {
	mov	a,#0x0A
	cjne	a,_setDisplay_PARM_2,00140$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00140$
	sjmp	00141$
00140$:
	sjmp	00111$
00141$:
;	src/main.c:212: pointIdx = 2;
	mov	_pointIdx,#0x02
	mov	(_pointIdx + 1),#0x00
	ret
00111$:
;	src/main.c:213: } else if (f == 100) {
	mov	a,#0x64
	cjne	a,_setDisplay_PARM_2,00142$
	clr	a
	cjne	a,(_setDisplay_PARM_2 + 1),00142$
	sjmp	00143$
00142$:
	sjmp	00108$
00143$:
;	src/main.c:214: pointIdx = 3;
	mov	_pointIdx,#0x03
	mov	(_pointIdx + 1),#0x00
	ret
00108$:
;	src/main.c:215: } else if (f == 1000) {
	mov	a,#0xE8
	cjne	a,_setDisplay_PARM_2,00116$
	mov	a,#0x03
	cjne	a,(_setDisplay_PARM_2 + 1),00116$
;	src/main.c:216: pointIdx = 4;
	mov	_pointIdx,#0x04
	mov	(_pointIdx + 1),#0x00
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	src/main.c:220: void display(void)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	src/main.c:222: LED7_1 = 1;
	setb	_P3_5
;	src/main.c:223: LED7_2 = 1;
	setb	_P3_4
;	src/main.c:224: LED7_3 = 1;
	setb	_P3_3
;	src/main.c:225: LED7_4 = 1;
	setb	_P3_2
;	src/main.c:226: switch (digitIdx) {
	clr	c
	mov	a,#0x04
	subb	a,_digitIdx
	clr	a
	subb	a,(_digitIdx + 1)
	jnc	00142$
	ljmp	00115$
00142$:
	mov	a,_digitIdx
	mov	b,#0x03
	mul	ab
	mov	dptr,#00143$
	jmp	@a+dptr
00143$:
	ljmp	00115$
	ljmp	00101$
	ljmp	00104$
	ljmp	00107$
	ljmp	00110$
;	src/main.c:227: case 1: {
00101$:
;	src/main.c:228: P1 = led7[digitVal_1];
	mov	a,_digitVal_1
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:229: if (pointIdx == 1){
	mov	a,#0x01
	cjne	a,_pointIdx,00144$
	clr	a
	cjne	a,(_pointIdx + 1),00144$
	sjmp	00145$
00144$:
	sjmp	00103$
00145$:
;	src/main.c:230: LED7DP = 0;
	clr	_P1_7
00103$:
;	src/main.c:232: LED7_1 = 0;
	clr	_P3_5
;	src/main.c:233: break;
;	src/main.c:235: case 2: {
	sjmp	00115$
00104$:
;	src/main.c:236: P1 = led7[digitVal_2];
	mov	a,_digitVal_2
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:237: if (pointIdx == 2){
	mov	a,#0x02
	cjne	a,_pointIdx,00146$
	clr	a
	cjne	a,(_pointIdx + 1),00146$
	sjmp	00147$
00146$:
	sjmp	00106$
00147$:
;	src/main.c:238: LED7DP = 0;
	clr	_P1_7
00106$:
;	src/main.c:240: LED7_2 = 0;
	clr	_P3_4
;	src/main.c:241: break;
;	src/main.c:243: case 3: {
	sjmp	00115$
00107$:
;	src/main.c:244: P1 = led7[digitVal_3];
	mov	a,_digitVal_3
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:245: if (pointIdx == 3){
	mov	a,#0x03
	cjne	a,_pointIdx,00148$
	clr	a
	cjne	a,(_pointIdx + 1),00148$
	sjmp	00149$
00148$:
	sjmp	00109$
00149$:
;	src/main.c:246: LED7DP = 0;
	clr	_P1_7
00109$:
;	src/main.c:248: LED7_3 = 0;
	clr	_P3_3
;	src/main.c:249: break;
;	src/main.c:251: case 4: {
	sjmp	00115$
00110$:
;	src/main.c:252: if (digitVal_4 == 10) break;
	mov	a,#0x0A
	cjne	a,_digitVal_4,00150$
	clr	a
	cjne	a,(_digitVal_4 + 1),00150$
	sjmp	00115$
00150$:
;	src/main.c:253: P1 = led7[digitVal_4];
	mov	a,_digitVal_4
	add	a,#_led7
	mov	r1,a
	mov	_P1,@r1
;	src/main.c:254: if (pointIdx == 4){
	mov	a,#0x04
	cjne	a,_pointIdx,00151$
	clr	a
	cjne	a,(_pointIdx + 1),00151$
	sjmp	00152$
00151$:
	sjmp	00114$
00152$:
;	src/main.c:255: LED7DP = 0;
	clr	_P1_7
00114$:
;	src/main.c:257: LED7_4 = 0;	
	clr	_P3_2
;	src/main.c:260: }
00115$:
;	src/main.c:262: if (digitIdx == 4) {
	mov	a,#0x04
	cjne	a,_digitIdx,00153$
	clr	a
	cjne	a,(_digitIdx + 1),00153$
	sjmp	00154$
00153$:
	sjmp	00117$
00154$:
;	src/main.c:263: digitIdx = 1;
	mov	_digitIdx,#0x01
	mov	(_digitIdx + 1),#0x00
	ret
00117$:
;	src/main.c:265: digitIdx++;
	inc	_digitIdx
	clr	a
	cjne	a,_digitIdx,00155$
	inc	(_digitIdx + 1)
00155$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;itime                     Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;d                         Allocated to registers 
;------------------------------------------------------------
;	src/main.c:269: void delay_ms(unsigned int itime)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:273: for (i=0;i < itime;i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	src/main.c:274: for(j=0;j<500;j++) {
	mov	r2,#0xF4
	mov	r3,#0x01
00105$:
;	src/main.c:275: d=0;
	mov	a,r2
	add	a,#0xFF
	mov	r0,a
	mov	a,r3
	addc	a,#0xFF
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
;	src/main.c:274: for(j=0;j<500;j++) {
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	src/main.c:273: for (i=0;i < itime;i++) {
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ET0'
;------------------------------------------------------------
;	src/main.c:281: void ISR_ET0 (void) __interrupt 1
;	-----------------------------------------
;	 function ISR_ET0
;	-----------------------------------------
_ISR_ET0:
	push	acc
	push	psw
;	src/main.c:283: if (COM == 1){
	jnb	_P3_1,00110$
;	src/main.c:284: if (range_mode == 1) {
	jnb	_range_mode,00106$
;	src/main.c:285: time_mode1++;
	inc	_time_mode1
	clr	a
	cjne	a,_time_mode1,00126$
	inc	(_time_mode1 + 1)
00126$:
;	src/main.c:286: TH0 = 0xD8;
	mov	_TH0,#0xD8
;	src/main.c:287: TL0 = 0xF0;
	mov	_TL0,#0xF0
	sjmp	00110$
00106$:
;	src/main.c:289: time_mode0++;
	inc	_time_mode0
	clr	a
	cjne	a,_time_mode0,00127$
	inc	(_time_mode0 + 1)
00127$:
;	src/main.c:290: if (time_mode0 == 10000) {
	mov	a,#0x10
	cjne	a,_time_mode0,00104$
	mov	a,#0x27
	cjne	a,(_time_mode0 + 1),00104$
;	src/main.c:291: time_mode0 = 0;
	clr	a
	mov	_time_mode0,a
	mov	(_time_mode0 + 1),a
;	src/main.c:292: time_mode1 += 1000; 
	mov	a,#0xE8
	add	a,_time_mode1
	mov	_time_mode1,a
	mov	a,#0x03
	addc	a,(_time_mode1 + 1)
	mov	(_time_mode1 + 1),a
;	src/main.c:293: if (time_mode1 >= 10000) {
	clr	c
	mov	a,_time_mode1
	subb	a,#0x10
	mov	a,(_time_mode1 + 1)
	subb	a,#0x27
	jc	00104$
;	src/main.c:294: time_mode1 = 0;
	clr	a
	mov	_time_mode1,a
	mov	(_time_mode1 + 1),a
00104$:
;	src/main.c:297: TH0 = 0xFC;
	mov	_TH0,#0xFC
;	src/main.c:298: TL0 = 0x2F;
	mov	_TL0,#0x2F
00110$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ET1'
;------------------------------------------------------------
;	src/main.c:304: void ISR_ET1 (void) __interrupt 3 
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
;	src/main.c:306: update();
	lcall	_update
;	src/main.c:307: display();
	lcall	_display
;	src/main.c:308: TH1 = 0xF8;      //Nap gia tri bat dau 8bit
	mov	_TH1,#0xF8
;	src/main.c:309: TL1 = 0x30;
	mov	_TL1,#0x30
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
