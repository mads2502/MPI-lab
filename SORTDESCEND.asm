MOV R6, #04H	 
INIT :	MOV R7, #04H	
		MOV R0, #40H	
		MOV A, #00H	

LOOP : 	MOV A, @R0	
		INC R0		
        MOV B, @R0
		CJNE A ,B, SWAPP 
		SJMP REDUCE	
SWAPP : JNC REDUCE	
		MOV @R0, A		
		MOV A, B	
       DEC R0
       MOV @R0, A
       INC R0
REDUCE :
		DJNZ R7, LOOP	
		DJNZ R6, INIT
HERE:SJMP HERE
