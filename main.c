/****************************************************************************
*       Copyright (C), 北京四维拓智教育科技有限公司
*
*       MS80F080
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*Description  :MS83F0802BS
*           		   _________
* 				   VDD|1   M   8|VSS
*	 PA6/OSC2/CLKO/T1G|2   S   7|PA0/AN0/C1IN+/ICSPCLK
*         PC3/P1C/PWM4|3   8   6|PA1/AN1/C1IN-/ICSPDAT
*     PC2/AN6/P1D/PWM5|4___3___5|PC1/AN5/C2IN-/P1E/INT
*
*
*****************************************************************************/
#include "MyInclude.h"
#include "Myeeprom.h"
#include "MyKey.h"
#include "MyADC.h"


#define  OUTPUT  PC1
/*  Variate ////////////////////////////////////////////////////////////////*/
u16 ADC1_ADCOUT=0;
u16 ADC6_INPUT=0;

u16 ADC_STUDY_VALUE=0;

u8 i,j;


// 主函数
void main(void)
{
    //CLRWDT();//清看门狗
    System_init();
    GPIO_Init();
    ADC_Init();
    EEPROM_Init();
    OUTPUT=0;
    ADC_STUDY_VALUE = Read_EEPROM_u16(EEpromStartAdd);
    LED_Study_End();
    while(1) {
        //CLRWDT();//清看门狗
        ExchChannel(1); //选择通道1
        for(i=0; i<5; i++)
            ADC1_ADCOUT = (GetADCValue()&0xfff0);
        ExchChannel(6); //选择通道6
        for(j=0; j<5; j++)
            ADC6_INPUT = GetADCValue();
        Delay_xms(5);

        if(isKeyPressed()) {
            LED_STUDY=1;
            if(ADC_STUDY_VALUE>6)
                ADC_STUDY_VALUE = ADC1_ADCOUT-5;
            else
                ADC_STUDY_VALUE = ADC1_ADCOUT;

            Write_EEPROM_u16(EEpromStartAdd,ADC_STUDY_VALUE);
            Delay_xms(500);
            LED_STUDY=0; //输出低
        }
        if(ADC6_INPUT < 512) { //低于2.5V
            OUTPUT = 0;
        } else {
            if(ADC1_ADCOUT <= ADC_STUDY_VALUE) {
                OUTPUT=0;
            } else
                OUTPUT=1;
        }
    }
}
/*******************************************************************************
 * 函数名：interrupt ISR
 * 描述  ：中断函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void interrupt ISR(void)
{

}



