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
 LDR R0,=SRC+(LEN-1)*4
 LDR R1,=SRC+((LEN-1)+SHIFT)*4
 MOV R3,LEN
BACK LDR R2,[R0],#-4
 STR R2,[R1],#-4
 SUBS R3,#1
 BNE BACK
STOP B STOP
LEN EQU 10
SHIFT EQU 3
 AREA MYDATA,DATA,READWRITE
SRC DCD 0,0,0,0,0,0,0,0,0,0,0,0,0 
END