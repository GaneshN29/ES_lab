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
    ldr R0,=SRC
    ldr R1,=SRC+(LEN-1)*4
    MOV R2,#4
BACK LDR R3,[R0]
    LDR R4,[R1]
	STR R3,[R1],#-4
    STR R4,[R0],#4
    SUBS R2,#1
    BNE BACK
STOP B STOP
LEN EQU 10
    AREA DATA1,DATA,READWRITE
SRC DCD 0,0,0,0,0,0,0,0,0,0
 END