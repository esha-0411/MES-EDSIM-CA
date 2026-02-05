ORG 0000H

MOV A,#12
MOV B,#100
MUL AB        ; A = 1200

MOV R0,A      ; Store 1200 (lower byte)

MOV A,#36
ADD A,R0      ; 1200 + 36 = 1236

; Final result = 1236 in Accumulator A

END
