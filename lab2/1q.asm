	AREA RESET,DATA, READONLY   ;OVERLAPPING
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
 LDR R1,=SRC
 LDR R2,=DST
 MOV R3,#10
 MOV R4,#0
 MOV R5,#0
BACK
 LDR R6,[R1],#4
 ADDS R5,R6
 ADC R4,#0
 SUBS R3,#1
 BNE BACK
 STR R4,[R2],#4
 STR R5,[R2]
STOP B STOP
SRC DCD 0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0xffffffff,0xffffffff
 AREA DATA1, DATA, READWRITE
DST DCD 0
END