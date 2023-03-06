PUBLIC SOURCE_INDEX,DEST_INDEX,INST_INDEX,Memory,MValue,VALUE1,BUFFER,CCF
EXTRN VALUE_BX1:WORD
EXTRN VALUE_DI1:WORD
EXTRN VALUE_SI1:WORD

PUBLIC INPUT 
PUBLIC number2string
PUBLIC ERROR2
PUBLIC TEXT


.model small
.386
.STACK 64
.DATA
 scount DB 0
      CCF db 0
 X256 DB 0
        VALUE1 DW 0
		ERR DB 0
        INST_INDEX DB 0
        BUFFER DB 6 dup('$') 
		Dest_Index DB 0  ; if it is still 0 means error detected _ memory to memory or No Space
        Source_Index DB 0  ; Reg 1->16 VALUE1 ->17 Memory ->18 Index->19 , 0 Means Error detected
        Memory DW 16 dup('0'),'$'
        MValue DB 0
		TEXT_ERROR DB 'ERROR','$'  
        TEXT DB  64,0,64 dup('0')
        ;instructions with 2 operands 
        TEXT1 DB 'MOV ','$'
        TEXT2 DB 'ADD','$'
        TEXT3 DB 'SUB','$'
        TEXT4 DB 'SHR','$'
        TEXT5 DB 'SHL','$'
        TEXT6 DB 'CLC','$'
        TEXT7 DB 'ROR','$' ;;CLC is HERE
        TEXT8 DB 'ROL','$'
        TEXT9 DB 'XOR','$'
        TEXT10 DB 'OR','$'
        TEXT11 DB 'AND','$'
        
        ;instructions with 1 operand 
        TEXT12 DB 'INC','$'
        TEXT13 DB 'DEC','$'
        TEXT14 DB 'DIV','$'
        TEXT15 DB 'MUL','$'
        TEXT16 DB 'NOP','$'
        
        ;to separate the input 
        INST DB 6 dup('$')
        OP1 DB 6 dup('$')
        OP2 DB 6 dup('$')
        
        ; for the size of each input    
        Size_INST DB 0
        Size_OP1 DB 0
        Size_OP2 DB 0
        
        
        Reg1 DB 'AX','$'         ;AX->1 AH->5 AL->9
        Reg2 DB 'BX','$'		 ;BX->1 BH->5 BL->9
        Reg3 DB 'CX','$'	     ;CX->1 CH->5 CL->9
        Reg4 DB 'DX','$'		 ;DX->1 DH->5 DL->9
        
        
        Reg9 DB 'AH','$'
        Reg10 DB 'BH','$'
        Reg11 DB 'CH','$'
        Reg12 DB 'DH','$'
        
        
        Reg5 DB 'AL','$'
        Reg6 DB 'BL','$'
        Reg7 DB 'CL','$'
        Reg8 DB 'DL','$'
        
        
        Reg_1 DB 'SI','$'
        Reg_2 DB 'DI','$'
        Reg_3 DB 'BP','$'
        Reg_4 DB 'SP','$'
        
        
        ;Memroy Location 						;Stack input ( 12 bit ) inc 12 (12 bit) Stack inc 12  (12 bit)  
        Reg_5 DB '[BX]','$'  
        Reg_6 DB '[SI]','$'
        Reg_7 DB '[DI]','$'

