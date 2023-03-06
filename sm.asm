; SENDER
.MODEL SMALL
.STACK 64
.DATA            
;SEND_VALUE DB
CHAR DB ? 
.CODE
SERIAL_INIT PROC  
    ; Divisor latch access bit
    mov dx,3fbh 			; Line Control Register
    mov al,10000000b		;Set Divisor Latch Access Bit
    out dx,al				;Out it
    ; Set baudrate
    mov dx,3f8h			
    mov al,0ch			
    out dx,al
    ; Set MSB byte of baudrate
    mov dx,3f9h
    mov al,00h
    out dx,al
    ; Set port config
    ; 	0:Access to Receiver buffer, Transmitter buffer
    ;	0:Set Break disabled
    ;	011:Even Parity
    ;	0:One Stop Bit
    ;	11:8bits
    mov dx,3fbh
    mov al,00011011b
    out dx,al
    RET
SERIAL_INIT ENDP
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    ;---------------------------
    ; INIT UART    
    CALL SERIAL_INIT

    MAIN_LOOP:
    ; Read CHAR

     ; SEND 
    ;LEA SI,SEND_VALUE+2
    ;MOV CL,SEND_VALUE+1 
   
    
    mov dx , 3FDH		; Line Status Register
    AGAIN1:  	
    In al , dx 			;Read Line Status
    test al , 00100000b
    JZ AGAIN1                               ;Not empty

    ;If empty put the VALUE in Transmit data register
    mov cx,3
    LOOP1:
    mov ah,7
    int 21h
    mov dx , 3F8H		; Transmit data register
    out dx , al
    loop LOOP1
    
   

    MOV AH,04CH
    XOR AL,AL
    INT 21H
MAIN ENDP

END MAIN