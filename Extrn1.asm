EXTRN source_index :BYTE
EXTRN DESt_index :BYTE
EXTRN MValue:BYTE
EXTRN VALUE1:WORD
EXTRN MEMORY:WORD
EXTRN INST_INDEX:BYTE
EXTRN CCF:BYTE
PUBLIC VALUE_AX1, VALUE_BX1 ,VALUE_CX1 ,VALUE_DX1 ,VALUE_SI1 ,VALUE_DI1 ,VALUE_SP1 ,VALUE_BP1

PUBLIC Excution_Unite1


.model huge
.386
.STACK 64
.DATA
		VALUE_AX1 DW 0
        VALUE_BX1 DW 0
        VALUE_CX1 DW 0
        VALUE_DX1 DW 0
        VALUE_SI1 DW 0
        VALUE_DI1 DW 0
        VALUE_SP1 DW 0
        VALUE_BP1 DW 0  
.code 
Excution_Unite1 proc FAR
        call MOV_INST
        
        call ADD_INST
        
        call SUB_INST
            
        CALL SHL_INST
            
        CALL SHR_INST
            
        CALL ROR_INST
            
        CALL ROL_INST 
            
        CALL XOR_INST
            
        CALL OR_INST
            
        CALL AND_INST
        
        CALL INC_INST

        CALL MUL_INST

        CALL DEC_INST

        CALL NOP_INST

        CALL DIV_INST

        CALL CLCC_INST
        RET
            
Excution_Unite1 ENDP  
ADD_INST PROC NEAR

            CMP INST_INDEX,2
			JNE OPER2
         
            cmp dest_index,1
            jne ADD2
            
                    ADD11:
            
                        cmp source_index,1
                        jne ADD12
                        
                        mov ax,VALUE_AX1
                        ADD VALUE_AX1,ax
                        
                        
                    ADD12:
                        cmp source_index,2
                        jne ADD13
                        
                        mov ax,VALUE_BX1
                        ADD VALUE_AX1,ax
                        
                    ADD13:
                        cmp source_index,3
                        jne ADD14
                        
                        mov ax,VALUE_CX1
                        ADD VALUE_AX1,ax
                                   
                    ADD14:
                        cmp source_index,4
                        jne ADD15
                        
                        mov ax,VALUE_DX1
                        ADD VALUE_AX1,ax
                        
                    ADD15:
                        cmp source_index,13
                        jne ADD16
                        
                        mov ax,VALUE_SI1
                        ADD VALUE_AX1,ax
                        
                    ADD16:
                        cmp source_index,14
                        jne ADD17
                        
                        mov ax,VALUE_DI1
                        ADD VALUE_AX1,ax   
                        
                    ADD17:
                        cmp source_index,15
                        jne ADD18 
                        
                        mov ax,VALUE_SP1
                        ADD VALUE_AX1,ax
                        
                    ADD18:
                        cmp source_index,16
                        jne ADD19
                        
                        mov ax,VALUE_BP1
                        ADD VALUE_AX1,ax
                        
                    ADD19:
                        cmp source_index,21
                        jne ADD2
                        
                        mov ax,VALUE1
                        ADD VALUE_AX1,ax
                        
                        
               ADD2: 
                        
               cmp dest_index,2
               jne ADD3
               
               
              
                    ADD21:
            
                        cmp source_index,1
                        jne ADD22
                        
                        mov ax,VALUE_AX1
                        ADD VALUE_BX1,ax
                        
                        
                    ADD22:
                        cmp source_index,2
                        jne ADD23
                        
                        ADD ax,VALUE_BX1
                        ADD VALUE_BX1,ax
                        
                    ADD23:
                        cmp source_index,3
                        jne ADD24
                        
                        mov ax,VALUE_CX1
                        ADD VALUE_BX1,ax
                                   
                    ADD24:
                        cmp source_index,4
                        jne ADD25
                        
                        mov ax,VALUE_DX1
                        ADD Value_BX1,ax
                        
                    ADD25:
                        cmp source_index,13
                        jne ADD26
                        
                        mov ax,VALUE_SI1
                        ADD VALUE_BX1,ax
                        
                    ADD26:
                        cmp source_index,14
                        jne ADD27
                        
                        mov ax,VALUE_DI1
                        ADD VALUE_BX1,ax   
                        
                    ADD27:
                        cmp source_index,15
                        jne ADD28 
                        
                        mov ax,VALUE_SP1
                        ADD VALUE_BX1,ax
                        
                    ADD28:
                        cmp source_index,16
                        jne ADD29
                        
                        mov ax,VALUE_BP1
                        ADD VALUE_BX1,ax
                        
                    ADD29:
                        cmp source_index,21
                        jne ADD3
                        
                        mov ax,VALUE1
                        ADD VALUE_BX1,ax     
               
            ADD3:   
               cmp dest_index,3
               jne ADD4
            
                    ADD31:
            
                        cmp source_index,1
                        jne ADD32
                        
                        mov ax,VALUE_AX1
                        ADD VALUE_CX1,ax
                        
                        
                    ADD32:
                        cmp source_index,2
                        jne ADD33
                        
                        mov ax,VALUE_BX1
                        ADD VALUE_CX1,ax
                        
                    ADD33:
                        cmp source_index,3
                        jne ADD34
                        
                        mov ax,VALUE_CX1
                        ADD VALUE_CX1,ax
                                   
                    ADD34:
                        cmp source_index,4
                        jne ADD35
                        
                        mov ax,VALUE_DX1
                        ADD VALUE_CX1,ax
                        
                    ADD35:
                        cmp source_index,13
                        jne ADD36
                        
                        mov ax,VALUE_SI1
                        ADD VALUE_CX1,ax
                        
                    ADD36:
                        cmp source_index,14
                        jne ADD37
                        
                        mov ax,VALUE_DI1
                        ADD VALUE_CX1,ax   
                        
                    ADD37:
                        cmp source_index,15
                        jne ADD38 
                        
                        mov ax,VALUE_SP1
                        ADD VALUE_CX1,ax
                        
                    ADD38:
                        cmp source_index,16
                        jne ADD39
                        
                        mov ax,VALUE_BP1
                        ADD VALUE_CX1,ax
                        
                    ADD39:
                        cmp source_index,21
                        jne ADD4
                        
                        mov ax,VALUE1
                        ADD VALUE_CX1,ax
                        
             ADD4:   
               cmp dest_index,4
               jne ADD5
            
                    ADD41:
            
                        cmp source_index,1
                        jne ADD42
                        
                        mov ax,VALUE_AX1
                        ADD VALUE_DX1,ax
                        
                        
                    ADD42:
                        cmp source_index,2
                        jne ADD43
                        
                        mov ax,VALUE_BX1
                        ADD VALUE_DX1,ax
                        
                    ADD43:
                        cmp source_index,3
                        jne ADD44
                        
                        mov ax,VALUE_CX1
                        ADD VALUE_DX1,ax
                                   
                    ADD44:
                        cmp source_index,4
                        jne ADD45
                        
                        mov ax,VALUE_DX1
                        ADD VALUE_DX1,ax
                        
                    ADD45:
                        cmp source_index,13
                        jne ADD46
                        
                        mov ax,VALUE_SI1
                        ADD VALUE_DX1,ax
                        
                    ADD46:
                        cmp source_index,14
                        jne ADD47
                        
                        mov ax,VALUE_DI1
                        ADD VALUE_DX1,ax   
                        
                    ADD47:
                        cmp source_index,15
                        jne ADD48 
                        
                        mov ax,VALUE_SP1
                        ADD VALUE_DX1,ax
                        
                    ADD48:
                        cmp source_index,16
                        jne ADD49
                        
                        mov ax,VALUE_BP1
                        ADD VALUE_DX1,ax
                        
                    ADD49:
                        cmp source_index,21
                        jne ADD5
                        
                        mov ax,VALUE1
                        ADD VALUE_DX1,ax
                        
                        
              ADD5:   
               cmp dest_index,5
               jne ADD6
               
                    ADD51:
                        cmp source_index,5
                        jne ADD52
                        
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        ADD VALUE_AX1,AX
                        
                    ADD52:
                        cmp source_index,6
                        jne ADD53
                        
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        ADD VALUE_AX1,AX
                    
                    ADD53:
                        cmp source_index,7
                        jne ADD54
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        ADD VALUE_AX1,AX 
                        
                    ADD54:
                        cmp source_index,8
                        jne ADD55
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        ADD VALUE_AX1,AX
                        
                   ADD55:
                        cmp source_index,9
                        jne ADD56
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_AX1,AX
                        
                    ADD56:
                        cmp source_index,10
                        jne ADD57
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_AX1,AX
                    
                    ADD57:
                        cmp source_index,11
                        jne ADD58
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_AX1,AX 
                        
                    ADD58:
                        cmp source_index,12
                        jne ADD59
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_AX1,AX
                        
                    ADD59:
                        cmp source_index,21
                        jne ADD6
                        
                        mov AX,VALUE1
                        SHL AX,8
                        ADD VALUE_AX1,AX    
                          
                        
               ADD6:   
               cmp dest_index,6
               jne ADD7
               
                    ADD61:
                        cmp source_index,5
                        jne ADD62
                        
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        ADD VALUE_BX1,AX
                        
                    ADD62:
                        cmp source_index,6
                        jne ADD63
                        
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        ADD VALUE_BX1,AX
                    
                    ADD63:
                        cmp source_index,7
                        jne ADD64
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        ADD VALUE_BX1,AX 
                        
                    ADD64:
                        cmp source_index,8
                        jne ADD65
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        ADD VALUE_BX1,AX
                        
                   ADD65:
                        cmp source_index,9
                        jne ADD66
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX1,AX
                        
                    ADD66:
                        cmp source_index,10
                        jne ADD67
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_BX1,AX
                    
                    ADD67:
                        cmp source_index,11
                        jne ADD68
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX1,AX 
                        
                    ADD68:
                        cmp source_index,12
                        jne ADD69
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX1,AX
                        
                    ADD69:
                        cmp source_index,21
                        jne ADD7
                        
                        mov AX,VALUE1
                        SHL AX,8
                        ADD VALUE_BX1,AX      
                        
                        
                        
               ADD7:   
               cmp dest_index,7
               jne ADD8
               
                    ADD71:
                        cmp source_index,5
                        jne ADD72
                        
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        ADD VALUE_CX1,AX
                        
                    ADD72:
                        cmp source_index,6
                        jne ADD73
                        
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        ADD VALUE_CX1,AX
                    
                    ADD73:
                        cmp source_index,7
                        jne ADD74
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        ADD VALUE_CX1,AX 
                        
                    ADD74:
                        cmp source_index,8
                        jne ADD75
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        ADD VALUE_CX1,AX
                        
                   ADD75:
                        cmp source_index,9
                        jne ADD76
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX1,AX
                        
                    ADD76:
                        cmp source_index,10
                        jne ADD77
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_CX1,AX
                    
                    ADD77:
                        cmp source_index,11
                        jne ADD78
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX1,AX 
                        
                    ADD78:
                        cmp source_index,12
                        jne ADD79
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX1,AX 
                        
                    ADD79:
                        cmp source_index,21
                        jne ADD8
                        
                        mov AX,VALUE1
                        SHR AX,8
                        ADD VALUE_CX1,AX
                                   
                        
              ADD8:   
               cmp dest_index,8
               jne ADD9
               
                     ADD81:
                        cmp source_index,5
                        jne ADD82
                               
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        ADD VALUE_DX1,AX
                        
                    ADD82:
                        cmp source_index,6
                        jne ADD83
                               
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        ADD VALUE_DX1,AX
                    
                    ADD83:
                        cmp source_index,7
                        jne ADD84
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        ADD VALUE_DX1,AX 
                        
                    ADD84:
                        cmp source_index,8
                        jne ADD85
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        ADD VALUE_DX1,AX
                        
                    ADD85:
                        cmp source_index,9
                        jne ADD86
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX1,AX
                        
                    ADD86:
                        cmp source_index,10
                        jne ADD87
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_DX1,AX
                    
                    ADD87:
                        cmp source_index,11
                        jne ADD88
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX1,AX 
                        
                    ADD88:
                        cmp source_index,12
                        jne ADD89
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX1,AX 
                        
                        
                    ADD89:
                        cmp source_index,21
                        jne ADD9
                        
                        mov AX,VALUE1
                        SHR AX,8
                        ADD VALUE_DX1,AX
              
              
              ADD9:   
               cmp dest_index,9
               jne ADD10
               
                     ADD91:
                        cmp source_index,5
                        jne ADD92
                               
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_AX1,AX
                        
                    ADD92:
                        cmp source_index,6
                        jne ADD93
                               
                        mov AX,VALUE_BX1
                        SUB AL,AL
                        SHL AX,8
                        ADD VALUE_AX1,AX
                    
                    ADD93:
                        cmp source_index,7
                        jne ADD94
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_AX1,AX 
                        
                    ADD94:
                        cmp source_index,8
                        jne ADD95
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_AX1,AX
                        
                   ADD95:
                        cmp source_index,9
                        jne ADD96
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        ADD VALUE_AX1,AX
                        
                    ADD96:
                        cmp source_index,10
                        jne ADD97
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL
                        ADD VALUE_AX1,AX
                    
                    ADD97:
                        cmp source_index,11
                        jne ADD98
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        ADD VALUE_AX1,AX 
                        
                    ADD98:
                        cmp source_index,12
                        jne ADD10
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        ADD VALUE_AX1,AX
                        
                    ADD99:
                        cmp source_index,21
                        jne ADD10
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_AX1,AX 
                        
                            
              
              
              ADD10:   
               cmp dest_index,10
               jne ADDD11
               
                    ADD101:
                        cmp source_index,5
                        jne ADD102
                               
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX1,AX
                        
                    ADD102:
                        cmp source_index,6
                        jne ADD103
                               
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX1,AX
                    
                    ADD103:
                        cmp source_index,7
                        jne ADD104
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX1,AX 
                        
                    ADD104:
                        cmp source_index,8
                        jne ADD105
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX1,AX
                        
                   ADD105:
                        cmp source_index,9
                        jne ADD106
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        ADD VALUE_BX1,AX
                        
                    ADD106:
                        cmp source_index,10
                        jne ADD107
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL
                        ADD VALUE_BX1,AX
                    
                    ADD107:
                        cmp source_index,11
                        jne ADD108
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        ADD VALUE_BX1,AX 
                        
                    ADD108:
                        cmp source_index,12
                        jne ADD109
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        ADD VALUE_BX1,AX 
                    
                    ADD109:
                        cmp source_index,21
                        jne ADDD11
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_BX1,AX             
              
              
              ADDD11:   
               cmp dest_index,11
               jne ADDD12
               
                     ADD111:
                        cmp source_index,5
                        jne ADD112
                               
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX1,AX
                        
                    ADD112:
                        cmp source_index,6
                        jne ADD113
                               
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX1,AX
                    
                    ADD113:
                        cmp source_index,7
                        jne ADD114
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX1,AX 
                        
                   ADD114:
                        cmp source_index,8
                        jne ADD115
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX1,AX
                        
                   ADD115:
                        cmp source_index,9
                        jne ADD116
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        ADD VALUE_CX1,AX
                        
                    ADD116:
                        cmp source_index,10
                        jne ADD117
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL
                        ADD VALUE_CX1,AX
                    
                    ADD117:
                        cmp source_index,11
                        jne ADD118
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        ADD VALUE_CX1,AX 
                        
                    ADD118:
                        cmp source_index,12
                        jne ADD119
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        ADD VALUE_CX1,AX
                        
                    ADD119:
                        cmp source_index,21
                        jne ADDD12
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_CX1,AX          
              
              
              ADDD12:   
               cmp dest_index,12
               jne OPER2
               
                     ADD121:
                        cmp source_index,5
                        jne ADD122
                               
                        
                        mov AX,VALUE_AX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX1,AX
                        
                    ADD122:
                        cmp source_index,6
                        jne ADD123
                               
                        mov AX,VALUE_BX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX1,AX
                    
                    ADD123:
                        cmp source_index,7
                        jne ADD124
                        
                        mov AX,VALUE_CX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX1,AX 
                        
                    ADD124:
                        cmp source_index,8
                        jne ADD125
                        
                        mov AX,VALUE_DX1
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX1,AX
                        
                   ADD125:
                        cmp source_index,9
                        jne ADD126
                        
                        mov AX,VALUE_AX1
                        SUB AL,AL
                        ADD VALUE_DX1,AX
                        
                   ADD126:
                        cmp source_index,10
                        jne ADD127
                        
                        mov AX,VALUE_BX1
                        SUB AL,AL
                        ADD VALUE_DX1,AX
                    
                    ADD127:
                        cmp source_index,11
                        jne ADD128
                        
                        mov AX,VALUE_CX1
                        SUB AL,AL
                        ADD VALUE_DX1,AX 
                        
                    ADD128:
                        cmp source_index,12
                        jne ADD129
                        
                        mov AX,VALUE_DX1
                        SUB AL,AL
                        ADD VALUE_DX1,AX     
                    
                    ADD129:
                        cmp source_index,21
                        jne OPER2
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_DX1,AX  
                        
                        
             OPER2:
                        
            RET 
           ADD_INST ENDP 
DEC_INST PROC NEAR
        CMP INST_INDEX,13
        JNE DONE2
        AAX2:
        CMP Dest_Index,1
        JNE BBX2
        MOV AX,VALUE_AX1
        DEC AX
        MOV VALUE_AX1,AX
        JMP DONE2
        
        BBX2:
        CMP Dest_Index,2
        JNE CCX2
        MOV BX,VALUE_BX1
        DEC BX
        MOV VALUE_BX1,BX
        JMP DONE2
        
        CCX2:
        CMP Dest_Index,3
        JNE DDX2
        MOV AX,VALUE_CX1
        DEC AX
        MOV VALUE_CX1,AX
        JMP DONE2
        
        DDX2:
        CMP Dest_Index,4
        JNE AAL2
        MOV AX,VALUE_DX1
        DEC AX
        MOV VALUE_DX1,AX
        JMP DONE2
        
        AAL2:
        CMP Dest_Index,5
        JNE BBL2
        MOV AX,VALUE_AX1
        DEC AL
        MOV VALUE_AX1,AX
        JMP DONE2
        
        BBL2:
        CMP Dest_Index,6
        JNE CCL2
        MOV AX,VALUE_BX1
        DEC AL
        MOV VALUE_BX1,AX
        JMP DONE2
        
        CCL2:
        CMP Dest_Index,7
        JNE DDL2
        MOV CX,VALUE_CX1
        DEC CL
        MOV VALUE_CX1,CX
        JMP DONE2
        
        DDL2:
        CMP Dest_Index,8
        JNE AAH2
        MOV AX,VALUE_DX1
        DEC AL
        MOV VALUE_DX1,AX
        JMP DONE2
        
        AAH2:
        CMP Dest_Index,9
        JNE BBH2
        MOV AX,VALUE_AX1
        DEC AH
        MOV VALUE_AX1,AX
        JMP DONE2
        
        BBH2:
        CMP Dest_Index,10
        JNE CCH2
        MOV AX,VALUE_BX1
        DEC AH
        MOV VALUE_BX1,AX
        JMP DONE2
        
        CCH2:
        CMP Dest_Index,11
        JNE DDH2
        MOV AX,VALUE_CX1
        DEC AH
        MOV VALUE_CX1,AX
        JMP DONE2 
        
        DDH2:
        CMP Dest_Index,12
        JNE SSI2
        MOV AX,VALUE_DX1
        DEC AH
        MOV VALUE_DX1,AX
        JMP DONE2
        
        SSI2:
        CMP Dest_Index,13
        JNE DDI2
        MOV AX,VALUE_SI1
        DEC AX
        MOV VALUE_SI1,AX
        JMP DONE2
        
        DDI2:
        CMP Dest_Index,14
        JNE BBP2
        MOV AX,VALUE_DI1
        DEC AX
        MOV VALUE_DI1,AX
        JMP DONE2
        
        BBP2:
        CMP Dest_Index,15
        JNE SSP2
        MOV AX,VALUE_BP1
        DEC AX
        MOV VALUE_BP1,AX
        JMP DONE2
        
        SSP2:
        CMP Dest_Index,16
        JNE DONE2
        MOV AX,VALUE_SP1
        DEC AX
        MOV VALUE_SP1,AX
        JMP DONE2
        
        DONE2:
        RET
        DEC_INST ENDP	
