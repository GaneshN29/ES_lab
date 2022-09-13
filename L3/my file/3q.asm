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
    ldr r0,=SRC
	ldr r0,[r0]
	ldr r4,=DST
	mov r1,#0
up  cmp r0,#0x0A
    blo EXIT
	add r1,#1
	sub r0,r0,#0x0A
	b up
EXIT	CMP R1,#0X0A
        BLO EXI
	 STR R0,[R4],#1
	 MOV R0,R1
	 mov r1,#0
	 B up
EXI    
    lsl r1,#4
	orr r1,r0
	 STR R1,[R4]

stop b stop
SRC DCD 0xab
	AREA MYDATA, DATA, READWRITE
DST DCD 0x0
	END