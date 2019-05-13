opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_EEPROM_Init
	FNCALL	_main,_Read_EEPROM_u16
	FNCALL	_main,_LED_Study_End
	FNCALL	_main,_ExchChannel
	FNCALL	_main,_GetADCValue
	FNCALL	_main,_Delay_xms
	FNCALL	_main,_isKeyPressed
	FNCALL	_main,_Write_EEPROM_u16
	FNCALL	_LED_Study_End,_Delay_xms
	FNCALL	_ADC_Init,_Delay_xms
	FNCALL	_Write_EEPROM_u16,_Write_EEPROM_u8
	FNCALL	_Read_EEPROM_u16,_Read_EEPROM_u8
	FNCALL	_EEPROM_Init,_Write_EEPROM_u8
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADC6_INPUT
	global	_ADC_STUDY_VALUE
	global	_ADC1_ADCOUT
	global	_i
	global	_j
	global	_PSTRCON
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_WDTCON
_WDTCON	set	24
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CM0
_CM0	set	200
	global	_CM1
_CM1	set	201
	global	_CM2
_CM2	set	202
	global	_EEIF
_EEIF	set	103
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_PA6
_PA6	set	46
	global	_PC1
_PC1	set	57
	global	_PC3
_PC3	set	59
	global	_VCFG0
_VCFG0	set	253
	global	_ADRESL
_ADRESL	set	158
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EEDAT
_EEDAT	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_ADCS0
_ADCS0	set	1276
	global	_ADCS1
_ADCS1	set	1277
	global	_ADCS2
_ADCS2	set	1278
	global	_ANSEL0
_ANSEL0	set	1160
	global	_ANSEL1
_ANSEL1	set	1161
	global	_ANSEL2
_ANSEL2	set	1162
	global	_ANSEL3
_ANSEL3	set	1163
	global	_ANSEL4
_ANSEL4	set	1164
	global	_ANSEL5
_ANSEL5	set	1165
	global	_ANSEL6
_ANSEL6	set	1166
	global	_ANSEL7
_ANSEL7	set	1167
	global	_DIVS
_DIVS	set	1279
	global	_RD
_RD	set	1248
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_WPDA4
_WPDA4	set	1100
	global	_WPDC1
_WPDC1	set	1099
	global	_WPDC2
_WPDC2	set	1098
	global	_WPDC3
_WPDC3	set	1097
	global	_WPUA0
_WPUA0	set	1192
	global	_WPUA1
_WPUA1	set	1193
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	global	_WR
_WR	set	1256
	file	"ms83f080_lightsenser.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC1_ADCOUT:
       ds      2

_i:
       ds      1

_j:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ADC6_INPUT:
       ds      2

_ADC_STUDY_VALUE:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_EEPROM_Init
?_EEPROM_Init:	; 0 bytes @ 0x0
	global	?_LED_Study_End
?_LED_Study_End:	; 0 bytes @ 0x0
	global	?_ExchChannel
?_ExchChannel:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_isKeyPressed
?_isKeyPressed:	; 1 bytes @ 0x0
	global	?_Read_EEPROM_u8
?_Read_EEPROM_u8:	; 1 bytes @ 0x0
	ds	2
	global	??_System_init
??_System_init:	; 0 bytes @ 0x2
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x2
	global	??_ExchChannel
??_ExchChannel:	; 0 bytes @ 0x2
	global	?_Delay_xms
?_Delay_xms:	; 0 bytes @ 0x2
	global	??_isKeyPressed
??_isKeyPressed:	; 0 bytes @ 0x2
	global	?_Write_EEPROM_u8
?_Write_EEPROM_u8:	; 0 bytes @ 0x2
	global	??_Read_EEPROM_u8
??_Read_EEPROM_u8:	; 0 bytes @ 0x2
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x2
	global	Write_EEPROM_u8@EEDatas
Write_EEPROM_u8@EEDatas:	; 1 bytes @ 0x2
	global	Read_EEPROM_u8@EEAddress
Read_EEPROM_u8@EEAddress:	; 1 bytes @ 0x2
	global	Delay_xms@x
Delay_xms@x:	; 2 bytes @ 0x2
	ds	1
	global	??_Write_EEPROM_u8
??_Write_EEPROM_u8:	; 0 bytes @ 0x3
	global	Write_EEPROM_u8@EEAddress
