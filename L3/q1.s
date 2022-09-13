 AREA    RESET, DATA, READONLY
    EXPORT  __Vectors



__Vectors
    DCD  0x100000FF
    DCD  Reset_Handler
  
        ALIGN



   AREA mycode, CODE, READONLY
    EXPORT Reset_Handler
    ENTRY
Reset_Handler
    LDR R0,=N1
    LDR R1,[R0]
    LDR R2,=RES
    
    MOV R4,#2
    
UP    AND R5,R1,#0x0000000F
    CMP R5,#0x0A
    BCC down
    ADD R5,#0x07
down    ADD R5,#0x30
        ORR R6,R5
        ROR R6,#08
        LSR R1,#04
        SUBS R4,#1
        BNE UP
    
    
    STR R6,[R2]
    
    
STOP
    B STOP
N1 DCD 0X4B
    AREA mydata, DATA, READWRITE
RES DCD 0
    END