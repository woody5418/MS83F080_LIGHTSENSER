#ifndef __MYINCLUDE_H
#define __MYINCLUDE_H
#include "syscfg.h"


/*******************∫Í∂®“Â********************/
#define _XTAL_FREQ 		16000000		//4T
//#define EEpromStartAdd  0x00
#define u32              unsigned long int
#define u16              unsigned short int
#define u8               unsigned char
#define  uint8_t         unsigned char
#define  uint16_t        unsigned int
#define  uint32_t        unsigned long int



#include "MyEEProm.h"
#include "MyKey.h"
#include "MyADC.h"

#define  LED_STUDY       PA6
#define  EEpromStartAdd  0x00


void System_init(void);
void GPIO_Init(void);
void Delay_xms(unsigned int x);//À¿—” ±x∫¡√Î
void LED_Study_End(void);

#endif