INC_INST PROC NEAR
        CMP INST_INDEX,12
        JNE DONE
        AAX:
        CMP Dest_Index,1
        JNE BBX
        MOV AX,0
        MOV AX,VALUE_AX1
        INC AX
        MOV VALUE_AX1,AX
        JMP DONE
        
        BBX:
        CMP Dest_Index,2
        JNE CCX
        MOV BX,0
        MOV BX,VALUE_BX1
        INC BX
        MOV VALUE_BX1,BX
        JMP DONE
        
        CCX:
        CMP Dest_Index,3
        JNE DDX
        MOV AX,VALUE_CX1
        INC AX
        MOV VALUE_CX1,AX
        JMP DONE
        
        DDX:
        CMP Dest_Index,4
        JNE AAL
        MOV AX,VALUE_DX1
        INC AX
        MOV VALUE_DX1,AX
        JMP DONE
        
        AAL:
        CMP Dest_Index,5
        JNE BBL
        MOV AX,0
        MOV AX,VALUE_AX1
        INC AL
        MOV VALUE_AX1,AX
        JMP DONE
        
        BBL:
        CMP Dest_Index,6
        JNE CCL
        MOV AX,0
        MOV AX,VALUE_BX1
        INC AL
        MOV VALUE_BX1,AX
        JMP DONE
        
        CCL:
        CMP Dest_Index,7
        JNE DDL
        MOV AX,0
        MOV AX,VALUE_CX1
        INC AL
        MOV VALUE_CX1,AX
        JMP DONE
        
        DDL:
        CMP Dest_Index,8
        JNE AAH
        MOV AX,0
        MOV AX,VALUE_DX1
        INC AL
        MOV VALUE_DX1,AX
        JMP DONE
        
        AAH:
        CMP Dest_Index,9
        JNE BBH
        MOV AX,0
        MOV AX,VALUE_AX1
        INC AH
        MOV VALUE_AX1,AX
        JMP DONE
        
        BBH:
        CMP Dest_Index,10
        JNE CCH
        MOV AX,0
        MOV AX,VALUE_BX1
        INC AH
        MOV VALUE_BX1,AX
        JMP DONE 
        
        CCH:
        CMP Dest_Index,11
        JNE DDH
        MOV AX,0
        MOV AX,VALUE_CX1
        INC AH
        MOV VALUE_CX1,AX
        JMP DONE 
        
        DDH:
        CMP Dest_Index,12
        JNE SSI
        MOV AX,0
        MOV AX,VALUE_DX1
        INC AH
        MOV VALUE_DX1,AX
        JMP DONE
        
        SSI:
        CMP Dest_Index,13
        JNE DDI
        MOV AX,0
        MOV AX,VALUE_SI1
        INC AX
        MOV VALUE_SI1,AX
        JMP DONE
        
        DDI:
        CMP Dest_Index,14
        JNE BBP
        MOV AX,0
        MOV AX,VALUE_DI1
        INC AX
        MOV VALUE_DI1,AX
        JMP DONE
        
        BBP:
        CMP Dest_Index,15
        JNE SSP
        MOV AX,0
        MOV AX,VALUE_BP1
        INC AX
        MOV VALUE_BP1,AX
        JMP DONE
        
        SSP:
        CMP Dest_Index,16
        JNE DONE
        MOV AX,0
        MOV AX,VALUE_SP1
        INC AX
        MOV VALUE_SP1,AX
        JMP DONE
        
        DONE:
        RET
INC_INST ENDP                   		
MUL_INST PROC NEAR
         CMP INST_INDEX,15
         JNE DONE3
        AAX3:
        CMP Dest_Index,1
        JNE BBX3
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL
        MOV VALUE_DX1,DX
        OL:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        BBX3:
        CMP Dest_Index,2
        JNE CCX3
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL2
        MOV VALUE_DX1,DX
        OL2:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        CCX3:
        CMP Dest_Index,3
        JNE DDX3
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111   ;DX has a value cuz the num that result from the product is greater than 16bits
        JZ OL3
        MOV VALUE_DX1,DX
        OL3:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        DDX3:
        CMP Dest_Index,4
        JNE AAL3
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL4
        MOV VALUE_DX1,DX
        OL4:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        AAL3:     ;IF IT IS NOT WORKING WE CAN USE MOV AX,VALUE_AX1 THEN SUB AH,AH THEN DEC AL SAME AS BELOW 
        CMP Dest_Index,5
        JNE BBL3
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CL
        MOV VALUE_AX1,AX
        JMP DONE3
        
        BBL3:
        CMP Dest_Index,6
        JNE CCL3
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CL
        MOV VALUE_AX1,AX
        JMP DONE3
        
        CCL3:
        CMP Dest_Index,7
        JNE DDL3
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CL
        MOV VALUE_AX1,AX
        JMP DONE3
        
        DDL3:
        CMP Dest_Index,8
        JNE AAH3
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CL
        MOV VALUE_AX1,AX
        JMP DONE3
        
        AAH3:
        CMP Dest_Index,9
        JNE BBH3
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CH
        MOV VALUE_AX1,AX
        JMP DONE3
        
        BBH3:
        CMP Dest_Index,10
        JNE CCH3
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CH
        MOV VALUE_AX1,AX
        JMP DONE3
        
        CCH3:
        CMP Dest_Index,11
        JNE DDH3
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CH
        MOV VALUE_AX1,AX
        JMP DONE3
        
        DDH3:
        CMP Dest_Index,12
        JNE SSI3
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        MUL CH
        MOV VALUE_AX1,AX
        JMP DONE3
        
        SSI3:
        CMP Dest_Index,13
        JNE DDI3
        MOV CX,VALUE_SI1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL5
        MOV VALUE_DX1,DX
        OL5:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        DDI3:
        CMP Dest_Index,14
        JNE BBP3
        MOV CX,VALUE_DI1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL6
        MOV VALUE_DX1,DX
        OL6:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        BBP3:
        CMP Dest_Index,15
        JNE SSP3
        MOV CX,VALUE_BP1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL7
        MOV VALUE_DX1,DX
        OL7:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        
        SSP3:
        CMP Dest_Index,16
        JNE DONE3
        MOV CX,VALUE_SP1
        MOV AX,VALUE_AX1
        MUL CX
        AND DX,1111
        JZ OL8
        MOV VALUE_DX1,DX
        OL8:
        MOV VALUE_AX1,AX
        JMP DONE3
        
        DONE3:
        RET
     MUL_INST ENDP		                
XOR_INST PROC NEAR
        
       
          
          CMP INST_INDEX,9
           JNE TESTEE9  
         
            cmp dest_index,1
            jne XOR2
            
                    XOR11:
            
                        cmp source_index,1
                        jne XOR12
                        
                        mov ax,VALUE_AX1
                        XOR VALUE_AX1,ax
                        
                        
                    XOR12:
                        cmp source_index,2
                        jne XOR13
                        
                        mov ax,VALUE_BX1
                        XOR VALUE_AX1,ax
                        
                    XOR13:
                        cmp source_index,3
                        jne XOR14
                        
                        mov ax,VALUE_CX1
                        XOR VALUE_AX1,ax
                                   
                    XOR14:
                        cmp source_index,4
                        jne XOR15
                        
                        mov ax,VALUE_DX1
                        XOR VALUE_AX1,ax
                        
                    XOR15:
                        cmp source_index,13
                        jne XOR16
                        
                        mov ax,VALUE_SI1
                        XOR VALUE_AX1,ax
                        
                    XOR16:
                        cmp source_index,14
                        jne XOR17
                        
                        mov ax,VALUE_DI1
                        XOR VALUE_AX1,ax   
                        
                    XOR17:
                        cmp source_index,15
                        jne XOR18 
                        
                        mov ax,VALUE_SP1
                        XOR VALUE_AX1,ax
                        
                    XOR18:
                        cmp source_index,16
                        jne XOR19
                        
                        mov ax,VALUE_BP1
                        XOR VALUE_AX1,ax
                        
                    XOR19:
                        cmp source_index,21
                        jne XOR2
                        
                        mov ax,VALUE1
                        XOR VALUE_AX1,ax
                
               XOR2: 
                        
               cmp dest_index,2
               jne XOR3
               
               
              
                    XOR21:
            
                        cmp source_index,1
                        jne XOR22
                        
                        mov ax,VALUE_AX1
                        XOR VALUE_BX1,ax
                        
                        
                    XOR22:
                        cmp source_index,2
                        jne XOR23
                        
                        MOV ax,VALUE_BX1
                        XOR VALUE_BX1,ax
                        
                    XOR23:
                        cmp source_index,3
                        jne XOR24
                        
                        mov ax,VALUE_CX1
                        XOR VALUE_BX1,ax
                                   
                    XOR24:
                        cmp source_index,4
                        jne XOR25
                        
                        mov ax,VALUE_DX1
                        XOR Value_BX1,ax
                        
                    XOR25:
                        cmp source_index,13
                        jne XOR26
                        
                        mov ax,VALUE_SI1
                        XOR VALUE_BX1,ax
                        
                    XOR26:
                        cmp source_index,14
                        jne XOR27
                        
                        mov ax,VALUE_DI1
                        XOR VALUE_BX1,ax   
                        
                    XOR27:
                        cmp source_index,15
                        jne XOR28 
                        
                        mov ax,VALUE_SP1
                        XOR VALUE_BX1,ax
                        
                    XOR28:
                        cmp source_index,16
                        jne XOR29
                        
                        mov ax,VALUE_BP1
                        XOR VALUE_BX1,ax
                        
                    XOR29:
                        cmp source_index,21
                        jne XOR3
                        
                        mov ax,VALUE1
                        XOR VALUE_BX1,ax     
               
            XOR3:   
               cmp dest_index,3
               jne XOR4
            
                    XOR31:
            
                        cmp source_index,1
                        jne XOR32
                        
                        mov ax,VALUE_AX1
                        XOR VALUE_CX1,ax
                        
                        
                    XOR32:
                        cmp source_index,2
                        jne XOR33
                        
                        mov ax,VALUE_BX1
                        XOR VALUE_CX1,ax
                        
                    XOR33:
                        cmp source_index,3
                        jne XOR34
                        
                        mov ax,VALUE_CX1
                        XOR VALUE_CX1,ax
                                   
                    XOR34:
                        cmp source_index,4
                        jne XOR35
                        
                        mov ax,VALUE_DX1
                        XOR VALUE_CX1,ax
                        
                    XOR35:
                        cmp source_index,13
                        jne XOR36
                        
                        mov ax,VALUE_SI1
                        XOR VALUE_CX1,ax
                        
                    XOR36:
                        cmp source_index,14
                        jne XOR37
                        
                        mov ax,VALUE_DI1
                        XOR VALUE_CX1,ax   
                        
                    XOR37:
                        cmp source_index,15
                        jne XOR38 
                        
                        mov ax,VALUE_SP1
                        XOR VALUE_CX1,ax
                        
                    XOR38:
                        cmp source_index,16
                        jne XOR39
                        
                        mov ax,VALUE_BP1
                        XOR VALUE_CX1,ax
                        
                    XOR39:
                        cmp source_index,21
                        jne XOR4
                        
                        mov ax,VALUE1
                        XOR VALUE_CX1,ax
                        
             XOR4:   
               cmp dest_index,4
               jne XOR5
            
                    XOR41:
            
                        cmp source_index,1
                        jne XOR42
                        
                        mov ax,VALUE_AX1
                        XOR VALUE_DX1,ax
                        
                        
                    XOR42:
                        cmp source_index,2
                        jne XOR43
                        
                        mov ax,VALUE_BX1
                        XOR VALUE_DX1,ax
                        
                    XOR43:
                        cmp source_index,3
                        jne XOR44
                        
                        mov ax,VALUE_CX1
                        XOR VALUE_DX1,ax
                                   
                    XOR44:
                        cmp source_index,4
                        jne XOR45
                        
                        mov ax,VALUE_DX1
                        XOR VALUE_DX1,ax
                        
                    XOR45:
                        cmp source_index,13
                        jne XOR46
                        
                        mov ax,VALUE_SI1
                        XOR VALUE_DX1,ax
                        
                    XOR46:
                        cmp source_index,14
                        jne XOR47
                        
                        mov ax,VALUE_DI1
                        XOR VALUE_DX1,ax   
                        
                    XOR47:
                        cmp source_index,15
                        jne XOR48 
                        
                        mov ax,VALUE_SP1
                        XOR VALUE_DX1,ax
                        
                    XOR48:
                        cmp source_index,16
                        jne XOR49
                        
                        mov ax,VALUE_BP1
                        XOR VALUE_DX1,ax
                        
                    XOR49:
                        cmp source_index,21
                        jne XOR5
                        
                        mov ax,VALUE1
                        XOR VALUE_DX1,ax
                        
                        
              XOR5:   
               cmp dest_index,5
               jne XOR6
               
       
            XOR51:
                cmp source_index,5
                jne XOR52
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                mov BX,VALUE_AX1
                SUB BL,BL
                XOR VALUE_AX1,AX
                
            XOR52:
                cmp source_index,6
                jne XOR53
                
                mov AX,VALUE_BX1
                SUB AH,AH
                XOR VALUE_AX1,AX
            
            XOR53:
                cmp source_index,7
                jne XOR54
                
                mov AX,VALUE_CX1
                SUB AH,AH
                XOR VALUE_AX1,AX 
                
            XOR54:
                cmp source_index,8
                jne XOR55
                
                mov AX,VALUE_DX1
                SUB AH,AH
                XOR VALUE_AX1,AX
                
           XOR55:
                cmp source_index,9
                jne XOR56
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_AX1,AX
                
            XOR56:
                cmp source_index,10
                jne XOR57
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_AX1,AX
            
            XOR57:
                cmp source_index,11
                jne XOR58
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_AX1,AX 
                
            XOR58:
                cmp source_index,12
                jne XOR59
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_AX1,AX
                
            XOR59:
                cmp source_index,21
                jne XOR6
                
                mov AX,VALUE1
                SUB AH,AH
                SHR AX,8
                
                XOR VALUE_AX1,AX    
                  
                
       XOR6:   
       cmp dest_index,6
       jne XOR7
       
            XOR61:
                cmp source_index,5
                jne XOR62
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                XOR VALUE_AX1,AX
                
            XOR62:
                cmp source_index,6
                jne XOR63
                
                mov AX,VALUE_BX1
                SUB AH,AH
                XOR VALUE_BX1,AX
            
            XOR63:
                cmp source_index,7
                jne XOR64
                
                mov AX,VALUE_CX1
                SUB AH,AH
                XOR VALUE_BX1,AX 
                
            XOR64:
                cmp source_index,8
                jne XOR65
                
                mov AX,VALUE_DX1
                SUB AH,AH
                XOR VALUE_BX1,AX
                
           XOR65:
                cmp source_index,9
                jne XOR66
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX1,AX
                
            XOR66:
                cmp source_index,10
                jne XOR67
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_BX1,AX
            
            XOR67:
                cmp source_index,11
                jne XOR68
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX1,AX 
                
            XOR68:
                cmp source_index,12
                jne XOR69
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX1,AX
                
            XOR69:
                cmp source_index,21
                jne XOR7
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_BX1,AX      
                
                
                
       XOR7:   
       cmp dest_index,7
       jne XOR8
       
            XOR71:
                cmp source_index,5
                jne XOR72
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                XOR VALUE_CX1,AX
                
            XOR72:
                cmp source_index,6
                jne XOR73
                
                mov AX,VALUE_BX1
                SUB AH,AH
                XOR VALUE_CX1,AX
            
            XOR73:
                cmp source_index,7
                jne XOR74
                
                mov AX,VALUE_CX1
                SUB AH,AH
                XOR VALUE_CX1,AX 
                
            XOR74:
                cmp source_index,8
                jne XOR75
                
                mov AX,VALUE_DX1
                SUB AH,AH
                XOR VALUE_CX1,AX
                
           XOR75:
                cmp source_index,9
                jne XOR76
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX1,AX
                
            XOR76:
                cmp source_index,10
                jne XOR77
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_CX1,AX
            
            XOR77:
                cmp source_index,11
                jne XOR78
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX1,AX 
                
            XOR78:
                cmp source_index,12
                jne XOR79
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX1,AX 
                
            XOR79:
                cmp source_index,21
                jne XOR8
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_CX1,AX
                           
                
      XOR8:   
       cmp dest_index,8
       jne XOR9
       
             XOR81:
                cmp source_index,5
                jne XOR82
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                XOR VALUE_DX1,AX
                
            XOR82:
                cmp source_index,6
                jne XOR83
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                XOR VALUE_DX1,AX
            
            XOR83:
                cmp source_index,7
                jne XOR84
                
                mov AX,VALUE_CX1
                SUB AH,AH
                XOR VALUE_DX1,AX 
                
            XOR84:
                cmp source_index,8
                jne XOR85
                
                mov AX,VALUE_DX1
                SUB AH,AH
                XOR VALUE_DX1,AX
                
            XOR85:
                cmp source_index,9
                jne XOR86
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX1,AX
                
            XOR86:
                cmp source_index,10
                jne XOR87
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_DX1,AX
            
            XOR87:
                cmp source_index,11
                jne XOR88
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX1,AX 
                
            XOR88:
                cmp source_index,12
                jne XOR89
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX1,AX 
                
                
            XOR89:
                cmp source_index,21
                jne XOR9
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_DX1,AX
      
      
      XOR9:   
       cmp dest_index,9
       jne XOR10
       
             XOR91:
                cmp source_index,5
                jne XOR92
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_AX1,AX
                
            XOR92:
                cmp source_index,6
                jne XOR93
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_AX1,AX
            
            XOR93:
                cmp source_index,7
                jne XOR94
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_AX1,AX 
                
            XOR94:
                cmp source_index,8
                jne XOR95
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_AX1,AX
                
           XOR95:
                cmp source_index,9
                jne XOR96
                
                mov AX,VALUE_AX1
                SUB AL,AL
                XOR VALUE_AX1,AX
                
            XOR96:
                cmp source_index,10
                jne XOR97
                
                mov AX,VALUE_BX1
                SUB AL,AL
                XOR VALUE_AX1,AX
            
            XOR97:
                cmp source_index,11
                jne XOR98
                
                mov AX,VALUE_CX1
                SUB AL,AL
                XOR VALUE_AX1,AX 
                
            XOR98:
                cmp source_index,12
                jne XOR99
                
                mov AX,VALUE_DX1
                SUB AL,AL
                XOR VALUE_AX1,AX
                
            XOR99:
                cmp source_index,21
                jne XOR10
                
                mov AX,VALUE1
                XOR VALUE_AX1,AX 
                
                    
      
      
      XOR10:   
       cmp dest_index,10
       jne XORD11
       
            XOR101:
                cmp source_index,5
                jne XOR102
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX1,AX
                
            XOR102:
                cmp source_index,6
                jne XOR103
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX1,AX
            
            XOR103:
                cmp source_index,7
                jne XOR104
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX1,AX 
                
            XOR104:
                cmp source_index,8
                jne XOR105
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX1,AX
                
           XOR105:
                cmp source_index,9
                jne XOR106
                
                mov AX,VALUE_AX1
                SUB AL,AL
                XOR VALUE_BX1,AX
                
            XOR106:
                cmp source_index,10
                jne XOR107
                
                mov AX,VALUE_BX1
                SUB AL,AL
                XOR VALUE_BX1,AX
            
            XOR107:
                cmp source_index,11
                jne XOR108
                
                mov AX,VALUE_CX1
                SUB AL,AL
                XOR VALUE_BX1,AX 
                
            XOR108:
                cmp source_index,12
                jne XOR109
                
                mov AX,VALUE_DX1
                SUB AL,AL
                XOR VALUE_BX1,AX 
            
            XOR109:
                cmp source_index,21
                jne XORD11
                
                mov AX,VALUE1
                XOR VALUE_BX1,AX             
      
      
      XORD11:   
       cmp dest_index,11
       jne XORD12
       
             XOR111:
                cmp source_index,5
                jne XOR112
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX1,AX
                
            XOR112:
                cmp source_index,6
                jne XOR113
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX1,AX
            
            XOR113:
                cmp source_index,7
                jne XOR114
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX1,AX 
                
           XOR114:
                cmp source_index,8
                jne XOR115
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX1,AX
                
           XOR115:
                cmp source_index,9
                jne XOR116
                
                mov AX,VALUE_AX1
                SUB AL,AL
                XOR VALUE_CX1,AX
                
            XOR116:
                cmp source_index,10
                jne XOR117
                
                mov AX,VALUE_BX1
                SUB AL,AL
                XOR VALUE_CX1,AX
            
            XOR117:
                cmp source_index,11
                jne XOR118
                
                mov AX,VALUE_CX1
                SUB AL,AL
                XOR VALUE_CX1,AX 
                
            XOR118:
                cmp source_index,12
                jne XOR119
                
                mov AX,VALUE_DX1
                SUB AL,AL
                XOR VALUE_CX1,AX
                
            XOR119:
                cmp source_index,21
                jne XORD12
                
                mov AX,VALUE1
                XOR VALUE_CX1,AX 
                
                    
      
      
      XORD12:   
       cmp dest_index,12
       jne XORD13
       
             XOR121:
                cmp source_index,5
                jne XOR122
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX1,AX
                
            XOR122:
                cmp source_index,6
                jne XOR123
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX1,AX
            
            XOR123:
                cmp source_index,7
                jne XOR124
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX1,AX 
                
            XOR124:
                cmp source_index,8
                jne XOR125
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX1,AX
                
           XOR125:
                cmp source_index,9
                jne XOR126
                
                mov AX,VALUE_AX1
                SUB AL,AL
                XOR VALUE_DX1,AX
                
           XOR126:
                cmp source_index,10
                jne XOR127
                
                mov AX,VALUE_BX1
                SUB AL,AL
                XOR VALUE_DX1,AX
            
            XOR127:
                cmp source_index,11
                jne XOR128
                
                mov AX,VALUE_CX1
                SUB AL,AL
                XOR VALUE_DX1,AX 
                
            XOR128:
                cmp source_index,12
                jne XOR129
                
                mov AX,VALUE_DX1
                SUB AL,AL
                XOR VALUE_DX1,AX     
            
            XOR129:
                cmp source_index,21
                jne XORD13
                
                mov AX,VALUE1
                XOR VALUE_DX1,AX
                
    XORD13:             
    cmp dest_index,13
    jne XORD14
    
            XOR131:
    
                cmp source_index,1
                jne XOR132
                
                mov ax,VALUE_AX1
                XOR VALUE_SI1,ax
                
                
            XOR132:
                cmp source_index,2
                jne XOR133
                
                mov ax,VALUE_BX1
                XOR VALUE_SI1,ax
                
            XOR133:
                cmp source_index,3
                jne XOR134
                
                mov ax,VALUE_CX1
                XOR VALUE_SI1,ax
                           
            XOR134:
                cmp source_index,4
                jne XOR135
                
                mov ax,VALUE_DX1
                XOR VALUE_SI1,ax
                
            XOR135:
                cmp source_index,13
                jne XOR136
                
                mov ax,VALUE_SI1
                XOR VALUE_SI1,ax
                
            XOR136:
                cmp source_index,14
                jne XOR137
                
                mov ax,VALUE_DI1
                XOR VALUE_SI1,ax   
                
            XOR137:
                cmp source_index,15
                jne XOR138 
                
                mov ax,VALUE_BP1
                XOR VALUE_SI1,ax
                
            XOR138:
                cmp source_index,16
                jne XOR139
                
                mov ax,VALUE_SP1
                XOR VALUE_SI1,ax
                
            XOR139:
                cmp source_index,21
                jne XOR14
                
                mov ax,VALUE1
                XOR VALUE_SI1,ax
        
       XORD14: 
                
       cmp dest_index,14
       jne XORD15
       
       
      
            XOR141:
    
                cmp source_index,1
                jne XOR142
                
                mov ax,VALUE_AX1
                XOR VALUE_DI1,ax
                
                
            XOR142:
                cmp source_index,2
                jne XOR143
                
                MOV ax,VALUE_BX1
                XOR VALUE_DI1,ax
                
            XOR143:
                cmp source_index,3
                jne XOR144
                
                mov ax,VALUE_CX1
                XOR VALUE_DI1,ax
                           
            XOR144:
                cmp source_index,4
                jne XOR145
                
                mov ax,VALUE_DX1
                XOR VALUE_DI1,ax
                
            XOR145:
                cmp source_index,13
                jne XOR146
                
                mov ax,VALUE_SI1
                XOR VALUE_DI1,ax
                
            XOR146:
                cmp source_index,14
                jne XOR147
                
                mov ax,VALUE_DI1
                XOR VALUE_DI1,ax   
                
            XOR147:
                cmp source_index,15
                jne XOR148 
                
                mov ax,VALUE_BP1
                XOR VALUE_DI1,ax
                
            XOR148:
                cmp source_index,16
                jne XOR149
                
                mov ax,VALUE_SP1
                XOR VALUE_DI1,ax
                
            XOR149:
                cmp source_index,21
                jne XORD15
                
                mov ax,VALUE1
                XOR VALUE_DI1,ax     
       
    XORD15:   
       cmp dest_index,15
       jne XORD16
    
            XOR151:
    
                cmp source_index,1
                jne XOR152
                
                mov ax,VALUE_AX1
                XOR VALUE_BP1,ax
                
                
            XOR152:
                cmp source_index,2
                jne XOR153
                
                mov ax,VALUE_BX1
                XOR VALUE_BP1,ax
                
            XOR153:
                cmp source_index,3
                jne XOR154
                
                mov ax,VALUE_CX1
                XOR VALUE_BP1,ax
                           
            XOR154:
                cmp source_index,4
                jne XOR155
                
                mov ax,VALUE_DX1
                XOR VALUE_BP1,ax
                
            XOR155:
                cmp source_index,13
                jne XOR156
                
                mov ax,VALUE_SI1
                XOR VALUE_BP1,ax
                
            XOR156:
                cmp source_index,14
                jne XOR157
                
                mov ax,VALUE_DI1
                XOR VALUE_BP1,ax   
                
            XOR157:
                cmp source_index,15
                jne XOR158 
                
                mov ax,VALUE_BP1
                XOR VALUE_BP1,ax
                
            XOR158:
                cmp source_index,16
                jne XOR159
                
                mov ax,VALUE_SP1
                XOR VALUE_BP1,ax
                
            XOR159:
                cmp source_index,21
                jne XORD16
                
                mov ax,VALUE1
                XOR VALUE_BP1,ax
                
     XORD16:   
       cmp dest_index,16
       jne TESTEE9
    
            XOR161:
    
                cmp source_index,1
                jne XOR162
                
                mov ax,VALUE_AX1
                XOR VALUE_SP1,ax
                
                
            XOR162:
                cmp source_index,2
                jne XOR163
                
                mov ax,VALUE_BX1
                XOR VALUE_SP1,ax
                
            XOR163:
                cmp source_index,3
                jne XOR164
                
                mov ax,VALUE_CX1
                XOR VALUE_SP1,ax
                           
            XOR164:
                cmp source_index,4
                jne XOR165
                
                mov ax,VALUE_DX1
                XOR VALUE_SP1,ax
                
            XOR165:
                cmp source_index,13
                jne XOR166
                
                mov ax,VALUE_SI1
                XOR VALUE_SP1,ax
                
            XOR166:
                cmp source_index,14
                jne XOR167
                
                mov ax,VALUE_DI1
                XOR VALUE_SP1,ax   
                
            XOR167:
                cmp source_index,15
                jne XOR168 
                
                mov ax,VALUE_BP1
                XOR VALUE_SP1,ax
                
            XOR168:
                cmp source_index,16
                jne XOR169
                
                mov ax,VALUE_SP1
                XOR VALUE_SP1,ax
                
            XOR169:
                cmp source_index,21
                jne TESTEE9
                
                mov ax,VALUE1
                XOR VALUE_SP1,ax               
                        
                        
             TESTEE9: 
                        
              
        
        
        
        
        
        
        RET
        XOR_INST ENDP                 
