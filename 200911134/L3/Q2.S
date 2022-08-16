 AREA RESET,DATA,READONLY
    EXPORT __Vectors
__Vectors
    DCD 0X10001000
    DCD Reset_Handler
	ALIGN
    AREA mycode, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
    LDR R1, =N1
    LDR R2, =N2
    MOV R3, R1
    MOV R4, R2
    LDR R5, =DST
UP  CMP R3, R4
    BEQ EXIT
    BHI HIGH
    BLO LOW
LOW SUB R4,R3
    B UP
HIGH SUB R3,R4
    B UP
EXIT STR R4, [R5]
    B STOP
STOP B STOP
N1 EQU 8
N2 EQU 10
        AREA MYDATA, DATA, READWRITE
DST DCD 0      
        END