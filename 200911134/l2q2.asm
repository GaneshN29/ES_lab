	AREA RESET, DATA, READONLY
	EXPORT __Vectors

__Vectors
	DCD 0x10000000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
	LDR R0,= SRC
	LDR R2,= DST
	MOV R3, #4
	ADD R1, R0, #16
	
Start LDR R4, [R0], #4
	LDR R5, [R1], #4
	ADCS R6, R4, R5
	STR R6, [R2], #4
	SUB R3, #1
	TEQ R3, #0
	BNE Start
	
	MOV R7, #0
	ADCS R7, #0
	STR R7, [R2]
	
SRC DCD 0x12345678, 0x12345678, 0x12345678, 0x12345678, 0x9ABCDEF0, 0x9ABCDEF0, 0x9ABCDEF0, 0x9ABCDEF0
	AREA DATASEG, DATA, READWRITE
DST DCD 0,0,0,0,0
	END