OR_INST PROC NEAR
        
       
          
          CMP INST_INDEX,10
           JNE TESTEE10  
         
            cmp dest_index,1
            jne OR2
            
                    OR11:
            
                        cmp source_index,1
                        jne OR12
                        
                        mov ax,VALUE_AX1
                        OR VALUE_AX1,ax
                        
                        
                    OR12:
                        cmp source_index,2
                        jne OR13
                        
                        mov ax,VALUE_BX1
                        OR VALUE_AX1,ax
                        
                    OR13:
                        cmp source_index,3
                        jne OR14
                        
                        mov ax,VALUE_CX1
                        OR VALUE_AX1,ax
                                   
                    OR14:
                        cmp source_index,4
                        jne OR15
                        
                        mov ax,VALUE_DX1
                        OR VALUE_AX1,ax
                        
                    OR15:
                        cmp source_index,13
                        jne OR16
                        
                        mov ax,VALUE_SI1
                        OR VALUE_AX1,ax
                        
                    OR16:
                        cmp source_index,14
                        jne OR17
                        
                        mov ax,VALUE_DI1
                        OR VALUE_AX1,ax   
                        
                    OR17:
                        cmp source_index,15
                        jne OR18 
                        
                        mov ax,VALUE_SP1
                        OR VALUE_AX1,ax
                        
                    OR18:
                        cmp source_index,16
                        jne OR19
                        
                        mov ax,VALUE_BP1
                        OR VALUE_AX1,ax
                        
                    OR19:
                        cmp source_index,21
                        jne OR2
                        
                        mov ax,VALUE1
                        OR VALUE_AX1,ax
                
               OR2: 
                        
               cmp dest_index,2
               jne OR3
               
               
              
                    OR21:
            
                        cmp source_index,1
                        jne OR22
                        
                        mov ax,VALUE_AX1
                        OR VALUE_BX1,ax
                        
                        
                    OR22:
                        cmp source_index,2
                        jne OR23
                        
                        MOV ax,VALUE_BX1
                        OR VALUE_BX1,ax
                        
                    OR23:
                        cmp source_index,3
                        jne OR24
                        
                        mov ax,VALUE_CX1
                        OR VALUE_BX1,ax
                                   
                    OR24:
                        cmp source_index,4
                        jne OR25
                        
                        mov ax,VALUE_DX1
                        OR Value_BX1,ax
                        
                    OR25:
                        cmp source_index,13
                        jne OR26
                        
                        mov ax,VALUE_SI1
                        OR VALUE_BX1,ax
                        
                    OR26:
                        cmp source_index,14
                        jne OR27
                        
                        mov ax,VALUE_DI1
                        OR VALUE_BX1,ax   
                        
                    OR27:
                        cmp source_index,15
                        jne OR28 
                        
                        mov ax,VALUE_SP1
                        OR VALUE_BX1,ax
                        
                    OR28:
                        cmp source_index,16
                        jne OR29
                        
                        mov ax,VALUE_BP1
                        OR VALUE_BX1,ax
                        
                    OR29:
                        cmp source_index,21
                        jne OR3
                        
                        mov ax,VALUE1
                        OR VALUE_BX1,ax     
               
            OR3:   
               cmp dest_index,3
               jne OR4
            
                    OR31:
            
                        cmp source_index,1
                        jne OR32
                        
                        mov ax,VALUE_AX1
                        OR VALUE_CX1,ax
                        
                        
                    OR32:
                        cmp source_index,2
                        jne OR33
                        
                        mov ax,VALUE_BX1
                        OR VALUE_CX1,ax
                        
                    OR33:
                        cmp source_index,3
                        jne OR34
                        
                        mov ax,VALUE_CX1
                        OR VALUE_CX1,ax
                                   
                    OR34:
                        cmp source_index,4
                        jne OR35
                        
                        mov ax,VALUE_DX1
                        OR VALUE_CX1,ax
                        
                    OR35:
                        cmp source_index,13
                        jne OR36
                        
                        mov ax,VALUE_SI1
                        OR VALUE_CX1,ax
                        
                    OR36:
                        cmp source_index,14
                        jne OR37
                        
                        mov ax,VALUE_DI1
                        OR VALUE_CX1,ax   
                        
                    OR37:
                        cmp source_index,15
                        jne OR38 
                        
                        mov ax,VALUE_SP1
                        OR VALUE_CX1,ax
                        
                    OR38:
                        cmp source_index,16
                        jne OR39
                        
                        mov ax,VALUE_BP1
                        OR VALUE_CX1,ax
                        
                    OR39:
                        cmp source_index,21
                        jne OR4
                        
                        mov ax,VALUE1
                        OR VALUE_CX1,ax
                        
             OR4:   
               cmp dest_index,4
               jne OR5
            
                    OR41:
            
                        cmp source_index,1
                        jne OR42
                        
                        mov ax,VALUE_AX1
                        OR VALUE_DX1,ax
                        
                        
                    OR42:
                        cmp source_index,2
                        jne OR43
                        
                        mov ax,VALUE_BX1
                        OR VALUE_DX1,ax
                        
                    OR43:
                        cmp source_index,3
                        jne OR44
                        
                        mov ax,VALUE_CX1
                        OR VALUE_DX1,ax
                                   
                    OR44:
                        cmp source_index,4
                        jne OR45
                        
                        mov ax,VALUE_DX1
                        OR VALUE_DX1,ax
                        
                    OR45:
                        cmp source_index,13
                        jne OR46
                        
                        mov ax,VALUE_SI1
                        OR VALUE_DX1,ax
                        
                    OR46:
                        cmp source_index,14
                        jne OR47
                        
                        mov ax,VALUE_DI1
                        OR VALUE_DX1,ax   
                        
                    OR47:
                        cmp source_index,15
                        jne OR48 
                        
                        mov ax,VALUE_SP1
                        OR VALUE_DX1,ax
                        
                    OR48:
                        cmp source_index,16
                        jne OR49
                        
                        mov ax,VALUE_BP1
                        OR VALUE_DX1,ax
                        
                    OR49:
                        cmp source_index,21
                        jne OR5
                        
                        mov ax,VALUE1
                        OR VALUE_DX1,ax
                        
                        
              OR5:   
               cmp dest_index,5
               jne OR6
               
       
            OR51:
                cmp source_index,5
                jne OR52
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                OR VALUE_AX1,AX
                
            OR52:
                cmp source_index,6
                jne OR53
                
                mov AX,VALUE_BX1
                SUB AH,AH
                OR VALUE_AX1,AX
            
            OR53:
                cmp source_index,7
                jne OR54
                
                mov AX,VALUE_CX1
                SUB AH,AH
                OR VALUE_AX1,AX 
                
            OR54:
                cmp source_index,8
                jne OR55
                
                mov AX,VALUE_DX1
                SUB AH,AH
                OR VALUE_AX1,AX
                
           OR55:
                cmp source_index,9
                jne OR56
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_AX1,AX
                
            OR56:
                cmp source_index,10
                jne OR57
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                OR VALUE_AX1,AX
            
            OR57:
                cmp source_index,11
                jne OR58
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_AX1,AX 
                
            OR58:
                cmp source_index,12
                jne OR59
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_AX1,AX
                
            OR59:
                cmp source_index,21
                jne OR6
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_AX1,AX    
                  
                
       OR6:   
       cmp dest_index,6
       jne OR7
       
            OR61:
                cmp source_index,5
                jne OR62
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                OR VALUE_AX1,AX
                
            OR62:
                cmp source_index,6
                jne OR63
                
                mov AX,VALUE_BX1
                SUB AH,AH
                OR VALUE_BX1,AX
            
            OR63:
                cmp source_index,7
                jne OR64
                
                mov AX,VALUE_CX1
                SUB AH,AH
                OR VALUE_BX1,AX 
                
            OR64:
                cmp source_index,8
                jne OR65
                
                mov AX,VALUE_DX1
                SUB AH,AH
                OR VALUE_BX1,AX
                
           OR65:
                cmp source_index,9
                jne OR66
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX1,AX
                
            OR66:
                cmp source_index,10
                jne OR67
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                OR VALUE_BX1,AX
            
            OR67:
                cmp source_index,11
                jne OR68
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX1,AX 
                
            OR68:
                cmp source_index,12
                jne OR69
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX1,AX
                
            OR69:
                cmp source_index,21
                jne OR7
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_BX1,AX      
                
                
                
       OR7:   
       cmp dest_index,7
       jne OR8
       
            OR71:
                cmp source_index,5
                jne OR72
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                OR VALUE_CX1,AX
                
            OR72:
                cmp source_index,6
                jne OR73
                
                mov AX,VALUE_BX1
                SUB AH,AH
                OR VALUE_CX1,AX
            
            OR73:
                cmp source_index,7
                jne OR74
                
                mov AX,VALUE_CX1
                SUB AH,AH
                OR VALUE_CX1,AX 
                
            OR74:
                cmp source_index,8
                jne OR75
                
                mov AX,VALUE_DX1
                SUB AH,AH
                OR VALUE_CX1,AX
                
           OR75:
                cmp source_index,9
                jne OR76
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX1,AX
                
            OR76:
                cmp source_index,10
                jne OR77
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                OR VALUE_CX1,AX
            
            OR77:
                cmp source_index,11
                jne OR78
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX1,AX 
                
            OR78:
                cmp source_index,12
                jne OR79
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX1,AX 
                
            OR79:
                cmp source_index,21
                jne OR8
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_CX1,AX
                           
                
      OR8:   
       cmp dest_index,8
       jne OR9
       
             OR81:
                cmp source_index,5
                jne OR82
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                OR VALUE_DX1,AX
                
            OR82:
                cmp source_index,6
                jne OR83
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                OR VALUE_DX1,AX
            
            OR83:
                cmp source_index,7
                jne OR84
                
                mov AX,VALUE_CX1
                SUB AH,AH
                OR VALUE_DX1,AX 
                
            OR84:
                cmp source_index,8
                jne OR85
                
                mov AX,VALUE_DX1
                SUB AH,AH
                OR VALUE_DX1,AX
                
            OR85:
                cmp source_index,9
                jne OR86
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX1,AX
                
            OR86:
                cmp source_index,10
                jne OR87
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                OR VALUE_DX1,AX
            
            OR87:
                cmp source_index,11
                jne OR88
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX1,AX 
                
            OR88:
                cmp source_index,12
                jne OR89
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX1,AX 
                
                
            OR89:
                cmp source_index,21
                jne OR9
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_DX1,AX
      
      
      OR9:   
       cmp dest_index,9
       jne OR10
       
             OR91:
                cmp source_index,5
                jne OR92
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_AX1,AX
                
            OR92:
                cmp source_index,6
                jne OR93
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_AX1,AX
            
            OR93:
                cmp source_index,7
                jne OR94
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_AX1,AX 
                
            OR94:
                cmp source_index,8
                jne OR95
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_AX1,AX
                
           OR95:
                cmp source_index,9
                jne OR96
                
                mov AX,VALUE_AX1
                SUB AL,AL
                OR VALUE_AX1,AX
                
            OR96:
                cmp source_index,10
                jne OR97
                
                mov AX,VALUE_BX1
                SUB AL,AL
                OR VALUE_AX1,AX
            
            OR97:
                cmp source_index,11
                jne OR98
                
                mov AX,VALUE_CX1
                SUB AL,AL
                OR VALUE_AX1,AX 
                
            OR98:
                cmp source_index,12
                jne OR99
                
                mov AX,VALUE_DX1
                SUB AL,AL
                OR VALUE_AX1,AX
                
            OR99:
                cmp source_index,21
                jne OR10
                
                mov AX,VALUE1
                OR VALUE_AX1,AX 
                
                    
      
      
      OR10:   
       cmp dest_index,10
       jne ORD11
       
            OR101:
                cmp source_index,5
                jne OR102
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX1,AX
                
            OR102:
                cmp source_index,6
                jne OR103
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX1,AX
            
            OR103:
                cmp source_index,7
                jne OR104
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX1,AX 
                
            OR104:
                cmp source_index,8
                jne OR105
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX1,AX
                
           OR105:
                cmp source_index,9
                jne OR106
                
                mov AX,VALUE_AX1
                SUB AL,AL
                OR VALUE_BX1,AX
                
            OR106:
                cmp source_index,10
                jne OR107
                
                mov AX,VALUE_BX1
                SUB AL,AL
                OR VALUE_BX1,AX
            
            OR107:
                cmp source_index,11
                jne OR108
                
                mov AX,VALUE_CX1
                SUB AL,AL
                OR VALUE_BX1,AX 
                
            OR108:
                cmp source_index,12
                jne OR109
                
                mov AX,VALUE_DX1
                SUB AL,AL
                OR VALUE_BX1,AX 
            
            OR109:
                cmp source_index,21
                jne ORD11
                
                mov AX,VALUE1
                OR VALUE_BX1,AX             
      
      
      ORD11:   
       cmp dest_index,11
       jne ORD12
       
             OR111:
                cmp source_index,5
                jne OR112
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX1,AX
                
            OR112:
                cmp source_index,6
                jne OR113
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX1,AX
            
            OR113:
                cmp source_index,7
                jne OR114
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX1,AX 
                
           OR114:
                cmp source_index,8
                jne OR115
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX1,AX
                
           OR115:
                cmp source_index,9
                jne OR116
                
                mov AX,VALUE_AX1
                SUB AL,AL
                OR VALUE_CX1,AX
                
            OR116:
                cmp source_index,10
                jne OR117
                
                mov AX,VALUE_BX1
                SUB AL,AL
                OR VALUE_CX1,AX
            
            OR117:
                cmp source_index,11
                jne OR118
                
                mov AX,VALUE_CX1
                SUB AL,AL
                OR VALUE_CX1,AX 
                
            OR118:
                cmp source_index,12
                jne OR119
                
                mov AX,VALUE_DX1
                SUB AL,AL
                OR VALUE_CX1,AX
                
            OR119:
                cmp source_index,21
                jne ORD12
                
                mov AX,VALUE1
                OR VALUE_CX1,AX 
                
                    
      
      
      ORD12:   
       cmp dest_index,12
       jne ORD13
       
             OR121:
                cmp source_index,5
                jne OR122
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX1,AX
                
            OR122:
                cmp source_index,6
                jne OR123
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX1,AX
            
            OR123:
                cmp source_index,7
                jne OR124
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX1,AX 
                
            OR124:
                cmp source_index,8
                jne OR125
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX1,AX
                
           OR125:
                cmp source_index,9
                jne OR126
                
                mov AX,VALUE_AX1
                SUB AL,AL
                OR VALUE_DX1,AX
                
           OR126:
                cmp source_index,10
                jne OR127
                
                mov AX,VALUE_BX1
                SUB AL,AL
                OR VALUE_DX1,AX
            
            OR127:
                cmp source_index,11
                jne OR128
                
                mov AX,VALUE_CX1
                SUB AL,AL
                OR VALUE_DX1,AX 
                
            OR128:
                cmp source_index,12
                jne OR129
                
                mov AX,VALUE_DX1
                SUB AL,AL
                OR VALUE_DX1,AX     
            
            OR129:
                cmp source_index,21
                jne ORD13
                
                mov AX,VALUE1
                OR VALUE_DX1,AX
                
    ORD13:             
    cmp dest_index,13
    jne ORD14
    
            OR131:
    
                cmp source_index,1
                jne OR132
                
                mov ax,VALUE_AX1
                OR VALUE_SI1,ax
                
                
            OR132:
                cmp source_index,2
                jne OR133
                
                mov ax,VALUE_BX1
                OR VALUE_SI1,ax
                
            OR133:
                cmp source_index,3
                jne OR134
                
                mov ax,VALUE_CX1
                OR VALUE_SI1,ax
                           
            OR134:
                cmp source_index,4
                jne OR135
                
                mov ax,VALUE_DX1
                OR VALUE_SI1,ax
                
            OR135:
                cmp source_index,13
                jne OR136
                
                mov ax,VALUE_SI1
                OR VALUE_SI1,ax
                
            OR136:
                cmp source_index,14
                jne OR137
                
                mov ax,VALUE_DI1
                OR VALUE_SI1,ax   
                
            OR137:
                cmp source_index,15
                jne OR138 
                
                mov ax,VALUE_BP1
                OR VALUE_SI1,ax
                
            OR138:
                cmp source_index,16
                jne OR139
                
                mov ax,VALUE_SP1
                OR VALUE_SI1,ax
                
            OR139:
                cmp source_index,21
                jne OR14
                
                mov ax,VALUE1
                OR VALUE_SI1,ax
        
       ORD14: 
                
       cmp dest_index,14
       jne ORD15
       
       
      
            OR141:
    
                cmp source_index,1
                jne OR142
                
                mov ax,VALUE_AX1
                OR VALUE_DI1,ax
                
                
            OR142:
                cmp source_index,2
                jne OR143
                
                MOV ax,VALUE_BX1
                OR VALUE_DI1,ax
                
            OR143:
                cmp source_index,3
                jne OR144
                
                mov ax,VALUE_CX1
                OR VALUE_DI1,ax
                           
            OR144:
                cmp source_index,4
                jne OR145
                
                mov ax,VALUE_DX1
                OR VALUE_DI1,ax
                
            OR145:
                cmp source_index,13
                jne OR146
                
                mov ax,VALUE_SI1
                OR VALUE_DI1,ax
                
            OR146:
                cmp source_index,14
                jne OR147
                
                mov ax,VALUE_DI1
                OR VALUE_DI1,ax   
                
            OR147:
                cmp source_index,15
                jne OR148 
                
                mov ax,VALUE_BP1
                OR VALUE_DI1,ax
                
            OR148:
                cmp source_index,16
                jne OR149
                
                mov ax,VALUE_SP1
                OR VALUE_DI1,ax
                
            OR149:
                cmp source_index,21
                jne ORD15
                
                mov ax,VALUE1
                OR VALUE_DI1,ax     
       
    ORD15:   
       cmp dest_index,15
       jne ORD16
    
            OR151:
    
                cmp source_index,1
                jne OR152
                
                mov ax,VALUE_AX1
                OR VALUE_BP1,ax
                
                
            OR152:
                cmp source_index,2
                jne OR153
                
                mov ax,VALUE_BX1
                OR VALUE_BP1,ax
                
            OR153:
                cmp source_index,3
                jne OR154
                
                mov ax,VALUE_CX1
                OR VALUE_BP1,ax
                           
            OR154:
                cmp source_index,4
                jne OR155
                
                mov ax,VALUE_DX1
                OR VALUE_BP1,ax
                
            OR155:
                cmp source_index,13
                jne OR156
                
                mov ax,VALUE_SI1
                OR VALUE_BP1,ax
                
            OR156:
                cmp source_index,14
                jne OR157
                
                mov ax,VALUE_DI1
                OR VALUE_BP1,ax   
                
            OR157:
                cmp source_index,15
                jne OR158 
                
                mov ax,VALUE_BP1
                OR VALUE_BP1,ax
                
            OR158:
                cmp source_index,16
                jne OR159
                
                mov ax,VALUE_SP1
                OR VALUE_BP1,ax
                
            OR159:
                cmp source_index,21
                jne ORD16
                
                mov ax,VALUE1
                OR VALUE_BP1,ax
                
     ORD16:   
       cmp dest_index,16
       jne TESTEE10
    
            OR161:
    
                cmp source_index,1
                jne OR162
                
                mov ax,VALUE_AX1
                OR VALUE_SP1,ax
                
                
            OR162:
                cmp source_index,2
                jne OR163
                
                mov ax,VALUE_BX1
                OR VALUE_SP1,ax
                
            OR163:
                cmp source_index,3
                jne OR164
                
                mov ax,VALUE_CX1
                OR VALUE_SP1,ax
                           
            OR164:
                cmp source_index,4
                jne OR165
                
                mov ax,VALUE_DX1
                OR VALUE_SP1,ax
                
            OR165:
                cmp source_index,13
                jne OR166
                
                mov ax,VALUE_SI1
                OR VALUE_SP1,ax
                
            OR166:
                cmp source_index,14
                jne OR167
                
                mov ax,VALUE_DI1
                OR VALUE_SP1,ax   
                
            OR167:
                cmp source_index,15
                jne OR168 
                
                mov ax,VALUE_BP1
                OR VALUE_SP1,ax
                
            OR168:
                cmp source_index,16
                jne OR169
                
                mov ax,VALUE_SP1
                OR VALUE_SP1,ax
                
            OR169:
                cmp source_index,21
                jne TESTEE10
                
                mov ax,VALUE1
                OR VALUE_SP1,ax               
                        
                        
             TESTEE10: 
                        
              
        
        
        
        
        
        
        RET
        OR_INST ENDP       
