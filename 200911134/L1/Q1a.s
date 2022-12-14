	AREA RESET, DATA, READONLY
	EXPORT __Vectors

__Vectors
	DCD 0X10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler

Reset_Handler
	LDR R0, =SRC
	LDR R1, =DST
	MOV R2, #10
up	LDR R3,[R0], #4
	STR R3,[R1], #4
	SUBS R2,#1
	BNE up

STOP B STOP

SRC DCD 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19

	AREA mydata, DATA, READWRITE
DST DCD 0
	END