.code 
ConvToUpp PROC NEAR
        	upper_case:
        cmp byte ptr [bx], 'a'
        jb ok
        cmp byte ptr [bx], 'z'
        ja ok
        and byte ptr [bx], 11011111b
        ok:
        inc bx
        loop upper_case
        RET
        ConvToUpp endp
        
        
        
 Separate_Input PROC near
        
        
        LEA BX,TEXT+2
        LEA SI,INST 
        MOV CX,0
        INST1:    ;this to copy the input untill space _ instruction
        CMP byte ptr[BX],24h
        JE EXIT
        CMP byte ptr[BX],20h
        JE O1
        MOV AL,[BX]
        mov [SI],AL 
        INC SI
        INC BX
        INC CX
        JMP INST1
        
        O1:
        MOV Size_INST,Cl
        INC BX
        MOV CX,0
        LEA SI,OP1
        OP888A:      ; THIS TO COPY THE OPERAND 1
        CMP byte ptr[BX],24H
        JE OVER
        CMP byte ptr[BX],2ch
        JE O2
        MOV AL,[BX]
        MOV [SI],AL
        INC SI
        INC BX
        INC CX
        JMP OP888A
        
        O2:
        MOV Size_OP1,Cl   
        INC BX 
        MOV CX,0
        LEA DI,OP2
        OP999A:     ; this to copy the seconed Operand
        CMP byte ptr[BX],24H
        JE EXIT
        MOV AL,[BX]
        MOV [DI],AL
        INC DI
        INC BX
        INC Cx
        MOV Size_OP2,Cl
        JMP OP999A
        JMP EXIT
        OVER:
        MOV Size_OP1,Cl
        EXIT: 
        RET 
        Separate_Input ENDP
        
        
        
    
        
        
        
        
        ;; here we are going to determine the type of addressing 
        
        
        
          
Type_OF_DEST PROC   ;this code to give an index for my destinations 
        
        Dest:  ;here to determine the name of destination register (AX,BX,CX,DX,DI,SI,BP,SP) 
        
        AXX:   ; this is the destination
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg1
        MOV CL,Size_OP1
        REPE CMPSB
        JNE BXX
        MOV CL,1
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        	   
        BXX:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg2
        MOV CL,Size_OP1
        REPE CMPSB
        JNE CXX
        MOV CL,2
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        CXX:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg3
        MOV CL,Size_OP1
        REPE CMPSB
        JNE DXX
        MOV CL,3
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        DXX:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg4
        MOV CL,Size_OP1
        REPE CMPSB
        JNE ALL
        MOV CL,4
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        ALL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg5
        MOV CL,Size_OP1
        REPE CMPSB
        JNE BLL
        MOV CL,5
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        BLL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg6
        MOV CL,Size_OP1
        REPE CMPSB
        JNE CLL
        MOV CL,6
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        CLL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg7
        MOV CL,Size_OP1
        REPE CMPSB
        JNE DLL
        MOV CL,7
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        DLL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg8
        MOV CL,Size_OP1
        REPE CMPSB
        JNE AHH
        MOV CL,8
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        AHH:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg9
        MOV CL,Size_OP1
        REPE CMPSB
        JNE BHH
        MOV CL,9
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        BHH:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg10
        MOV CL,Size_OP1
        REPE CMPSB
        JNE CHH
        MOV CL,10
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        CHH:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg11
        MOV CL,Size_OP1
        REPE CMPSB
        JNE DHH
        MOV CL,11
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        DHH:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg12
        MOV CL,Size_OP1
        REPE CMPSB
        JNE SII
        MOV CL,12
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        SII:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_1
        MOV CL,Size_OP1
        REPE CMPSB
        JNE DII
        MOV CL,13
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        DII:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_2
        MOV CL,Size_OP1
        REPE CMPSB
        JNE BPP
        MOV CL,14
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        BPP:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_3
        MOV CL,Size_OP1
        REPE CMPSB
        JNE SPP
        MOV CL,15
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
        
        SPP:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_4
        MOV CL,Size_OP1
        REPE CMPSB
        JNE SBXX3
        MOV CL,16
        MOV Dest_Index,CL       ; now let's check the source
        JMP Ex
		
		
		SBXX3:  
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_5
        MOV CL,Size_OP1
        REPE CMPSB
        JNE SSII3
		MOV BX,VALUE_BX1
		CMP BX,16
		JAE Ex
		MOV MValue,BL    
        MOV CL,17
        MOV Dest_Index,CL
        JMP Ex
        
        SSII3:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_6
        MOV CL,Size_OP1
        REPE CMPSB
        JNE SDII3
		MOV BX,VALUE_SI1
		CMP BX,16
		MOV MValue,BL
		JAE Ex
        MOV CL,18
        MOV Dest_Index,CL
        JMP Ex
        
        SDII3:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP1
        LEA SI,Reg_7
        MOV CL,Size_OP1
        REPE CMPSB
        JNE INDIRECT_ADDRESSING2     ; Then move to Register to VALUE1
		MOV BX,VALUE_DI1
		CMP BX,16
		JAE Ex
		MOV MValue,BL
        MOV CL,19
        MOV Dest_Index,CL   
        JMP Ex
        
        INDIRECT_ADDRESSING2:
        CMP Size_OP1,3
        JNE Ex
        LEA SI,OP1
		MOV AL,'['
		MOV BL,[SI]
		CMP BL,AL
		JNE Ex
		INC SI
		MOV BL,[SI]
		 
        cmp bl, '0'
            jb  Ex     ;IF BL < '0'
        	cmp bl, '9'
            jb Num3       ;IF BL <= '9'
        	
            cmp bl, 'F'
            ja  Ex     ;IF BL > 'F'
            cmp bl, 'A'
            jb Ex        ;IF BL >= 'A'
        	
        	 CMP  BL, 'A'     ;BL = 'A'..'F' : LETTER.
              JAE  letterAF3    ;BL = '0'..'9' : DIGIT.
           ;CharIsDigit09.
              NUM3: 
        	  SUB  BL, 48      ;CONVERT DIGIT TO NUMBER.
              JMP  continue3   
           letterAF3:               
              SUB  BL, 55      ;CONVERT LETTER TO NUMBER.
			  continue3:
			 
		MOV MValue,BL   ;num of the memory to be accssed
        MOV CL,20
        MOV Dest_Index,CL
        JMP Ex
        Ex:
        RET
        Type_OF_DEST ENDP
        