AND_INST PROC NEAR
        
       
          
          CMP INST_INDEX,11
           JNE TESTEE11  
         
            cmp dest_index,1
            jne AND2
            
                    AND11:
            
                        cmp source_index,1
                        jne AND12
                        
                        mov ax,VALUE_AX1
                        AND VALUE_AX1,ax
                        
                        
                    AND12:
                        cmp source_index,2
                        jne AND13
                        
                        mov ax,VALUE_BX1
                        AND VALUE_AX1,ax
                        
                    AND13:
                        cmp source_index,3
                        jne AND14
                        
                        mov ax,VALUE_CX1
                        AND VALUE_AX1,ax
                                   
                    AND14:
                        cmp source_index,4
                        jne AND15
                        
                        mov ax,VALUE_DX1
                        AND VALUE_AX1,ax
                        
                    AND15:
                        cmp source_index,13
                        jne AND16
                        
                        mov ax,VALUE_SI1
                        AND VALUE_AX1,ax
                        
                    AND16:
                        cmp source_index,14
                        jne AND17
                        
                        mov ax,VALUE_DI1
                        AND VALUE_AX1,ax   
                        
                    AND17:
                        cmp source_index,15
                        jne AND18 
                        
                        mov ax,VALUE_SP1
                        AND VALUE_AX1,ax
                        
                    AND18:
                        cmp source_index,16
                        jne AND19
                        
                        mov ax,VALUE_BP1
                        AND VALUE_AX1,ax
                        
                    AND19:
                        cmp source_index,21
                        jne AND2
                        
                        mov ax,VALUE1
                        AND VALUE_AX1,ax
                
               AND2: 
                        
               cmp dest_index,2
               jne AND3
               
               
              
                    AND21:
            
                        cmp source_index,1
                        jne AND22
                        
                        mov ax,VALUE_AX1
                        AND VALUE_BX1,ax
                        
                        
                    AND22:
                        cmp source_index,2
                        jne AND23
                        
                        MOV ax,VALUE_BX1
                        AND VALUE_BX1,ax
                        
                    AND23:
                        cmp source_index,3
                        jne AND24
                        
                        mov ax,VALUE_CX1
                        AND VALUE_BX1,ax
                                   
                    AND24:
                        cmp source_index,4
                        jne AND25
                        
                        mov ax,VALUE_DX1
                        AND Value_BX1,ax
                        
                    AND25:
                        cmp source_index,13
                        jne AND26
                        
                        mov ax,VALUE_SI1
                        AND VALUE_BX1,ax
                        
                    AND26:
                        cmp source_index,14
                        jne AND27
                        
                        mov ax,VALUE_DI1
                        AND VALUE_BX1,ax   
                        
                    AND27:
                        cmp source_index,15
                        jne AND28 
                        
                        mov ax,VALUE_SP1
                        AND VALUE_BX1,ax
                        
                    AND28:
                        cmp source_index,16
                        jne AND29
                        
                        mov ax,VALUE_BP1
                        AND VALUE_BX1,ax
                        
                    AND29:
                        cmp source_index,21
                        jne AND3
                        
                        mov ax,VALUE1
                        AND VALUE_BX1,ax     
               
            AND3:   
               cmp dest_index,3
               jne AND4
            
                    AND31:
            
                        cmp source_index,1
                        jne AND32
                        
                        mov ax,VALUE_AX1
                        AND VALUE_CX1,ax
                        
                        
                    AND32:
                        cmp source_index,2
                        jne AND33
                        
                        mov ax,VALUE_BX1
                        AND VALUE_CX1,ax
                        
                    AND33:
                        cmp source_index,3
                        jne AND34
                        
                        mov ax,VALUE_CX1
                        AND VALUE_CX1,ax
                                   
                    AND34:
                        cmp source_index,4
                        jne AND35
                        
                        mov ax,VALUE_DX1
                        AND VALUE_CX1,ax
                        
                    AND35:
                        cmp source_index,13
                        jne AND36
                        
                        mov ax,VALUE_SI1
                        AND VALUE_CX1,ax
                        
                    AND36:
                        cmp source_index,14
                        jne AND37
                        
                        mov ax,VALUE_DI1
                        AND VALUE_CX1,ax   
                        
                    AND37:
                        cmp source_index,15
                        jne AND38 
                        
                        mov ax,VALUE_SP1
                        AND VALUE_CX1,ax
                        
                    AND38:
                        cmp source_index,16
                        jne AND39
                        
                        mov ax,VALUE_BP1
                        AND VALUE_CX1,ax
                        
                    AND39:
                        cmp source_index,21
                        jne AND4
                        
                        mov ax,VALUE1
                        AND VALUE_CX1,ax
                        
             AND4:   
               cmp dest_index,4
               jne AND5
            
                    AND41:
            
                        cmp source_index,1
                        jne AND42
                        
                        mov ax,VALUE_AX1
                        AND VALUE_DX1,ax
                        
                        
                    AND42:
                        cmp source_index,2
                        jne AND43
                        
                        mov ax,VALUE_BX1
                        AND VALUE_DX1,ax
                        
                    AND43:
                        cmp source_index,3
                        jne AND44
                        
                        mov ax,VALUE_CX1
                        AND VALUE_DX1,ax
                                   
                    AND44:
                        cmp source_index,4
                        jne AND45
                        
                        mov ax,VALUE_DX1
                        AND VALUE_DX1,ax
                        
                    AND45:
                        cmp source_index,13
                        jne AND46
                        
                        mov ax,VALUE_SI1
                        AND VALUE_DX1,ax
                        
                    AND46:
                        cmp source_index,14
                        jne AND47
                        
                        mov ax,VALUE_DI1
                        AND VALUE_DX1,ax   
                        
                    AND47:
                        cmp source_index,15
                        jne AND48 
                        
                        mov ax,VALUE_SP1
                        AND VALUE_DX1,ax
                        
                    AND48:
                        cmp source_index,16
                        jne AND49
                        
                        mov ax,VALUE_BP1
                        AND VALUE_DX1,ax
                        
                    AND49:
                        cmp source_index,21
                        jne AND5
                        
                        mov ax,VALUE1
                        AND VALUE_DX1,ax
                        
                        
              AND5:   
               cmp dest_index,5
               jne AND6
               
       
            AND51:
                cmp source_index,5
                jne AND52
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND52:
                cmp source_index,6
                jne AND53
                
                mov AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
            
            AND53:
                cmp source_index,7
                jne AND54
                
                mov AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX 
                
            AND54:
                cmp source_index,8
                jne AND55
                
                mov AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
           AND55:
                cmp source_index,9
                jne AND56
                
                mov AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND56:
                cmp source_index,10
                jne AND57
                
                mov AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
            
            AND57:
                cmp source_index,11
                jne AND58
                
                mov AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX 
                
            AND58:
                cmp source_index,12
                jne AND59
                
                mov AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND59:
                cmp source_index,21
                jne AND6
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX    
                  
                
       AND6:   
       cmp dest_index,6
       jne AND7
       
            AND61:
                cmp source_index,5
                jne AND62
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
            AND62:
                cmp source_index,6
                jne AND63
                
                mov AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
            
            AND63:
                cmp source_index,7
                jne AND64
                
                mov AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
                
            AND64:
                cmp source_index,8
                jne AND65
                
                mov AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
           AND65:
                cmp source_index,9
                jne AND66
                
                mov AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
            AND66:
                cmp source_index,10
                jne AND67
                
                mov AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
            
            AND67:
                cmp source_index,11
                jne AND68
                
                mov AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
                
            AND68:
                cmp source_index,12
                jne AND69
                
                mov AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
            AND69:
                cmp source_index,21
                jne AND7
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX      
                
                
                
       AND7:   
       cmp dest_index,7
       jne AND8
       
            AND71:
                cmp source_index,5
                jne AND72
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
            AND72:
                cmp source_index,6
                jne AND73
                
                mov AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
            
            AND73:
                cmp source_index,7
                jne AND74
                
                mov AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
                
            AND74:
                cmp source_index,8
                jne AND75
                
                mov AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
           AND75:
                cmp source_index,9
                jne AND76
                
                mov AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
            AND76:
                cmp source_index,10
                jne AND77
                
                mov AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
            
            AND77:
                cmp source_index,11
                jne AND78
                
                mov AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX 
                
            AND78:
                cmp source_index,12
                jne AND79
                
                mov AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX 
                
            AND79:
                cmp source_index,21
                jne AND8
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                           
                
      AND8:   
       cmp dest_index,8
       jne AND9
       
             AND81:
                cmp source_index,5
                jne AND82
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
            AND82:
                cmp source_index,6
                jne AND83
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
            
            AND83:
                cmp source_index,7
                jne AND84
                
                mov AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
            AND84:
                cmp source_index,8
                jne AND85
                
                mov AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
            AND85:
                cmp source_index,9
                jne AND86
                
                mov AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
            AND86:
                cmp source_index,10
                jne AND87
                
                mov AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
            
            AND87:
                cmp source_index,11
                jne AND88
                
                mov AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
            AND88:
                cmp source_index,12
                jne AND89
                
                mov AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
                
            AND89:
                cmp source_index,21
                jne AND9
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
      
      
      AND9:   
       cmp dest_index,9
       jne AND10
       
             AND91:
                cmp source_index,5
                jne AND92
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND92:
                cmp source_index,6
                jne AND93
                       
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
            
            AND93:
                cmp source_index,7
                jne AND94
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX 
                
            AND94:
                cmp source_index,8
                jne AND95
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
           AND95:
                cmp source_index,9
                jne AND96
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BL,BL
                
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND96:
                cmp source_index,10
                jne AND97
                
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BL,BL
                
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
            
            AND97:
                cmp source_index,11
                jne AND98
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BL,BL
                
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX 
                
            AND98:
                cmp source_index,12
                jne AND99
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_AX1
                SUB BL,BL
                
                AND VALUE_AX1,AX
                ADD VALUE_AX1,BX
                
            AND99:
                cmp source_index,21
                jne AND10
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
                    
      
      
      AND10:   
       cmp dest_index,10
       jne ANDD11
       
            AND101:
                cmp source_index,5
                jne AND102
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
            AND102:
                cmp source_index,6
                jne AND103
                       
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
            
            AND103:
                cmp source_index,7
                jne AND104
                
               mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
                
            AND104:
                cmp source_index,8
                jne AND105
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
           AND105:
                cmp source_index,9
                jne AND106
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BL,BL
                
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
                
            AND106:
                cmp source_index,10
                jne AND107
                
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BL,BL
                
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX
            
            AND107:
                cmp source_index,11
                jne AND108
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BL,BL
                
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
                
            AND108:
                cmp source_index,12
                jne AND109
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_BX1
                SUB BL,BL
                
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX 
            
            AND109:
                cmp source_index,21
                jne ANDD11
               
                mov AX,VALUE1 
                mov BX,VALUE_BX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX1,AX
                ADD VALUE_BX1,BX             
      
      
      ANDD11:   
       cmp dest_index,11
       jne ANDD12
       
             AND111:
                cmp source_index,5
                jne AND112
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
            AND112:
                cmp source_index,6
                jne AND113
                       
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
            
            AND113:
                cmp source_index,7
                jne AND114
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX 
                
           AND114:
                cmp source_index,8
                jne AND115
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
           AND115:
                cmp source_index,9
                jne AND116
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
            AND116:
                cmp source_index,10
                jne AND117
                
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
            
            AND117:
                cmp source_index,11
                jne AND118
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX 
                
            AND118:
                cmp source_index,12
                jne AND119
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_CX1
                SUB BL,BL
                
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX
                
            AND119:
                cmp source_index,21
                jne ANDD12
                
                mov AX,VALUE1 
                mov BX,VALUE_CX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX1,AX
                ADD VALUE_CX1,BX 
                
                    
      
      
      ANDD12:   
       cmp dest_index,12
       jne ANDD13
       
             AND121:
                cmp source_index,5
                jne AND122
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
            AND122:
                cmp source_index,6
                jne AND123
                       
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
            
            AND123:
                cmp source_index,7
                jne AND124
                
               mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
            AND124:
                cmp source_index,8
                jne AND125
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
           AND125:
                cmp source_index,9
                jne AND126
                
                mov AX,VALUE_AX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BL,BL
                
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
           AND126:
                cmp source_index,10
                jne AND127
                
                mov AX,VALUE_BX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BL,BL
                
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
            
            AND127:
                cmp source_index,11
                jne AND128
                
                mov AX,VALUE_CX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BL,BL
                
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX 
                
            AND128:
                cmp source_index,12
                jne AND129
                
                mov AX,VALUE_DX1
                SUB AH,AH 
                mov BX,VALUE_DX1
                SUB BL,BL
                
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX     
            
            AND129:
                cmp source_index,21
                jne ANDD13
                
                mov AX,VALUE1 
                mov BX,VALUE_DX1
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX1,AX
                ADD VALUE_DX1,BX
                
    ANDD13:             
    cmp dest_index,13
    jne ANDD14
    
            AND131:
    
                cmp source_index,1
                jne AND132
                
                mov ax,VALUE_AX1
                AND VALUE_SI1,ax
                
                
            AND132:
                cmp source_index,2
                jne AND133
                
                mov ax,VALUE_BX1
                AND VALUE_SI1,ax
                
            AND133:
                cmp source_index,3
                jne AND134
                
                mov ax,VALUE_CX1
                AND VALUE_SI1,ax
                           
            AND134:
                cmp source_index,4
                jne AND135
                
                mov ax,VALUE_DX1
                AND VALUE_SI1,ax
                
            AND135:
                cmp source_index,13
                jne AND136
                
                mov ax,VALUE_SI1
                AND VALUE_SI1,ax
                
            AND136:
                cmp source_index,14
                jne AND137
                
                mov ax,VALUE_DI1
                AND VALUE_SI1,ax   
                
            AND137:
                cmp source_index,15
                jne AND138 
                
                mov ax,VALUE_BP1
                AND VALUE_SI1,ax
                
            AND138:
                cmp source_index,16
                jne AND139
                
                mov ax,VALUE_SP1
                AND VALUE_SI1,ax
                
            AND139:
                cmp source_index,21
                jne AND14
                
                mov ax,VALUE1
                AND VALUE_SI1,ax
        
       ANDD14: 
                
       cmp dest_index,14
       jne ANDD15
       
       
      
            AND141:
    
                cmp source_index,1
                jne AND142
                
                mov ax,VALUE_AX1
                AND VALUE_DI1,ax
                
                
            AND142:
                cmp source_index,2
                jne AND143
                
                MOV ax,VALUE_BX1
                AND VALUE_DI1,ax
                
            AND143:
                cmp source_index,3
                jne AND144
                
                mov ax,VALUE_CX1
                AND VALUE_DI1,ax
                           
            AND144:
                cmp source_index,4
                jne AND145
                
                mov ax,VALUE_DX1
                AND VALUE_DI1,ax
                
            AND145:
                cmp source_index,13
                jne AND146
                
                mov ax,VALUE_SI1
                AND VALUE_DI1,ax
                
            AND146:
                cmp source_index,14
                jne AND147
                
                mov ax,VALUE_DI1
                AND VALUE_DI1,ax   
                
            AND147:
                cmp source_index,15
                jne AND148 
                
                mov ax,VALUE_BP1
                AND VALUE_DI1,ax
                
            AND148:
                cmp source_index,16
                jne AND149
                
                mov ax,VALUE_SP1
                AND VALUE_DI1,ax
                
            AND149:
                cmp source_index,21
                jne ANDD15
                
                mov ax,VALUE1
                AND VALUE_DI1,ax     
       
    ANDD15:   
       cmp dest_index,15
       jne ANDD16
    
            AND151:
    
                cmp source_index,1
                jne AND152
                
                mov ax,VALUE_AX1
                AND VALUE_BP1,ax
                
                
            AND152:
                cmp source_index,2
                jne AND153
                
                mov ax,VALUE_BX1
                AND VALUE_BP1,ax
                
            AND153:
                cmp source_index,3
                jne AND154
                
                mov ax,VALUE_CX1
                AND VALUE_BP1,ax
                           
            AND154:
                cmp source_index,4
                jne AND155
                
                mov ax,VALUE_DX1
                AND VALUE_BP1,ax
                
            AND155:
                cmp source_index,13
                jne AND156
                
                mov ax,VALUE_SI1
                AND VALUE_BP1,ax
                
            AND156:
                cmp source_index,14
                jne AND157
                
                mov ax,VALUE_DI1
                AND VALUE_BP1,ax   
                
            AND157:
                cmp source_index,15
                jne AND158 
                
                mov ax,VALUE_BP1
                AND VALUE_BP1,ax
                
            AND158:
                cmp source_index,16
                jne AND159
                
                mov ax,VALUE_SP1
                AND VALUE_BP1,ax
                
            AND159:
                cmp source_index,21
                jne ANDD16
                
                mov ax,VALUE1
                AND VALUE_BP1,ax
                
     ANDD16:   
       cmp dest_index,16
       jne TESTEE11
    
            AND161:
    
                cmp source_index,1
                jne AND162
                
                mov ax,VALUE_AX1
                AND VALUE_SP1,ax
                
                
            AND162:
                cmp source_index,2
                jne AND163
                
                mov ax,VALUE_BX1
                AND VALUE_SP1,ax
                
            AND163:
                cmp source_index,3
                jne AND164
                
                mov ax,VALUE_CX1
                AND VALUE_SP1,ax
                           
            AND164:
                cmp source_index,4
                jne AND165
                
                mov ax,VALUE_DX1
                AND VALUE_SP1,ax
                
            AND165:
                cmp source_index,13
                jne AND166
                
                mov ax,VALUE_SI1
                AND VALUE_SP1,ax
                
            AND166:
                cmp source_index,14
                jne AND167
                
                mov ax,VALUE_DI1
                AND VALUE_SP1,ax   
                
            AND167:
                cmp source_index,15
                jne AND168 
                
                mov ax,VALUE_BP1
                AND VALUE_SP1,ax
                
            AND168:
                cmp source_index,16
                jne AND169
                
                mov ax,VALUE_SP1
                AND VALUE_SP1,ax
                
            AND169:
                cmp source_index,21
                jne TESTEE11
                
                mov ax,VALUE1
                AND VALUE_SP1,ax               
                        
                        
             TESTEE11: 
                        
              
        
        
        
        
        
        
        RET
        AND_INST ENDP               
