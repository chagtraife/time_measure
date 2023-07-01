#include <mcs51/at89x051.h>
#include <stdint.h>

#define LED7A    P1_4
#define LED7B    P1_5
#define LED7C    P1_6
#define LED7D    P1_1
#define LED7E    P1_0
#define LED7F    P1_3
#define LED7G    P1_2
#define LED7DP   P1_7
#define LED7_1   P3_5
#define LED7_2   P3_4
#define LED7_3   P3_3
#define LED7_4   P3_2

#define RANGE_SW   P3_0 
#define COM        P3_1
#define RESET      P3_7

//magic number define
/*
    7 6 5 4 3 2 1 0
    DP C B A F G D E
0   1 0 0 0 0 1 0 0  -> 0x84
1	1 0 0 1 1 1 1 1  -> 0x9F
2   1 1 0 0 1 0 0 0  -> 0xC8
3   1 0 0 0 1 0 0 1  -> 0x89
4   1 0 0 1 0 0 1 1  -> 0x93
5   1 0 1 0 0 0 0 1  -> 0xA1
6   1 0 1 0 0 0 0 0  -> 0xA0
7   1 0 0 0 1 1 1 1  -> 0x8F
8   1 0 0 0 0 0 0 0  -> 0x80
9   1 0 0 0 0 0 0 1  -> 0x81
*/
uint8_t led7[10] = { 0x84, 0x9F, 0xC8, 0x89, 0x93, 0xA1, 0xA0, 0x8F, 0x80, 0x81 };

// global variable define
// range_mode == 1 --> 99,99 -> f = 100,  time count = 10ms,   timerValue = 0x2710 = 10000
// range_mode == 0 --> 9,999 -> f = 1000, time count = 1ms,    timerValue = 0x03E8 = 1000
__bit range_mode = 1;
unsigned int factor = 100;

unsigned int time = 0;
unsigned int time_1000 = 0;
unsigned int time_mode0 = 0;
unsigned int digitVal_1, digitVal_2, digitVal_3, digitVal_4 = 0;
unsigned int pointIdx = 0;
unsigned int digitIdx = 1; // range in 1-4

void init_TC0(void);
void init_TC1(void);
void setTimer1Value(void);
void init_GPIO(void);


void readResetButton(void);
void readRangeSW(void);
void display(void);

void setDisplay(unsigned int number, unsigned int f);
void resetTime(void);
void update(void);

// util function
void delay_ms(unsigned int itime);

void main (void)
{
	readRangeSW();
	init_GPIO();
	init_TC0();
	init_TC1();

	update();
	while (1)
	{
		readRangeSW();
		readResetButton();
		delay_ms(20);
	}
}

void init_GPIO(void)
{
	RESET = 0;
	COM = 1;
	RANGE_SW = 1;
}

// used for display
void init_TC0(void)
{
	ET0 = 1;         // cho phep ngat timer 0
	TMOD = 0x02;    //Sd Timer0 che do 8bit tu nap lai (ngat timer)
	TH0 = 0x1F;      //Nap gia tri bat dau 8bit
	TL0 = 0x1F;
	TR0 = 1;         //Khoi dong timer0
	ET0 = 1;         //Ngat timer0
	EA = 1;          // cho phep ngat toan cuc
}

//used for count
void init_TC1(void)
{
	ET1 = 1;         // cho phep ngat timer 1
	TMOD |= 0x10;    //Use Timer1 at 16-bit timer mode.
	setTimer1Value();
	TR1 = 1;         //Khoi dong timer1
	ET1 = 1;         //Ngat timer1
	EA = 1;          // cho phep ngat toan cuc
}

void setTimer1Value(void)
{
	//time count = 1ms,  timerValue = 0x03E8 = 1000
	TH1 = 0x03;
	TL1 = 0x8E;
}

void readRangeSW(void)
{
	if (range_mode != RANGE_SW) {
		delay_ms(50);
		if (range_mode != RANGE_SW){
			range_mode = RANGE_SW;
			if (range_mode == 1) {
				factor = 100;
			} else {
				factor = 1000;
				
			}
			update();
		}
	}
}

void readResetButton()
{
	if (RESET == 1) {
		delay_ms(20);
		while (RESET == 1){
			delay_ms(10);
		}
		resetTime();
	}
}
	
void resetTime()
{
	time = 0;
	update();
}

void update(void)
{
	if (factor == 1000){
		time_mode0	= (time % 1000) *10 + time_1000;
		setDisplay(time_mode0, factor);
	} else {
		setDisplay(time, factor);
	}
}

void setDisplay(unsigned int number, unsigned int f)
{
	digitVal_1 = number % 10;
	digitVal_2 = (number /10) % 10;
	digitVal_3 = (number /100) % 10;
	digitVal_4 = (number /1000) % 10;
	
	if (f == 1){
		pointIdx = 0;
	} else if (f == 10) {
		pointIdx = 2;
	} else if (f == 100) {
		pointIdx = 3;
	} else if (f == 1000) {
		pointIdx = 4;
	}
}

void display(void)
{
	LED7_1 = 1;
	LED7_2 = 1;
	LED7_3 = 1;
	LED7_4 = 1;
	switch (digitIdx) {
		case 1: {
			P1 = led7[digitVal_1];
			if (pointIdx == 1){
				LED7DP = 0;
			}
			LED7_1 = 0;
			break;
		}
		case 2: {
			P1 = led7[digitVal_2];
			if (pointIdx == 2){
				LED7DP = 0;
			}
			LED7_2 = 0;
			break;
		}
		case 3: {
			P1 = led7[digitVal_3];
			if (pointIdx == 3){
				LED7DP = 0;
			}
			LED7_3 = 0;
			break;
		}
		case 4: {
			P1 = led7[digitVal_4];
			if (pointIdx == 4){
				LED7DP = 0;
			}
			LED7_4 = 0;	
			break;
		}
	}
	
	if (digitIdx == 4) {
		digitIdx = 1;
	} else {
		digitIdx++;
	}
}

void delay_ms(unsigned int itime)
{
	unsigned int i, j;
	unsigned char d;
	for (i=0;i < itime;i++) {
		for(j=0;j<1275;j++) {
			d=0;
		}
	}
}

//timer interupt for display
void ISR_ET0 (void) __interrupt 1 
{
    display();
}

//timer interupt for count time : only count when COM set to 1
void ISR_ET1 (void) __interrupt 3
{
	if (COM == 1){
		time_1000++;
		if (time_1000 == 10) {
			time_1000 = 0;
			time++;	
		}
		update();
	}
	setTimer1Value();
}

