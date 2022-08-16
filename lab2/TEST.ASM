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
 MOV R2,#-1
 SBCS R2,#1
 SBCS R2,#1
STOP B STOP
END