SHL_INST PROC NEAR
        
           CMP INST_INDEX,5
           JNE TESTEE4
        
        
        cmp dest_index,1
    jne SHL2
    
            SHL11:
            
                cmp source_index,7 
                jne SHL12
                
                MOV CX,VALUE_CX1
                SHL VALUE_AX1,cl
                
                
            SHL12:
                cmp source_index,21
                jne SHL2
                
                
                                            ; first check the value of the VALUE1 
                                              ; first check the value of the VALUE1 
                MOV CX, VALUE1 
                                  ;as the value is lower than 16 then ot should be in the lower part : make sense 
                SHL VALUE_AX1,CL
                
                
    
    SHL2:
             
    cmp dest_index,2
    jne SHL3
    
            SHL21:
            
                cmp source_index,7 
                jne SHL22
                
                MOV CX,VALUE_CX1
                SHL VALUE_BX1,cl
                
                
            SHL22:
                cmp source_index,21
                jne SHL3
                
                                              ; first check the value of the VALUE1 
                MOV CX, VALUE1 
                                  ;as the value is lower than 16 then ot should be in the lower part : make sense 
                SHL VALUE_BX1,CL
                                   
     SHL3:
                
      cmp dest_index,3
    jne SHL4
    
            SHL31:
            
                cmp source_index,7 
                jne SHL32
                
                MOV CX,VALUE_CX1
                SHL VALUE_CX1,cl
                
                
            SHL32:
                cmp source_index,21
                jne SHL4
                
                MOV CX,VALUE1
                SHL VALUE_CX1,CL
      
     SHL4:
                      
     cmp dest_index,4
    jne SHL5
    
            SHL41:
            
                cmp source_index,7 
                jne SHL42
                
                MOV CX,VALUE_CX1
                SHL VALUE_DX1,cl
                
                
            SHL42:
                cmp source_index,21
                jne SHL5
                
                MOV CX,VALUE1
                SHL VALUE_DX1,CL  
                
                
    SHL5:            
                
    cmp dest_index,5
    jne SHL6
    
            SHL51:
            
                cmp source_index,7 
                jne SHL52
                
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_AX1,cl
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
                
                
            SHL52:
                cmp source_index,21
                jne SHL6
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                SHL VALUE_AX1,CL
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
     
     SHL6:
                
     cmp dest_index,6
    jne SHL7
    
            SHL61:
            
                cmp source_index,7 
                jne SHL62
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_BX1,cl
                AND VALUE_BX1,00001111B
                ADD VALUE_BX1,BX
                
                
            SHL62:
                cmp source_index,21
                jne SHL7
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                SHL VALUE_BX1,CL
                AND VALUE_BX1,0000000011111111B
                ADD VALUE_BX1,BX           
     
     SHL7:
                
     cmp dest_index,7
    jne SHL8
    
            SHL71:
            
                cmp source_index,7 
                jne SHL72
                
                MOV CX,VALUE_CX1
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                
                SHL VALUE_CX1,cl
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX
                
                
            SHL72:
                cmp source_index,21
                jne SHL8
                
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                SHL VALUE_CX1,CL
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX           
     
     SHL8:
                
      cmp dest_index,8
    jne SHL9
    
            SHL81:
            
                cmp source_index,7 
                jne SHL82
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_DX1,cl
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX
                
                
            SHL82:
                cmp source_index,21
                jne SHL9
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                SHL VALUE_DX1,CL
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX          
     
     SHL9:
                
     cmp dest_index,9
    jne SHL10
    
            SHL91:
            
                cmp source_index,7 
                jne SHL92
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_AX1,cl
                ADD VALUE_AX1,BX
                
                
            SHL92:
                cmp source_index,21
                jne SHL10
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                SHL VALUE_AX1,CL
                ADD VALUE_AX1,BX           
     
    SHL10: 
                
     cmp dest_index,10
    jne SHLL11
    
            SHL101:
            
                cmp source_index,16 
                jne SHL102
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_BX1,cl
                ADD VALUE_BX1,BX
                
                
            SHL102:
                cmp source_index,21
                jne SHLL11
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                SHL VALUE_BX1,CL
                ADD VALUE_BX1,BX 
                
  SHLL11:               
                
    cmp dest_index,11
    jne SHLL12
    
            SHL111:
            
                cmp source_index,7
                jne SHL112
                
                MOV CX,VALUE_CX1         
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                SHL VALUE_CX1,cl
                ADD VALUE_CX1,BX
                
                
            SHL112:
                cmp source_index,21
                jne SHLL12
                
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                SHL VALUE_CX1,CL
                ADD VALUE_CX1,BX 
                
  SHLL12:
                
  cmp dest_index,12
    jne SHL13
    
            SHL121:
            
                cmp source_index,7
                jne SHL122
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                SHL VALUE_DX1,cl
                ADD VALUE_DX1,BX
                
                
            SHL122:
                cmp source_index,21
                jne SHL13
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                SHL VALUE_DX1,CL
                ADD VALUE_DX1,BX 
   
   SHL13:             
                
   cmp dest_index,13
    jne SHL14
    
            SHL131:
            
                cmp source_index,16 
                jne SHL132
                
                MOV CX,VALUE_CX1
                SHL VALUE_SI1,cl
                
                
            SHL132:
                cmp source_index,21
                jne SHL14
                
                MOV CX,VALUE1
                SHL VALUE_SI1,CL   
                
    SHL14: 
             
    cmp dest_index,14
    jne SHL15
    
            SHL141:
            
                cmp source_index,7 
                jne SHL142
                
                MOV CX,VALUE_CX1
                SHL VALUE_DI1,cl
                
                
            SHL142:
                cmp source_index,21
                jne SHL15
                
                MOV CX,VALUE1
                SHL VALUE_DI1,CL             
      
     SHL15: 
                
      cmp dest_index,15
    jne SHL16
    
            SHL151:
            
                cmp source_index,7 
                jne SHL152
                
                MOV CX,VALUE_CX1
                SHL VALUE_BP1,cl
                
                
            SHL152:
                cmp source_index,21
                jne SHL16
                
                MOV CX,VALUE1
                SHL VALUE_BP1,CL
     
    SHL16: 
                      
     cmp dest_index,16
    jne TESTEE4
    
            SHL161:
            
                cmp source_index,7 
                jne SHL162
                
                MOV CX,VALUE_CX1
                SHL VALUE_SP1,cl
                
                
            SHL162:
                cmp source_index,21
                jne TESTEE4
                
                MOV CX,VALUE1
                SHL VALUE_SP1,CL   
        
        
        
        
        
        TESTEE4:
       RET
      SHL_INST ENDP      
SHR_INST PROC NEAR
        
           CMP INST_INDEX,4
           JNE TESTEE5
        
        
        cmp dest_index,1
    jne SHR2
    
            SHR11:
            
                cmp source_index,7 
                jne SHR12
                
                MOV CX,VALUE_CX1
                SHR VALUE_AX1,cl
                
                
            SHR12:
                cmp source_index,21
                jne SHR2
                
                MOV CX,VALUE1
                SHR VALUE_AX1,CL   
                
    
    SHR2:
             
    cmp dest_index,2
    jne SHR3
    
            SHR21:
            
                cmp source_index,7 
                jne SHR22
                
                MOV CX,VALUE_CX1
                SHR VALUE_BX1,cl
                
                
            SHR22:
                cmp source_index,21
                jne SHR3
                
                MOV CX,VALUE1
                SHR VALUE_BX1,CL             
     
     SHR3:
                
      cmp dest_index,3
    jne SHR4
    
            SHR31:
            
                cmp source_index,7 
                jne SHR32
                
                MOV CX,VALUE_CX1
                SHR VALUE_CX1,cl
                
                
            SHR32:
                cmp source_index,21
                jne SHR4
                
                MOV CX,VALUE1
                SHR VALUE_CX1,CL
      
     SHR4:
                      
     cmp dest_index,4
    jne SHR5
    
            SHR41:
            
                cmp source_index,7 
                jne SHR42
                
                MOV CX,VALUE_CX1
                SHR VALUE_DX1,cl
                
                
            SHR42:
                cmp source_index,21
                jne SHR5
                
                MOV CX,VALUE1
                SHR VALUE_DX1,CL  
                
                
    SHR5:            
                
    cmp dest_index,5
    jne SHR6
    
            SHR51:
            
                cmp source_index,7 
                jne SHR52
                
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_AX1,cl
                ADD VALUE_AX1,BX
                
                
            SHR52:
                cmp source_index,21
                jne SHR6
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                SHR VALUE_AX1,CL
                ADD VALUE_AX1,BX
     
     SHR6:
                
     cmp dest_index,6
    jne SHR7
    
            SHR61:
            
                cmp source_index,7 
                jne SHR62
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_BX1,cl
                ADD VALUE_BX1,BX
                
                
            SHR62:
                cmp source_index,21
                jne SHR7
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                SHR VALUE_BX1,CL
                ADD VALUE_BX1,BX           
     
     SHR7:
                
     cmp dest_index,7
    jne SHR8
    
            SHR71:
            
                cmp source_index,7 
                jne SHR72
                
                MOV CX,VALUE_CX1
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                
                SHR VALUE_CX1,cl
                ADD VALUE_CX1,BX
                
                
            SHR72:
                cmp source_index,21
                jne SHR8
                
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                SHR VALUE_CX1,CL
                ADD VALUE_CX1,BX           
     
     SHR8:
                
      cmp dest_index,8
    jne SHR9
    
            SHR81:
            
                cmp source_index,7 
                jne SHR82
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_DX1,cl
                ADD VALUE_DX1,BX
                
                
            SHR82:
                cmp source_index,21
                jne SHR9
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                SHR VALUE_DX1,CL
                ADD VALUE_DX1,BX          
     
     SHR9:
                
     cmp dest_index,9
    jne SHR10
    
            SHR91:
            
                cmp source_index,7 
                jne SHR92
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_AX1,cl
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX
                
                
            SHR92:
                cmp source_index,21
                jne SHR10
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                SHR VALUE_AX1,CL
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX           
     
    SHR10: 
                
     cmp dest_index,10
    jne SHRL11
    
            SHR101:
            
                cmp source_index,7 
                jne SHR102
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_BX1,cl
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX
                
                
            SHR102:
                cmp source_index,21
                jne SHRL11
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                SHR VALUE_BX1,CL
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX 
                
  SHRL11:               
                
    cmp dest_index,11
    jne SHRL12
    
            SHR111:
            
                cmp source_index,7 
                jne SHR112
                
                MOV CX,VALUE_CX1         
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                SHR VALUE_CX1,cl
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX
                
                
            SHR112:
                cmp source_index,21
                jne SHRL12
                
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                SHR VALUE_CX1,CL
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX 
                
  SHRL12:
                
  cmp dest_index,12
    jne SHR13
    
            SHR121:
            
                cmp source_index,7 
                jne SHR122
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                SHR VALUE_DX1,cl
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX
                
                
            SHR122:
                cmp source_index,21
                jne SHR13
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                SHR VALUE_DX1,CL
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX 
   
   SHR13:             
                
   cmp dest_index,13
    jne SHR14
    
            SHR131:
            
                cmp source_index,7 
                jne SHR132
                
                MOV CX,VALUE_CX1
                SHR VALUE_SI1,cl
                
                
            SHR132:
                cmp source_index,21
                jne SHR14
                
                MOV CX,VALUE1
                SHR VALUE_SI1,CL   
                
    SHR14: 
             
    cmp dest_index,14
    jne SHR15
    
            SHR141:
            
                cmp source_index,7 
                jne SHR142
                
                MOV CX,VALUE_CX1
                SHR VALUE_DI1,cl
                
                
            SHR142:
                cmp source_index,21
                jne SHR15
                
                MOV CX,VALUE1
                SHR VALUE_DI1,CL             
      
     SHR15: 
                
      cmp dest_index,15
    jne SHR16
    
            SHR151:
            
                cmp source_index,7 
                jne SHR152
                
                MOV CX,VALUE_CX1
                SHR VALUE_BP1,cl
                
                
            SHR152:
                cmp source_index,21
                jne SHR16
                
                MOV CX,VALUE1
                SHR VALUE_BP1,CL
     
    SHR16: 
                      
     cmp dest_index,16
    jne TESTEE5
    
            SHR161:
            
                cmp source_index,7 
                jne SHR162
                
                MOV CX,VALUE_CX1
                SHR VALUE_SP1,cl
                
                
            SHR162:
                cmp source_index,21
                jne TESTEE5
                
                MOV CX,VALUE1
                SHR VALUE_SP1,CL   
        
        
        
        
        
        TESTEE5:
       RET
      SHR_INST ENDP     
ROR_INST PROC NEAR
        
        cmp inst_index,7
        jne TESTEE6
        
        cmp dest_index,1
        JNE ROR2
       
    
            ROR11:
            
                cmp source_index,7 
                jne ROR12
                
                MOV CX,VALUE_CX1
                ROR VALUE_AX1,cl
                
                
            ROR12:
                cmp source_index,21
                jne ROR2
                
                MOV CX,VALUE1
                ROR VALUE_AX1,CL   
                
    
    ROR2:
             
    cmp dest_index,2
    jne ROR3
    
            ROR21:
            
                cmp source_index,7 
                jne ROR22
                
                MOV CX,VALUE_CX1
                ROR VALUE_BX1,cl
                
                
            ROR22:
                cmp source_index,21
                jne ROR3
                
                MOV CX,VALUE1
                ROR VALUE_BX1,CL             
     
     ROR3:
                
      cmp dest_index,3
    jne ROR4
    
            ROR31:
            
                cmp source_index,7 
                jne ROR32
                
                MOV CX,VALUE_CX1
                ROR VALUE_CX1,cl
                
                
            ROR32:
                cmp source_index,21
                jne ROR4
                
                MOV CX,VALUE1
                ROR VALUE_CX1,CL
      
     ROR4:
                      
     cmp dest_index,4
    jne ROR5
    
            ROR41:
            
                cmp source_index,7 
                jne ROR42
                
                MOV CX,VALUE_CX1
                ROR VALUE_DX1,cl
                
                
            ROR42:
                cmp source_index,21
                jne ROR5
                
                MOV CX,VALUE1
                ROR VALUE_DX1,CL  
                
                
    ROR5:            
                
    cmp dest_index,5
    jne ROR6
    
            ROR51:
            
                cmp source_index,7 
                jne ROR52
                
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_AX1,cl
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
                
                
            ROR52:
                cmp source_index,21
                jne ROR6
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                ROR VALUE_AX1,CL
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
     
     ROR6:
                
     cmp dest_index,6
    jne ROR7
    
            ROR61:
            
                cmp source_index,7 
                jne ROR62
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_BX1,cl
                AND VALUE_BX1,0000000011111111B
                ADD VALUE_BX1,BX
                
                
            ROR62:
                cmp source_index,21
                jne ROR7
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                ROR VALUE_BX1,CL
                AND VALUE_BX1,0000000011111111B
                ADD VALUE_BX1,BX           
     
     ROR7:
                
     cmp dest_index,7
    jne ROR8
    
            ROR71:
            
                cmp source_index,7 
                jne ROR72
                
                MOV CX,VALUE_CX1
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                
                ROR VALUE_CX1,cl
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX
                
                
            ROR72:
                cmp source_index,21
                jne ROR8
                
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                ROR VALUE_CX1,CL
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX           
     
     ROR8:
                
      cmp dest_index,8
    jne ROR9
    
            ROR81:
            
                cmp source_index,7 
                jne ROR82
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_DX1,cl
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX
                
                
            ROR82:
                cmp source_index,21
                jne ROR9
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                ROR VALUE_DX1,CL
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX          
     
     ROR9:
                
     cmp dest_index,9
    jne ROR10
    
            ROR91:
            
                cmp source_index,7 
                jne ROR92
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_AX1,cl
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX
                
                
            ROR92:
                cmp source_index,21
                jne ROR10
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                ROR VALUE_AX1,CL
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX           
     
    ROR10: 
                
     cmp dest_index,10
    jne RORR11
    
            ROR101:
            
                cmp source_index,7 
                jne ROR102
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_BX1,cl
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX
                
                
            ROR102:
                cmp source_index,21
                jne RORR11
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                ROR VALUE_BX1,CL
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX 
                
  RORR11:               
                
    cmp dest_index,11
    jne RORR12
    
            ROR111:
            
                cmp source_index,7 
                jne ROR112
                
                MOV CX,VALUE_CX1         
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                ROR VALUE_CX1,cl
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX
                
                
            ROR112:
                cmp source_index,21
                jne RORR12
                
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                ROR VALUE_CX1,CL
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX 
                
  RORR12:
                
  cmp dest_index,12
    jne ROR13
    
            ROR121:
            
                cmp source_index,7 
                jne ROR122
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                ROR VALUE_DX1,cl
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX
                
                
            ROR122:
                cmp source_index,21
                jne ROR13
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                ROR VALUE_DX1,CL
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX 
   
   ROR13:             
                
   cmp dest_index,13
    jne ROR14
    
            ROR131:
            
                cmp source_index,7 
                jne ROR132
                
                MOV CX,VALUE_CX1
                ROR VALUE_SI1,cl
                
                
            ROR132:
                cmp source_index,21
                jne ROR14
                
                MOV CX,VALUE1
                ROR VALUE_SI1,CL   
                
    ROR14: 
             
    cmp dest_index,14
    jne ROR15
    
            ROR141:
            
                cmp source_index,7 
                jne ROR142
                
                MOV CX,VALUE_CX1
                ROR VALUE_DI1,cl
                
                
            ROR142:
                cmp source_index,21
                jne ROR15
                
                MOV CX,VALUE1
                ROR VALUE_DI1,CL             
      
     ROR15: 
                
      cmp dest_index,15
    jne ROR16
    
            ROR151:
            
                cmp source_index,7 
                jne ROR152
                
                MOV CX,VALUE_CX1
                ROR VALUE_BP1,cl
                
                
            ROR152:
                cmp source_index,21
                jne ROR16
                
                MOV CX,VALUE1
                ROR VALUE_BP1,CL
     
    ROR16: 
                      
     cmp dest_index,16
    jne TESTEE6
    
            ROR161:
            
                cmp source_index,7 
                jne ROR162
                
                MOV CX,VALUE_CX1
                ROR VALUE_SP1,cl
                
                
            ROR162:
                cmp source_index,21
                jne TESTEE6
                
                MOV CX,VALUE1
                ROR VALUE_SP1,CL
        
        
        
        
        
        
        TESTEE6:
        RET
        ROR_INST ENDP      