Write_EEPROM_u8@EEAddress:	; 1 bytes @ 0x3
	global	Read_EEPROM_u8@ReEepromData
Read_EEPROM_u8@ReEepromData:	; 1 bytes @ 0x3
	ds	1
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x4
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x4
	global	??_Delay_xms
??_Delay_xms:	; 0 bytes @ 0x4
	global	?_Write_EEPROM_u16
?_Write_EEPROM_u16:	; 0 bytes @ 0x4
	global	?_Read_EEPROM_u16
?_Read_EEPROM_u16:	; 2 bytes @ 0x4
	global	ExchChannel@ch_temp
ExchChannel@ch_temp:	; 1 bytes @ 0x4
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x4
	global	Write_EEPROM_u16@EEDatas
Write_EEPROM_u16@EEDatas:	; 2 bytes @ 0x4
	ds	1
	global	ExchChannel@adc_ch_temp
ExchChannel@adc_ch_temp:	; 1 bytes @ 0x5
	ds	1
	global	??_Read_EEPROM_u16
??_Read_EEPROM_u16:	; 0 bytes @ 0x6
	global	??_Write_EEPROM_u16
??_Write_EEPROM_u16:	; 0 bytes @ 0x6
	global	Delay_xms@i
Delay_xms@i:	; 2 bytes @ 0x6
	ds	2
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x8
	global	??_LED_Study_End
??_LED_Study_End:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	Write_EEPROM_u16@DATA_H
Write_EEPROM_u16@DATA_H:	; 1 bytes @ 0x0
	global	Read_EEPROM_u16@EepromData
Read_EEPROM_u16@EepromData:	; 2 bytes @ 0x0
	ds	1
	global	Write_EEPROM_u16@DATA_L
Write_EEPROM_u16@DATA_L:	; 1 bytes @ 0x1
	ds	1
	global	Write_EEPROM_u16@EEAddress
Write_EEPROM_u16@EEAddress:	; 1 bytes @ 0x2
	global	Read_EEPROM_u16@EEAddress
Read_EEPROM_u16@EEAddress:	; 1 bytes @ 0x2
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      12
;; BANK0           80      3       7
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_Read_EEPROM_u16	unsigned int  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned short  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Delay_xms
;;   _LED_Study_End->_Delay_xms
;;   _ADC_Init->_Delay_xms
;;   _Write_EEPROM_u16->_Write_EEPROM_u8
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
;;   _EEPROM_Init->_Write_EEPROM_u8
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Read_EEPROM_u16
;;   _main->_Write_EEPROM_u16
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     702
;;                        _System_init
;;                          _GPIO_Init
;;                           _ADC_Init
;;                        _EEPROM_Init
;;                    _Read_EEPROM_u16
;;                      _LED_Study_End
;;                        _ExchChannel
;;                        _GetADCValue
;;                          _Delay_xms
;;                       _isKeyPressed
;;                   _Write_EEPROM_u16
;; ---------------------------------------------------------------------------------
;; (1) _LED_Study_End                                        0     0      0      46
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      46
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) _Write_EEPROM_u16                                     5     3      2     260
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      3     3      0
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _Delay_xms                                            6     4      2      46
;;                                              2 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _ExchChannel                                          4     4      0      46
;;                                              2 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Read_EEPROM_u16                                      5     3      2     170
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      3     3      0
;;                     _Read_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_Init                                          0     0      0      62
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (2) _Read_EEPROM_u8                                       2     2      0      65
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Write_EEPROM_u8                                      2     1      1      62
;;                                              2 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _isKeyPressed                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          4     2      2      26
;;                                              2 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _ADC_Init
;;     _Delay_xms
;;   _EEPROM_Init
;;     _Write_EEPROM_u8
;;   _Read_EEPROM_u16
;;     _Read_EEPROM_u8
;;   _LED_Study_End
;;     _Delay_xms
;;   _ExchChannel
;;   _GetADCValue
;;   _Delay_xms
;;   _isKeyPressed
;;   _Write_EEPROM_u16
;;     _Write_EEPROM_u8
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      3       7       4        8.8%
;;BITBANK1            20      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK1               20      0       0       6        0.0%
;;ABS                  0      0      13       7        0.0%
;;DATA                 0      0      15       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_ADC_Init
;;		_EEPROM_Init
;;		_Read_EEPROM_u16
;;		_LED_Study_End
;;		_ExchChannel
;;		_GetADCValue
;;		_Delay_xms
;;		_isKeyPressed
;;		_Write_EEPROM_u16
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l6858:	
;main.c: 37: System_init();
	fcall	_System_init
	line	38
	
