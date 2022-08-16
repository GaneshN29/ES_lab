	AREA RESET,DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
    LDR R0, =SRC
    LDR R2, =DST
	
	LDR R1, [R0],#4
	
	STR R1, [R2],#4
	
	LDR R1, [R0],#4
	
	STR R1, [R2],#4
	LDR R1, [R0]
	STR R1, [R2]
	
STOP B STOP
SRC DCD 0x341234,0x4567A1,0X343467
    AREA DATA1, DATA, READWRITE

DST DCD 0
    END