ROL_INST PROC NEAR
        
        cmp inst_index,8
        jne TESTEE7
        
        cmp dest_index,1
        JNE ROL2
       
    
            ROL11:
            
                cmp source_index,7 
                jne ROL12
                
                MOV CX,VALUE_CX1
                ROL VALUE_AX1,cl
                
                
            ROL12:
                cmp source_index,21
                jne ROL2
                
                MOV CX,VALUE1
                ROL VALUE_AX1,CL   
                
    
    ROL2:
             
    cmp dest_index,2
    jne ROL3
    
            ROL21:
            
                cmp source_index,7 
                jne ROL22
                
                MOV CX,VALUE_CX1
                ROL VALUE_BX1,cl
                
                
            ROL22:
                cmp source_index,21
                jne ROL3
                
                MOV CX,VALUE1
                ROL VALUE_BX1,CL             
     
     ROL3:
                
      cmp dest_index,3
    jne ROL4
    
            ROL31:
            
                cmp source_index,7 
                jne ROL32
                
                MOV CX,VALUE_CX1
                ROL VALUE_CX1,cl
                
                
            ROL32:
                cmp source_index,21
                jne ROL4
                
                MOV CX,VALUE1
                ROL VALUE_CX1,CL
      
     ROL4:
                      
     cmp dest_index,4
    jne ROL5
    
            ROL41:
            
                cmp source_index,7 
                jne ROL42
                
                MOV CX,VALUE_CX1
                ROL VALUE_DX1,cl
                
                
            ROL42:
                cmp source_index,21
                jne ROL5
                
                MOV CX,VALUE1
                ROL VALUE_DX1,CL  
                
                
    ROL5:            
                
    cmp dest_index,5
    jne ROL6
    
            ROL51:
            
                cmp source_index,7 
                jne ROL52
                
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_AX1,cl
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
                
                
            ROL52:
                cmp source_index,21
                jne ROL6
                
                MOV AX,VALUE_AX1
                SUB AH,AH
                MOV BX,VALUE_AX1
                SUB BL,BL
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                ROL VALUE_AX1,CL
                AND VALUE_AX1,0000000011111111B
                ADD VALUE_AX1,BX
     
     ROL6:
                
     cmp dest_index,6
    jne ROL7
    
            ROL61:
            
                cmp source_index,7 
                jne ROL62
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_BX1,cl
                AND VALUE_BX1,0000000011111111B
                ADD VALUE_BX1,BX
                
                
            ROL62:
                cmp source_index,21
                jne ROL7
                
                MOV AX,VALUE_BX1
                SUB AH,AH
                MOV BX,VALUE_BX1
                SUB BL,BL
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                ROL VALUE_BX1,CL
                AND VALUE_BX1,0000000011111111B
                ADD VALUE_BX1,BX           
     
     ROL7:
                
     cmp dest_index,7
    jne ROL8
    
            ROL71:
            
                cmp source_index,7 
                jne ROL72
                
                MOV CX,VALUE_CX1
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                
                ROL VALUE_CX1,cl
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX
                
                
            ROL72:
                cmp source_index,21
                jne ROL8
                
                MOV AX,VALUE_CX1
                SUB AH,AH
                MOV BX,VALUE_CX1
                SUB BL,BL
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                ROL VALUE_CX1,CL
                AND VALUE_CX1,0000000011111111B
                ADD VALUE_CX1,BX           
     
     ROL8:
                
      cmp dest_index,8
    jne ROL9
    
            ROL81:
            
                cmp source_index,7 
                jne ROL82
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_DX1,cl
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX
                
                
            ROL82:
                cmp source_index,21
                jne ROL9
                
                MOV AX,VALUE_DX1
                SUB AH,AH
                MOV BX,VALUE_DX1
                SUB BL,BL
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                ROL VALUE_DX1,CL
                AND VALUE_DX1,0000000011111111B
                ADD VALUE_DX1,BX          
     
     ROL9:
                
     cmp dest_index,9
    jne ROL10
    
            ROL91:
            
                cmp source_index,7 
                jne ROL92
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_AX1,cl
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX
                
                
            ROL92:
                cmp source_index,21
                jne ROL10
                
                MOV AX,VALUE_AX1
                SUB AL,AL
                MOV BX,VALUE_AX1
                SUB BH,BH
                MOV VALUE_AX1,AX
                MOV CX,VALUE1
                ROL VALUE_AX1,CL
                AND VALUE_AX1,1111111100000000B
                ADD VALUE_AX1,BX           
     
    ROL10: 
                
     cmp dest_index,10
    jne ROLR11
    
            ROL101:
            
                cmp source_index,7 
                jne ROL102
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_BX1,cl
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX
                
                
            ROL102:
                cmp source_index,21
                jne ROLR11
                
                MOV AX,VALUE_BX1
                SUB AL,AL
                MOV BX,VALUE_BX1
                SUB BH,BH
                MOV VALUE_BX1,AX
                MOV CX,VALUE1
                ROL VALUE_BX1,CL
                AND VALUE_BX1,1111111100000000B
                ADD VALUE_BX1,BX 
                
  ROLR11:               
                
    cmp dest_index,11
    jne ROLR12
    
            ROL111:
            
                cmp source_index,7 
                jne ROL112
                
                MOV CX,VALUE_CX1         
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                ROL VALUE_CX1,cl
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX
                
                
            ROL112:
                cmp source_index,21
                jne ROLR12
                
                MOV AX,VALUE_CX1
                SUB AL,AL
                MOV BX,VALUE_CX1
                SUB BH,BH
                MOV VALUE_CX1,AX
                MOV CX,VALUE1
                ROL VALUE_CX1,CL
                AND VALUE_CX1,1111111100000000B
                ADD VALUE_CX1,BX 
                
  ROLR12:
                
  cmp dest_index,12
    jne ROL13
    
            ROL121:
            
                cmp source_index,7 
                jne ROL122
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE_CX1
                ROL VALUE_DX1,cl
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX
                
                
            ROL122:
                cmp source_index,21
                jne ROL13
                
                MOV AX,VALUE_DX1
                SUB AL,AL
                MOV BX,VALUE_DX1
                SUB BH,BH
                MOV VALUE_DX1,AX
                MOV CX,VALUE1
                ROL VALUE_DX1,CL
                AND VALUE_DX1,1111111100000000B
                ADD VALUE_DX1,BX 
   
   ROL13:             
                
   cmp dest_index,13
    jne ROL14
    
            ROL131:
            
                cmp source_index,7 
                jne ROL132
                
                MOV CX,VALUE_CX1
                ROL VALUE_SI1,cl
                
                
            ROL132:
                cmp source_index,21
                jne ROL14
                
                MOV CX,VALUE1
                ROL VALUE_SI1,CL   
                
    ROL14: 
             
    cmp dest_index,14
    jne ROL15
    
            ROL141:
            
                cmp source_index,7 
                jne ROL142
                
                MOV CX,VALUE_CX1
                ROL VALUE_DI1,cl
                
                
            ROL142:
                cmp source_index,21
                jne ROL15
                
                MOV CX,VALUE1
                ROL VALUE_DI1,CL             
      
     ROL15: 
                
      cmp dest_index,15
    jne ROL16
    
            ROL151:
            
                cmp source_index,7 
                jne ROL152
                
                MOV CX,VALUE_CX1
                ROL VALUE_BP1,cl
                
                
            ROL152:
                cmp source_index,21
                jne ROL16
                
                MOV CX,VALUE1
                ROL VALUE_BP1,CL
     
    ROL16: 
                      
     cmp dest_index,16
    jne TESTEE7
    
            ROL161:
            
                cmp source_index,7 
                jne ROL162
                
                MOV CX,VALUE_CX1
                ROL VALUE_SP1,cl
                
                
            ROL162:
                cmp source_index,21
                jne TESTEE7
                
                MOV CX,VALUE1
                ROL VALUE_SP1,CL
        
        
        
        
        
        
        TESTEE7:
        RET
        ROL_INST ENDP            
