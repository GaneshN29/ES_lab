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
    LDR R0,=NUM1
    LDR R1,=NUM2
    LDR R2,=DST
    LDR R3, [R0]
    LDR R4, [R1]
    
UP
    CMP R3, R4
    BEQ STORE
    BCC FIRST
    BCS SECOND
FIRST
    SUB R4, R3
    B UP
SECOND
    SUB R3, R4
    B UP
STORE
    STR R3, [R2]



STOP B STOP



NUM1 DCD 0x00000040
NUM2 DCD 0x00000024
    AREA data1, DATA, READWRITE
DST DCD 0
    
    END
	