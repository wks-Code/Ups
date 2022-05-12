$MOD51	; This includes 8051 definitions for the Metalink assembler

; Please insert your code here.
ORG 			0000H;
			LJMP START;
ORG 			0040H;
START: 	MOV P0,	#03H;
		MOV P1,	#0FFH;
M1: 	MOV P0,	#04BH;
		MOV P1,	#03H;
		MOV R2,	#50;
		LCALL DELAY;
		MOV R1, #03H;
M2: 	MOV P0,	#0C3H;
		MOV P1,	#00H;
		MOV R2,	#03;
		LCALL DELAY;
		MOV P0,	#0C3H;
		MOV P1,	#03H;
		MOV R2,	#03;
		LCALL DELAY;
		DJNZ R1, M2;
M3:		MOV P0,	#3CH;
		MOV P1,	#03H;
		MOV R2,	#50;
		LCALL DELAY;
		MOV R1, #03H;
M4: 	MOV P0,	#3CH;
		MOV P1,	#00H;
		MOV R2,	#03;
		LCALL DELAY;
		MOV P0,	#3CH;
		MOV P1,	#03H;
		MOV R2,	#03;
		LCALL DELAY;
		DJNZ R1, M4;
		SJMP M1;
DELAY: 	MOV R3,	#2;
D1: 	MOV R4,	#10;
D2: 	MOV R5,	#30;
D3:		DJNZ R5, D3;
		DJNZ R4, D2;
		DJNZ R3, D1;
		RET

END