l6860:	
;main.c: 38: GPIO_Init();
	fcall	_GPIO_Init
	line	39
	
l6862:	
;main.c: 39: ADC_Init();
	fcall	_ADC_Init
	line	40
	
l6864:	
;main.c: 40: EEPROM_Init();
	fcall	_EEPROM_Init
	line	41
	
l6866:	
;main.c: 41: PC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(57/8),(57)&7
	line	42
	
l6868:	
;main.c: 42: ADC_STUDY_VALUE = Read_EEPROM_u16(0x00);
	movlw	(0)
	fcall	_Read_EEPROM_u16
	movf	(1+(?_Read_EEPROM_u16)),w
	movwf	(_ADC_STUDY_VALUE+1)
	movf	(0+(?_Read_EEPROM_u16)),w
	movwf	(_ADC_STUDY_VALUE)
	line	43
	
l6870:	
;main.c: 43: LED_Study_End();
	fcall	_LED_Study_End
	line	46
	
l6872:	
;main.c: 46: ExchChannel(1);
	movlw	(01h)
	fcall	_ExchChannel
	line	47
	
l6874:	
;main.c: 47: for(i=0;i<5;i++)
	clrf	(_i)
	line	48
	
l6880:	
;main.c: 48: ADC1_ADCOUT = (GetADCValue()&0xfff0);
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	movwf	(_ADC1_ADCOUT+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(_ADC1_ADCOUT)
	
l6882:	
	movlw	low(0FFF0h)
	andwf	(_ADC1_ADCOUT),f
	movlw	high(0FFF0h)
	andwf	(_ADC1_ADCOUT+1),f
	line	47
	
l6884:	
	incf	(_i),f
	
l6886:	
	movlw	(05h)
	subwf	(_i),w
	skipc
	goto	u231
	goto	u230
u231:
	goto	l6880
u230:
	line	49
	
l6888:	
;main.c: 49: ExchChannel(6);
	movlw	(06h)
	fcall	_ExchChannel
	line	50
	
l6890:	
;main.c: 50: for(j=0;j<5;j++)
	clrf	(_j)
	line	51
	
l6896:	
;main.c: 51: ADC6_INPUT = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	movwf	(_ADC6_INPUT+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(_ADC6_INPUT)
	line	50
	
l6898:	
	incf	(_j),f
	
l6900:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l6896
u240:
	line	52
	
l6902:	
;main.c: 52: Delay_xms(5);
	movlw	05h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	54
;main.c: 54: if(isKeyPressed())
	fcall	_isKeyPressed
	xorlw	0
	skipnz
	goto	u251
	goto	u250
u251:
	goto	l1102
u250:
	line	56
	
l6904:	
;main.c: 55: {
;main.c: 56: PA6=1;
	bsf	(46/8),(46)&7
	line	57
	
l6906:	
;main.c: 57: if(ADC_STUDY_VALUE>6)
	movlw	high(07h)
	subwf	(_ADC_STUDY_VALUE+1),w
	movlw	low(07h)
	skipnz
	subwf	(_ADC_STUDY_VALUE),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l6910
u260:
	line	58
	
l6908:	
;main.c: 58: ADC_STUDY_VALUE = ADC1_ADCOUT-5;
	movf	(_ADC1_ADCOUT+1),w
	movwf	(_ADC_STUDY_VALUE+1)
	movf	(_ADC1_ADCOUT),w
	movwf	(_ADC_STUDY_VALUE)
	movlw	low(0FFFBh)
	addwf	(_ADC_STUDY_VALUE),f
	skipnc
	incf	(_ADC_STUDY_VALUE+1),f
	movlw	high(0FFFBh)
	addwf	(_ADC_STUDY_VALUE+1),f
	goto	l6912
	line	60
	
l6910:	
;main.c: 59: else
;main.c: 60: ADC_STUDY_VALUE = ADC1_ADCOUT;
	movf	(_ADC1_ADCOUT+1),w
	movwf	(_ADC_STUDY_VALUE+1)
	movf	(_ADC1_ADCOUT),w
	movwf	(_ADC_STUDY_VALUE)
	line	62
	
l6912:	
;main.c: 62: Write_EEPROM_u16(0x00,ADC_STUDY_VALUE);
	movf	(_ADC_STUDY_VALUE+1),w
	movwf	(?_Write_EEPROM_u16+1)
	movf	(_ADC_STUDY_VALUE),w
	movwf	(?_Write_EEPROM_u16)
	movlw	(0)
	fcall	_Write_EEPROM_u16
	line	63
	
l6914:	
;main.c: 63: Delay_xms(500);
	movlw	low(01F4h)
	movwf	(?_Delay_xms)
	movlw	high(01F4h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	64
	
l6916:	
;main.c: 64: PA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	65
	
l1102:	
	line	66
;main.c: 65: }
;main.c: 66: if(ADC6_INPUT < 512){
	movlw	high(0200h)
	subwf	(_ADC6_INPUT+1),w
	movlw	low(0200h)
	skipnz
	subwf	(_ADC6_INPUT),w
	skipnc
	goto	u271
	goto	u270
u271:
	goto	l6920
u270:
	line	67
	
l6918:	
;main.c: 67: PC1 = 0;
	bcf	(57/8),(57)&7
	line	68
;main.c: 68: }else{
	goto	l6872
	line	69
	
l6920:	
;main.c: 69: if(ADC1_ADCOUT <= ADC_STUDY_VALUE){
	movf	(_ADC1_ADCOUT+1),w
	subwf	(_ADC_STUDY_VALUE+1),w
	skipz
	goto	u285
	movf	(_ADC1_ADCOUT),w
	subwf	(_ADC_STUDY_VALUE),w
u285:
	skipc
	goto	u281
	goto	u280
u281:
	goto	l1107
u280:
	goto	l6918
	line	71
	
l1107:	
	line	72
;main.c: 72: PC1=1;
	bsf	(57/8),(57)&7
	goto	l6872
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	75
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LED_Study_End
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _LED_Study_End *****************
;; Defined at:
;;		line 63 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text517
	file	"myconfiguration.c"
	line	63
	global	__size_of_LED_Study_End
	__size_of_LED_Study_End	equ	__end_of_LED_Study_End-_LED_Study_End
	
_LED_Study_End:	
	opt	stack 5
; Regs used in _LED_Study_End: [wreg+status,2+status,0+pclath+cstack]
	line	64
	
l6738:	
;myconfiguration.c: 64: PA6 = 1;
	bsf	(46/8),(46)&7
	line	65
	
l6740:	
;myconfiguration.c: 65: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	66
	
l6742:	
;myconfiguration.c: 66: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	67
;myconfiguration.c: 67: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	68
	
l6744:	
;myconfiguration.c: 68: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	69
;myconfiguration.c: 69: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	70
	
l6746:	
;myconfiguration.c: 70: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	71
;myconfiguration.c: 71: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	72
	
l6748:	
;myconfiguration.c: 72: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	73
;myconfiguration.c: 73: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	74
	
l6750:	
;myconfiguration.c: 74: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	75
;myconfiguration.c: 75: Delay_xms(40);
	movlw	028h
	movwf	(?_Delay_xms)
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	76
	
l3269:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Study_End
	__end_of_LED_Study_End:
;; =============== function _LED_Study_End ends ============

	signat	_LED_Study_End,88
	global	_ADC_Init
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 18 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text518
	file	"myadc.c"
	line	18
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l6718:	
;myadc.c: 20: TRISA1=1;
	bsf	(1065/8)^080h,(1065)&7
	line	21
;myadc.c: 21: TRISC2=1;
	bsf	(1082/8)^080h,(1082)&7
	line	22
;myadc.c: 22: ANSEL1=1;
	bsf	(1161/8)^080h,(1161)&7
	line	23
;myadc.c: 23: ANSEL6=1;
	bsf	(1166/8)^080h,(1166)&7
	line	26
;myadc.c: 26: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	27
;myadc.c: 27: ADCS0=0;ADCS1=0;ADCS2=0;
	bcf	(1276/8)^080h,(1276)&7
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1278/8)^080h,(1278)&7
	line	29
	
l6720:	
;myadc.c: 29: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	30
	
l6722:	
;myadc.c: 30: VCFG0=0;
	bcf	(253/8),(253)&7
	line	31
	
l6724:	
;myadc.c: 31: CHS0=1;CHS1=0;CHS2=0;
	bsf	(250/8),(250)&7
	
l6726:	
	bcf	(251/8),(251)&7
	
l6728:	
	bcf	(252/8),(252)&7
	line	32
	
l6730:	
;myadc.c: 32: ADFM=1;
	bsf	(255/8),(255)&7
	line	33
	
l6732:	
;myadc.c: 33: ADON=1;
	bsf	(248/8),(248)&7
	line	35
	
l6734:	
;myadc.c: 35: Delay_xms(1);
	clrf	(?_Delay_xms)
	incf	(?_Delay_xms),f
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	37
	
l6736:	
;myadc.c: 37: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	38
	
l2183:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	_Write_EEPROM_u16
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _Write_EEPROM_u16 *****************
;; Defined at:
;;		line 27 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    2[BANK0 ] unsigned char 
;;  DATA_L          1    1[BANK0 ] unsigned char 
;;  DATA_H          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         2       3       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text519
	file	"MyEEProm.c"
	line	27
	global	__size_of_Write_EEPROM_u16
	__size_of_Write_EEPROM_u16	equ	__end_of_Write_EEPROM_u16-_Write_EEPROM_u16
	
_Write_EEPROM_u16:	
	opt	stack 5
; Regs used in _Write_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Write_EEPROM_u16@EEAddress stored from wreg
	line	29
	movwf	(Write_EEPROM_u16@EEAddress)
	line	28
	
l6848:	
	line	29
;MyEEProm.c: 29: unsigned char DATA_L=0;
	clrf	(Write_EEPROM_u16@DATA_L)
	line	31
	
l6850:	
;MyEEProm.c: 31: DATA_H = (EEDatas>>8)&0xff;
	movf	(Write_EEPROM_u16@EEDatas+1),w
	movwf	(Write_EEPROM_u16@DATA_H)
	line	32
	
l6852:	
;MyEEProm.c: 32: DATA_L = EEDatas&0xff;
	movf	(Write_EEPROM_u16@EEDatas),w
	movwf	(Write_EEPROM_u16@DATA_L)
	line	33
	
l6854:	
;MyEEProm.c: 33: Write_EEPROM_u8(EEAddress,DATA_H);
	movf	(Write_EEPROM_u16@DATA_H),w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	fcall	_Write_EEPROM_u8
	line	34
	
l6856:	
;MyEEProm.c: 34: Write_EEPROM_u8(EEAddress+1,DATA_L);
	bcf	status, 5	;RP0=0, select bank0
	movf	(Write_EEPROM_u16@DATA_L),w
	movwf	(?_Write_EEPROM_u8)
	incf	(Write_EEPROM_u16@EEAddress),w
	fcall	_Write_EEPROM_u8
	line	36
	
l4341:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u16
	__end_of_Write_EEPROM_u16:
;; =============== function _Write_EEPROM_u16 ends ============

	signat	_Write_EEPROM_u16,8312
	global	_Delay_xms
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function _Delay_xms *****************
;; Defined at:
;;		line 46 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ADC_Init
;;		_LED_Study_End
;; This function uses a non-reentrant model
;;
psect	text520
	file	"myconfiguration.c"
	line	46
	global	__size_of_Delay_xms
	__size_of_Delay_xms	equ	__end_of_Delay_xms-_Delay_xms
	
_Delay_xms:	
	opt	stack 6
; Regs used in _Delay_xms: [wreg+status,2+status,0]
	line	48
	
l6698:	
;myconfiguration.c: 47: unsigned int i;
;myconfiguration.c: 48: for(i=0;i<x;i++){
	clrf	(Delay_xms@i)
	clrf	(Delay_xms@i+1)
	goto	l6706
	line	49
	
l6700:	
;myconfiguration.c: 49: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Delay_xms+0)+0+1),f
	movlw	48
movwf	((??_Delay_xms+0)+0),f
u297:
	decfsz	((??_Delay_xms+0)+0),f
	goto	u297
	decfsz	((??_Delay_xms+0)+0+1),f
	goto	u297
	clrwdt
opt asmopt_on

	line	50
	
l6702:	
# 50 "myconfiguration.c"
clrwdt ;#
psect	text520
	line	48
	
l6704:	
	incf	(Delay_xms@i),f
	skipnz
	incf	(Delay_xms@i+1),f
	
l6706:	
	movf	(Delay_xms@x+1),w
	subwf	(Delay_xms@i+1),w
	skipz
	goto	u145
	movf	(Delay_xms@x),w
	subwf	(Delay_xms@i),w
u145:
	skipc
	goto	u141
	goto	u140
u141:
	goto	l6700
u140:
	line	52
	
l3266:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_xms
	__end_of_Delay_xms:
;; =============== function _Delay_xms ends ============

	signat	_Delay_xms,4216
	global	_ExchChannel
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function _ExchChannel *****************
;; Defined at:
;;		line 70 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;  ch_temp         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch_temp         1    4[COMMON] unsigned char 
;;  adc_ch_temp     1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text521
	file	"myadc.c"
	line	70
	global	__size_of_ExchChannel
	__size_of_ExchChannel	equ	__end_of_ExchChannel-_ExchChannel
	
_ExchChannel:	
	opt	stack 6
; Regs used in _ExchChannel: [wreg+status,2+status,0]
;ExchChannel@ch_temp stored from wreg
	line	73
	movwf	(ExchChannel@ch_temp)
	
l6688:	
;myadc.c: 71: unsigned char adc_ch_temp;
;myadc.c: 73: adc_ch_temp = ch_temp;
	movf	(ExchChannel@ch_temp),w
	movwf	(ExchChannel@adc_ch_temp)
	line	74
	
l6690:	
;myadc.c: 74: adc_ch_temp = adc_ch_temp<<2;
	clrc
	rlf	(ExchChannel@adc_ch_temp),f
	clrc
	rlf	(ExchChannel@adc_ch_temp),f
	line	75
	
l6692:	
;myadc.c: 75: ADCON0 = (ADCON0&0xe3)|adc_ch_temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w
	andlw	0E3h
	iorwf	(ExchChannel@adc_ch_temp),w
	movwf	(31)	;volatile
	line	76
	
l6694:	
;myadc.c: 76: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_ExchChannel+0)+0+1),f
	movlw	48
movwf	((??_ExchChannel+0)+0),f
u307:
	decfsz	((??_ExchChannel+0)+0),f
	goto	u307
	decfsz	((??_ExchChannel+0)+0+1),f
	goto	u307
	clrwdt
opt asmopt_on

	line	77
	
l6696:	
;myadc.c: 77: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	78
	
l2190:	
	return
	opt stack 0
GLOBAL	__end_of_ExchChannel
	__end_of_ExchChannel:
;; =============== function _ExchChannel ends ============

	signat	_ExchChannel,4216
	global	_Read_EEPROM_u16
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function _Read_EEPROM_u16 *****************
;; Defined at:
;;		line 39 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    2[BANK0 ] unsigned char 
;;  EepromData      2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         2       3       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text522
	file	"MyEEProm.c"
	line	39
	global	__size_of_Read_EEPROM_u16
	__size_of_Read_EEPROM_u16	equ	__end_of_Read_EEPROM_u16-_Read_EEPROM_u16
	
_Read_EEPROM_u16:	
	opt	stack 5
; Regs used in _Read_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Read_EEPROM_u16@EEAddress stored from wreg
	movwf	(Read_EEPROM_u16@EEAddress)
	line	40
	
l6836:	
	line	42
	
l6838:	
;MyEEProm.c: 42: EepromData = Read_EEPROM_u8(EEAddress);
	movf	(Read_EEPROM_u16@EEAddress),w
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Read_EEPROM_u16@EepromData)
	clrf	(Read_EEPROM_u16@EepromData+1)
	line	43
	