SUB_INST PROC NEAR

             
             cmp inst_index,3
            jne TESTEE3
    
            cmp dest_index,1
            jne SUB2
    
            SUB11:
    
                cmp source_index,1
                jne SUB12
                
                mov ax,VALUE_AX1
                SUB VALUE_AX1,ax
                
               JMP TESTEE3 
            SUB12:
                cmp source_index,2
                jne SUB13
                
                mov ax,VALUE_BX1
                SUB VALUE_AX1,ax
               JMP TESTEE3  
            SUB13:
                cmp source_index,3
                jne SUB14
                
                mov ax,VALUE_CX1
                SUB VALUE_AX1,ax
               JMP TESTEE3             
            SUB14:
                cmp source_index,4
                jne SUB15
                
                mov ax,VALUE_DX1
                SUB VALUE_AX1,ax
               JMP TESTEE3  
            SUB15:
                cmp source_index,13
                jne SUB16
                
                mov ax,VALUE_SI1
                SUB VALUE_AX1,ax
               JMP TESTEE3  
            SUB16:
                cmp source_index,14
                jne SUB17
                
                mov ax,VALUE_DI1
                SUB VALUE_AX1,ax   
              JMP TESTEE3   
            SUB17:
                cmp source_index,15
                jne SUB18 
                
                mov ax,VALUE_BP1
                SUB VALUE_AX1,ax
                JMP TESTEE3 
            SUB18:
                cmp source_index,16
                jne SUB19
                
                mov ax,VALUE_SP1
                SUB VALUE_AX1,ax
                JMP TESTEE3 
            SUB19:
                cmp source_index,21
                jne SUB2
                
                mov ax,VALUE1
                SUB VALUE_AX1,ax
        JMP TESTEE3 
       SUB2: 
                
       cmp dest_index,2
       jne SUB3
       
       
      
            SUB21:
    
                cmp source_index,1
                jne SUB22
                
                mov ax,VALUE_AX1
                SUB VALUE_BX1,ax
                
                JMP TESTEE3 
            SUB22:
                cmp source_index,2
                jne SUB23
                
                MOV ax,VALUE_BX1
                SUB VALUE_BX1,ax
                JMP TESTEE3 
            SUB23:
                cmp source_index,3
                jne SUB24
                
                mov ax,VALUE_CX1
                SUB VALUE_BX1,ax
                 JMP TESTEE3           
            SUB24:
                cmp source_index,4
                jne SUB25
                
                mov ax,VALUE_DX1
                SUB VALUE_BX1,ax
                JMP TESTEE3 
            SUB25:
                cmp source_index,13
                jne SUB26
                
                mov ax,VALUE_SI1
                SUB VALUE_BX1,ax
               JMP TESTEE3  
            SUB26:
                cmp source_index,14
                jne SUB27
                
                mov ax,VALUE_DI1
                SUB VALUE_BX1,ax   
               JMP TESTEE3  
            SUB27:
                cmp source_index,15
                jne SUB28 
                
                mov ax,VALUE_BP1
                SUB VALUE_BX1,ax
              JMP TESTEE3   
            SUB28:
                cmp source_index,16
                jne SUB29
                
                mov ax,VALUE_SP1
                SUB VALUE_BX1,ax
               JMP TESTEE3  
            SUB29:
                cmp source_index,21
                jne SUB3
                
                mov ax,VALUE1
                SUB VALUE_BX1,ax     
      JMP TESTEE3  
    SUB3:   
       cmp dest_index,3
       jne SUB4
    
            SUB31:
    
                cmp source_index,1
                jne SUB32
                
                mov ax,VALUE_AX1
                SUB VALUE_CX1,ax
                
              JMP TESTEE3   
            SUB32:
                cmp source_index,2
                jne SUB33
                
                mov ax,VALUE_BX1
                SUB VALUE_CX1,ax
             JMP TESTEE3    
            SUB33:
                cmp source_index,3
                jne SUB34
                
                mov ax,VALUE_CX1
                SUB VALUE_CX1,ax
              JMP TESTEE3              
            SUB34:
                cmp source_index,4
                jne SUB35
                
                mov ax,VALUE_DX1
                SUB VALUE_CX1,ax
              JMP TESTEE3   
            SUB35:
                cmp source_index,13
                jne SUB36
                
                mov ax,VALUE_SI1
                SUB VALUE_CX1,ax
              JMP TESTEE3   
            SUB36:
                cmp source_index,14
                jne SUB37
                
                mov ax,VALUE_DI1
                SUB VALUE_CX1,ax   
               JMP TESTEE3  
            SUB37:
                cmp source_index,15
                jne SUB38 
                
                mov ax,VALUE_BP1
                SUB VALUE_CX1,ax
              JMP TESTEE3   
            SUB38:
                cmp source_index,16
                jne SUB39
                
                mov ax,VALUE_SP1
                SUB VALUE_CX1,ax
              JMP TESTEE3   
            SUB39:
                cmp source_index,21
                jne SUB4
                
                mov ax,VALUE1
                SUB VALUE_CX1,ax
      JMP TESTEE3           
     SUB4:   
       cmp dest_index,4
       jne SUB5
    
            SUB41:
    
                cmp source_index,1
                jne SUB42
                
                mov ax,VALUE_AX1
                SUB VALUE_DX1,ax
                
              JMP TESTEE3   
            SUB42:
                cmp source_index,2
                jne SUB43
                
                mov ax,VALUE_BX1
                SUB VALUE_DX1,ax
             JMP TESTEE3    
            SUB43:
                cmp source_index,3
                jne SUB44
                
                mov ax,VALUE_CX1
                SUB VALUE_DX1,ax
              JMP TESTEE3              
            SUB44:
                cmp source_index,4
                jne SUB45
                
                mov ax,VALUE_DX1
                SUB VALUE_DX1,ax
             JMP TESTEE3    
            SUB45:
                cmp source_index,13
                jne SUB46
                
                mov ax,VALUE_SI1
                SUB VALUE_DX1,ax
             JMP TESTEE3    
            SUB46:
                cmp source_index,14
                jne SUB47
                
                mov ax,VALUE_DI1
                SUB VALUE_DX1,ax   
             JMP TESTEE3    
            SUB47:
                cmp source_index,15
                jne SUB48 
                
                mov ax,VALUE_BP1
                SUB VALUE_DX1,ax
              JMP TESTEE3   
            SUB48:
                cmp source_index,16
                jne SUB49
                
                mov ax,VALUE_SP1
                SUB VALUE_DX1,ax
              JMP TESTEE3   
            SUB49:
                cmp source_index,21
                jne SUB5
                
                mov ax,VALUE1
                SUB VALUE_DX1,ax
                
       JMP TESTEE3          
      SUB5:   
       cmp dest_index,5
       jne SUB6
       
            SUB51:
                cmp source_index,5
                jne SUB52
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SUB VALUE_AX1,AX
             JMP TESTEE3    
            SUB52:
                cmp source_index,6
                jne SUB53
                
                mov AX,VALUE_BX1
                SUB AH,AH
                SUB VALUE_AX1,AX
            JMP TESTEE3 
            SUB53:
                cmp source_index,7
                jne SUB54
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SUB VALUE_AX1,AX 
             JMP TESTEE3    
            SUB54:
                cmp source_index,8
                jne SUB55
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SUB VALUE_AX1,AX
             JMP TESTEE3    
           SUB55:
                cmp source_index,9
                jne SUB56
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_AX1,AX
             JMP TESTEE3    
            SUB56:
                cmp source_index,10
                jne SUB57
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_AX1,AX
            JMP TESTEE3 
            SUB57:
                cmp source_index,11
                jne SUB58
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_AX1,AX 
             JMP TESTEE3    
            SUB58:
                cmp source_index,12
                jne SUB59
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_AX1,AX
            JMP TESTEE3     
            SUB59:
                cmp source_index,21
                jne SUB6
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_AX1,AX    
                  
          JMP TESTEE3       
       SUB6:   
       cmp dest_index,6
       jne SUB7
       
            SUB61:
                cmp source_index,5
                jne SUB62
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SUB VALUE_AX1,AX
             JMP TESTEE3    
            SUB62:
                cmp source_index,6
                jne SUB63
                
                mov AX,VALUE_BX1
                SUB AH,AH
                SUB VALUE_BX1,AX
            JMP TESTEE3 
            SUB63:
                cmp source_index,7
                jne SUB64
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SUB VALUE_BX1,AX 
            JMP TESTEE3     
            SUB64:
                cmp source_index,8
                jne SUB65
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SUB VALUE_BX1,AX
             JMP TESTEE3    
           SUB65:
                cmp source_index,9
                jne SUB66
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX1,AX
            JMP TESTEE3     
            SUB66:
                cmp source_index,10
                jne SUB67
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_BX1,AX
            JMP TESTEE3 
            SUB67:
                cmp source_index,11
                jne SUB68
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX1,AX 
             JMP TESTEE3    
            SUB68:
                cmp source_index,12
                jne SUB69
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX1,AX
             JMP TESTEE3    
            SUB69:
                cmp source_index,21
                jne SUB7
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_BX1,AX      
                
                
       JMP TESTEE3          
       SUB7:   
       cmp dest_index,7
       jne SUB8
       
            SUB71:
                cmp source_index,5
                jne SUB72
                
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SUB VALUE_CX1,AX
            JMP TESTEE3     
            SUB72:
                cmp source_index,6
                jne SUB73
                
                mov AX,VALUE_BX1
                SUB AH,AH
                SUB VALUE_CX1,AX
            JMP TESTEE3 
            SUB73:
                cmp source_index,7
                jne SUB74
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SUB VALUE_CX1,AX 
            JMP TESTEE3     
            SUB74:
                cmp source_index,8
                jne SUB75
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SUB VALUE_CX1,AX
            JMP TESTEE3     
           SUB75:
                cmp source_index,9
                jne SUB76
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX1,AX
              JMP TESTEE3   
            SUB76:
                cmp source_index,10
                jne SUB77
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_CX1,AX
            JMP TESTEE3 
            SUB77:
                cmp source_index,11
                jne SUB78
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX1,AX 
             JMP TESTEE3    
            SUB78:
                cmp source_index,12
                jne SUB79
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX1,AX 
             JMP TESTEE3    
            SUB79:
                cmp source_index,21
                jne SUB8
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_CX1,AX
                           
       JMP TESTEE3          
      SUB8:   
       cmp dest_index,8
       jne SUB9
       
             SUB81:
                cmp source_index,5
                jne SUB82
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SUB VALUE_DX1,AX
             JMP TESTEE3    
            SUB82:
                cmp source_index,6
                jne SUB83
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SUB VALUE_DX1,AX
            JMP TESTEE3 
            SUB83:
                cmp source_index,7
                jne SUB84
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SUB VALUE_DX1,AX 
            JMP TESTEE3     
            SUB84:
                cmp source_index,8
                jne SUB85
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SUB VALUE_DX1,AX
            JMP TESTEE3     
            SUB85:
                cmp source_index,9
                jne SUB86
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX1,AX
             JMP TESTEE3    
            SUB86:
                cmp source_index,10
                jne SUB87
                
                mov AX,VALUE_BX1
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_DX1,AX
            JMP TESTEE3 
            SUB87:
                cmp source_index,11
                jne SUB88
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX1,AX 
            JMP TESTEE3     
            SUB88:
                cmp source_index,12
                jne SUB89
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX1,AX 
                
            JMP TESTEE3     
            SUB89:
                cmp source_index,21
                jne SUB9
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_DX1,AX
      
      JMP TESTEE3 
      SUB9:   
       cmp dest_index,9
       jne SUB10
       
             SUB91:
                cmp source_index,5
                jne SUB92
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_AX1,AX
             JMP TESTEE3    
            SUB92:
                cmp source_index,6
                jne SUB93
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_AX1,AX
            JMP TESTEE3 
            SUB93:
                cmp source_index,7
                jne SUB94
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_AX1,AX 
            JMP TESTEE3     
            SUB94:
                cmp source_index,8
                jne SUB95
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_AX1,AX
            JMP TESTEE3     
           SUB95:
                cmp source_index,9
                jne SUB96
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SUB VALUE_AX1,AX
            JMP TESTEE3     
            SUB96:
                cmp source_index,10
                jne SUB97
                
                mov AX,VALUE_BX1
                SUB AL,AL
                SUB VALUE_AX1,AX
            JMP TESTEE3 
            SUB97:
                cmp source_index,11
                jne SUB98
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SUB VALUE_AX1,AX 
            JMP TESTEE3     
            SUB98:
                cmp source_index,12
                jne SUB99
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SUB VALUE_AX1,AX
             JMP TESTEE3    
            SUB99:
                cmp source_index,21
                jne SUB10
                
                mov AX,VALUE1
                SUB VALUE_AX1,AX 
                
                    
      
      JMP TESTEE3 
      SUB10:   
       cmp dest_index,10
       jne SUBB11
       
            SUB101:
                cmp source_index,5
                jne SUB102
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX1,AX
            JMP TESTEE3     
            SUB102:
                cmp source_index,6
                jne SUB103
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX1,AX
            JMP TESTEE3 
            SUB103:
                cmp source_index,7
                jne SUB104
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX1,AX 
            JMP TESTEE3     
            SUB104:
                cmp source_index,8
                jne SUB105
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX1,AX
             JMP TESTEE3    
           SUB105:
                cmp source_index,9
                jne SUB106
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SUB VALUE_BX1,AX
            JMP TESTEE3     
            SUB106:
                cmp source_index,10
                jne SUB107
                
                mov AX,VALUE_BX1
                SUB AL,AL
                SUB VALUE_BX1,AX
            JMP TESTEE3 
            SUB107:
                cmp source_index,11
                jne SUB108
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SUB VALUE_BX1,AX 
            JMP TESTEE3     
            SUB108:
                cmp source_index,12
                jne SUB109
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SUB VALUE_BX1,AX 
            JMP TESTEE3 
            SUB109:
                cmp source_index,21
                jne SUBB11
                
                mov AX,VALUE1
                SUB VALUE_BX1,AX             
      
      JMP TESTEE3 
      SUBB11:   
       cmp dest_index,11
       jne SUBB12
       
             SUB111:
                cmp source_index,5
                jne SUB112
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX1,AX
            JMP TESTEE3     
            SUB112:
                cmp source_index,6
                jne SUB113
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX1,AX
            JMP TESTEE3 
            SUB113:
                cmp source_index,7
                jne SUB114
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX1,AX 
            JMP TESTEE3     
           SUB114:
                cmp source_index,8
                jne SUB115
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX1,AX
            JMP TESTEE3     
           SUB115:
                cmp source_index,9
                jne SUB116
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SUB VALUE_CX1,AX
            JMP TESTEE3     
            SUB116:
                cmp source_index,10
                jne SUB117
                
                mov AX,VALUE_BX1
                SUB AL,AL
                SUB VALUE_CX1,AX
            JMP TESTEE3 
            SUB117:
                cmp source_index,11
                jne SUB118
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SUB VALUE_CX1,AX 
            JMP TESTEE3     
            SUB118:
                cmp source_index,12
                jne SUB119
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SUB VALUE_CX1,AX
            JMP TESTEE3     
            SUB119:
                cmp source_index,21
                jne SUBB12
                
                mov AX,VALUE1
                SUB VALUE_CX1,AX 
                
                    
      
      JMP TESTEE3 
      SUBB12:   
       cmp dest_index,12
       jne SUBB13
       
             SUB121:
                cmp source_index,5
                jne SUB122
                       
                
                mov AX,VALUE_AX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX1,AX
             JMP TESTEE3    
            SUB122:
                cmp source_index,6
                jne SUB123
                       
                mov AX,VALUE_BX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX1,AX
            JMP TESTEE3 
            SUB123:
                cmp source_index,7
                jne SUB124
                
                mov AX,VALUE_CX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX1,AX 
            JMP TESTEE3     
            SUB124:
                cmp source_index,8
                jne SUB125
                
                mov AX,VALUE_DX1
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX1,AX
             JMP TESTEE3    
           SUB125:
                cmp source_index,9
                jne SUB126
                
                mov AX,VALUE_AX1
                SUB AL,AL
                SUB VALUE_DX1,AX
            JMP TESTEE3     
           SUB126:
                cmp source_index,10
                jne SUB127
                
                mov AX,VALUE_BX1
                SUB AL,AL
                SUB VALUE_DX1,AX
            JMP TESTEE3 
            SUB127:
                cmp source_index,11
                jne SUB128
                
                mov AX,VALUE_CX1
                SUB AL,AL
                SUB VALUE_DX1,AX 
            JMP TESTEE3     
            SUB128:
                cmp source_index,12
                jne SUB129
                
                mov AX,VALUE_DX1
                SUB AL,AL
                SUB VALUE_DX1,AX     
            JMP TESTEE3 
            SUB129:
                cmp source_index,21
                jne SUBB13
                
                mov AX,VALUE1
                SUB VALUE_DX1,AX 
   
   JMP TESTEE3 
   SUBB13:             
    cmp dest_index,13
    jne SUBB14
    
            SUB131:
    
                cmp source_index,1
                jne SUB132
                
                mov ax,VALUE_AX1
                SUB VALUE_SI1,ax
                
            JMP TESTEE3     
            SUB132:
                cmp source_index,2
                jne SUB133
                
                mov ax,VALUE_BX1
                SUB VALUE_SI1,ax
            JMP TESTEE3     
            SUB133:
                cmp source_index,3
                jne SUB134
                
                mov ax,VALUE_CX1
                SUB VALUE_SI1,ax
            JMP TESTEE3                
            SUB134:
                cmp source_index,4
                jne SUB135
                
                mov ax,VALUE_DX1
                SUB VALUE_SI1,ax
            JMP TESTEE3     
            SUB135:
                cmp source_index,13
                jne SUB136
                
                mov ax,VALUE_SI1
                SUB VALUE_SI1,ax
             JMP TESTEE3    
            SUB136:
                cmp source_index,14
                jne SUB137
                
                mov ax,VALUE_DI1
                SUB VALUE_SI1,ax   
            JMP TESTEE3     
            SUB137:
                cmp source_index,15
                jne SUB138 
                
                mov ax,VALUE_BP1
                SUB VALUE_SI1,ax
            JMP TESTEE3     
            SUB138:
                cmp source_index,16
                jne SUB139
                
                mov ax,VALUE_SP1
                SUB VALUE_SI1,ax
             JMP TESTEE3    
            SUB139:
                cmp source_index,21
                jne SUBB14
                
                mov ax,VALUE1
                SUB VALUE_SI1,ax
       JMP TESTEE3 
       SUBB14: 
                
       cmp dest_index,14
       jne SUBB15
       
       
      
            SUB141:
    
                cmp source_index,1
                jne SUB142
                
                mov ax,VALUE_AX1
                SUB VALUE_DI1,ax
                
            JMP TESTEE3     
            SUB142:
                cmp source_index,2
                jne SUB143
                
                MOV ax,VALUE_BX1
                SUB VALUE_DI1,ax
            JMP TESTEE3     
            SUB143:
                cmp source_index,3
                jne SUB144
                
                mov ax,VALUE_CX1
                SUB VALUE_DI1,ax
            JMP TESTEE3                
            SUB144:
                cmp source_index,4
                jne SUB145
                
                mov ax,VALUE_DX1
                SUB VALUE_DI1,ax
             JMP TESTEE3    
            SUB145:
                cmp source_index,13
                jne SUB146
                
                mov ax,VALUE_SI1
                SUB VALUE_DI1,ax
            JMP TESTEE3     
            SUB146:
                cmp source_index,14
                jne SUB147
                
                mov ax,VALUE_DI1
                SUB VALUE_DI1,ax   
             JMP TESTEE3    
            SUB147:
                cmp source_index,15
                jne SUB148 
                
                mov ax,VALUE_BP1
                SUB VALUE_DI1,ax
            JMP TESTEE3     
            SUB148:
                cmp source_index,16
                jne SUB149
                
                mov ax,VALUE_SP1
                SUB VALUE_DI1,ax
             JMP TESTEE3    
            SUB149:
                cmp source_index,21
                jne SUBB15
                
                mov ax,VALUE1
                SUB VALUE_DI1,ax     
     JMP TESTEE3   
    SUBB15:   
       cmp dest_index,15
       jne SUBB16
    
            SUB151:
    
                cmp source_index,1
                jne SUB152
                
                mov ax,VALUE_AX1
                SUB VALUE_BP1,ax
                
            JMP TESTEE3     
            SUB152:
                cmp source_index,2
                jne SUB153
                
                mov ax,VALUE_BX1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
            SUB153:
                cmp source_index,3
                jne SUB154
                
                mov ax,VALUE_CX1
                SUB VALUE_BP1,ax
            JMP TESTEE3                
            SUB154:
                cmp source_index,4
                jne SUB155
                
                mov ax,VALUE_DX1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
            SUB155:
                cmp source_index,13
                jne SUB156
                
                mov ax,VALUE_SI1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
            SUB156:
                cmp source_index,14
                jne SUB157
                
                mov ax,VALUE_DI1
                SUB VALUE_BP1,ax   
            JMP TESTEE3     
            SUB157:
                cmp source_index,15
                jne SUB158 
                
                mov ax,VALUE_BP1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
            SUB158:
                cmp source_index,16
                jne SUB159
                
                mov ax,VALUE_SP1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
            SUB159:
                cmp source_index,21
                jne SUBB16
                
                mov ax,VALUE1
                SUB VALUE_BP1,ax
            JMP TESTEE3     
     SUBB16:   
       cmp dest_index,16
       jne TESTEE3
    
            SUB161:
    
                cmp source_index,1
                jne SUB162
                
                mov ax,VALUE_AX1
                SUB VALUE_SP1,ax
                
            JMP TESTEE3     
            SUB162:
                cmp source_index,2
                jne SUB163
                
                mov ax,VALUE_BX1
                SUB VALUE_SP1,ax
            JMP TESTEE3     
            SUB163:
                cmp source_index,3
                jne SUB164
                
                mov ax,VALUE_CX1
                SUB VALUE_SP1,ax
            JMP TESTEE3                
            SUB164:
                cmp source_index,4
                jne SUB165
                
                mov ax,VALUE_DX1
                SUB VALUE_SP1,ax
             JMP TESTEE3    
            SUB165:
                cmp source_index,13
                jne SUB166
                
                mov ax,VALUE_SI1
                SUB VALUE_SP1,ax
             JMP TESTEE3    
            SUB166:
                cmp source_index,14
                jne SUB167
                
                mov ax,VALUE_DI1
                SUB VALUE_SP1,ax   
            JMP TESTEE3     
            SUB167:
                cmp source_index,15
                jne SUB168 
                
                mov ax,VALUE_BP1
                SUB VALUE_SP1,ax
            JMP TESTEE3     
            SUB168:
                cmp source_index,16
                jne SUB169
                
                mov ax,VALUE_SP1
                SUB VALUE_SP1,ax
            JMP TESTEE3     
            SUB169:
                cmp source_index,21
                jne TESTEE3
                
                mov ax,VALUE1
                SUB VALUE_SP1,ax            
                                
             TESTEE3:   
            RET
            SUB_INST ENDP
MOV_INST PROC NEAR
			 
			 CMP INST_INDEX,1
			 JNE TESTEE
				cmp dest_index,13
				JNE MMOV2
				
				Cmp source_index,1
				JNE mmoov1
				MOV AX,VALUE_AX1
				MOV VALUE_SI1,AX
				JMP TESTEE
				
				mmoov1:
				Cmp source_index,2
				JNE mmoov2
				MOV AX,VALUE_BX1
				MOV VALUE_SI1,AX
				JMP TESTEE
				
				mmoov2:
				Cmp source_index,3
				JNE mmoov3
				MOV AX,VALUE_CX1
				MOV VALUE_SI1,AX
				JMP TESTEE
               
				
				mmoov3:
				Cmp source_index,4
				JNE TESTEE
				MOV AX,VALUE_DX1
				MOV VALUE_SI1,AX
				JMP TESTEE
			
			MMOV2:
			cmp Dest_Index,14
			JNE MMOV3
			
				Cmp source_index,1
				JNE mmoov11
				MOV AX,VALUE_AX1
				MOV VALUE_DI1,AX
				JMP TESTEE
				
				mmoov11:
				Cmp source_index,2
				JNE mmoov12
				MOV AX,VALUE_BX1
				MOV VALUE_DI1,AX
				JMP TESTEE
				
				mmoov12:
				Cmp source_index,3
				JNE mmoov13
				MOV AX,VALUE_CX1
				MOV VALUE_DI1,AX
				JMP TESTEE
                
             
				
				mmoov13:
				Cmp source_index,4
				JNE TESTEE
				MOV AX,VALUE_DX1
				MOV VALUE_DI1,AX
				JMP TESTEE
				
            MMOV3:
			CMP Dest_Index,15
			JNE MMOV4
				Cmp source_index,1
				JNE mmoov21
				MOV AX,VALUE_AX1
				MOV VALUE_BP1,AX
				JMP TESTEE
				
				mmoov21:
				Cmp source_index,2
				JNE mmoov22
				MOV AX,VALUE_BX1
				MOV VALUE_BP1,AX
				JMP TESTEE
				
				mmoov22:
				Cmp source_index,3
				JNE mmoov23
				MOV AX,VALUE_CX1
				MOV VALUE_BP1,AX
				JMP TESTEE
				
               
				
				mmoov23:
				Cmp source_index,4
				JNE TESTEE
				MOV AX,VALUE_DX1
				MOV VALUE_BP1,AX
				JMP TESTEE
				
				
		MMOV4:
		CMP DESt_index,16
		JNE mov11
		
			Cmp source_index,1
				JNE mmoov31
				MOV AX,VALUE_AX1
				MOV VALUE_SP1,AX
				JMP TESTEE
				
				mmoov31:
				Cmp source_index,2
				JNE mmoov32
				MOV AX,VALUE_BX1
				MOV VALUE_SP1,AX
				JMP TESTEE
				
				mmoov32:
				Cmp source_index,3
				JNE mmoov33
				MOV AX,VALUE_CX1
				MOV VALUE_SP1,AX
				JMP TESTEE
             
				
				mmoov33:
				Cmp source_index,4
				JNE TESTEE
				MOV AX,VALUE_DX1
				MOV VALUE_SP1,AX
				JMP TESTEE
				
                    mov11:
            cmp dest_index,1
                    jne mov2
                        cmp source_index,1
                        jne mov12
                        
                        mov ax,VALUE_AX1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                        
                    mov12:
                        cmp source_index,2
                        jne mov13
                        
                        mov ax,VALUE_BX1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                    mov13:
                        cmp source_index,3
                        jne mov14
                        
                        mov ax,VALUE_CX1
                        mov VALUE_AX1,ax
                        JMP TESTEE           
                    mov14:
                        cmp source_index,4
                        jne mov15
                        
                        mov ax,VALUE_DX1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                    mov15:
                        cmp source_index,13
                        jne mov16
                        
                        mov ax,VALUE_SI1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                    mov16:
                        cmp source_index,14
                        jne mov17
                        
                        mov ax,VALUE_DI1
                        mov VALUE_AX1,ax   
                        JMP TESTEE
                    mov17:
                        cmp source_index,16
                        jne mov18 
                        
                        mov ax,VALUE_SP1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                    mov18:
                        cmp source_index,15
                        jne mov19
                        
                        mov ax,VALUE_BP1
                        mov VALUE_AX1,ax
                        JMP TESTEE
                    mov19:
                        cmp source_index,21
                        jne mov20
                        
                        mov ax,VALUE1
                        mov VALUE_AX1,ax
						JMP TESTEE
						 
				mov20:
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov AX,[BX]
				MOV VALUE_AX1,AX
				jmp TESTEE
                
               mov2: 
                        
               cmp dest_index,2
               jne mov3
               
               
              
                    mov21:
            
                        cmp source_index,1
                        jne mov22
                        
                        mov ax,VALUE_AX1
                        mov VALUE_BX1,ax
                        JMP TESTEE
                        
                    mov22:
                        cmp source_index,2
                        jne mov23
                        
                        mov ax,VALUE_BX1
                        mov VALUE_BX1,ax
                        JMP TESTEE
                    mov23:
                        cmp source_index,3
                        jne mov24
                        
                        mov ax,VALUE_CX1
                        mov VALUE_BX1,ax
                        JMP TESTEE           
                    mov24:
                        cmp source_index,4
                        jne mov25
                        
                        mov ax,VALUE_DX1
                        mov Value_BX1,ax
                        JMP TESTEE
                    mov25:
                        cmp source_index,13
                        jne mov26
                        
                        mov ax,VALUE_SI1
                        mov VALUE_BX1,ax
                        JMP TESTEE
                    mov26:
                        cmp source_index,14
                        jne mov27
                        
                        mov ax,VALUE_DI1
                        mov VALUE_BX1,ax   
                        JMP TESTEE
                    mov27:
                        cmp source_index,16
                        jne mov28 
                        
                        mov ax,VALUE_SP1
                        mov VALUE_BX1,ax
                        JMP TESTEE
                    mov28:
                        cmp source_index,15
                        jne mov29
                        
                        mov ax,VALUE_BP1
                        mov VALUE_BX1,ax
                        JMP TESTEE
                    mov29:
                        cmp source_index,21
                        jne mov30
                        
                        mov ax,VALUE1
                        mov VALUE_BX1,ax
						JMP TESTEE

	mov30:
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov AX,[BX]
				MOV VALUE_BX1,AX
				jmp TESTEE						
               
            mov3:   
               cmp dest_index,3
               jne mov4
            
                    mov31:
            
                        cmp source_index,1
                        jne mov32
                        
                        mov ax,VALUE_AX1
                        mov VALUE_CX1,ax
                        JMP TESTEE
                        
                    mov32:
                        cmp source_index,2
                        jne mov33
                        
                        mov ax,VALUE_BX1
                        mov VALUE_CX1,ax
                        JMP TESTEE
                    mov33:
                        cmp source_index,3
                        jne mov34
                        
                        mov ax,VALUE_CX1
                        mov VALUE_CX1,ax
                         JMP TESTEE          
                    mov34:
                        cmp source_index,4
                        jne mov35
                        
                        mov ax,VALUE_DX1
                        mov VALUE_CX1,ax
                        JMP TESTEE
                    mov35:
                        cmp source_index,13
                        jne mov36
                        
                        mov ax,VALUE_SI1
                        mov VALUE_CX1,ax
                        JMP TESTEE
                    mov36:
                        cmp source_index,14
                        jne mov37
                        
                        mov ax,VALUE_DI1
                        mov VALUE_CX1,ax   
                        JMP TESTEE
                    mov37:
                        cmp source_index,16
                        jne mov38 
                        
                        mov ax,VALUE_SP1
                        mov VALUE_CX1,ax
                        JMP TESTEE
                    mov38:
                        cmp source_index,15
                        jne mov39
                        
                        mov ax,VALUE_BP1
                        mov VALUE_CX1,ax
						JMP TESTEE
                        
                    mov39:
                        cmp source_index,21
                        jne mov40
                        
                        mov ax,VALUE1
                        mov VALUE_CX1,ax
						jmp TESTEE
				mov40:
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov AX,[BX]
				MOV VALUE_CX1,AX
				jmp TESTEE
                        
             mov4:   
               cmp dest_index,4
               jne mov5
            
                    mov41:
            
                        cmp source_index,1
                        jne mov42
                        
                        mov ax,VALUE_AX1
                        mov VALUE_DX1,ax
                        JMP TESTEE
                        
                    mov42:
                        cmp source_index,2
                        jne mov43
                        
                        mov ax,VALUE_BX1
                        mov VALUE_DX1,ax
                       JMP TESTEE 
                    mov43:
                        cmp source_index,3
                        jne mov44
                        
                        mov ax,VALUE_CX1
                        mov VALUE_DX1,ax
                         JMP TESTEE          
                    mov44:
                        cmp source_index,4
                        jne mov45
                        
                        mov ax,VALUE_DX1
                        mov VALUE_DX1,ax
                        JMP TESTEE
                    mov45:
                        cmp source_index,13
                        jne mov46
                        
                        mov ax,VALUE_SI1
                        mov VALUE_DX1,ax
                        JMP TESTEE
                    mov46:
                        cmp source_index,14
                        jne mov47
                        
                        mov ax,VALUE_DI1
                        mov VALUE_DX1,ax   
                        JMP TESTEE
                    mov47:
                        cmp source_index,16
                        jne mov48 
                        
                        mov ax,VALUE_SP1
                        mov VALUE_DX1,ax
                        JMP TESTEE
                    mov48:
                        cmp source_index,15
                        jne mov49
                        
                        mov ax,VALUE_BP1
                        mov VALUE_DX1,ax
                        JMP TESTEE
                    mov49:
                        cmp source_index,21
                        jne mov50
                        
                        mov ax,VALUE1
                        mov VALUE_DX1,ax
                        jmp TESTEE
						mov50:
							MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				mov AX,[BX]
				MOV VALUE_DX1,AX
				jmp TESTEE
                        
              mov5:   ;TO MOV FROM ALL POSSIBLE REGISTERS TO AL
               cmp dest_index,5
               jne mov6
               
                    mov51:
                        cmp source_index,5
                        jne mov52
                        
                        
                        mov AX,VALUE_AX1
                SUB AH,AH            ;AL ONLY(FROM AX)
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_AX1,AX      ;      
                ADD VALUE_AX1,BX
                   JMP TESTEE     
                    mov52:
                        cmp source_index,6
                        jne mov53
					
               mov AX,VALUE_BX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE  
                    mov53:
                        cmp source_index,7
                        jne mov54
                        
                     			
               mov AX,VALUE_CX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE      
                    mov54:
                        cmp source_index,8
                        jne mov55
                        
                			
               mov AX,VALUE_DX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE       
                   mov55:
                        cmp source_index,9
                        jne mov56
                        
                        			
               mov AX,VALUE_AX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                   JMP TESTEE     
                    mov56:
                        cmp source_index,10
                        jne mov57
                    mov AX,VALUE_BX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE  
                    mov57:
                        cmp source_index,11
                        jne mov58
                        
            mov AX,VALUE_CX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE      
                    mov58:
                        cmp source_index,12
                        jne mov59
                        
                       mov AX,VALUE_DX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE      
                    mov59:
                        cmp source_index,21
                        jne mov60
                        
                        mov AX,VALUE1
                        SHR AX,8
						MOV BX,VALUE_AX1
						SUB BL,BL
                        mov VALUE_AX1,AX    
                        JMP TESTEE
