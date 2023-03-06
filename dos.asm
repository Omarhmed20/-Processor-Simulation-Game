.stack 100h
.model small
;------------------------------------------
.data
;------------------------------------------
buffer  db 3,0,3 dup('$')
msj1   db 'Enter a number: $'
msj2   db 13,10,'Number has been converted',13,10,13,10,'$'
string db 5 ;MAX NUMBER OF CHARACTERS ALLOWED (4).
       db ? ;NUMBER OF CHARACTERS ENTERED BY USER.
       db 5 dup (?) ;CHARACTERS ENTERED BY USER. 
;------------------------------------------
.code          
;INITIALIZE DATA SEGMENT.
main proc near
  mov  ax, @data
  mov  ds, ax
;------------------------------------------        
;DISPLAY MESSAGE.
  mov  ah, 9
  mov  dx, offset msj1
  int  21h
;------------------------------------------
;CAPTURE CHARACTERS (THE NUMBER).
  mov  ah, 0Ah
  mov  dx, offset buffer
  int  21h
;------------------------------------------
  call string2number
;------------------------------------------        
;DISPLAY MESSAGE.
  mov  ah, 9
  mov  dx, offset msj2
  int  21h
;------------------------------------------

;------------------------------------------
;FINISH THE PROGRAM PROPERLY.
  mov  ax, 4c00h
  int  21h                                   
  
  main endp 

;------------------------------------------
;CONVERT STRING TO NUMBER IN BX.
string2number proc near         
;MAKE SI TO POINT TO THE LEAST SIGNIFICANT DIGIT.
  mov  si, offset buffer + 1 ;<================================ YOU CHANGE THIS VARIABLE.
  mov  cl, [ si ] ;NUMBER OF CHARACTERS ENTERED.                                         
  mov  ch, 0 ;CLEAR CH, NOW CX==CL.
  add  si, cx ;NOW SI POINTS TO LEAST SIGNIFICANT DIGIT.
;CONVERT STRING.
  mov  bx, 0
  mov  bp, 1 ;MULTIPLE OF 10 TO MULTIPLY EVERY DIGIT.
repeat:         
;CONVERT CHARACTER.                    
  mov  al, [ si ] ;CHARACTER TO PROCESS.
  sub  al, 48 ;CONVERT ASCII CHARACTER TO DIGIT.
  mov  ah, 0 ;CLEAR AH, NOW AX==AL.
  mul  bp ;AX*BP = DX:AX.
  add  bx,ax ;ADD RESULT TO BX. 
;INCREASE MULTIPLE OF 10 (1, 10, 100...).
  mov  ax, bp
  mov  bp, 10
  mul  bp ;AX*10 = DX:AX.
  mov  bp, ax ;NEW MULTIPLE OF 10.  
;CHECK IF WE HAVE FINISHED.
  dec  si ;NEXT DIGIT TO PROCESS.
  loop repeat ;COUNTER CX-1, IF NOT ZERO, REPEAT.
 
 
  mov ax,bx
  mov  bx, 10 ;DIGITS ARE EXTRACTED DIVIDING BY 10.
  mov  cx, 0 ;COUNTER FOR EXTRACTED DIGITS.
cycle1:       
  mov  dx, 0 ;NECESSARY TO DIVIDE BY BX.
  div  bx ;DX:AX / 10 = AX:QUOTIENT DX:REMAINDER.
  push dx ;PRESERVE DIGIT EXTRACTED FOR LATER.
  inc  cx ;INCREASE COUNTER FOR EVERY DIGIT EXTRACTED.
  cmp  ax, 0  ;IF NUMBER IS
  jne  cycle1 ;NOT ZERO, LOOP. 
;NOW RETRIEVE PUSHED DIGITS.
  lea  si, buffer
cycle2:  
  pop  dx        
  add  dl, 48 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], dl
  inc  si
  loop cycle2 
mov word [si], '$'
          
  mov  ah, 9
  lea  dx, buffer
  int  21h 
  
  ret
  string2number endp   

end
         