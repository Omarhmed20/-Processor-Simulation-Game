; SENDER
.MODEL SMALL
.STACK 64
.DATA            
SEND_VALUE 30,?,30 DUP('$')
REC_VALUE 30 DUP('$')
.CODE
SETUP MACRO
        mov ah,6       ; function 6
   mov al,1        ; scroll by 1 line    
   mov bh,7       ; normal video attribute         
   mov ch,0       ; upper left Y
   mov cl,0        ; upper left X
   mov dh,12     ; lower right Y
   mov dl,79      ; lower right X 
   int 10h          
ENDM 
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
read_string MACRO msg 

ENDM

MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    ;---------------------------
    ; INIT UART    
    CALL SERIAL_INIT
    SETUP
    
    
    MAIN_LOOP:
    ; Read string
    MOV AH,0AH
    LEA DX,SEND_VALUE
    INT 21H
    
    
    
    ; SEND 
    LEA SI,SEND_VALUE+2
    MOV CL,SEND_VALUE+1 
    
    SERIAL_SEND_STRING:
        mov dx , 3FDH		; Line Status Register
        AGAIN:  	
            In al , dx 			;Read Line Status
      		test al , 00100000b
      	JZ AGAIN                               ;Not empty

    ;If empty put the VALUE in Transmit data register
  		mov dx , 3F8H		; Transmit data register
  		mov  al,[SI]
  		INC SI
  		out dx , al
    DEC CL
    JNZ SERIAL_SEND_STRING
    
        mov dx , 3FDH		; Line Status Register
        AGAIN1:  	
            In al , dx 			;Read Line Status
      		test al , 00100000b
      	JZ AGAIN1                               ;Not empty

    ;If empty put the VALUE in Transmit data register
  		mov dx , 3F8H		; Transmit data register
  		mov  al,'$'
  		out dx , al
    
  	mov ah,2
    mov dl,10
    int 21h  
    mov ah,2
    mov dl,13
    int 21h
  	; RECEIVE 
  	
  	LEA SI,REC_VALUE
  	DEC SI
	SERIAL_RECEIVE_STRING:
    	INC SI
    	mov dx , 3FDH
    	CHK:	
    	    in al , dx 
      		test al , 1
      	JZ CHK                                    ;Not Ready
        ;If Ready read the VALUE in Receive data register
  		mov dx , 03F8H
  		in al , dx 
  		mov  [SI], al
  		
  		
    CMP al,'$'
    JNZ SERIAL_RECEIVE_STRING
 
    MOV [SI],'$'
  	; DISPLAY STRING
    mov ah,9
    LEA dx,REC_VALUE
    int 21h
  	mov ah,2
    mov dl,10
    int 21h  
    mov ah,2
    mov dl,13
    int 21h
  	JMP MAIN_LOOP
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	; Return control to DOS
        MOV AH,04CH
        XOR AL,AL
        INT 21H
    
MAIN ENDP

END MAIN