mov60:
	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				mov AX,[BX]
				MOV VALUE_AX1,AX
				jmp TESTEE						
                        
               mov6:   
               cmp dest_index,6
               jne mov7
               
                    mov61:
                        cmp source_index,5
                        jne mov62
                   JMP TESTEE     
                        
                mov AX,VALUE_AX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE       
                    mov62:
                        cmp source_index,6
                        jne mov63
                        
                         mov AX,VALUE_BX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE   
                    mov63:
                        cmp source_index,7
                        jne mov64
                        
                               mov AX,VALUE_CX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                   JMP TESTEE     
                    mov64:
                        cmp source_index,8
                        jne mov65
                        
                             mov AX,VALUE_DX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                   JMP TESTEE     
                   mov65:   ;MOV BL,AH
                        cmp source_index,9  
                        jne mov66
                        
                     mov AX,VALUE_AX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                   JMP TESTEE     
                    mov66:
                        cmp source_index,10
                        jne mov67
                        
                           mov AX,VALUE_BX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                   JMP TESTEE 
                    mov67:
                        cmp source_index,11
                        jne mov68
                        
                             mov AX,VALUE_CX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                  JMP TESTEE      
                    mov68:
                        cmp source_index,12
                        jne mov69
                        
                                 mov AX,VALUE_DX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                  JMP TESTEE      
                    mov69:
                        cmp source_index,21
                        jne mov70
                        
                               mov AX,VALUE1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                JMP TESTEE
mov70:
	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				mov AX,[BX]
				MOV Value_BX1,AX
				jmp TESTEE				
                        
                        
               mov7: 
			   
               cmp dest_index,7
               jne mov8
               
                    mov71:
                        cmp source_index,5
                        jne mov72
                        
                        
                          mov AX,VALUE_AX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                   JMP TESTEE     
                    mov72:
                        cmp source_index,6
                        jne mov73
                              mov AX,VALUE_BX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                  JMP TESTEE  
                    mov73:
                        cmp source_index,7
                        jne mov74
                              mov AX,VALUE_CX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
                 JMP TESTEE       
                    mov74:
                        cmp source_index,8
                        jne mov75
                        
                              mov AX,VALUE_DX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                 JMP TESTEE       
                   mov75:
                        cmp source_index,9
                        jne mov76
                              mov AX,VALUE_AX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                 JMP TESTEE       
                    mov76:
                        cmp source_index,10
                        jne mov77
                        
                            mov AX,VALUE_BX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                JMP TESTEE    
                    mov77:
                        cmp source_index,11
                        jne mov78
                        
                             mov AX,VALUE_CX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                 JMP TESTEE       
                    mov78:
                        cmp source_index,12
                        jne mov79
                        
                                   mov AX,VALUE_DX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                 JMP TESTEE       
                    mov79:
                        cmp source_index,21
                        jne mov80
                        
                        mov AX,VALUE1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                JMP TESTEE
				mov80:
					MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov DX,[BX]
				MOV VALUE_CX1,DX
				JMP TESTEE
                        
              mov8:   
               cmp dest_index,8
               jne mov9
               
                     mov81:
                        cmp source_index,5
                        jne mov82
                               
                        
                     mov AX,VALUE_AX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                  JMP TESTEE      
                    mov82:
                        cmp source_index,6
                        jne mov83
                               
                               mov AX,VALUE_BX1
                SUB AH,AH            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE   
                    mov83:
                        cmp source_index,7
                        jne mov84
                        
                              mov AX,VALUE_CX1
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                JMP TESTEE        
                    mov84:
                        cmp source_index,8
                        jne mov85
                        
                              mov AX,VALUE_DX1
                SUB AL,AL            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                   mov85:
                        cmp source_index,9
                        jne mov86
                        
                                 mov AX,VALUE_AX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                    mov86:
                        cmp source_index,10
                        jne mov87
                        
                                  mov AX,VALUE_BX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                JMP TESTEE    
                    mov87:
                        cmp source_index,11
                        jne mov88
                        
                                    mov AX,VALUE_CX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                    mov88:
                        cmp source_index,12
                        jne mov89
                        
                                    mov AX,VALUE_DX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BL,BL            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                        
                    mov89:
                        cmp source_index,21
                        jne mov90
                        
                                   mov AX,VALUE1
                SHR AX,8            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
				JMP TESTEE
              mov90:
			  	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				mov AX,[BX]
				MOV VALUE_DX1,AX
				jmp TESTEE
              
              mov9:   
               cmp dest_index,9
               jne mov10
               
                     mov91:
                        cmp source_index,5
                        jne mov92
                               
                        
                                    mov AX,VALUE_AX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE       
                    mov92:
                        cmp source_index,6
                        jne mov93
                               
                                  mov AX,VALUE_BX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE  
                    mov93:
                        cmp source_index,7
                        jne mov94
                        
                                    mov AX,VALUE_CX1
                SHR AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE      
                    mov94:
                        cmp source_index,8
                        jne mov95
                        
                                   mov AX,VALUE_DX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                  JMP TESTEE      
                   mov95:
                        cmp source_index,9
                        jne mov96
                        
                             mov AX,VALUE_AX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE       
                    mov96:
                        cmp source_index,10
                        jne mov97
                        
                                mov AX,VALUE_BX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE   
                    mov97:
                        cmp source_index,11
                        jne mov98
                        
                               mov AX,VALUE_CX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                   JMP TESTEE     
                    mov98:
                        cmp source_index,12
                        jne mov10
                        
                                 mov AX,VALUE_DX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE       
                    mov99:
                        cmp source_index,21
                        jne mov100
                        
                MOV AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_AX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_AX1,BX      ;      
                ADD VALUE_AX1,AX
                 JMP TESTEE       
                 mov100:
	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				mov AX,[BX]
				MOV VALUE_AX1,AX
				jmp TESTEE				 
              
              
              mov10:   
               cmp dest_index,10
               jne movv11
               
                     mov101:
                        cmp source_index,5
                        jne mov102
                               
                        
                             mov AX,VALUE_AX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE       
                    mov102:
                        cmp source_index,6
                        jne mov103
                               
                               mov AX,VALUE_BX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE   
                    mov103:
                        cmp source_index,7
                        jne mov104
                        
                                  mov AX,VALUE_CX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE       
                    mov104:
                        cmp source_index,8
                        jne mov105
                        
                               mov AX,VALUE_DX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE       
                   mov105:
                        cmp source_index,9
                        jne mov106
                        
                              mov AX,VALUE_AX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                  JMP TESTEE      
                    mov106:
                        cmp source_index,10
                        jne mov107
                        
                                   mov AX,VALUE_BX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                 JMP TESTEE   
                    mov107:
                        cmp source_index,11
                        jne mov108
                        
                                mov AX,VALUE_CX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX
                  JMP TESTEE      
                    mov108:
                        cmp source_index,12
                        jne mov109
                        
                            mov AX,VALUE_DX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX 
                   JMP TESTEE 
                    mov109:
                        cmp source_index,21
                        jne mov110
                        
                               mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_BX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_BX1,BX      ;      
                ADD VALUE_BX1,AX           
              JMP TESTEE
			  
			  mov110:
			  	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				mov AX,[BX]
				MOV VALUE_BX1,AX
				jmp TESTEE
              
              movv11:   
               cmp dest_index,11
               jne movv12
               
                     mov111:
                        cmp source_index,5
                        jne mov112
                               
                        
                                         mov AX,VALUE_AX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                 JMP TESTEE
				 
                    mov112:
                        cmp source_index,6
                        jne mov113
                               
                              
                                         mov AX,VALUE_BX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
				JMP TESTEE
                    mov113:
                        cmp source_index,7
                        jne mov114
                        
                             
                                         mov AX,VALUE_CX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                JMP TESTEE        
                    mov114:
                        cmp source_index,8
                        jne mov115
                        
                             
                mov AX,VALUE_DX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX
                JMP TESTEE        
                   mov115:
                        cmp source_index,9
                        jne mov116
                        
                                mov AX,VALUE_AX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
                 JMP TESTEE   
                        
                    mov116:
                        cmp source_index,10
                        jne mov117
                        
                                     mov AX,VALUE_BX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
                 JMP TESTEE   
                    mov117:
                        cmp source_index,11
                        jne mov118
                        
                                  mov AX,VALUE_CX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
                 JMP TESTEE       
                    mov118:
                        cmp source_index,12
                        jne mov119
                        
                                    mov AX,VALUE_CX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
				JMP TESTEE
                        
                    mov119:
                        cmp source_index,21
                        jne mov120
                        
                                   mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_CX1,BX      ;      
                ADD VALUE_CX1,AX 
				JMP TESTEE
				
              mov120:
			  	MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				mov AX,[BX]
				MOV VALUE_CX1,AX
				jmp TESTEE
              
              movv12:   
               cmp dest_index,12
               jne movv17
               
                     mov121:
                        cmp source_index,5
                        jne mov122
                               
                        
             mov AX,VALUE_AX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                  JMP TESTEE      
                    mov122:
                        cmp source_index,6
                        jne mov123
                               
                            mov AX,VALUE_BX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE   
                    mov123:
                        cmp source_index,7
                        jne mov124
                        
                          mov AX,VALUE_CX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                    mov124:
                        cmp source_index,8
                        jne mov125
                        
                     mov AX,VALUE_DX1
                SHL AX,8
				; NOW THE DEST 
                MOV BX,VALUE_DX1
                SUB BH,BH            ;BL ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX
                 JMP TESTEE       
                   mov125:
                        cmp source_index,9
                        jne mov126
                        
                                                         mov AX,VALUE_AX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX 
                 JMP TESTEE       
                    mov126:
                        cmp source_index,10
                        jne mov127
                        
                     mov AX,VALUE_BX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX 
                  JMP TESTEE  
                    mov127:
                        cmp source_index,11
                        jne mov128
                        
                      mov AX,VALUE_CX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX 
                 JMP TESTEE       
                    mov128:
                        cmp source_index,12
                        jne mov129
                        
                      mov AX,VALUE_DX1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX    
                 JMP TESTEE   
                    mov129:
                        cmp source_index,21
                        jne mov130
                        
                     mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                MOV BX,VALUE_CX1
                SUB BH,BH            ;BH ONLY(FROM AX)
                mov VALUE_DX1,BX      ;      
                ADD VALUE_DX1,AX 
				JMP TESTEE
				
				mov130:
					MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				mov AX,[BX]
				MOV VALUE_DX1,AX
				jmp TESTEE
				
                     movv17:
			   
			   
				cmp source_index,1
				jne movv1702
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_AX1
				mov [bx],dx
				jmp TESTEE
				
				movv1702:
				cmp source_index,2
				jne movv1703
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_BX1
				mov [bx],dx
				JMP TESTEE
				
				movv1703:
				cmp source_index,3
				jne movv1704
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_CX1
				mov [bx],dx
				JMP TESTEE
				
				movv1704:
				cmp source_index,4
				jne movv1705
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_DX1
				mov [bx],dx
				JMP TESTEE
				
				movv1705:
				cmp source_index,5
				jne movv1706
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_AX1
				mov [bx],dx
				JMP TESTEE
				
				movv1706:
				cmp source_index,6
				jne movv1707
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_BX1
				mov [bx],dx
				JMP TESTEE
				
				movv1707:
				
				cmp source_index,7
				jne movv1708
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_CX1
				mov [bx],dx
				JMP TESTEE
				
				movv1708:
				
				cmp source_index,8
				jne movv1709
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_DX1
				mov [bx],dx
				JMP TESTEE
				
				movv1709:
				cmp source_index,9
				jne movv1710
				
				mov CX,VALUE_AX1
				SHR CX,8
				MOV DX,VALUE_BX1
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV [BX],DX
				JMP TESTEE
				
				movv1710:
				cmp source_index,10
				jne movv1711
				
				mov CX,VALUE_BX1
				SHR CX,8
				MOV DX,VALUE_CX1
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV [BX],DX
				JMP TESTEE
				
				movv1711:
				cmp source_index,11
				jne movv1712
				
				mov CX,VALUE_CX1
				SHR CX,8
				MOV DX,VALUE_DX1
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV [BX],DX
				JMP TESTEE
				
				movv1712:
				cmp source_index,12
				jne movv1713
				MOV DX,VALUE_DX1
				SHR DX,8
				
				
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV [BX],DX
				JMP TESTEE
				
				movv1713:
				cmp source_index,13
				jne movv1714
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_SI1
				mov [bx],dx
				JMP TESTEE
				
				movv1714:
				cmp source_index,14
				jne movv1715
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_DI1
				mov [bx],dx
				JMP TESTEE
				
				movv1715:
				cmp source_index,15
				jne movv1716
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_BP1
				mov [bx],dx
				JMP TESTEE
				
				movv1716:
				cmp source_index,16
				jne TESTEE
				MOV CX,0
				LEA BX,Memory
				MOV CL,MValue
				ADD CL,CL
				ADD BX,CX
				MOV DX,VALUE_SP1
				mov [bx],dx
				JMP TESTEE
				
                      TESTEE:
                       RET
                        MOV_INST ENDP                            

NOP_INST PROC NEAR                                              
CMP INST_INDEX,16
RET
NOP_INST ENDP                  
DIV_INST PROC NEAR 
CMP INST_INDEX,14
JNE DONE4
        AAX4:	
        CMP Dest_Index,1
        JNE BBX4
        MOV DX,0
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV0
        MOV VALUE_DX1,DX
        DV0:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        BBX4:
        CMP Dest_Index,2
        JNE CCX4
        MOV DX,0
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV1
        MOV VALUE_DX1,DX
        DV1:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        CCX4:
        CMP Dest_Index,3
        JNE DDX4
        MOV DX,0
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111   ;DX has a value cuz the num that result from the product is greater than 16bits
        JZ DV2
        MOV VALUE_DX1,DX
        DV2:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        DDX4:
        CMP Dest_Index,4
        JNE AAL4
        MOV DX,0
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV3
        MOV VALUE_DX1,DX
        DV3:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        AAL4:     ;IF IT IS NOT WORKING WE CAN USE MOV AX,VALUE_AX1 THEN SUB AH,AH THEN DEC AL SAME AS BELOW 
        CMP Dest_Index,5
        JNE BBL4
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CL
        MOV VALUE_AX1,AX
        JMP DONE4
        
        BBL4:
        CMP Dest_Index,6
        JNE CCL4
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CL
        MOV VALUE_AX1,AX
        JMP DONE4
        
        CCL4:
        CMP Dest_Index,7
        JNE DDL4
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CL
        MOV VALUE_AX1,AX
        JMP DONE4
        
        DDL4:
        CMP Dest_Index,8
        JNE AAH4
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CL
        MOV VALUE_AX1,AX
        JMP DONE4
        
        AAH4:
        CMP Dest_Index,9
        JNE BBH4
        MOV CX,VALUE_AX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CH
        MOV VALUE_AX1,AX
        JMP DONE4
        
        BBH4:
        CMP Dest_Index,10
        JNE CCH4
        MOV CX,VALUE_BX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CH
        MOV VALUE_AX1,AX
        JMP DONE4
        
        CCH4:
        CMP Dest_Index,11
        JNE DDH4
        MOV CX,VALUE_CX1
        MOV AX,VALUE_AX1
        SUB AH,AH
        DIV CH
        MOV VALUE_AX1,AX
        JMP DONE4
        
        DDH4:
        CMP Dest_Index,12
        JNE SSI4
        MOV CX,VALUE_DX1
        MOV AX,VALUE_AX1
        DIV CH
        MOV VALUE_AX1,AX
        JMP DONE4
        
        SSI4:
        CMP Dest_Index,13
        JNE DDI4
        MOV DX,0
        MOV CX,VALUE_SI1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV7
        MOV VALUE_DX1,DX
        DV7:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        DDI4:
        CMP Dest_Index,14
        JNE BBP4
        MOV DX,0
        MOV CX,VALUE_DI1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV8
        MOV VALUE_DX1,DX
        DV8:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        BBP4:
        CMP Dest_Index,15
        JNE SSP4
        MOV DX,0
        MOV CX,VALUE_BP1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV9
        MOV VALUE_DX1,DX
        DV9:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        
        SSP4:
        CMP Dest_Index,16
        JNE DONE4
        MOV DX,0
        MOV CX,VALUE_SP1
        MOV AX,VALUE_AX1
        DIV CX
        AND DX,1111
        JZ DV10
        MOV VALUE_DX1,DX
        DV10:
        MOV VALUE_AX1,AX
        JMP DONE4
        
        DONE4:
        RET
        DIV_INST ENDP  
CLCC_INST PROC NEAR 


CMP INST_INDEX,6
JNE TER
MOV BX,OFFSET CCF
MOV CX,9
WHILE:
MOV AX,0
MOV [BX],AX
INC BX
LOOP WHILE
TER:
RET
CLCC_INST ENDP
END