#include <AT892051.H>
#include <stdio.h>	

sbit LED7A  = P1^4;
sbit LED7B  = P1^5;
sbit LED7C  = P1^6;
sbit LED7D  = P1^1;
sbit LED7E  = P1^0;
sbit LED7F  = P1^3;
sbit LED7G  = P1^2;
sbit LED7DP = P1^7;
sbit LED7_1 = P3^5;
sbit LED7_2 = P3^4;
sbit LED7_3 = P3^3;
sbit LED7_4 = P3^2;

sbit RANGE_SW  = P3^0;
sbit COM    = P3^1;
sbit RESET  = P3^7;

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
unsigned int led7[10] = { 0x84, 0x9F, 0xC8, 0x89, 0x93, 0xA1, 0xA0, 0x8F, 0x80, 0x81 };

// global variable define
bit range = 0;
unsigned int time = 1230;
unsigned int factor = 100;
unsigned int digitVal_1, digitVal_2, digitVal_3, digitVal_4 = 0;
unsigned int pointIdx = 0;
unsigned int digitIdx = 1; // range in 1-4

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
	ET0 = 1;  // cho phep ngat timer 0
	TMOD=0x02;//Sd Timer1 che do 8bit tu nap lai (ngat timer)
	TH0=TL0=0x1F;//Nap gia tri bat dau 8bit
	TR0=1;//Khoi dong timer0
	ET0=1;//Ngat timer0
	
	EA = 1;   // cho phep ngat toan cuc
	
	RESET = 0;
	COM = 0;
	RANGE = 1;
	update();
	while (1)
	{
		readRangeSW();
		readResetButton();
		delay_ms(20);
	}
}

void readRangeSW(void)
{
	/*
	if (range != RANGE) {
		delay_ms(50);
		if (range != RANGE){
			range = RANGE;
			if (range) {
				factor = 100;
				// update counter
			} else {
				factor = 1000;
				//update counter
			}
			update();
		}
	}
	*/
}

void readResetButton()
{
	if (RESET == 1) {
		delay_ms(50);
		while (RESET == 1){
			delay_ms(50);
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
	setDisplay(time, factor);
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
void ISR_ET0 (void) interrupt 1 
{
    display();
}

//timer interupt for count time : only count when COM set to 1
void ISR_ET1 (void) interrupt 3
{
	if (COM == 1){
		time++;
		update();
	}
}

