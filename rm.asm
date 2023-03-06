

.MODEL large
.STACK 64
.DATA
    VALUE db ?
.CODE

INIT PROC 
 
mov dx, 3fbh
mov al, 10000000b
out dx, al
mov dx,3f8h
mov al,0ch
out dx, al
mov dx,3fbh
mov al,00011011b
out dx,al

ret 
init endp

REC proc

mov dx,3fdh
CHK:

in al, dx
test al,1
jz CHK

go:
mov dx,03f8h
in al, dx
mov dl,al
mov  ah,2
int 21h

in al, dx
test al,1
jnz go

ret
rec endp

MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX

    call init

    call rec 
  
   HLT    
   MAIN ENDP
END MAIN