l6840:	
;MyEEProm.c: 43: EepromData = EepromData<<8;
	movf	(Read_EEPROM_u16@EepromData),w
	movwf	(Read_EEPROM_u16@EepromData+1)
	clrf	(Read_EEPROM_u16@EepromData)
	line	44
	
l6842:	
;MyEEProm.c: 44: EepromData |= Read_EEPROM_u8(EEAddress+1);
	incf	(Read_EEPROM_u16@EEAddress),w
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(Read_EEPROM_u16@EepromData),f
	line	45
	
l6844:	
;MyEEProm.c: 45: return EepromData;
	movf	(Read_EEPROM_u16@EepromData+1),w
	movwf	(?_Read_EEPROM_u16+1)
	movf	(Read_EEPROM_u16@EepromData),w
	movwf	(?_Read_EEPROM_u16)
	line	46
	
l4344:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u16
	__end_of_Read_EEPROM_u16:
;; =============== function _Read_EEPROM_u16 ends ============

	signat	_Read_EEPROM_u16,4218
	global	_EEPROM_Init
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function _EEPROM_Init *****************
;; Defined at:
;;		line 13 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text523
	file	"MyEEProm.c"
	line	13
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 5
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l6834:	
;MyEEProm.c: 14: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	15
;MyEEProm.c: 15: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	16
	
