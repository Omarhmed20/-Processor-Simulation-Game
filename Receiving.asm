.MODEL SMALL
.STACK 32
.DATA
    VALUE DB ?
.CODE
INITIALIZE_PORT PROC 
    MOV DX, 3FBH
    MOV AL, 10000000B
    OUT DX, AL
    MOV DX, 3F8h
    MOV AL, 0CH
    OUT DX, AL
    MOV DX, 3F9H
    MOV AL, 00H
    OUT DX, AL
    MOV DX, 3FBH
    MOV AL, 00011011B
    OUT DX, AL
    RET
INITIALIZE_PORT ENDP

RECEIVE_VALUE PROC 
    MOV DX, 3FDH
CHECK:
    IN AL, DX
    AND AL, 1
    JZ CHECK
    MOV DX, 03F8H
    IN AL, DX
    MOV VALUE, AL
    RET
RECEIVE_VALUE ENDP

MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    CALL INITIALIZE_PORT

    CALL RECEIVE_VALUE
    MOV DL,VALUE
    MOV AH, 02H
    INT 21H
    MOV BX, VALUE
    
    HLT

MAIN ENDP
END MAIN