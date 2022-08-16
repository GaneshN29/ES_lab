 AREA RESET,DATA,READONLY
    EXPORT __Vectors
__Vectors
    DCD  0x40001000
    DCD Reset_Handler
    ALIGN
    AREA mycode,CODE,READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
    LDR R0, =SRC
    LDR R1, =DST
    MOV R3,#10
BACK
     LDR R2,[R0],#4
     STR R2,[R1],#4
     SUBS R3,#1
     BNE BACK
STOP B STOP
SRC DCD 0x125A,0x145C,0x254D,0x1425,0x167B,0x1882,0x5732,0x325A,0x3123,0x132C
    AREA mydata,DATA,READWRITE
DST DCD 0,0,0,0,0,0,0,0,0,0
    END
    EXPORT
__Vectors
    DCD  0x40001000              ;non-overlap
    DCD Reset_Handler
    ALIGN
    AREA mycode,CODE,READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
    LDR R0, =SRC
    LDR R1, =DST
    MOV R3,#10
BACK
     LDR R2,[R0],#4
     STR R2,[R1],#4
     SUBS R3,#1
     BNE BACK
STOP B STOP
SRC DCD 0x125A,0x145C,0x254D,0x1425,0x167B,0x1882,0x5732,0x325A,0x3123,0x132C
    AREA mydata,DATA,READWRITE
DST DCD 0,0,0,0,0,0,0,0,0,0
    END