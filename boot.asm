ORG 0X7C00
MOV AX,0
MOV DS,AX


MOV SI,MSG
CALL PRINT

PRINT:
lodsb
cmp al,0
jz DONE
mov ah,0xE
int 0X10
jmp PRINT

DONE:
RET

MSG DB 'hello, world',0XD,0XA,0
RESULT DB 0
TIMES 510-($-$$) DB 0
DW 0XAA55