l4338:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_Read_EEPROM_u8
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function _Read_EEPROM_u8 *****************
;; Defined at:
;;		line 64 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    2[COMMON] unsigned char 
;;  ReEepromData    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text524
	file	"MyEEProm.c"
	line	64
	global	__size_of_Read_EEPROM_u8
	__size_of_Read_EEPROM_u8	equ	__end_of_Read_EEPROM_u8-_Read_EEPROM_u8
	
_Read_EEPROM_u8:	
	opt	stack 5
; Regs used in _Read_EEPROM_u8: [wreg]
;Read_EEPROM_u8@EEAddress stored from wreg
	line	67
	movwf	(Read_EEPROM_u8@EEAddress)
	
l6826:	
;MyEEProm.c: 65: unsigned char ReEepromData;
;MyEEProm.c: 67: EEADR = EEAddress;
	movf	(Read_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	68
	
l6828:	
;MyEEProm.c: 68: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	69
;MyEEProm.c: 69: ReEepromData = EEDAT;
	movf	(154)^080h,w	;volatile
	movwf	(Read_EEPROM_u8@ReEepromData)
	line	70
	
l6830:	
;MyEEProm.c: 70: RD = 0;
	bcf	(1248/8)^080h,(1248)&7
	line	71
;MyEEProm.c: 71: return ReEepromData;
	movf	(Read_EEPROM_u8@ReEepromData),w
	line	72
	
l4356:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u8
	__end_of_Read_EEPROM_u8:
;; =============== function _Read_EEPROM_u8 ends ============

	signat	_Read_EEPROM_u8,4217
	global	_Write_EEPROM_u8
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function _Write_EEPROM_u8 *****************
;; Defined at:
;;		line 49 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_Init
;;		_Write_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text525
	file	"MyEEProm.c"
	line	49
	global	__size_of_Write_EEPROM_u8
	__size_of_Write_EEPROM_u8	equ	__end_of_Write_EEPROM_u8-_Write_EEPROM_u8
	
_Write_EEPROM_u8:	
	opt	stack 5
; Regs used in _Write_EEPROM_u8: [wreg]
;Write_EEPROM_u8@EEAddress stored from wreg
	movwf	(Write_EEPROM_u8@EEAddress)
	line	50
	
l6818:	
;MyEEProm.c: 50: GIE = 0;
	bcf	(95/8),(95)&7
	line	51
;MyEEProm.c: 51: while(GIE) asm("clrwdt");
	goto	l4347
	
l4348:	
# 51 "MyEEProm.c"
clrwdt ;#
psect	text525
	
l4347:	
	btfsc	(95/8),(95)&7
	goto	u211
	goto	u210
u211:
	goto	l4348
u210:
	line	52
	
l6820:	
;MyEEProm.c: 52: EEADR = EEAddress;
	movf	(Write_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	53
;MyEEProm.c: 53: EEDAT = EEDatas;
	movf	(Write_EEPROM_u8@EEDatas),w
	movwf	(154)^080h	;volatile
	line	54
	
l6822:	
;MyEEProm.c: 54: EEIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(103/8),(103)&7
	line	55
;MyEEProm.c: 55: EECON1 = 0x34;
	movlw	(034h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	56
	
l6824:	
;MyEEProm.c: 56: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	57
;MyEEProm.c: 57: while(WR) asm("clrwdt");
	goto	l4350
	
l4351:	
# 57 "MyEEProm.c"
clrwdt ;#
psect	text525
	
l4350:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u221
	goto	u220
u221:
	goto	l4351
u220:
	
l4352:	
	line	59
;MyEEProm.c: 59: GIE = 1;
	bsf	(95/8),(95)&7
	line	60
	
l4353:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u8
	__end_of_Write_EEPROM_u8:
;; =============== function _Write_EEPROM_u8 ends ============

	signat	_Write_EEPROM_u8,8312
	global	_isKeyPressed
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

;; *************** function _isKeyPressed *****************
;; Defined at:
;;		line 18 in file "MyKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text526
	file	"MyKey.c"
	line	18
	global	__size_of_isKeyPressed
	__size_of_isKeyPressed	equ	__end_of_isKeyPressed-_isKeyPressed
	
_isKeyPressed:	
	opt	stack 6
; Regs used in _isKeyPressed: [wreg+status,2+status,0]
	line	19
	
l6654:	
;MyKey.c: 19: return PC3 ? 0:1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	setc
	movlw	0
	skipnc
	movlw	1

	line	20
	
l5421:	
	return
	opt stack 0
GLOBAL	__end_of_isKeyPressed
	__end_of_isKeyPressed:
;; =============== function _isKeyPressed ends ============

	signat	_isKeyPressed,89
	global	_GetADCValue
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 48 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    4[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text527
	file	"myadc.c"
	line	48
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2]
	line	49
	
l6644:	
;myadc.c: 49: unsigned short int ADC_num=0;
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	51
	
l6646:	
;myadc.c: 51: if(GO_DONE==0){
	btfsc	(249/8),(249)&7
	goto	u111
	goto	u110
u111:
	goto	l2186
u110:
	line	52
	
l6648:	
;myadc.c: 52: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	53
;myadc.c: 53: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(GetADCValue@ADC_num+1)
	clrf	(GetADCValue@ADC_num)
	line	54
;myadc.c: 54: ADC_num=ADC_num|ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	(GetADCValue@ADC_num),f
	line	55
	
l6650:	
;myadc.c: 55: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7
	line	56
	
l2186:	
	line	57
;myadc.c: 56: }
;myadc.c: 57: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	movwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	movwf	(?_GetADCValue)
	line	58
	
l2187:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_GPIO_Init
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 22 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/20
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528
	file	"myconfiguration.c"
	line	22
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	24
	
l6642:	
;myconfiguration.c: 24: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	25
;myconfiguration.c: 25: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	26
;myconfiguration.c: 26: TRISA6=0;
	bcf	(1070/8)^080h,(1070)&7
	line	28
;myconfiguration.c: 28: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	29
;myconfiguration.c: 29: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	30
;myconfiguration.c: 30: TRISC3=1;
	bsf	(1083/8)^080h,(1083)&7
	line	32
;myconfiguration.c: 32: CM0=1;CM1=1;CM2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(200/8),(200)&7
	bsf	(201/8),(201)&7
	bsf	(202/8),(202)&7
	line	36
;myconfiguration.c: 36: ANSEL0=0;ANSEL1=0;ANSEL2=0;ANSEL3=0;ANSEL4=0;ANSEL5=0;ANSEL6=0;ANSEL7=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1160/8)^080h,(1160)&7
	bcf	(1161/8)^080h,(1161)&7
	bcf	(1162/8)^080h,(1162)&7
	bcf	(1163/8)^080h,(1163)&7
	bcf	(1164/8)^080h,(1164)&7
	bcf	(1165/8)^080h,(1165)&7
	bcf	(1166/8)^080h,(1166)&7
	bcf	(1167/8)^080h,(1167)&7
	line	38
;myconfiguration.c: 38: WPUA0=1;WPUA1=1;WPUA6=1;
	bsf	(1192/8)^080h,(1192)&7
	bsf	(1193/8)^080h,(1193)&7
	bsf	(1198/8)^080h,(1198)&7
	line	40
;myconfiguration.c: 40: WPUC1=1;WPUC2=1;WPUC3=1;
	bsf	(1089/8)^080h,(1089)&7
	bsf	(1090/8)^080h,(1090)&7
	bsf	(1091/8)^080h,(1091)&7
	line	42
;myconfiguration.c: 42: WPDA4=0;WPDC1=0;WPDC2=0;WPDC3=0;
	bcf	(1100/8)^080h,(1100)&7
	bcf	(1099/8)^080h,(1099)&7
	bcf	(1098/8)^080h,(1098)&7
	bcf	(1097/8)^080h,(1097)&7
	line	43
	
l3260:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function _System_init *****************
;; Defined at:
;;		line 13 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text529
	file	"myconfiguration.c"
	line	13
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	15
	
l6636:	
;myconfiguration.c: 15: OPTION = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	16
	
l6638:	
;myconfiguration.c: 16: OSCCON = 0B01110000;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	17
	
l6640:	
;myconfiguration.c: 17: WDTCON = 0B00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	18
	
l3257:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

;; *************** function _ISR *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text530
	file	"main.c"
	line	84
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text530
	line	86
	
i1l1114:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