Type_OF_Source PROC NEAR   ;VALUE1 Strats With 0
        						   ;Register 				   ;Memory Starts With [ and 0 ;Register Strats with [ 2 byts  ]
        
        AXX2:   
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg1
        MOV CL,Size_OP2
        REPE CMPSB
        JNE BXX2
        MOV CL,1
        MOV Source_Index,CL 
        JMP Ex2
        	   
        BXX2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg2
        MOV CL,Size_OP2
        REPE CMPSB
        JNE CXX2
        MOV CL,2
        MOV Source_Index,CL 
        JMP Ex2
        
        CXX2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg3
        MOV CL,Size_OP2
        REPE CMPSB
        JNE DXX2
        MOV CL,3
        MOV Source_Index,CL 
        JMP Ex2
        
        DXX2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg4
        MOV CL,Size_OP2
        REPE CMPSB
        JNE ALL2
        MOV CL,4
        MOV Source_Index,CL 
        JMP Ex2
        
        ALL2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg5
        MOV CL,Size_OP2
        REPE CMPSB
        JNE BLL2
        MOV CL,5
        MOV Source_Index,CL 
        JMP Ex2
        
        BLL2:
        
        LEA DI,OP2
        LEA SI,Reg6
        MOV CL,Size_OP2
        REPE CMPSB
        JNE CLL2
        MOV CL,6
        MOV Source_Index,CL 
        
        CLL2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg7
        MOV CL,Size_OP2
        REPE CMPSB
        JNE DLL2
        MOV CL,7
        MOV Source_Index,CL 
        JMP Ex2
        
        DLL2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg8
        MOV CL,Size_OP2
        REPE CMPSB
        JNE AHH2
        MOV CL,8
        MOV Source_Index,CL 
        JMP Ex2
        
        AHH2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg9
        MOV CL,Size_OP2
        REPE CMPSB
        JNE BHH2
        MOV CL,9
        MOV Source_Index,CL 
        JMP Ex2
        
        BHH2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg10
        MOV CL,Size_OP2
        REPE CMPSB
        JNE CHH2
        MOV CL,10
        MOV Source_Index,CL 
        JMP Ex2
        
        CHH2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg11
        MOV CL,Size_OP2
        REPE CMPSB
        JNE DHH2
        MOV CL,11
        MOV Source_Index,CL 
        JMP Ex2
        
        DHH2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg12
        MOV CL,Size_OP2
        REPE CMPSB
        JNE SII2
        MOV CL,12
        MOV Source_Index,CL 
        JMP Ex2
        
        SII2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_1
        MOV CL,Size_OP2
        REPE CMPSB
        JNE DII2
        MOV CL,13
        MOV Source_Index,CL 
        JMP Ex2
        
        DII2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_2
        MOV CL,Size_OP2
        REPE CMPSB
        JNE BPP2
        MOV CL,14
        MOV Source_Index,CL       ; now let's check the source
        JMP Ex2
        
        BPP2:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_3
        MOV CL,Size_OP2
        REPE CMPSB
        JNE SPP2
        MOV CL,15
        MOV Source_Index,CL       ; now let's check the source
        JMP Ex2
        
        SPP2:
        LEA DI,OP2
        LEA SI,Reg_4
        MOV CL,Size_OP2
        REPE CMPSB
        JNE BXX3    ; we go for another type of source
        MOV CL,16
        MOV Source_Index,CL
        JMP Ex2
        
        BXX3:                           ;;;Indirect_Addressing
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_5
        MOV CL,Size_OP2
        REPE CMPSB
        JNE SII3
		MOV BX,VALUE_BX1
		CMP BX,16
		JA Ex2
		MOV MValue,BL
        MOV CL,17
        MOV Source_Index,CL
        JMP Ex2
        
        SII3:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_6
        MOV CL,Size_OP2
        REPE CMPSB
        JNE DII3
		MOV BX,VALUE_SI1
		CMP BX,16
		JA Ex2
		MOV MValue,BL
        MOV CL,18
        MOV Source_Index,CL
        JMP Ex2
        
        DII3:
        MOV AX,DS
        MOV ES,AX
        LEA DI,OP2
        LEA SI,Reg_7
        MOV CL,Size_OP2
        REPE CMPSB
        JNE INDIRECT_ADDRESSING     ; Then move to Register to VALUE1
		MOV BX,VALUE_DI1
		CMP BX,16
		JA Ex2
		MOV MValue,BL		
        MOV CL,19
        MOV Source_Index,CL   
        JMP Ex2
        
        INDIRECT_ADDRESSING:
          CMP Size_OP2,3
        JNE VALV
        LEA SI,OP2
		MOV AL,'['
		MOV BL,[SI]
		CMP BL,AL
		JNE Ex2
		INC SI
		MOV BL,[SI]
		 
        cmp bl, '0'
            jb  Ex2     ;IF BL < '0'
        	cmp bl, '9'
            jb Num2       ;IF BL <= '9'
        	
            cmp bl, 'F'
            ja  Ex2     ;IF BL > 'F'
            cmp bl, 'A'
            jb Ex2        ;IF BL >= 'A'
        	
        	 CMP  BL, 'A'     ;BL = 'A'..'F' : LETTER.
              JAE  letterAF2    ;BL = '0'..'9' : DIGIT.
           ;CharIsDigit09.
              NUM2: 
        	  SUB  BL, 48      ;CONVERT DIGIT TO NUMBER.
              JMP  continue2   
           letterAF2:               
              SUB  BL, 55      ;CONVERT LETTER TO NUMBER.
			  continue2:
			 
		MOV MValue,BL
        MOV CL,20
        MOV Source_Index,CL
        JMP Ex2
		
        VALV:        ; now the third type of addressing is Reg2Value immediate  INST OP1 OP2 
        CMP Size_OP2,4
        JNE Ex2
        LEA SI,OP2
        MOV BH,Size_OP2
        call hex2number
        cmp Source_Index,99
		JE Ex2
		MOV VALUE1,AX
        MOV CL,21
        MOV Source_Index,CL
      
        JMP Ex2
        
        
        ;For Indirect addresing mode 
        
        Ex2:
        RET
        Type_OF_Source ENDP 
		
        
        Type_OF_INST PROC NEAR
        MOOV:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT1
        MOV CL,Size_INST
        REPE CMPSB
        JNE AADD
        MOV CL,1
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
         
        AADD:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT2
        MOV CL,Size_INST
        REPE CMPSB
        JNE SUUUBB
        MOV CL,2
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        SUUUBB:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT3
        MOV CL,Size_INST
        REPE CMPSB
        JNE SHRR
        MOV CL,3
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        SHRR:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT4
        MOV CL,Size_INST
        REPE CMPSB
        JNE SHLL
        MOV CL,4
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        SHLL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT5
        MOV CL,Size_INST
        REPE CMPSB
        JNE SARA
        MOV CL,5
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        SARA:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT6
        MOV CL,Size_INST
        REPE CMPSB
        JNE ROOR
        MOV CL,6
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        ROOR:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT7
        MOV CL,Size_INST
        REPE CMPSB
        JNE ROOL
        MOV CL,7
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        ROOL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT8
        MOV CL,Size_INST
        REPE CMPSB
        JNE XXOR
        MOV CL,8
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        XXOR:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT9
        MOV CL,Size_INST
        REPE CMPSB
        JNE OOR
        MOV CL,9
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        OOR:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT10
        MOV CL,Size_INST
        REPE CMPSB
        JNE ANND
        MOV CL,10
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        ANND:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT11
        MOV CL,Size_INST
        REPE CMPSB
        JNE INCC
        MOV CL,11
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        INCC:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT12
        MOV CL,Size_INST
        REPE CMPSB
        JNE DECC
        MOV CL,12
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        DECC:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT13
        MOV CL,Size_INST
        REPE CMPSB
        JNE DIVV
        MOV CL,13
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        DIVV:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT14
        MOV CL,Size_INST
        REPE CMPSB
        JNE MULL
        MOV CL,14
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        MULL:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT15
        MOV CL,Size_INST
        REPE CMPSB
        JNE NOPP
        MOV CL,15
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        NOPP:
        MOV AX,DS
        MOV ES,AX
        LEA DI,INST
        LEA SI,TEXT16
        MOV CL,Size_INST
        REPE CMPSB
        JNE Ex3
        MOV CL,16
        MOV INST_INDEX,CL       ; now let's check the source
        JMP Ex3
        
        Ex3:
        RET 
        Type_OF_INST ENDP

input_ui proc near  
        	
                    mov ah, 0Ah ;GET TEXT FROM KEYBOARD.
                    mov dx, offset TEXT
                    int 21h                 
        
                                                                ;CHANGE(13) BY '$'.
                    mov si, offset TEXT + 1 
                    mov cl, [si] 
                    mov ch, 0    
                    inc cx 
                    add si, cx 
                    mov al, '$'
                    mov [ si ], al             
        
        
         
        	    
        	RET
        	INPUT_UI ENDP




ERROR2 PROC NEAR
        	    
    CMP scount,1
    JNE ER
    CMP INST_INDEX,4
	JA E2

    CMP Dest_Index,17
    JE EEZ

    EEZ:    ;MEMORY 2 MEMORY
    CMP Source_Index,17
    JE ER
    CMP SOURCE_INDEX,18
    JE ER
    CMP source_index,19
    JE  ER
    CMP source_index,20
    JE ER

    E1:

	CMP Dest_Index,5
	JE E11
	 
	    CMP Dest_Index,6
	    JE E11
	                    
	    CMP Dest_Index,7
	    JE E11
	    
	    CMP Dest_Index,8
	    JE E11
	    
	    CMP Dest_Index,9
	    JE E11    
	          
	    CMP Dest_Index,10
	    JE E11     
	          
	    CMP Dest_Index,11
	    JE E11     
	          
	    CMP Dest_Index,12
	    JE E11
	    
	    
	    CMP Source_Index,5
	    JE ER
	    
	    CMP Source_Index,6
	    JE ER
	     
	    CMP Source_Index,7
	    JE ER
	    
	    CMP Source_Index,8
	    JE ER
	     
	    CMP Source_Index,9
	    JE ER
	    
	    CMP Source_Index,10
	    JE ER
	    
	    CMP Source_Index,11
	    JE ER
	    
	    CMP Source_Index,12
	    JE ER 
	    
	    
	    JMP val1
	    
	     
	    E11:
	        
	        
	    CMP Source_Index,4
	    JBE ER
	    
	    CMP Source_Index,13
	    JAE CHE
	    
	    JMP VAL1
	    
	    CHE:
	    CMP SOURCE_INDEX,16
	    JBE ER
	    
	    CMP SOURCE_INDEX,21
	    JA  ER 
	    CMP SOURCE_INDEX,21
	    JE CHE4
	    JMP VAL1
	    
	    CHE4:
	    MOV BX, VALUE1 
        CMP BX,00FFh ; If it is greater then sets the destentaion to zeros 
        JAE ER
	    
	    JMP val1	 
	E2:     
	        
	   CMP INST_INDEX,9
       JAE E3
       
       CMP DEST_INDEX,1
       JB ER
       
       CMP DEST_INDEX,16
       JA ER
          
	    CMP SOURCE_Index,7
	    JE VAL1
	   
	    CMP SOURCE_Index,21
	    JB  ER
	    CMP SOURCE_Index,21
	    JA  ER
	    MOV BX, VALUE1 
        CMP BX,16 ; If it is greater then sets the destentaion to zeros 
        JAE ER
          
	    JMP VAL1     
	               
	E3:          
	CMP INST_INDEX,11
	JA E4
		     
	    CMP Dest_Index,5
	    JE E31
	    
	    CMP Dest_Index,6
	    JE E31
	                    
	    CMP Dest_Index,7
	    JE E31
	    
	    CMP Dest_Index,8
	    JE E31
	    
	    CMP Dest_Index,9
	    JE E31    
	          
	    CMP Dest_Index,10
	    JE E31     
	          
	    CMP Dest_Index,11
	    JE E31     
	          
	    CMP Dest_Index,12
	    JE E31
	    
	    CMP SOURCE_INDEX,1
	    JB ER
	    
	    CMP SOURCE_INDEX,21
	    JA ER
	    
	    CMP Source_Index,5
	    JE ER
	    
	    CMP Source_Index,6
	    JE ER
	     
	    CMP Source_Index,7
	    JE ER
	    
	    CMP Source_Index,8
	    JE ER
	     
	    CMP Source_Index,9
	    JE ER
	    
	    CMP Source_Index,10
	    JE ER
	    
	    CMP Source_Index,11
	    JE ER
	    
	    CMP Source_Index,12
	    JE ER
	    
	    JMP VAL1
	     
	    E31:
	            
	    CMP Source_Index,4
	    JBE ER
	    
	    CMP Source_Index,13
	    JAE CHE2
	    
	    JMP VAL1
	    
	    CHE2:
	    CMP SOURCE_INDEX,16
	    JBE ER
	    
	    CMP SOURCE_INDEX,21
	    JA ER
	    CMP SOURCE_INDEX,21
	    JE CHE5
	    JMP VAL1
	    
	    CHE5:
	    MOV BX, VALUE1 
        CMP BX,00FFh ; If it is greater then sets the destentaion to zeros 
        JAE ER    
	
	    JMP val1

        ER:
            MOV ERR,0H
	    E4:       
	      VAL1:  
             
        	RET
ERROR2 ENDP




INPUT PROC NEAR  
call input_ui             	
lea bx, TEXT

mov ch, 0
mov cl, [bx+1] ; get string size.
		
        call ConvToUpp

        call Separate_Input
        
        call Type_OF_INST
        CMP INST_INDEX,0
        JE ER2
        
        call Type_OF_DEST
        CMP Dest_Index,0
        JE ER2
        
        call Type_OF_Source
        
        call Type_OF_INST
        jmp v
        ER2:
            mov ERR,0H
        v:

        RET
    INPUT ENDP

	
	hex2number proc
      MOV  AX, 0       ;THE NUMBER.
   Ciclo:

      shl  al, 1
      rcl  ah, 1
      shl  al, 1
      rcl  ah, 1
      shl  al, 1
      rcl  ah, 1
      shl  al, 1
      rcl  ah, 1

      MOV  BL, [ SI ]  ;GET ONE HEX CHAR FROM STRING.

      call validate

      CMP  BL, 'A'     ;BL = 'A'..'F' : LETTER.
      JAE  letterAF    ;BL = '0'..'9' : DIGIT.
   ;CharIsDigit09.
      SUB  BL, 48      ;CONVERT DIGIT TO NUMBER.
      JMP  continue   
   letterAF:               
      SUB  BL, 55      ;CONVERT LETTER TO NUMBER.
   continue: 
      OR   AL, BL      ;CLEAR UPPER 4 BITS. ???
      INC  SI          ;NEXT HEX CHAR.
      DEC  BH          ;BH == 0 : FINISH.
      JNZ  Ciclo       ;BH != 0 : REPEAT.
   Fin:
      RET
hex2number endp
;---------------------------------------------  
;INPUT : BL = HEX CHAR TO VALIDATE.
FLAGS PROC NEAR 
        pushf
          pop     dx
          mov     di, offset CCF
          mov     cx, 12
          mov     bx, 0FD5h     ; Mask of defined flags
          cld
        More:
          shr     dx, 1
          mov     al, 0
          rcl     al, 1
          shr     bx, 1
          jnc     Skip          ; Bit does not correspond to a defined flag
          stosb
        Skip:
          dec     cx
          jnz     More
          RET 
          FLAGS ENDP 
validate proc

    cmp bl, '0'
    jb  error02     ;IF BL < '0'
    cmp bl, 'F'
    ja  error02     ;IF BL > 'F'
    cmp bl, '9'
    jbe ok2        ;IF BL <= '9'
    cmp bl, 'A'
    jae ok2        ;IF BL >= 'A'
error02:    
    pop  ax       ;REMOVE CALL VALIDATE.
    pop  ax       ;REMOVE CALL HEX2NUMBER.
;DISPLAY 'ILLEGAL CHARACTER- ENTER 0-9 OR A-F$'
mov al,99
mov Source_Index,al
ok2:    
    ret
    validate endp      





number2string proc FAR
 mov  bx, 10 ;DIGITS ARE EXTRACTED DIVIDING BY 10.
  mov  cx, 0 ;COUNTER FOR EXTRACTED DIGITS.
cycle1:


  MOV BX,0
  MOV BL,AH
  AND BL,11110000B
  SHR BL,4 
  
  
  CMP  BL, 10     ;BL = 'A'..'F' : LETTER.
  JAE  PletterAF
         
  add  BL, 48 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  JMP P1
  
  PletterAF:
  add  BL, 55 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
   
  
  ;--------------------------------------------
  P1:
  
  MOV BX,0
  MOV BL,AH
  AND BL,00001111B
  
  CMP  BL, 10     ;BL = 'A'..'F' : LETTER.
  JAE  PletterAF2
         
  add  BL, 48 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  JMP P2
  
  PletterAF2:
  add  BL, 55 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  ;--------------------------------------------- 
  P2:
  
  MOV BX,0
  MOV BL,AL
  AND BL,11110000B
  SHR BL,4 
  
  CMP  BL, 10     ;BL = 'A'..'F' : LETTER.
  JAE  PletterAF3
         
  add  BL, 48 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  JMP P3
  
  PletterAF3:
  add  BL, 55 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si  
  
  
  
  ;---------------------------------------------
  P3:
  
  MOV BX,0
  MOV BL,AL
  AND BL,00001111B
  
  CMP  BL, 10     ;BL = 'A'..'F' : LETTER.
  JAE  PletterAF4
         
  add  BL, 48 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  JMP P4
           
  PletterAF4:
  add  BL, 55 ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], BL
  inc  si
  
  ;---------------------------------------------
   P4:







       
    

  ret
number2string endp  

END