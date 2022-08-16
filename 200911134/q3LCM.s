	AREA RESET, DATA, READONLY
    EXPORT __Vectors
__Vectors
    DCD 0x40001000;
    DCD Reset_Handler;
    ALIGN
    AREA mycode, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
	MOV R1, #12
	MOV R2, #10
	MOV R0, #0
UP	UDIV R3, R1, R2
	ADD R0, R0, #1
	MUL R1, R1, R0
	MUL R4, R3, R2
	SUB R4, R1, R4
	CMP R4, #0
	BNE UP
	MOV R6, R1
	


STOP B STOP
