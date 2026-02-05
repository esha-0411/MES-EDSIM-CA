ORG 0000H

MOV R0, #40H        ; Read pointer
MOV R1, #40H        ; Write pointer

SCAN:
MOV A, @R0
CJNE A, #0FFH, SAVE
SJMP NEXT

SAVE:
MOV @R1, A
INC R1

NEXT:
INC R0
CJNE R0, #60H, SCAN

FILL:
MOV A, #00H
MOV @R1, A
INC R1
CJNE R1, #60H, FILL

HERE:
SJMP HERE
END
