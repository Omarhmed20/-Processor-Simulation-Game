EXTRN source_index:BYTE
EXTRN DESt_index:BYTE
EXTRN MValue:BYTE
EXTRN VALUE1:WORD
EXTRN INST_INDEX:BYTE
EXTRN CCF:BYTE

PUBLIC P2VALUE_AX2, VALUE_BX2 ,VALUE_CX2 ,VALUE_DX2 ,VALUE_SI2 ,VALUE_DI2 ,VALUE_SP2 ,VALUE_BP2 



PUBLIC P2Excution_Unite
 


.model huge
.386
.STACK 64
.data


        P2Value_AX2 DW 0
        VALUE_BX2 DW 0
        VALUE_CX2 DW 0
        VALUE_DX2 DW 0
        VALUE_SI2 DW 0
        VALUE_DI2 DW 0
        VALUE_SP2 DW 0
        VALUE_BP2 DW 0
      
      
        Memory2 DW 16 dup('0'),'$'
.code 
 
P2Excution_Unite PROC FAR

call P2MOV__INST
        
call P2ADD_INST
        
call P2SUB_INST
            
CALL P2SHL_INST
            
CALL P2SHR_INST
            
CALL P2ROR_INST
            
CALL P2ROL_INST 
            
CALL P2XOR_INST
            
CALL P2OR_INST
            
CALL P2AND_INST
        
CALL P2INC_INST

CALL P2MUL_INST

CALL P2DEC_INST

CALL P2NOP_INST

CALL P2DIV_INST

CALL P2CLCC_INST

RET
            
P2Excution_Unite ENDP  
 
 
 
 


 
p2mov__INST PROC NEAR

CMP INST_INDEX,1
JNE TESTEE2
				cMp Dest_Index,13
				JNE Mmov_2
				
				Cmp Source_Index,1
				MOV AX,P2Value_AX2
				MOV VALUE_SI2,AX
				JMP TESTEE2
				
				mmoo_v1:
				Cmp Source_Index,2
				JNE mmoo_v2
				mov AX,Value_BX2
				mov VALUE_SI2,AX
				JMP TESTEE2
				
				mmoo_v2:
				Cmp Source_Index,3
				JNE mmoo_v3
				mov AX,VALUE_CX2
				mov VALUE_SI2,AX
				JMP TESTEE2
               
				
				mmoo_v3:
				Cmp Source_Index,4
				JNE mmoo_v2
				mov AX,VALUE_DX2
				mov VALUE_SI2,AX
				JMP TESTEE2
			
			Mmov_2:
			cmp Dest_Index,14
			JNE Mmov_3
			
				Cmp Source_Index,1
				JNE mmoo_v1
				mov AX,P2Value_AX2
				mov VALUE_DI2,AX
				JMP TESTEE2
				
				mmoo_v11:
				Cmp Source_Index,2
				JNE mmoo_v2
				mov AX,Value_BX2
				mov VALUE_DI2,AX
				JMP TESTEE2
				
				mmoo_v12:
				Cmp Source_Index,3
				JNE mmoo_v3
				mov AX,VALUE_CX2
				mov VALUE_DI2,AX
				JMP TESTEE2
                
             
				
				mmoo_v13:
				Cmp Source_Index,4
				JNE TESTEE2
				Mov AX,VALUE_DX2
				Mov VALUE_DI2,AX
				JMP TESTEE2
				
            Mmov_3:
			CMP Dest_Index,15
			JNE Mmov_4
				Cmp Source_Index,1
				JNE mmoo_v21
				Mov AX,P2Value_AX2
				Mov VALUE_BP2,AX
				JMP TESTEE2
				
				mmoo_v21:
				Cmp Source_Index,2
				JNE mmoo_v22
				Mov AX,Value_BX2
				Mov VALUE_BP2,AX
				JMP TESTEE2
				
				mmoo_v22:
				Cmp Source_Index,3
				JNE mmoo_v23
				Mov AX,VALUE_CX2
				Mov VALUE_BP2,AX
				JMP TESTEE2
				
               
				
				mmoo_v23:
				Cmp Source_Index,4
				JNE TESTEE2
				Mov AX,VALUE_DX2
				Mov VALUE_BP2,AX
				JMP TESTEE2
				
				
		Mmov_4:
		CMP Dest_Index,16
		JNE mov_11
		
			Cmp Source_Index,1
				JNE mmoo_v31
				Mov AX,P2Value_AX2
				Mov VALUE_SP2,AX
				JMP TESTEE2
				
				mmoo_v31:
				Cmp Source_Index,2
				JNE mmoo_v32
				Mov AX,Value_BX2
				Mov VALUE_SP2,AX
				JMP TESTEE2
				
				mmoo_v32:
				Cmp Source_Index,3
				JNE mmoo_v33
				Mov AX,VALUE_CX2
				Mov VALUE_SP2,AX
				JMP TESTEE2
             
				
				mmoo_v33:
				Cmp Source_Index,4
				JNE TESTEE2
				Mov AX,VALUE_DX2
				Mov VALUE_SP2,AX
				JMP TESTEE2
				
                    mov_11:
            cmp Dest_Index,1
                    jne mov_2
                        cmp Source_Index,1
                        jne mov_12
                        
                        Mov ax,P2Value_AX2
                        Mov P2Value_AX2,ax
                        JMP TESTEE2
                        
                    mov_12:
                        cmp Source_Index,2
                        jne mov_13
                        
                        Mov ax,VALUE_BX2
                        Mov P2Value_AX2,ax
                        	JMP TESTEE2
                    mov_13:
                        cmp Source_Index,3
                        jne mov_14
                        
                        Mov ax,VALUE_CX2
                        Mov P2Value_AX2,ax
                          	JMP TESTEE2         
                    mov_14:
                        cmp Source_Index,4
                        jne mov_15
                        
                        Mov ax,VALUE_DX2
                        Mov P2Value_AX2,ax
                        	JMP TESTEE2
                    mov_15:
                        cmp Source_Index,13
                        jne mov_16
                        
                        Mov ax,VALUE_SI2
                        Mov P2Value_AX2,ax
                        	JMP TESTEE2
                    mov_16:
                        cmp Source_Index,14
                        jne mov_17
                        
                        Mov ax,VALUE_DI2
                        Mov P2Value_AX2,ax   
                        	JMP TESTEE2
                    mov_17:
                        cmp Source_Index,15
                        jne mov_18 
                        
                        Mov ax,VALUE_SP2
                        Mov P2Value_AX2,ax
                        	JMP TESTEE2
                    mov_18:
                        cmp Source_Index,16
                        jne mov_19
                        
                        Mov ax,VALUE_BP2
                        Mov P2Value_AX2,ax
                        	JMP TESTEE2
                    mov_19:
                        cmp Source_Index,21
                        jne mov_20
                        
                        Mov ax,VALUE1
                        Mov P2Value_AX2,ax
						JMP TESTEE2
						 
						 mov_20:
						 	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov AX,[BX]
				Mov P2Value_AX2,AX
				jmp TESTEE2
                
               mov_2: 
                        
               cmp Dest_Index,2
               jne mov_3
               
               
              
                    mov_21:
            
                        cmp Source_Index,1
                        jne mov_22
                        
                        Mov ax,P2Value_AX2
                        Mov VALUE_BX2,ax
                        	JMP TESTEE2
                        
                    mov_22:
                        cmp Source_Index,2
                        jne mov_23
                        
                        Mov ax,P2Value_AX2
                        Mov VALUE_BX2,ax
                        	JMP TESTEE2
                    mov_23:
                        cmp Source_Index,3
                        jne mov_24
                        
                        Mov ax,VALUE_CX2
                        Mov VALUE_BX2,ax
                         	JMP TESTEE2          
                    mov_24:
                        cmp Source_Index,4
                        jne mov_25
                        
                        Mov ax,VALUE_DX2
                        Mov Value_BX2,ax
                        	JMP TESTEE2
                    mov_25:
                        cmp Source_Index,13
                        jne mov_26
                        
                        Mov ax,VALUE_SI2
                        Mov VALUE_BX2,ax
                        	JMP TESTEE2
                    mov_26:
                        cmp Source_Index,14
                        jne mov_27
                        
                        Mov ax,VALUE_DI2
                        Mov VALUE_BX2,ax   
                        	JMP TESTEE2
                    mov_27:
                        cmp Source_Index,15
                        jne mov_28 
                        
                        Mov ax,VALUE_SP2
                        Mov VALUE_BX2,ax
                        	JMP TESTEE2
                    mov_28:
                        cmp Source_Index,16
                        jne mov_29
                        
                        Mov ax,VALUE_BP2
                        Mov VALUE_BX2,ax
                        	JMP TESTEE2
                    mov_29:
                        cmp Source_Index,21
                        jne mov_30
                        
                        Mov ax,VALUE1
                        Mov VALUE_BX2,ax
						JMP TESTEE2

	mov_30:
							Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov AX,[BX]
				Mov VALUE_BX2,AX
				jmp TESTEE2						
               
            mov_3:   
               cmp Dest_Index,3
               jne mov_4
            
                    mov_31:
            
                        cmp Source_Index,1
                        jne mov_32
                        
                        Mov ax,P2Value_AX2
                        Mov VALUE_CX2,ax
                        	JMP TESTEE2
                        
                    mov_32:
                        cmp Source_Index,2
                        jne mov_33
                        
                        Mov ax,VALUE_BX2
                        Mov VALUE_CX2,ax
                        	JMP TESTEE2
                    mov_33:
                        cmp Source_Index,3
                        jne mov_34
                        
                        Mov ax,VALUE_CX2
                        Mov VALUE_CX2,ax
                         	JMP TESTEE2          
                    mov_34:
                        cmp Source_Index,4
                        jne mov_35
                        
                        Mov ax,VALUE_DX2
                        Mov VALUE_CX2,ax
                        	JMP TESTEE2
                    mov_35:
                        cmp Source_Index,13
                        jne mov_36
                        
                        Mov ax,VALUE_SI2
                        Mov VALUE_CX2,ax
                        	JMP TESTEE2
                    mov_36:
                        cmp Source_Index,14
                        jne mov_37
                        
                        Mov ax,VALUE_DI2
                        Mov VALUE_CX2,ax   
                        	JMP TESTEE2
                    mov_37:
                        cmp Source_Index,15
                        jne mov_38 
                        
                        Mov ax,VALUE_SP2
                        Mov VALUE_CX2,ax
                        	JMP TESTEE2
                    mov_38:
                        cmp Source_Index,16
                        jne mov_39
                        
                        Mov ax,VALUE_BP2
                        Mov VALUE_CX2,ax
							JMP TESTEE2
                        
                    mov_39:
                        cmp Source_Index,21
                        jne mov_40
                        
                        Mov ax,VALUE1
                        Mov VALUE_CX2,ax
                        jmp TESTEE2
						
				mov_40:
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				
			Mov AX,[BX]
				Mov VALUE_CX2,AX
				jmp TESTEE2
                        
             mov_4:   
               cmp Dest_Index,4
               jne mov_5
            
                    mov_41:
            
                        cmp Source_Index,1
                        jne mov_42
                        
                        Mov ax,P2Value_AX2
                        Mov VALUE_DX2,ax
                        	JMP TESTEE2
                        
                    mov_42:
                        cmp Source_Index,2
                        jne mov_43
                        
                        Mov ax,VALUE_BX2
                        Mov VALUE_DX2,ax
                        	JMP TESTEE2
                    mov_43:
                        cmp Source_Index,3
                        jne mov_44
                        
                        Mov ax,VALUE_CX2
                        Mov VALUE_DX2,ax
                         	JMP TESTEE2          
                    mov_44:
                        cmp Source_Index,4
                        jne mov_45
                        
                        Mov ax,VALUE_DX2
                        Mov VALUE_DX2,ax
                        	JMP TESTEE2
                    mov_45:
                        cmp Source_Index,13
                        jne mov_46
                        
                        Mov ax,VALUE_SI2
                        Mov VALUE_DX2,ax
                        	JMP TESTEE2
                    mov_46:
                        cmp Source_Index,14
                        jne mov_47
                        
                        Mov ax,VALUE_DI2
                        Mov VALUE_DX2,ax   
                        JMP TESTEE2
                    mov_47:
                        cmp Source_Index,15
                        jne mov_48 
                        
                        Mov ax,VALUE_SP2
                        Mov VALUE_DX2,ax
                        JMP TESTEE2
                    mov_48:
                        cmp Source_Index,16
                        jne mov_49
                        
                        Mov ax,VALUE_BP2
                        Mov VALUE_DX2,ax
                        JMP TESTEE2
                    mov_49:
                        cmp Source_Index,21
                        jne mov_50
                        
                        Mov ax,VALUE1
                        Mov VALUE_DX2,ax
                        jmp TESTEE2
						mov_50:
							Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				Mov AX,[BX]
				Mov VALUE_DX2,AX
				jmp TESTEE2
                        
              mov_5:   ;TO Mov FROM ALL POSSIBLE REGISTERS TO AL
               cmp Dest_Index,5
               jne mov_6
               
                    mov_51:
                        cmp Source_Index,5
                        jne mov_52
                        
                        
                        Mov AX,P2Value_AX2
                SUB AH,AH            ;AL ONLY(FROM AX)
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,AX      ;      
                ADD P2Value_AX2,BX
                        JMP TESTEE2
                    mov_52:
                        cmp Source_Index,6
                        jne mov_53
					
               Mov AX,VALUE_BX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                    JMP TESTEE2
                    mov_53:
                        cmp Source_Index,7
                        jne mov_54
                        
                     			
               Mov AX,VALUE_CX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                        JMP TESTEE2
                    mov_54:
                        cmp Source_Index,8
                        jne mov_55
                        
                			
               Mov AX,VALUE_DX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2VALUE_AX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                        JMP TESTEE2
                   mov_55:
                        cmp Source_Index,9
                        jne mov_56
                        
                        			
               Mov AX,P2Value_AX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                        JMP TESTEE2
                    mov_56:
                        cmp Source_Index,10
                        jne mov_57
                    Mov AX,VALUE_BX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                    JMP TESTEE2
                    mov_57:
                        cmp Source_Index,11
                        jne mov_58
                        
            Mov AX,VALUE_CX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                        JMP TESTEE2
                    mov_58:
                        cmp Source_Index,12
                        jne mov_59
                        
                       Mov AX,VALUE_DX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                        JMP TESTEE2
                    mov_59:
                        cmp Source_Index,21
                        jne mov_60
                        
                        Mov AX,VALUE1
                        SHR AX,8
						Mov BX,P2Value_AX2
						SUB BL,BL
                        Mov P2Value_AX2,AX    
                        JMP TESTEE2
mov_60:
	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				Mov AX,[BX]
				Mov P2Value_AX2,AX
				jmp TESTEE2						
                        
               mov_6:   
               cmp Dest_Index,6
               jne mov_7
               
                    mov_61:
                        cmp Source_Index,5
                        jne mov_62
                        
                        
                         Mov AX,P2Value_AX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                        JMP TESTEE2
                    mov_62:
                        cmp Source_Index,6
                        jne mov_63
                        
                         Mov AX,VALUE_BX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                    JMP TESTEE2
                    mov_63:
                        cmp Source_Index,7
                        jne mov_64
                        
                               Mov AX,VALUE_CX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                  JMP TESTEE2      
                    mov_64:
                        cmp Source_Index,8
                        jne mov_65
                        
                             Mov AX,VALUE_DX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                        JMP TESTEE2
                   mov_65:   ;Mov BL,AH
                        cmp Source_Index,9  
                        jne mov_66
                        
                     Mov AX,P2Value_AX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                        JMP TESTEE2
                    mov_66:
                        cmp Source_Index,10
                        jne mov_67
                        
                           Mov AX,VALUE_BX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,Value_BX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                    JMP TESTEE2
                    mov_67:
                        cmp Source_Index,11
                        jne mov_68
                        
                             Mov AX,VALUE_CX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                        JMP TESTEE2
                    mov_68:
                        cmp Source_Index,12
                        jne mov_69
                        
                                 Mov AX,VALUE_DX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                        JMP TESTEE2
                    mov_69:
                        cmp Source_Index,21
                        jne mov_70
                        
                               Mov AX,VALUE1
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                JMP TESTEE2
mov_70:
	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				Mov AX,[BX]
				Mov Value_BX2,AX
				jmp TESTEE2				
                        
                        
               mov_7: 
			   
               cmp Dest_Index,7
               jne mov_8
               
                    mov_71:
                        cmp Source_Index,5
                        jne mov_72
                        
                        
                Mov AX,P2Value_AX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                        JMP TESTEE2
                    mov_72:
                        cmp Source_Index,6
                        jne mov_73
                              Mov AX,VALUE_BX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                    JMP TESTEE2 
                    mov_73:
                        cmp Source_Index,7
                        jne mov_74
                              Mov AX,VALUE_CX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
                  JMP TESTEE2       
                    mov_74:
                        cmp Source_Index,8
                        jne mov_75
                        
                              Mov AX,VALUE_DX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                   JMP TESTEE2      
                   mov_75:
                        cmp Source_Index,9
                        jne mov_76
                              Mov AX,P2Value_AX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                   JMP TESTEE2      
                    mov_76:
                        cmp Source_Index,10
                        jne mov_77
                        
                Mov AX,VALUE_BX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                  JMP TESTEE2   
                    mov_77:
                        cmp Source_Index,11
                        jne mov_78
                        
                             Mov AX,VALUE_CX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                 JMP TESTEE2        
                    mov_78:
                        cmp Source_Index,12
                        jne mov_79
                        
                                   Mov AX,VALUE_DX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                JMP TESTEE2         
                    mov_79:
                        cmp Source_Index,21
                        jne mov_80
                        
                        Mov AX,VALUE1
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                JMP TESTEE2
				mov_80:
					Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,[BX]
				Mov VALUE_CX2,DX
				JMP TESTEE2
                        
              mov_8:   
               cmp Dest_Index,8
               jne mov_9
               
                     mov_81:
                        cmp Source_Index,5
                        jne mov_82
                               
                        
                     Mov AX,P2Value_AX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                    mov_82:
                        cmp Source_Index,6
                        jne mov_83
                               
                               Mov AX,VALUE_BX2
                SUB AH,AH            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2    
                    mov_83:
                        cmp Source_Index,7
                        jne mov_84
                        
                              Mov AX,VALUE_CX2
                SUB AH,AH            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                    mov_84:
                        cmp Source_Index,8
                        jne mov_85
                        
                              Mov AX,VALUE_DX2
                SUB AL,AL            ;AL ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                   mov_85:
                        cmp Source_Index,9
                        jne mov_86
                        
                                 Mov AX,P2Value_AX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                    mov_86:
                        cmp Source_Index,10
                        jne mov_87
                        
                Mov AX,VALUE_BX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2    
                    mov_87:
                        cmp Source_Index,11
                        jne mov_88
                        
                                    Mov AX,VALUE_CX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                JMP TESTEE2         
                    mov_88:
                        cmp Source_Index,12
                        jne mov_89
                        
                 Mov AX,VALUE_DX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BL,BL            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                JMP TESTEE2         
                        
                    mov_89:
                        cmp Source_Index,21
                        jne mov_90
                        
                Mov AX,VALUE1
                SHR AX,8            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
				JMP TESTEE2
              mov_90:
			  	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				Mov AX,[BX]
				Mov VALUE_DX2,AX
				jmp TESTEE2
              
              mov_9:   
               cmp Dest_Index,9
               jne mov_10
               
                     mov_91:
                        cmp Source_Index,5
                        jne mov_92
                               
                        
                Mov AX,P2Value_AX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2        
                    mov_92:
                        cmp Source_Index,6
                        jne mov_93
                               
                Mov AX,VALUE_BX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2    
                    mov_93:
                        cmp Source_Index,7
                        jne mov_94
                        
                                    Mov AX,VALUE_CX2
                SHR AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                JMP TESTEE2         
                    mov_94:
                        cmp Source_Index,8
                        jne mov_95
                        
                                   Mov AX,VALUE_DX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                JMP TESTEE2         
                   mov_95:
                        cmp Source_Index,9
                        jne mov_96
                        
                             Mov AX,P2Value_AX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2        
                    mov_96:
                        cmp Source_Index,10
                        jne mov_97
                        
                                Mov AX,VALUE_BX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                JMP TESTEE2     
                    mov_97:
                        cmp Source_Index,11
                        jne mov_98
                        
                               Mov AX,VALUE_CX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2        
                    mov_98:
                        cmp Source_Index,12
                        jne mov_10
                        
                                 Mov AX,VALUE_DX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2        
                    mov_99:
                        cmp Source_Index,21
                        jne mov_100
                        
                Mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,P2Value_AX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov P2Value_AX2,BX      ;      
                ADD P2Value_AX2,AX
                 JMP TESTEE2       
                 mov_100:
	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				
				Mov AX,[BX]
				Mov P2Value_AX2,AX
				jmp TESTEE2				 
              
              
              mov_10:   
               cmp Dest_Index,10
               jne mov_v11
               
                     mov_101:
                        cmp Source_Index,5
                        jne mov_102
                               
                        
                 Mov AX,P2Value_AX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2        
                    mov_102:
                        cmp Source_Index,6
                        jne mov_103
                               
                 Mov AX,VALUE_BX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2    
                    mov_103:
                        cmp Source_Index,7
                        jne mov_104
                        
                Mov AX,VALUE_CX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2        
                    mov_104:
                        cmp Source_Index,8
                        jne mov_105
                        
                 Mov AX,VALUE_DX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                JMP TESTEE2         
                   mov_105:
                        cmp Source_Index,9
                        jne mov_106
                        
                Mov AX,P2Value_AX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2        
                    mov_106:
                        cmp Source_Index,10
                        jne mov_107
                        
                 Mov AX,Value_BX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2    
                    mov_107:
                        cmp Source_Index,11
                        jne mov_108
                        
                Mov AX,VALUE_CX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX
                 JMP TESTEE2        
                    mov_108:
                        cmp Source_Index,12
                        jne mov_109
                        
                            Mov AX,VALUE_DX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX 
                 JMP TESTEE2    
                    mov_109:
                        cmp Source_Index,21
                        jne mov_110
                        
                               Mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_BX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_BX2,BX      ;      
                ADD VALUE_BX2,AX           
              JMP TESTEE2
			  
			  mov_110:
			  	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				Mov AX,[BX]
				Mov VALUE_BX2,AX
				jmp TESTEE2
              
              mov_v11:   
               cmp Dest_Index,11
               jne mov_v12
               
                     mov_111:
                        cmp Source_Index,5
                        jne mov_112
                               
                        
                  Mov AX,P2Value_AX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                 JMP TESTEE2
				 
                    mov_112:
                        cmp Source_Index,6
                        jne mov_113
                               
                              
                Mov AX,VALUE_BX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
				JMP TESTEE2
                    mov_113:
                        cmp Source_Index,7
                        jne mov_114
                        
                             
                         Mov AX,VALUE_CX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                JMP TESTEE2        
                    mov_114:
                        cmp Source_Index,8
                        jne mov_115
                        
                             
                Mov AX,VALUE_DX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX
                JMP TESTEE2        
                   mov_115:
                        cmp Source_Index,9
                        jne mov_116
                        
                      Mov AX,P2Value_AX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
                 JMP TESTEE2   
                        
                    mov_116:
                        cmp Source_Index,10
                        jne mov_117
                        
                Mov AX,VALUE_BX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
                 JMP TESTEE2   
                    mov_117:
                        cmp Source_Index,11
                        jne mov_118
                        
                   Mov AX,VALUE_CX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
                 JMP TESTEE2       
                    mov_118:
                        cmp Source_Index,12
                        jne mov_119
                        
                      Mov AX,VALUE_DX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
				JMP TESTEE2
                        
                    mov_119:
                        cmp Source_Index,21
                        jne mov_120
                        
                Mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_CX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_CX2,BX      ;      
                ADD VALUE_CX2,AX 
				JMP TESTEE2
				
              mov_120:
			  	Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				Mov AX,[BX]
				Mov VALUE_CX2,AX
				jmp TESTEE2
              
              mov_v12:   
               cmp Dest_Index,12
               jne mov_v17
               
                     mov_121:
                        cmp Source_Index,5
                        jne mov_122
                  JMP TESTEE2              
                        
             Mov AX,P2Value_AX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                  JMP TESTEE2       
                    mov_122:
                        cmp Source_Index,6
                        jne mov_123
                               
                            Mov AX,VALUE_BX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                  JMP TESTEE2   
                    mov_123:
                        cmp Source_Index,7
                        jne mov_124
                        
                          Mov AX,VALUE_CX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                    mov_124:
                        cmp Source_Index,8
                        jne mov_125
                        
                     Mov AX,VALUE_DX2
                SHL AX,8
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BL ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX
                 JMP TESTEE2        
                   mov_125:
                        cmp Source_Index,9
                        jne mov_126
                        
                 Mov AX,P2Value_AX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX 
                JMP TESTEE2         
                    mov_126:
                      cmp Source_Index,10
                        jne mov_127
                        
                     Mov AX,VALUE_DX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX 
                  JMP TESTEE2   
                    mov_127:
                        cmp Source_Index,11
                        jne mov_128
                        
                      Mov AX,VALUE_CX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX 
                 JMP TESTEE2        
                    mov_128:
                        cmp Source_Index,12
                        jne mov_129
                        
                      Mov AX,VALUE_DX2
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX    
                  JMP TESTEE2   
                    mov_129:
                        cmp Source_Index,21
                        jne mov_130
                        
                     Mov AX,VALUE1
                SUB AL,AL            ;AH ONLY(FROM AX)
				; NOW THE DEST 
                Mov BX,VALUE_DX2
                SUB BH,BH            ;BH ONLY(FROM AX)
                Mov VALUE_DX2,BX      ;      
                ADD VALUE_DX2,AX 
				JMP TESTEE2
				
				mov_130:
					Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
			
				Mov AX,[BX]
				Mov VALUE_DX2,AX
				jmp TESTEE2
				
                     mov_v17:
			   
			   
				cmp Source_Index,1
				jne mov_v1702
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,P2Value_AX2
				Mov [bx],dx
				jmp TESTEE2
				
				mov_v1702:
				cmp Source_Index,2
				jne mov_v1703
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_BX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1703:
				cmp Source_Index,3
				jne mov_v1704
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_CX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1704:
				cmp Source_Index,4
				jne mov_v1705
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_DX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1705:

				cmp Source_Index,5
				jne mov_v1706
				
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,P2Value_AX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1706:
				cmp Source_Index,6
				jne mov_v1707
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_BX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1707:
				
				cmp Source_Index,7
				jne mov_v1708
				
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_CX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1708:
				
				cmp Source_Index,8
				jne mov_v1709
				
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov DX,VALUE_DX2
				Mov [bx],dx
				JMP TESTEE2
				
				mov_v1709:
				cmp Source_Index,9
				jne mov_v1710
				
				Mov CX,P2Value_AX2
				SHR CX,8
				Mov DX,VALUE_BX2
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov [BX],DX
				JMP TESTEE2
				
				mov_v1710:
				cmp Source_Index,10
				jne mov_v1711
				
				Mov CX,VALUE_BX2
				SHR CX,8
				Mov DX,VALUE_CX2
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				Mov CX,0
				LEA BX,Memory2
				Mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				Mov [BX],DX
				JMP TESTEE2
				
				mov_v1711:
				cmp Source_Index,11
				jne mov_v1712
				
				mov CX,VALUE_CX2
				SHR CX,8
				mov DX,VALUE_DX2
				SHL DX,8
				
				ADD DX,CX   ;DX->[BL,AH]
				
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov [BX],DX
				JMP TESTEE2
				
				mov_v1712:
				cmp Source_Index,12
				jne mov_v1713
				mov DX,VALUE_DX2
				SHR DX,8
				
				
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov [BX],DX
				JMP TESTEE2
				
				mov_v1713:
				cmp Source_Index,13
				jne mov_v1714
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov DX,VALUE_SI2
				mov [bx],dx
				JMP TESTEE2
				
				mov_v1714:
				cmp Source_Index,14
				jne mov_v1715
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov DX,VALUE_DI2
				mov [bx],dx
				JMP TESTEE2
				
				mov_v1715:
				cmp Source_Index,15
				jne mov_v1716
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov DX,VALUE_BP2
				mov [bx],dx
				JMP TESTEE2
				
				mov_v1716:
				cmp Source_Index,16
				jne TESTEE2
				mov CX,0
				LEA BX,Memory2
				mov CL,MValue
				ADD CL,CL
				ADD BX,CX
				mov DX,VALUE_SP2
				mov [bx],dx
				JMP TESTEE2
				
                      TESTEE2:
                       RET
                        P2mov__INST ENDP 						

P2XOR_INST PROC NEAR
        
       
          
          CMP INST_INDEX,9
           JNE P2TESTEE9  
         
            cmp Dest_Index,1
            jne P2XOR2
            
                    P2XOR11:
            
                        cmp source_index,1
                        jne P2XOR12
                        
                        mov ax,P2Value_AX2
                        XOR P2Value_AX2,ax
                        
                        
                    P2XOR12:
                        cmp source_index,2
                        jne P2XOR13
                        
                        mov ax,VALUE_BX2
                        XOR P2Value_AX2,ax
                        
                    P2XOR13:
                        cmp source_index,3
                        jne P2XOR14
                        
                        mov ax,VALUE_CX2
                        XOR P2Value_AX2,ax
                                   
                    P2XOR14:
                        cmp source_index,4
                        jne P2XOR15
                        
                        mov ax,VALUE_DX2
                        XOR P2Value_AX2,ax
                        
                    P2XOR15:
                        cmp source_index,13
                        jne P2XOR16
                        
                        mov ax,VALUE_SI2
                        XOR P2Value_AX2,ax
                        
                    P2XOR16:
                        cmp source_index,14
                        jne P2XOR17
                        
                        mov ax,VALUE_DI2
                        XOR P2Value_AX2,ax   
                        
                    P2XOR17:
                        cmp source_index,15
                        jne P2XOR18 
                        
                        mov ax,VALUE_SP2
                        XOR P2Value_AX2,ax
                        
                    P2XOR18:
                        cmp source_index,16
                        jne P2XOR19
                        
                        mov ax,VALUE_BP2
                        XOR P2Value_AX2,ax
                        
                    P2XOR19:
                        cmp source_index,21
                        jne P2XOR2
                        
                        mov ax,VALUE1
                        XOR P2Value_AX2,ax
                
               P2XOR2: 
                        
               cmp Dest_Index,2
               jne P2XOR3
               
               
              
                    P2XOR21:
            
                        cmp source_index,1
                        jne P2XOR22
                        
                        mov ax,P2Value_AX2
                        XOR VALUE_BX2,ax
                        
                        
                    P2XOR22:
                        cmp source_index,2
                        jne P2XOR23
                        
                        MOV ax,VALUE_BX2
                        XOR VALUE_BX2,ax
                        
                    P2XOR23:
                        cmp source_index,3
                        jne P2XOR24
                        
                        mov ax,VALUE_CX2
                        XOR VALUE_BX2,ax
                                   
                    P2XOR24:
                        cmp source_index,4
                        jne P2XOR25
                        
                        mov ax,VALUE_DX2
                        XOR VALUE_BX2,ax
                        
                    P2XOR25:
                        cmp source_index,13
                        jne P2XOR26
                        
                        mov ax,VALUE_SI2
                        XOR VALUE_BX2,ax
                        
                    P2XOR26:
                        cmp source_index,14
                        jne P2XOR27
                        
                        mov ax,VALUE_DI2
                        XOR VALUE_BX2,ax   
                        
                    P2XOR27:
                        cmp source_index,15
                        jne P2XOR28 
                        
                        mov ax,VALUE_SP2
                        XOR VALUE_BX2,ax
                        
                    P2XOR28:
                        cmp source_index,16
                        jne P2XOR29
                        
                        mov ax,VALUE_BP2
                        XOR VALUE_BX2,ax
                        
                    P2XOR29:
                        cmp source_index,21
                        jne P2XOR3
                        
                        mov ax,VALUE1
                        XOR VALUE_BX2,ax     
               
            P2XOR3:   
               cmp Dest_Index,3
               jne P2XOR4
            
                    P2XOR31:
            
                        cmp source_index,1
                        jne P2XOR32
                        
                        mov ax,P2Value_AX2
                        XOR VALUE_CX2,ax
                        
                        
                    P2XOR32:
                        cmp source_index,2
                        jne P2XOR33
                        
                        mov ax,VALUE_BX2
                        XOR VALUE_CX2,ax
                        
                    P2XOR33:
                        cmp source_index,3
                        jne P2XOR34
                        
                        mov ax,VALUE_CX2
                        XOR VALUE_CX2,ax
                                   
                    P2XOR34:
                        cmp source_index,4
                        jne P2XOR35
                        
                        mov ax,VALUE_DX2
                        XOR VALUE_CX2,ax
                        
                    P2XOR35:
                        cmp source_index,13
                        jne P2XOR36
                        
                        mov ax,VALUE_SI2
                        XOR VALUE_CX2,ax
                        
                    P2XOR36:
                        cmp source_index,14
                        jne P2XOR37
                        
                        mov ax,VALUE_DI2
                        XOR VALUE_CX2,ax   
                        
                    P2XOR37:
                        cmp source_index,15
                        jne P2XOR38 
                        
                        mov ax,VALUE_SP2
                        XOR VALUE_CX2,ax
                        
                    P2XOR38:
                        cmp source_index,16
                        jne P2XOR39
                        
                        mov ax,VALUE_BP2
                        XOR VALUE_CX2,ax
                        
                    P2XOR39:
                        cmp source_index,21
                        jne P2XOR4
                        
                        mov ax,VALUE1
                        XOR VALUE_CX2,ax
                        
             P2XOR4:   
               cmp Dest_Index,4
               jne P2XOR5
            
                    P2XOR41:
            
                        cmp source_index,1
                        jne P2XOR42
                        
                        mov ax,P2Value_AX2
                        XOR VALUE_DX2,ax
                        
                        
                    P2XOR42:
                        cmp source_index,2
                        jne P2XOR43
                        
                        mov ax,VALUE_BX2
                        XOR VALUE_DX2,ax
                        
                    P2XOR43:
                        cmp source_index,3
                        jne P2XOR44
                        
                        mov ax,VALUE_CX2
                        XOR VALUE_DX2,ax
                                   
                    P2XOR44:
                        cmp source_index,4
                        jne P2XOR45
                        
                        mov ax,VALUE_DX2
                        XOR VALUE_DX2,ax
                        
                    P2XOR45:
                        cmp source_index,13
                        jne P2XOR46
                        
                        mov ax,VALUE_SI2
                        XOR VALUE_DX2,ax
                        
                    P2XOR46:
                        cmp source_index,14
                        jne P2XOR47
                        
                        mov ax,VALUE_DI2
                        XOR VALUE_DX2,ax   
                        
                    P2XOR47:
                        cmp source_index,15
                        jne P2XOR48 
                        
                        mov ax,VALUE_SP2
                        XOR VALUE_DX2,ax
                        
                    P2XOR48:
                        cmp source_index,16
                        jne P2XOR49
                        
                        mov ax,VALUE_BP2
                        XOR VALUE_DX2,ax
                        
                    P2XOR49:
                        cmp source_index,21
                        jne P2XOR5
                        
                        mov ax,VALUE1
                        XOR VALUE_DX2,ax
                        
                        
              P2XOR5:   
               cmp Dest_Index,5
               jne P2XOR6
               
       
            P2XOR51:
                cmp source_index,5
                jne P2XOR52
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                mov BX,P2Value_AX2
                SUB BL,BL
                XOR P2Value_AX2,AX
                
            P2XOR52:
                cmp source_index,6
                jne P2XOR53
                
                mov AX,VALUE_BX2
                SUB AH,AH
                XOR P2Value_AX2,AX
            
            P2XOR53:
                cmp source_index,7
                jne P2XOR54
                
                mov AX,VALUE_CX2
                SUB AH,AH
                XOR P2Value_AX2,AX 
                
            P2XOR54:
                cmp source_index,8
                jne P2XOR55
                
                mov AX,VALUE_DX2
                SUB AH,AH
                XOR P2Value_AX2,AX
                
           P2XOR55:
                cmp source_index,9
                jne P2XOR56
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                XOR P2Value_AX2,AX
                
            P2XOR56:
                cmp source_index,10
                jne P2XOR57
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                XOR P2Value_AX2,AX
            
            P2XOR57:
                cmp source_index,11
                jne P2XOR58
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                XOR P2Value_AX2,AX 
                
            P2XOR58:
                cmp source_index,12
                jne P2XOR59
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                XOR P2Value_AX2,AX
                
            P2XOR59:
                cmp source_index,21
                jne P2XOR6
                
                mov AX,VALUE1
                SUB AH,AH
                SHR AX,8
                
                XOR P2Value_AX2,AX    
                  
                
       P2XOR6:   
       cmp Dest_Index,6
       jne P2XOR7
       
            P2XOR61:
                cmp source_index,5
                jne P2XOR62
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                XOR P2Value_AX2,AX
                
            P2XOR62:
                cmp source_index,6
                jne P2XOR63
                
                mov AX,VALUE_BX2
                SUB AH,AH
                XOR VALUE_BX2,AX
            
            P2XOR63:
                cmp source_index,7
                jne P2XOR64
                
                mov AX,VALUE_CX2
                SUB AH,AH
                XOR VALUE_BX2,AX 
                
            P2XOR64:
                cmp source_index,8
                jne P2XOR65
                
                mov AX,VALUE_DX2
                SUB AH,AH
                XOR VALUE_BX2,AX
                
           P2XOR65:
                cmp source_index,9
                jne P2XOR66
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX2,AX
                
            P2XOR66:
                cmp source_index,10
                jne P2XOR67
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_BX2,AX
            
            P2XOR67:
                cmp source_index,11
                jne P2XOR68
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX2,AX 
                
            P2XOR68:
                cmp source_index,12
                jne P2XOR69
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_BX2,AX
                
            P2XOR69:
                cmp source_index,21
                jne P2XOR7
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_BX2,AX      
                
                
                
       P2XOR7:   
       cmp Dest_Index,7
       jne P2XOR8
       
            P2XOR71:
                cmp source_index,5
                jne P2XOR72
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                XOR VALUE_CX2,AX
                
            P2XOR72:
                cmp source_index,6
                jne P2XOR73
                
                mov AX,VALUE_BX2
                SUB AH,AH
                XOR VALUE_CX2,AX
            
            P2XOR73:
                cmp source_index,7
                jne P2XOR74
                
                mov AX,VALUE_CX2
                SUB AH,AH
                XOR VALUE_CX2,AX 
                
            P2XOR74:
                cmp source_index,8
                jne P2XOR75
                
                mov AX,VALUE_DX2
                SUB AH,AH
                XOR VALUE_CX2,AX
                
           P2XOR75:
                cmp source_index,9
                jne P2XOR76
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX2,AX
                
            P2XOR76:
                cmp source_index,10
                jne P2XOR77
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_CX2,AX
            
            P2XOR77:
                cmp source_index,11
                jne P2XOR78
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX2,AX 
                
            P2XOR78:
                cmp source_index,12
                jne P2XOR79
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_CX2,AX 
                
            P2XOR79:
                cmp source_index,21
                jne P2XOR8
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_CX2,AX
                           
                
      P2XOR8:   
       cmp Dest_Index,8
       jne P2XOR9
       
             P2XOR81:
                cmp source_index,5
                jne P2XOR82
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                XOR VALUE_DX2,AX
                
            P2XOR82:
                cmp source_index,6
                jne P2XOR83
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                XOR VALUE_DX2,AX
            
            P2XOR83:
                cmp source_index,7
                jne P2XOR84
                
                mov AX,VALUE_CX2
                SUB AH,AH
                XOR VALUE_DX2,AX 
                
            P2XOR84:
                cmp source_index,8
                jne P2XOR85
                
                mov AX,VALUE_DX2
                SUB AH,AH
                XOR VALUE_DX2,AX
                
            P2XOR85:
                cmp source_index,9
                jne P2XOR86
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX2,AX
                
            P2XOR86:
                cmp source_index,10
                jne P2XOR87
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                XOR VALUE_DX2,AX
            
            P2XOR87:
                cmp source_index,11
                jne P2XOR88
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX2,AX 
                
            P2XOR88:
                cmp source_index,12
                jne P2XOR89
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                XOR VALUE_DX2,AX 
                
                
            P2XOR89:
                cmp source_index,21
                jne P2XOR9
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                XOR VALUE_DX2,AX
      
      
      P2XOR9:   
       cmp Dest_Index,9
       jne P2XOR10
       
             P2XOR91:
                cmp source_index,5
                jne P2XOR92
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                XOR P2Value_AX2,AX
                
            P2XOR92:
                cmp source_index,6
                jne P2XOR93
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                XOR P2Value_AX2,AX
            
            P2XOR93:
                cmp source_index,7
                jne P2XOR94
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                XOR P2Value_AX2,AX 
                
            P2XOR94:
                cmp source_index,8
                jne P2XOR95
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                XOR P2Value_AX2,AX
                
           P2XOR95:
                cmp source_index,9
                jne P2XOR96
                
                mov AX,P2Value_AX2
                SUB AL,AL
                XOR P2Value_AX2,AX
                
            P2XOR96:
                cmp source_index,10
                jne P2XOR97
                
                mov AX,VALUE_BX2
                SUB AL,AL
                XOR P2Value_AX2,AX
            
            P2XOR97:
                cmp source_index,11
                jne P2XOR98
                
                mov AX,VALUE_CX2
                SUB AL,AL
                XOR P2Value_AX2,AX 
                
            P2XOR98:
                cmp source_index,12
                jne P2XOR99
                
                mov AX,VALUE_DX2
                SUB AL,AL
                XOR P2Value_AX2,AX
                
            P2XOR99:
                cmp source_index,21
                jne P2XOR10
                
                mov AX,VALUE1
                XOR P2Value_AX2,AX 
                
                    
      
      
      P2XOR10:   
       cmp Dest_Index,10
       jne P2XORD11
       
            P2XOR101:
                cmp source_index,5
                jne P2XOR102
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX2,AX
                
            P2XOR102:
                cmp source_index,6
                jne P2XOR103
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX2,AX
            
            P2XOR103:
                cmp source_index,7
                jne P2XOR104
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX2,AX 
                
            P2XOR104:
                cmp source_index,8
                jne P2XOR105
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_BX2,AX
                
           P2XOR105:
                cmp source_index,9
                jne P2XOR106
                
                mov AX,P2Value_AX2
                SUB AL,AL
                XOR VALUE_BX2,AX
                
            P2XOR106:
                cmp source_index,10
                jne P2XOR107
                
                mov AX,VALUE_BX2
                SUB AL,AL
                XOR VALUE_BX2,AX
            
            P2XOR107:
                cmp source_index,11
                jne P2XOR108
                
                mov AX,VALUE_CX2
                SUB AL,AL
                XOR VALUE_BX2,AX 
                
            P2XOR108:
                cmp source_index,12
                jne P2XOR109
                
                mov AX,VALUE_DX2
                SUB AL,AL
                XOR VALUE_BX2,AX 
            
            P2XOR109:
                cmp source_index,21
                jne P2XORD11
                
                mov AX,VALUE1
                XOR VALUE_BX2,AX             
      
      
      P2XORD11:   
       cmp Dest_Index,11
       jne P2XORD12
       
             P2XOR111:
                cmp source_index,5
                jne P2XOR112
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX2,AX
                
            P2XOR112:
                cmp source_index,6
                jne P2XOR113
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX2,AX
            
            P2XOR113:
                cmp source_index,7
                jne P2XOR114
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX2,AX 
                
           P2XOR114:
                cmp source_index,8
                jne P2XOR115
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_CX2,AX
                
           P2XOR115:
                cmp source_index,9
                jne P2XOR116
                
                mov AX,P2Value_AX2
                SUB AL,AL
                XOR VALUE_CX2,AX
                
            P2XOR116:
                cmp source_index,10
                jne P2XOR117
                
                mov AX,VALUE_BX2
                SUB AL,AL
                XOR VALUE_CX2,AX
            
            P2XOR117:
                cmp source_index,11
                jne P2XOR118
                
                mov AX,VALUE_CX2
                SUB AL,AL
                XOR VALUE_CX2,AX 
                
            P2XOR118:
                cmp source_index,12
                jne P2XOR119
                
                mov AX,VALUE_DX2
                SUB AL,AL
                XOR VALUE_CX2,AX
                
            P2XOR119:
                cmp source_index,21
                jne P2XORD12
                
                mov AX,VALUE1
                XOR VALUE_CX2,AX 
                
                    
      
      
      P2XORD12:   
       cmp Dest_Index,12
       jne P2XORD13
       
             P2XOR121:
                cmp source_index,5
                jne P2XOR122
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX2,AX
                
            P2XOR122:
                cmp source_index,6
                jne P2XOR123
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX2,AX
            
            P2XOR123:
                cmp source_index,7
                jne P2XOR124
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX2,AX 
                
            P2XOR124:
                cmp source_index,8
                jne P2XOR125
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                XOR VALUE_DX2,AX
                
           P2XOR125:
                cmp source_index,9
                jne P2XOR126
                
                mov AX,P2Value_AX2
                SUB AL,AL
                XOR VALUE_DX2,AX
                
           P2XOR126:
                cmp source_index,10
                jne P2XOR127
                
                mov AX,VALUE_BX2
                SUB AL,AL
                XOR VALUE_DX2,AX
            
            P2XOR127:
                cmp source_index,11
                jne P2XOR128
                
                mov AX,VALUE_CX2
                SUB AL,AL
                XOR VALUE_DX2,AX 
                
            P2XOR128:
                cmp source_index,12
                jne P2XOR129
                
                mov AX,VALUE_DX2
                SUB AL,AL
                XOR VALUE_DX2,AX     
            
            P2XOR129:
                cmp source_index,21
                jne P2XORD13
                
                mov AX,VALUE1
                XOR VALUE_DX2,AX
                
    P2XORD13:             
    cmp Dest_Index,13
    jne P2XORD14
    
            P2XOR131:
    
                cmp source_index,1
                jne P2XOR132
                
                mov ax,P2Value_AX2
                XOR VALUE_SI2,ax
                
                
            P2XOR132:
                cmp source_index,2
                jne P2XOR133
                
                mov ax,VALUE_BX2
                XOR VALUE_SI2,ax
                
            P2XOR133:
                cmp source_index,3
                jne P2XOR134
                
                mov ax,VALUE_CX2
                XOR VALUE_SI2,ax
                           
            P2XOR134:
                cmp source_index,4
                jne P2XOR135
                
                mov ax,VALUE_DX2
                XOR VALUE_SI2,ax
                
            P2XOR135:
                cmp source_index,13
                jne P2XOR136
                
                mov ax,VALUE_SI2
                XOR VALUE_SI2,ax
                
            P2XOR136:
                cmp source_index,14
                jne P2XOR137
                
                mov ax,VALUE_DI2
                XOR VALUE_SI2,ax   
                
            P2XOR137:
                cmp source_index,15
                jne P2XOR138 
                
                mov ax,VALUE_BP2
                XOR VALUE_SI2,ax
                
            P2XOR138:
                cmp source_index,16
                jne P2XOR139
                
                mov ax,VALUE_SP2
                XOR VALUE_SI2,ax
                
            P2XOR139:
                cmp source_index,21
                jne P2XOR14
                
                mov ax,VALUE1
                XOR VALUE_SI2,ax
        
       P2XORD14: 
                
       cmp Dest_Index,14
       jne P2XORD15
       
       
      
            P2XOR141:
    
                cmp source_index,1
                jne P2XOR142
                
                mov ax,P2Value_AX2
                XOR VALUE_DI2,ax
                
                
            P2XOR142:
                cmp source_index,2
                jne P2XOR143
                
                MOV ax,VALUE_BX2
                XOR VALUE_DI2,ax
                
            P2XOR143:
                cmp source_index,3
                jne P2XOR144
                
                mov ax,VALUE_CX2
                XOR VALUE_DI2,ax
                           
            P2XOR144:
                cmp source_index,4
                jne P2XOR145
                
                mov ax,VALUE_DX2
                XOR VALUE_DI2,ax
                
            P2XOR145:
                cmp source_index,13
                jne P2XOR146
                
                mov ax,VALUE_SI2
                XOR VALUE_DI2,ax
                
            P2XOR146:
                cmp source_index,14
                jne P2XOR147
                
                mov ax,VALUE_DI2
                XOR VALUE_DI2,ax   
                
            P2XOR147:
                cmp source_index,15
                jne P2XOR148 
                
                mov ax,VALUE_BP2
                XOR VALUE_DI2,ax
                
            P2XOR148:
                cmp source_index,16
                jne P2XOR149
                
                mov ax,VALUE_SP2
                XOR VALUE_DI2,ax
                
            P2XOR149:
                cmp source_index,21
                jne P2XORD15
                
                mov ax,VALUE1
                XOR VALUE_DI2,ax     
       
    P2XORD15:   
       cmp Dest_Index,15
       jne P2XORD16
    
            P2XOR151:
    
                cmp source_index,1
                jne P2XOR152
                
                mov ax,P2Value_AX2
                XOR VALUE_BP2,ax
                
                
            P2XOR152:
                cmp source_index,2
                jne P2XOR153
                
                mov ax,VALUE_BX2
                XOR VALUE_BP2,ax
                
            P2XOR153:
                cmp source_index,3
                jne P2XOR154
                
                mov ax,VALUE_CX2
                XOR VALUE_BP2,ax
                           
            P2XOR154:
                cmp source_index,4
                jne P2XOR155
                
                mov ax,VALUE_DX2
                XOR VALUE_BP2,ax
                
            P2XOR155:
                cmp source_index,13
                jne P2XOR156
                
                mov ax,VALUE_SI2
                XOR VALUE_BP2,ax
                
            P2XOR156:
                cmp source_index,14
                jne P2XOR157
                
                mov ax,VALUE_DI2
                XOR VALUE_BP2,ax   
                
            P2XOR157:
                cmp source_index,15
                jne P2XOR158 
                
                mov ax,VALUE_BP2
                XOR VALUE_BP2,ax
                
            P2XOR158:
                cmp source_index,16
                jne P2XOR159
                
                mov ax,VALUE_SP2
                XOR VALUE_BP2,ax
                
            P2XOR159:
                cmp source_index,21
                jne P2XORD16
                
                mov ax,VALUE1
                XOR VALUE_BP2,ax
                
     P2XORD16:   
       cmp Dest_Index,16
       jne P2TESTEE9
    
            P2XOR161:
    
                cmp source_index,1
                jne P2XOR162
                
                mov ax,P2Value_AX2
                OR VALUE_SP2,ax
                
                
            P2XOR162:
                cmp source_index,2
                jne P2XOR163
                
                mov ax,VALUE_BX2
                XOR VALUE_SP2,ax
                
            P2XOR163:
                cmp source_index,3
                jne P2XOR164
                
                mov ax,VALUE_CX2
                XOR VALUE_SP2,ax
                           
            P2XOR164:
                cmp source_index,4
                jne P2XOR165
                
                mov ax,VALUE_DX2
                XOR VALUE_SP2,ax
                
            P2XOR165:
                cmp source_index,13
                jne P2XOR166
                
                mov ax,VALUE_SI2
                XOR VALUE_SP2,ax
                
            P2XOR166:
                cmp source_index,14
                jne P2XOR167
                
                mov ax,VALUE_DI2
                XOR VALUE_SP2,ax   
                
            P2XOR167:
                cmp source_index,15
                jne P2XOR168 
                
                mov ax,VALUE_BP2
                XOR VALUE_SP2,ax
                
            P2XOR168:
                cmp source_index,16
                jne P2XOR169
                
                mov ax,VALUE_SP2
                XOR VALUE_SP2,ax
                
            P2XOR169:
                cmp source_index,21
                jne P2TESTEE9
                
                mov ax,VALUE1
                XOR VALUE_SP2,ax               
                        
                        
             P2TESTEE9: 
                        
              
        
        
        
        
        
        
        RET
        P2XOR_INST ENDP                 
P2OR_INST PROC NEAR
        
       
          
          CMP INST_INDEX,10
           JNE P2TESTEE10  
         
            cmp Dest_Index,1
            jne P2OR2
            
                    P2OR11:
            
                        cmp source_index,1
                        jne P2OR12
                        
                        mov ax,P2Value_AX2
                        OR P2Value_AX2,ax
                        
                        
                    P2OR12:
                        cmp source_index,2
                        jne P2OR13
                        
                        mov ax,VALUE_BX2
                        OR P2Value_AX2,ax
                        
                    P2OR13:
                        cmp source_index,3
                        jne P2OR14
                        
                        mov ax,VALUE_CX2
                        OR P2Value_AX2,ax
                                   
                    P2OR14:
                        cmp source_index,4
                        jne P2OR15
                        
                        mov ax,VALUE_DX2
                        OR P2Value_AX2,ax
                        
                    P2OR15:
                        cmp source_index,13
                        jne P2OR16
                        
                        mov ax,VALUE_SI2
                        OR P2Value_AX2,ax
                        
                    P2OR16:
                        cmp source_index,14
                        jne P2OR17
                        
                        mov ax,VALUE_DI2
                        OR P2Value_AX2,ax   
                        
                    P2OR17:
                        cmp source_index,15
                        jne P2OR18 
                        
                        mov ax,VALUE_SP2
                        OR P2Value_AX2,ax
                        
                    P2OR18:
                        cmp source_index,16
                        jne P2OR19
                        
                        mov ax,VALUE_BP2
                        OR P2Value_AX2,ax
                        
                    P2OR19:
                        cmp source_index,21
                        jne P2OR2
                        
                        mov ax,VALUE1
                        OR P2Value_AX2,ax
                
               P2OR2: 
                        
               cmp Dest_Index,2
               jne P2OR3
               
               
              
                    P2OR21:
            
                        cmp source_index,1
                        jne P2OR22
                        
                        mov ax,P2Value_AX2
                        OR VALUE_BX2,ax
                        
                        
                    P2OR22:
                        cmp source_index,2
                        jne P2OR23
                        
                        MOV ax,VALUE_BX2
                        OR VALUE_BX2,ax
                        
                    P2OR23:
                        cmp source_index,3
                        jne P2OR24
                        
                        mov ax,VALUE_CX2
                        OR VALUE_BX2,ax
                                   
                    P2OR24:
                        cmp source_index,4
                        jne P2OR25
                        
                        mov ax,VALUE_DX2
                        OR VALUE_BX2,ax
                        
                    P2OR25:
                        cmp source_index,13
                        jne P2OR26
                        
                        mov ax,VALUE_SI2
                        OR VALUE_BX2,ax
                        
                    P2OR26:
                        cmp source_index,14
                        jne P2OR27
                        
                        mov ax,VALUE_DI2
                        OR VALUE_BX2,ax   
                        
                    P2OR27:
                        cmp source_index,15
                        jne P2OR28 
                        
                        mov ax,VALUE_SP2
                        OR VALUE_BX2,ax
                        
                    P2OR28:
                        cmp source_index,16
                        jne P2OR29
                        
                        mov ax,VALUE_BP2
                        OR VALUE_BX2,ax
                        
                    P2OR29:
                        cmp source_index,21
                        jne P2OR3
                        
                        mov ax,VALUE1
                        OR VALUE_BX2,ax     
               
            P2OR3:   
               cmp Dest_Index,3
               jne P2OR4
            
                    P2OR31:
            
                        cmp source_index,1
                        jne P2OR32
                        
                        mov ax,P2Value_AX2
                        OR VALUE_CX2,ax
                        
                        
                    P2OR32:
                        cmp source_index,2
                        jne P2OR33
                        
                        mov ax,VALUE_BX2
                        OR VALUE_CX2,ax
                        
                    P2OR33:
                        cmp source_index,3
                        jne P2OR34
                        
                        mov ax,VALUE_CX2
                        OR VALUE_CX2,ax
                                   
                    P2OR34:
                        cmp source_index,4
                        jne P2OR35
                        
                        mov ax,VALUE_DX2
                        OR VALUE_CX2,ax
                        
                    P2OR35:
                        cmp source_index,13
                        jne P2OR36
                        
                        mov ax,VALUE_SI2
                        OR VALUE_CX2,ax
                        
                    P2OR36:
                        cmp source_index,14
                        jne P2OR37
                        
                        mov ax,VALUE_DI2
                        OR VALUE_CX2,ax   
                        
                    P2OR37:
                        cmp source_index,15
                        jne P2OR38 
                        
                        mov ax,VALUE_SP2
                        OR VALUE_CX2,ax
                        
                    P2OR38:
                        cmp source_index,16
                        jne P2OR39
                        
                        mov ax,VALUE_BP2
                        OR VALUE_CX2,ax
                        
                    P2OR39:
                        cmp source_index,21
                        jne P2OR4
                        
                        mov ax,VALUE1
                        OR VALUE_CX2,ax
                        
             P2OR4:   
               cmp Dest_Index,4
               jne P2OR5
            
                    P2OR41:
            
                        cmp source_index,1
                        jne P2OR42
                        
                        mov ax,P2Value_AX2
                        OR VALUE_DX2,ax
                        
                        
                    P2OR42:
                        cmp source_index,2
                        jne P2OR43
                        
                        mov ax,VALUE_BX2
                        OR VALUE_DX2,ax
                        
                    P2OR43:
                        cmp source_index,3
                        jne P2OR44
                        
                        mov ax,VALUE_CX2
                        OR VALUE_DX2,ax
                                   
                    P2OR44:
                        cmp source_index,4
                        jne P2OR45
                        
                        mov ax,VALUE_DX2
                        OR VALUE_DX2,ax
                        
                    P2OR45:
                        cmp source_index,13
                        jne P2OR46
                        
                        mov ax,VALUE_SI2
                        OR VALUE_DX2,ax
                        
                    P2OR46:
                        cmp source_index,14
                        jne P2OR47
                        
                        mov ax,VALUE_DI2
                        OR VALUE_DX2,ax   
                        
                    P2OR47:
                        cmp source_index,15
                        jne P2OR48 
                        
                        mov ax,VALUE_SP2
                        OR VALUE_DX2,ax
                        
                    P2OR48:
                        cmp source_index,16
                        jne P2OR49
                        
                        mov ax,VALUE_BP2
                        OR VALUE_DX2,ax
                        
                    P2OR49:
                        cmp source_index,21
                        jne P2OR5
                        
                        mov ax,VALUE1
                        OR VALUE_DX2,ax
                        
                        
              P2OR5:   
               cmp Dest_Index,5
               jne P2OR6
               
       
            P2OR51:
                cmp source_index,5
                jne P2OR52
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                OR P2Value_AX2,AX
                
            P2OR52:
                cmp source_index,6
                jne P2OR53
                
                mov AX,VALUE_BX2
                SUB AH,AH
                OR P2Value_AX2,AX
            
            P2OR53:
                cmp source_index,7
                jne P2OR54
                
                mov AX,VALUE_CX2
                SUB AH,AH
                OR P2Value_AX2,AX 
                
            P2OR54:
                cmp source_index,8
                jne P2OR55
                
                mov AX,VALUE_DX2
                SUB AH,AH
                OR P2Value_AX2,AX
                
           P2OR55:
                cmp source_index,9
                jne P2OR56
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                OR P2Value_AX2,AX
                
            P2OR56:
                cmp source_index,10
                jne P2OR57
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                OR P2Value_AX2,AX
            
            P2OR57:
                cmp source_index,11
                jne P2OR58
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                OR P2Value_AX2,AX 
                
            P2OR58:
                cmp source_index,12
                jne P2OR59
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                OR P2Value_AX2,AX
                
            P2OR59:
                cmp source_index,21
                jne P2OR6
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR P2Value_AX2,AX    
                  
                
       P2OR6:   
       cmp Dest_Index,6
       jne P2OR7
       
            P2OR61:
                cmp source_index,5
                jne P2OR62
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                OR P2Value_AX2,AX
                
            P2OR62:
                cmp source_index,6
                jne P2OR63
                
                mov AX,VALUE_BX2
                SUB AH,AH
                OR VALUE_BX2,AX
            
            P2OR63:
                cmp source_index,7
                jne P2OR64
                
                mov AX,VALUE_CX2
                SUB AH,AH
                OR VALUE_BX2,AX 
                
            P2OR64:
                cmp source_index,8
                jne P2OR65
                
                mov AX,VALUE_DX2
                SUB AH,AH
                OR VALUE_BX2,AX
                
           P2OR65:
                cmp source_index,9
                jne P2OR66
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX2,AX
                
            P2OR66:
                cmp source_index,10
                jne P2OR67
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                OR VALUE_BX2,AX
            
            P2OR67:
                cmp source_index,11
                jne P2OR68
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX2,AX 
                
            P2OR68:
                cmp source_index,12
                jne P2OR69
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_BX2,AX
                
            P2OR69:
                cmp source_index,21
                jne P2OR7
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_BX2,AX      
                
                
                
       P2OR7:   
       cmp Dest_Index,7
       jne P2OR8
       
            P2OR71:
                cmp source_index,5
                jne P2OR72
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                OR VALUE_CX2,AX
                
            P2OR72:
                cmp source_index,6
                jne P2OR73
                
                mov AX,VALUE_BX2
                SUB AH,AH
                OR VALUE_CX2,AX
            
            P2OR73:
                cmp source_index,7
                jne P2OR74
                
                mov AX,VALUE_CX2
                SUB AH,AH
                OR VALUE_CX2,AX 
                
            P2OR74:
                cmp source_index,8
                jne P2OR75
                
                mov AX,VALUE_DX2
                SUB AH,AH
                OR VALUE_CX2,AX
                
           P2OR75:
                cmp source_index,9
                jne P2OR76
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX2,AX
                
            P2OR76:
                cmp source_index,10
                jne P2OR77
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                OR VALUE_CX2,AX
            
            P2OR77:
                cmp source_index,11
                jne P2OR78
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX2,AX 
                
            P2OR78:
                cmp source_index,12
                jne P2OR79
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_CX2,AX 
                
            P2OR79:
                cmp source_index,21
                jne P2OR8
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_CX2,AX
                           
                
      P2OR8:   
       cmp Dest_Index,8
       jne P2OR9
       
             P2OR81:
                cmp source_index,5
                jne P2OR82
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                OR VALUE_DX2,AX
                
            P2OR82:
                cmp source_index,6
                jne P2OR83
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                OR VALUE_DX2,AX
            
            P2OR83:
                cmp source_index,7
                jne P2OR84
                
                mov AX,VALUE_CX2
                SUB AH,AH
                OR VALUE_DX2,AX 
                
            P2OR84:
                cmp source_index,8
                jne P2OR85
                
                mov AX,VALUE_DX2
                SUB AH,AH
                OR VALUE_DX2,AX
                
            P2OR85:
                cmp source_index,9
                jne P2OR86
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX2,AX
                
            P2OR86:
                cmp source_index,10
                jne P2OR87
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                OR VALUE_DX2,AX
            
            P2OR87:
                cmp source_index,11
                jne P2OR88
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX2,AX 
                
            P2OR88:
                cmp source_index,12
                jne P2OR89
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                OR VALUE_DX2,AX 
                
                
            P2OR89:
                cmp source_index,21
                jne P2OR9
                
                mov AX,VALUE1
                SUB AL,AL
                SHR AX,8
                
                OR VALUE_DX2,AX
      
      
      P2OR9:   
       cmp Dest_Index,9
       jne P2OR10
       
             P2OR91:
                cmp source_index,5
                jne P2OR92
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                OR P2Value_AX2,AX
                
            P2OR92:
                cmp source_index,6
                jne P2OR93
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                OR P2Value_AX2,AX
            
            P2OR93:
                cmp source_index,7
                jne P2OR94
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                OR P2Value_AX2,AX 
                
            P2OR94:
                cmp source_index,8
                jne P2OR95
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                OR P2Value_AX2,AX
                
           P2OR95:
                cmp source_index,9
                jne P2OR96
                
                mov AX,P2Value_AX2
                SUB AL,AL
                OR P2Value_AX2,AX
                
            P2OR96:
                cmp source_index,10
                jne P2OR97
                
                mov AX,VALUE_BX2
                SUB AL,AL
                OR P2Value_AX2,AX
            
            P2OR97:
                cmp source_index,11
                jne P2OR98
                
                mov AX,VALUE_CX2
                SUB AL,AL
                OR P2Value_AX2,AX 
                
            P2OR98:
                cmp source_index,12
                jne P2OR99
                
                mov AX,VALUE_DX2
                SUB AL,AL
                OR P2Value_AX2,AX
                
            P2OR99:
                cmp source_index,21
                jne P2OR10
                
                mov AX,VALUE1
                OR P2Value_AX2,AX 
                
                    
      
      
      P2OR10:   
       cmp Dest_Index,10
       jne P2ORD11
       
            P2OR101:
                cmp source_index,5
                jne P2OR102
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX2,AX
                
            P2OR102:
                cmp source_index,6
                jne P2OR103
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX2,AX
            
            P2OR103:
                cmp source_index,7
                jne P2OR104
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX2,AX 
                
            P2OR104:
                cmp source_index,8
                jne P2OR105
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_BX2,AX
                
           P2OR105:
                cmp source_index,9
                jne P2OR106
                
                mov AX,P2Value_AX2
                SUB AL,AL
                OR VALUE_BX2,AX
                
            P2OR106:
                cmp source_index,10
                jne P2OR107
                
                mov AX,VALUE_BX2
                SUB AL,AL
                OR VALUE_BX2,AX
            
            P2OR107:
                cmp source_index,11
                jne P2OR108
                
                mov AX,VALUE_CX2
                SUB AL,AL
                OR VALUE_BX2,AX 
                
            P2OR108:
                cmp source_index,12
                jne P2OR109
                
                mov AX,VALUE_DX2
                SUB AL,AL
                OR VALUE_BX2,AX 
            
            P2OR109:
                cmp source_index,21
                jne P2ORD11
                
                mov AX,VALUE1
                OR VALUE_BX2,AX             
      
      
      P2ORD11:   
       cmp Dest_Index,11
       jne P2ORD12
       
             P2OR111:
                cmp source_index,5
                jne P2OR112
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX2,AX
                
            P2OR112:
                cmp source_index,6
                jne P2OR113
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX2,AX
            
            P2OR113:
                cmp source_index,7
                jne P2OR114
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX2,AX 
                
           P2OR114:
                cmp source_index,8
                jne P2OR115
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_CX2,AX
                
           P2OR115:
                cmp source_index,9
                jne P2OR116
                
                mov AX,P2Value_AX2
                SUB AL,AL
                OR VALUE_CX2,AX
                
            P2OR116:
                cmp source_index,10
                jne P2OR117
                
                mov AX,VALUE_BX2
                SUB AL,AL
                OR VALUE_CX2,AX
            
            P2OR117:
                cmp source_index,11
                jne P2OR118
                
                mov AX,VALUE_CX2
                SUB AL,AL
                OR VALUE_CX2,AX 
                
            P2OR118:
                cmp source_index,12
                jne P2OR119
                
                mov AX,VALUE_DX2
                SUB AL,AL
                OR VALUE_CX2,AX
                
            P2OR119:
                cmp source_index,21
                jne P2ORD12
                
                mov AX,VALUE1
                OR VALUE_CX2,AX 
                
                    
      
      
      P2ORD12:   
       cmp Dest_Index,12
       jne P2ORD13
       
             P2OR121:
                cmp source_index,5
                jne P2OR122
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX2,AX
                
            P2OR122:
                cmp source_index,6
                jne P2OR123
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX2,AX
            
            P2OR123:
                cmp source_index,7
                jne P2OR124
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX2,AX 
                
            P2OR124:
                cmp source_index,8
                jne P2OR125
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                OR VALUE_DX2,AX
                
           P2OR125:
                cmp source_index,9
                jne P2OR126
                
                mov AX,P2Value_AX2
                SUB AL,AL
                OR VALUE_DX2,AX
                
           P2OR126:
                cmp source_index,10
                jne P2OR127
                
                mov AX,VALUE_BX2
                SUB AL,AL
                OR VALUE_DX2,AX
            
            P2OR127:
                cmp source_index,11
                jne P2OR128
                
                mov AX,VALUE_CX2
                SUB AL,AL
                OR VALUE_DX2,AX 
                
            P2OR128:
                cmp source_index,12
                jne P2OR129
                
                mov AX,VALUE_DX2
                SUB AL,AL
                OR VALUE_DX2,AX     
            
            P2OR129:
                cmp source_index,21
                jne P2ORD13
                
                mov AX,VALUE1
                OR VALUE_DX2,AX
                
    P2ORD13:             
    cmp Dest_Index,13
    jne P2ORD14
    
            P2OR131:
    
                cmp source_index,1
                jne P2OR132
                
                mov ax,P2Value_AX2
                OR VALUE_SI2,ax
                
                
            P2OR132:
                cmp source_index,2
                jne P2OR133
                
                mov ax,VALUE_BX2
                OR VALUE_SI2,ax
                
            P2OR133:
                cmp source_index,3
                jne P2OR134
                
                mov ax,VALUE_CX2
                OR VALUE_SI2,ax
                           
            P2OR134:
                cmp source_index,4
                jne P2OR135
                
                mov ax,VALUE_DX2
                OR VALUE_SI2,ax
                
            P2OR135:
                cmp source_index,13
                jne P2OR136
                
                mov ax,VALUE_SI2
                OR VALUE_SI2,ax
                
            P2OR136:
                cmp source_index,14
                jne P2OR137
                
                mov ax,VALUE_DI2
                OR VALUE_SI2,ax   
                
            P2OR137:
                cmp source_index,15
                jne P2OR138 
                
                mov ax,VALUE_BP2
                OR VALUE_SI2,ax
                
            P2OR138:
                cmp source_index,16
                jne P2OR139
                
                mov ax,VALUE_SP2
                OR VALUE_SI2,ax
                
            P2OR139:
                cmp source_index,21
                jne P2OR14
                
                mov ax,VALUE1
                OR VALUE_SI2,ax
        
       P2ORD14: 
                
       cmp Dest_Index,14
       jne P2ORD15
       
       
      
            P2OR141:
    
                cmp source_index,1
                jne P2OR142
                
                mov ax,P2Value_AX2
                OR VALUE_DI2,ax
                
                
            P2OR142:
                cmp source_index,2
                jne P2OR143
                
                MOV ax,VALUE_BX2
                OR VALUE_DI2,ax
                
            P2OR143:
                cmp source_index,3
                jne P2OR144
                
                mov ax,VALUE_CX2
                OR VALUE_DI2,ax
                           
            P2OR144:
                cmp source_index,4
                jne P2OR145
                
                mov ax,VALUE_DX2
                OR VALUE_DI2,ax
                
            P2OR145:
                cmp source_index,13
                jne P2OR146
                
                mov ax,VALUE_SI2
                OR VALUE_DI2,ax
                
            P2OR146:
                cmp source_index,14
                jne P2OR147
                
                mov ax,VALUE_DI2
                OR VALUE_DI2,ax   
                
            P2OR147:
                cmp source_index,15
                jne P2OR148 
                
                mov ax,VALUE_BP2
                OR VALUE_DI2,ax
                
            P2OR148:
                cmp source_index,16
                jne P2OR149
                
                mov ax,VALUE_SP2
                OR VALUE_DI2,ax
                
            P2OR149:
                cmp source_index,21
                jne P2ORD15
                
                mov ax,VALUE1
                OR VALUE_DI2,ax     
       
    P2ORD15:   
       cmp Dest_Index,15
       jne P2ORD16
    
            P2OR151:
    
                cmp source_index,1
                jne P2OR152
                
                mov ax,P2Value_AX2
                OR VALUE_BP2,ax
                
                
            P2OR152:
                cmp source_index,2
                jne P2OR153
                
                mov ax,VALUE_BX2
                OR VALUE_BP2,ax
                
            P2OR153:
                cmp source_index,3
                jne P2OR154
                
                mov ax,VALUE_CX2
                OR VALUE_BP2,ax
                           
            P2OR154:
                cmp source_index,4
                jne P2OR155
                
                mov ax,VALUE_DX2
                OR VALUE_BP2,ax
                
            P2OR155:
                cmp source_index,13
                jne P2OR156
                
                mov ax,VALUE_SI2
                OR VALUE_BP2,ax
                
            P2OR156:
                cmp source_index,14
                jne P2OR157
                
                mov ax,VALUE_DI2
                OR VALUE_BP2,ax   
                
            P2OR157:
                cmp source_index,15
                jne P2OR158 
                
                mov ax,VALUE_BP2
                OR VALUE_BP2,ax
                
            P2OR158:
                cmp source_index,16
                jne P2OR159
                
                mov ax,VALUE_SP2
                OR VALUE_BP2,ax
                
            P2OR159:
                cmp source_index,21
                jne P2ORD16
                
                mov ax,VALUE1
                OR VALUE_BP2,ax
                
     P2ORD16:   
       cmp Dest_Index,16
       jne P2TESTEE10
    
            P2OR161:
    
                cmp source_index,1
                jne P2OR162
                
                mov ax,P2Value_AX2
                OR VALUE_SP2,ax
                
                
            P2OR162:
                cmp source_index,2
                jne P2OR163
                
                mov ax,VALUE_BX2
                OR VALUE_SP2,ax
                
            P2OR163:
                cmp source_index,3
                jne P2OR164
                
                mov ax,VALUE_CX2
                OR VALUE_SP2,ax
                           
            P2OR164:
                cmp source_index,4
                jne P2OR165
                
                mov ax,VALUE_DX2
                OR VALUE_SP2,ax
                
            P2OR165:
                cmp source_index,13
                jne P2OR166
                
                mov ax,VALUE_SI2
                OR VALUE_SP2,ax
                
            P2OR166:
                cmp source_index,14
                jne P2OR167
                
                mov ax,VALUE_DI2
                OR VALUE_SP2,ax   
                
            P2OR167:
                cmp source_index,15
                jne P2OR168 
                
                mov ax,VALUE_BP2
                OR VALUE_SP2,ax
                
            P2OR168:
                cmp source_index,16
                jne P2OR169
                
                mov ax,VALUE_SP2
                OR VALUE_SP2,ax
                
            P2OR169:
                cmp source_index,21
                jne P2TESTEE10
                
                mov ax,VALUE1
                OR VALUE_SP2,ax               
                        
                        
             P2TESTEE10: 
                        
              
        
        
        
        
        
        
        RET
        P2OR_INST ENDP       
P2AND_INST PROC NEAR
        
       
          
          CMP INST_INDEX,11
           JNE P2TESTEE11  
         
            cmp Dest_Index,1
            jne P2AND2
            
                    P2AND11:
            
                        cmp source_index,1
                        jne P2AND12
                        
                        mov ax,P2Value_AX2
                        AND P2Value_AX2,ax
                        
                        
                    P2AND12:
                        cmp source_index,2
                        jne P2AND13
                        
                        mov ax,VALUE_BX2
                        AND P2Value_AX2,ax
                        
                    P2AND13:
                        cmp source_index,3
                        jne P2AND14
                        
                        mov ax,VALUE_CX2
                        AND P2Value_AX2,ax
                                   
                    P2AND14:
                        cmp source_index,4
                        jne P2AND15
                        
                        mov ax,VALUE_DX2
                        AND P2Value_AX2,ax
                        
                    P2AND15:
                        cmp source_index,13
                        jne P2AND16
                        
                        mov ax,VALUE_SI2
                        AND P2Value_AX2,ax
                        
                    P2AND16:
                        cmp source_index,14
                        jne P2AND17
                        
                        mov ax,VALUE_DI2
                        AND P2Value_AX2,ax   
                        
                    P2AND17:
                        cmp source_index,15
                        jne P2AND18 
                        
                        mov ax,VALUE_SP2
                        AND P2Value_AX2,ax
                        
                    P2AND18:
                        cmp source_index,16
                        jne P2AND19
                        
                        mov ax,VALUE_BP2
                        AND P2Value_AX2,ax
                        
                    P2AND19:
                        cmp source_index,21
                        jne P2AND2
                        
                        mov ax,VALUE1
                        AND P2Value_AX2,ax
                
               P2AND2: 
                        
               cmp Dest_Index,2
               jne P2AND3
               
               
              
                    P2AND21:
            
                        cmp source_index,1
                        jne P2AND22
                        
                        mov ax,P2Value_AX2
                        AND VALUE_BX2,ax
                        
                        
                    P2AND22:
                        cmp source_index,2
                        jne P2AND23
                        
                        MOV ax,VALUE_BX2
                        AND VALUE_BX2,ax
                        
                    P2AND23:
                        cmp source_index,3
                        jne P2AND24
                        
                        mov ax,VALUE_CX2
                        AND VALUE_BX2,ax
                                   
                    P2AND24:
                        cmp source_index,4
                        jne P2AND25
                        
                        mov ax,VALUE_DX2
                        AND VALUE_BX2,ax
                        
                    P2AND25:
                        cmp source_index,13
                        jne P2AND26
                        
                        mov ax,VALUE_SI2
                        AND VALUE_BX2,ax
                        
                    P2AND26:
                        cmp source_index,14
                        jne P2AND27
                        
                        mov ax,VALUE_DI2
                        AND VALUE_BX2,ax   
                        
                    P2AND27:
                        cmp source_index,15
                        jne P2AND28 
                        
                        mov ax,VALUE_SP2
                        AND VALUE_BX2,ax
                        
                    P2AND28:
                        cmp source_index,16
                        jne P2AND29
                        
                        mov ax,VALUE_BP2
                        AND VALUE_BX2,ax
                        
                    P2AND29:
                        cmp source_index,21
                        jne P2AND3
                        
                        mov ax,VALUE1
                        AND VALUE_BX2,ax     
               
            P2AND3:   
               cmp Dest_Index,3
               jne P2AND4
            
                    P2AND31:
            
                        cmp source_index,1
                        jne P2AND32
                        
                        mov ax,P2Value_AX2
                        AND VALUE_CX2,ax
                        
                        
                    P2AND32:
                        cmp source_index,2
                        jne P2AND33
                        
                        mov ax,VALUE_BX2
                        AND VALUE_CX2,ax
                        
                    P2AND33:
                        cmp source_index,3
                        jne P2AND34
                        
                        mov ax,VALUE_CX2
                        AND VALUE_CX2,ax
                                   
                    P2AND34:
                        cmp source_index,4
                        jne P2AND35
                        
                        mov ax,VALUE_DX2
                        AND VALUE_CX2,ax
                        
                    P2AND35:
                        cmp source_index,13
                        jne P2AND36
                        
                        mov ax,VALUE_SI2
                        AND VALUE_CX2,ax
                        
                    P2AND36:
                        cmp source_index,14
                        jne P2AND37
                        
                        mov ax,VALUE_DI2
                        AND VALUE_CX2,ax   
                        
                    P2AND37:
                        cmp source_index,15
                        jne P2AND38 
                        
                        mov ax,VALUE_SP2
                        AND VALUE_CX2,ax
                        
                    P2AND38:
                        cmp source_index,16
                        jne P2AND39
                        
                        mov ax,VALUE_BP2
                        AND VALUE_CX2,ax
                        
                    P2AND39:
                        cmp source_index,21
                        jne P2AND4
                        
                        mov ax,VALUE1
                        AND VALUE_CX2,ax
                        
             P2AND4:   
               cmp Dest_Index,4
               jne P2AND5
            
                    P2AND41:
            
                        cmp source_index,1
                        jne P2AND42
                        
                        mov ax,P2Value_AX2
                        AND VALUE_DX2,ax
                        
                        
                    P2AND42:
                        cmp source_index,2
                        jne P2AND43
                        
                        mov ax,VALUE_BX2
                        AND VALUE_DX2,ax
                        
                    P2AND43:
                        cmp source_index,3
                        jne P2AND44
                        
                        mov ax,VALUE_CX2
                        AND VALUE_DX2,ax
                                   
                    P2AND44:
                        cmp source_index,4
                        jne P2AND45
                        
                        mov ax,VALUE_DX2
                        AND VALUE_DX2,ax
                        
                    P2AND45:
                        cmp source_index,13
                        jne P2AND46
                        
                        mov ax,VALUE_SI2
                        AND VALUE_DX2,ax
                        
                    P2AND46:
                        cmp source_index,14
                        jne P2AND47
                        
                        mov ax,VALUE_DI2
                        AND VALUE_DX2,ax   
                        
                    P2AND47:
                        cmp source_index,15
                        jne P2AND48 
                        
                        mov ax,VALUE_SP2
                        AND VALUE_DX2,ax
                        
                    P2AND48:
                        cmp source_index,16
                        jne P2AND49
                        
                        mov ax,VALUE_BP2
                        AND VALUE_DX2,ax
                        
                    P2AND49:
                        cmp source_index,21
                        jne P2AND5
                        
                        mov ax,VALUE1
                        AND VALUE_DX2,ax
                        
                        
              P2AND5:   
               cmp Dest_Index,5
               jne P2AND6
               
       
            P2AND51:
                cmp source_index,5
                jne P2AND52
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND52:
                cmp source_index,6
                jne P2AND53
                
                mov AX,VALUE_BX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
            
            P2AND53:
                cmp source_index,7
                jne P2AND54
                
                mov AX,VALUE_CX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX 
                
            P2AND54:
                cmp source_index,8
                jne P2AND55
                
                mov AX,VALUE_DX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
           P2AND55:
                cmp source_index,9
                jne P2AND56
                
                mov AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BL,BL
                SHR AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND56:
                cmp source_index,10
                jne P2AND57
                
                mov AX,VALUE_BX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BL,BL
                SHR AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
            
            P2AND57:
                cmp source_index,11
                jne P2AND58
                
                mov AX,VALUE_CX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BL,BL
                SHR AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX 
                
            P2AND58:
                cmp source_index,12
                jne P2AND59
                
                mov AX,VALUE_DX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BL,BL
                SHR AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND59:
                cmp source_index,21
                jne P2AND6
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX    
                  
                
       P2AND6:   
       cmp Dest_Index,6
       jne P2AND7
       
            P2AND61:
                cmp source_index,5
                jne P2AND62
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
            P2AND62:
                cmp source_index,6
                jne P2AND63
                
                mov AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
            
            P2AND63:
                cmp source_index,7
                jne P2AND64
                
                mov AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
                
            P2AND64:
                cmp source_index,8
                jne P2AND65
                
                mov AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
           P2AND65:
                cmp source_index,9
                jne P2AND66
                
                mov AX,P2Value_AX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
            P2AND66:
                cmp source_index,10
                jne P2AND67
                
                mov AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
            
            P2AND67:
                cmp source_index,11
                jne P2AND68
                
                mov AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
                
            P2AND68:
                cmp source_index,12
                jne P2AND69
                
                mov AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
            P2AND69:
                cmp source_index,21
                jne P2AND7
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX      
                
                
                
       P2AND7:   
       cmp Dest_Index,7
       jne P2AND8
       
            P2AND71:
                cmp source_index,5
                jne P2AND72
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
            P2AND72:
                cmp source_index,6
                jne P2AND73
                
                mov AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
            
            P2AND73:
                cmp source_index,7
                jne P2AND74
                
                mov AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
                
            P2AND74:
                cmp source_index,8
                jne P2AND75
                
                mov AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
           P2AND75:
                cmp source_index,9
                jne P2AND76
                
                mov AX,P2Value_AX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
            P2AND76:
                cmp source_index,10
                jne P2AND77
                
                mov AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
            
            P2AND77:
                cmp source_index,11
                jne P2AND78
                
                mov AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX 
                
            P2AND78:
                cmp source_index,12
                jne P2AND79
                
                mov AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX 
                
            P2AND79:
                cmp source_index,21
                jne P2AND8
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                           
                
      P2AND8:   
       cmp Dest_Index,8
       jne P2AND9
       
             P2AND81:
                cmp source_index,5
                jne P2AND82
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
            P2AND82:
                cmp source_index,6
                jne P2AND83
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
            
            P2AND83:
                cmp source_index,7
                jne P2AND84
                
                mov AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
            P2AND84:
                cmp source_index,8
                jne P2AND85
                
                mov AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
            P2AND85:
                cmp source_index,9
                jne P2AND86
                
                mov AX,P2Value_AX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
            P2AND86:
                cmp source_index,10
                jne P2AND87
                
                mov AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
            
            P2AND87:
                cmp source_index,11
                jne P2AND88
                
                mov AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
            P2AND88:
                cmp source_index,12
                jne P2AND89
                
                mov AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BL,BL
                SHR AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
                
            P2AND89:
                cmp source_index,21
                jne P2AND9
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
      
      
      P2AND9:   
       cmp Dest_Index,9
       jne P2AND10
       
             P2AND91:
                cmp source_index,5
                jne P2AND92
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BH,BH
                SHL AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND92:
                cmp source_index,6
                jne P2AND93
                       
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BH,BH
                SHL AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
            
            P2AND93:
                cmp source_index,7
                jne P2AND94
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BH,BH
                SHL AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX 
                
            P2AND94:
                cmp source_index,8
                jne P2AND95
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BH,BH
                SHL AX,8
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
           P2AND95:
                cmp source_index,9
                jne P2AND96
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BL,BL
                
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND96:
                cmp source_index,10
                jne P2AND97
                
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BL,BL
                
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
            
            P2AND97:
                cmp source_index,11
                jne P2AND98
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BL,BL
                
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX 
                
            P2AND98:
                cmp source_index,12
                jne P2AND99
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,P2Value_AX2
                SUB BL,BL
                
                AND P2Value_AX2,AX
                ADD P2Value_AX2,BX
                
            P2AND99:
                cmp source_index,21
                jne P2AND10
                
                mov AX,VALUE1
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
                    
      
      
      P2AND10:   
       cmp Dest_Index,10
       jne P2ANDD11
       
            P2AND101:
                cmp source_index,5
                jne P2AND102
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
            P2AND102:
                cmp source_index,6
                jne P2AND103
                       
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
            
            P2AND103:
                cmp source_index,7
                jne P2AND104
                
               mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
                
            P2AND104:
                cmp source_index,8
                jne P2AND105
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
           P2AND105:
                cmp source_index,9
                jne P2AND106
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BL,BL
                
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
                
            P2AND106:
                cmp source_index,10
                jne P2AND107
                
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BL,BL
                
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX
            
            P2AND107:
                cmp source_index,11
                jne P2AND108
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BL,BL
                
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
                
            P2AND108:
                cmp source_index,12
                jne P2AND109
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_BX2
                SUB BL,BL
                
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX 
            
            P2AND109:
                cmp source_index,21
                jne P2ANDD11
               
                mov AX,VALUE1 
                mov BX,VALUE_BX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_BX2,AX
                ADD VALUE_BX2,BX             
      
      
      P2ANDD11:   
       cmp Dest_Index,11
       jne P2ANDD12
       
             P2AND111:
                cmp source_index,5
                jne P2AND112
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
            P2AND112:
                cmp source_index,6
                jne P2AND113
                       
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
            
            P2AND113:
                cmp source_index,7
                jne P2AND114
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX 
                
           P2AND114:
                cmp source_index,8
                jne P2AND115
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
           P2AND115:
                cmp source_index,9
                jne P2AND116
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
            P2AND116:
                cmp source_index,10
                jne P2AND117
                
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
            
            P2AND117:
                cmp source_index,11
                jne P2AND118
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX 
                
            P2AND118:
                cmp source_index,12
                jne P2AND119
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_CX2
                SUB BL,BL
                
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX
                
            P2AND119:
                cmp source_index,21
                jne P2ANDD12
                
                mov AX,VALUE1 
                mov BX,VALUE_CX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_CX2,AX
                ADD VALUE_CX2,BX 
                
                    
      
      
      P2ANDD12:   
       cmp Dest_Index,12
       jne P2ANDD13
       
             P2AND121:
                cmp source_index,5
                jne P2AND122
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
            P2AND122:
                cmp source_index,6
                jne P2AND123
                       
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
            
            P2AND123:
                cmp source_index,7
                jne P2AND124
                
               mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
            P2AND124:
                cmp source_index,8
                jne P2AND125
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
           P2AND125:
                cmp source_index,9
                jne P2AND126
                
                mov AX,P2Value_AX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BL,BL
                
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
           P2AND126:
                cmp source_index,10
                jne P2AND127
                
                mov AX,VALUE_BX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BL,BL
                
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
            
            P2AND127:
                cmp source_index,11
                jne P2AND128
                
                mov AX,VALUE_CX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BL,BL
                
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX 
                
            P2AND128:
                cmp source_index,12
                jne P2AND129
                
                mov AX,VALUE_DX2
                SUB AH,AH 
                mov BX,VALUE_DX2
                SUB BL,BL
                
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX     
            
            P2AND129:
                cmp source_index,21
                jne P2ANDD13
                
                mov AX,VALUE1 
                mov BX,VALUE_DX2
                SUB BH,BH
                SHL AX,8
                AND VALUE_DX2,AX
                ADD VALUE_DX2,BX
                
    P2ANDD13:             
    cmp Dest_Index,13
    jne P2ANDD14
    
            P2AND131:
    
                cmp source_index,1
                jne P2AND132
                
                mov ax,P2Value_AX2
                AND VALUE_SI2,ax
                
                
            P2AND132:
                cmp source_index,2
                jne P2AND133
                
                mov ax,VALUE_BX2
                AND VALUE_SI2,ax
                
            P2AND133:
                cmp source_index,3
                jne P2AND134
                
                mov ax,VALUE_CX2
                AND VALUE_SI2,ax
                           
            P2AND134:
                cmp source_index,4
                jne P2AND135
                
                mov ax,VALUE_DX2
                AND VALUE_SI2,ax
                
            P2AND135:
                cmp source_index,13
                jne P2AND136
                
                mov ax,VALUE_SI2
                AND VALUE_SI2,ax
                
            P2AND136:
                cmp source_index,14
                jne P2AND137
                
                mov ax,VALUE_DI2
                AND VALUE_SI2,ax   
                
            P2AND137:
                cmp source_index,15
                jne P2AND138 
                
                mov ax,VALUE_BP2
                AND VALUE_SI2,ax
                
            P2AND138:
                cmp source_index,16
                jne P2AND139
                
                mov ax,VALUE_SP2
                AND VALUE_SI2,ax
                
            P2AND139:
                cmp source_index,21
                jne P2AND14
                
                mov ax,VALUE1
                AND VALUE_SI2,ax
        
       P2ANDD14: 
                
       cmp Dest_Index,14
       jne P2ANDD15
       
       
      
            P2AND141:
    
                cmp source_index,1
                jne P2AND142
                
                mov ax,P2Value_AX2
                AND VALUE_DI2,ax
                
                
            P2AND142:
                cmp source_index,2
                jne P2AND143
                
                MOV ax,VALUE_BX2
                AND VALUE_DI2,ax
                
            P2AND143:
                cmp source_index,3
                jne P2AND144
                
                mov ax,VALUE_CX2
                AND VALUE_DI2,ax
                           
            P2AND144:
                cmp source_index,4
                jne P2AND145
                
                mov ax,VALUE_DX2
                AND VALUE_DI2,ax
                
            P2AND145:
                cmp source_index,13
                jne P2AND146
                
                mov ax,VALUE_SI2
                AND VALUE_DI2,ax
                
            P2AND146:
                cmp source_index,14
                jne P2AND147
                
                mov ax,VALUE_DI2
                AND VALUE_DI2,ax   
                
            P2AND147:
                cmp source_index,15
                jne P2AND148 
                
                mov ax,VALUE_BP2
                AND VALUE_DI2,ax
                
            P2AND148:
                cmp source_index,16
                jne P2AND149
                
                mov ax,VALUE_SP2
                AND VALUE_DI2,ax
                
            P2AND149:
                cmp source_index,21
                jne P2ANDD15
                
                mov ax,VALUE1
                AND VALUE_DI2,ax     
       
    P2ANDD15:   
       cmp Dest_Index,15
       jne P2ANDD16
    
            P2AND151:
    
                cmp source_index,1
                jne P2AND152
                
                mov ax,P2Value_AX2
                AND VALUE_BP2,ax
                
                
            P2AND152:
                cmp source_index,2
                jne P2AND153
                
                mov ax,VALUE_BX2
                AND VALUE_BP2,ax
                
            P2AND153:
                cmp source_index,3
                jne P2AND154
                
                mov ax,VALUE_CX2
                AND VALUE_BP2,ax
                           
            P2AND154:
                cmp source_index,4
                jne P2AND155
                
                mov ax,VALUE_DX2
                AND VALUE_BP2,ax
                
            P2AND155:
                cmp source_index,13
                jne P2AND156
                
                mov ax,VALUE_SI2
                AND VALUE_BP2,ax
                
            P2AND156:
                cmp source_index,14
                jne P2AND157
                
                mov ax,VALUE_DI2
                AND VALUE_BP2,ax   
                
            P2AND157:
                cmp source_index,15
                jne P2AND158 
                
                mov ax,VALUE_BP2
                AND VALUE_BP2,ax
                
            P2AND158:
                cmp source_index,16
                jne P2AND159
                
                mov ax,VALUE_SP2
                AND VALUE_BP2,ax
                
            P2AND159:
                cmp source_index,21
                jne P2ANDD16
                
                mov ax,VALUE1
                AND VALUE_BP2,ax
                
     P2ANDD16:   
       cmp Dest_Index,16
       jne P2TESTEE11
    
            P2AND161:
    
                cmp source_index,1
                jne P2AND162
                
                mov ax,P2Value_AX2
                AND VALUE_SP2,ax
                
                
            P2AND162:
                cmp source_index,2
                jne P2AND163
                
                mov ax,VALUE_BX2
                AND VALUE_SP2,ax
                
            P2AND163:
                cmp source_index,3
                jne P2AND164
                
                mov ax,VALUE_CX2
                AND VALUE_SP2,ax
                           
            P2AND164:
                cmp source_index,4
                jne P2AND165
                
                mov ax,VALUE_DX2
                AND VALUE_SP2,ax
                
            P2AND165:
                cmp source_index,13
                jne P2AND166
                
                mov ax,VALUE_SI2
                AND VALUE_SP2,ax
                
            P2AND166:
                cmp source_index,14
                jne P2AND167
                
                mov ax,VALUE_DI2
                AND VALUE_SP2,ax   
                
            P2AND167:
                cmp source_index,15
                jne P2AND168 
                
                mov ax,VALUE_BP2
                AND VALUE_SP2,ax
                
            P2AND168:
                cmp source_index,16
                jne P2AND169
                
                mov ax,VALUE_SP2
                AND VALUE_SP2,ax
                
            P2AND169:
                cmp source_index,21
                jne P2TESTEE11
                
                mov ax,VALUE1
                AND VALUE_SP2,ax               
                        
                        
             P2TESTEE11: 
                        
              
        
        
        
        
        
        
        RET
        P2AND_INST ENDP              
P2SHL_INST PROC NEAR
        
           CMP INST_INDEX,5
           JNE P2TESTEE4
        
        
        cmp Dest_Index,1
    jne P2SHL2
    
            P2SHL11:
            
                cmp source_index,7 
                jne P2SHL12
                
                MOV CX,VALUE_CX2
                SHL P2Value_AX2,cl
                
                
            P2SHL12:
                cmp source_index,21
                jne P2SHL2
                
                
                                            ; first check the value of the VALUE1 
                                              ; first check the value of the VALUE1 
                MOV CX, VALUE1 
                                  ;as the value is lower than 16 then ot should be in the lower part : make sense 
                SHL P2Value_AX2,CL
                
                
    
    P2SHL2:
             
    cmp Dest_Index,2
    jne P2SHL3
    
            P2SHL21:
            
                cmp source_index,7 
                jne P2SHL22
                
                MOV CX,VALUE_CX2
                SHL VALUE_BX2,cl
                
                
            P2SHL22:
                cmp source_index,21
                jne P2SHL3
                
                                              ; first check the value of the VALUE1 
                MOV CX, VALUE1 
                                  ;as the value is lower than 16 then ot should be in the lower part : make sense 
                SHL VALUE_BX2,CL
                                   
     P2SHL3:
                
      cmp Dest_Index,3
    jne P2SHL4
    
            P2SHL31:
            
                cmp source_index,7 
                jne P2SHL32
                
                MOV CX,VALUE_CX2
                SHL VALUE_CX2,cl
                
                
            P2SHL32:
                cmp source_index,21
                jne P2SHL4
                
                MOV CX,VALUE1
                SHL VALUE_CX2,CL
      
     P2SHL4:
                      
     cmp Dest_Index,4
    jne P2SHL5
    
            P2SHL41:
            
                cmp source_index,7 
                jne P2SHL42
                
                MOV CX,VALUE_CX2
                SHL VALUE_DX2,cl
                
                
            P2SHL42:
                cmp source_index,21
                jne P2SHL5
                
                MOV CX,VALUE1
                SHL VALUE_DX2,CL  
                
                
    P2SHL5:            
                
    cmp Dest_Index,5
    jne P2SHL6
    
            P2SHL51:
            
                cmp source_index,7 
                jne P2SHL52
                
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                SHL P2Value_AX2,cl
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
                
                
            P2SHL52:
                cmp source_index,21
                jne P2SHL6
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                SHL P2Value_AX2,CL
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
     
     P2SHL6:
                
     cmp Dest_Index,6
    jne P2SHL7
    
            P2SHL61:
            
                cmp source_index,7 
                jne P2SHL62
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                SHL VALUE_BX2,cl
                AND VALUE_BX2,00001111B
                ADD VALUE_BX2,BX
                
                
            P2SHL62:
                cmp source_index,21
                jne P2SHL7
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                SHL VALUE_BX2,CL
                AND VALUE_BX2,0000000011111111B
                ADD VALUE_BX2,BX           
     
     P2SHL7:
                
     cmp Dest_Index,7
    jne P2SHL8
    
            P2SHL71:
            
                cmp source_index,7 
                jne P2SHL72
                
                MOV CX,VALUE_CX2
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                
                SHL VALUE_CX2,cl
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX
                
                
            P2SHL72:
                cmp source_index,21
                jne P2SHL8
                
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                SHL VALUE_CX2,CL
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX           
     
     P2SHL8:
                
      cmp Dest_Index,8
    jne P2SHL9
    
            P2SHL81:
            
                cmp source_index,7 
                jne P2SHL82
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                SHL VALUE_DX2,cl
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX
                
                
            P2SHL82:
                cmp source_index,21
                jne P2SHL9
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                SHL VALUE_DX2,CL
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX          
     
     P2SHL9:
                
     cmp Dest_Index,9
    jne P2SHL10
    
            P2SHL91:
            
                cmp source_index,7 
                jne P2SHL92
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                SHL P2Value_AX2,cl
                ADD P2Value_AX2,BX
                
                
            P2SHL92:
                cmp source_index,21
                jne P2SHL10
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                SHL P2Value_AX2,CL
                ADD P2Value_AX2,BX           
     
    P2SHL10: 
                
     cmp Dest_Index,10
    jne P2SHLL11
    
            P2SHL101:
            
                cmp source_index,16 
                jne P2SHL102
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                SHL VALUE_BX2,cl
                ADD VALUE_BX2,BX
                
                
            P2SHL102:
                cmp source_index,21
                jne P2SHLL11
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                SHL VALUE_BX2,CL
                ADD VALUE_BX2,BX 
                
  P2SHLL11:               
                
    cmp Dest_Index,11
    jne P2SHLL12
    
            P2SHL111:
            
                cmp source_index,7
                jne P2SHL112
                
                MOV CX,VALUE_CX2         
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                SHL VALUE_CX2,cl
                ADD VALUE_CX2,BX
                
                
            P2SHL112:
                cmp source_index,21
                jne P2SHLL12
                
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                SHL VALUE_CX2,CL
                ADD VALUE_CX2,BX 
                
  P2SHLL12:
                
  cmp Dest_Index,12
    jne P2SHL13
    
            P2SHL121:
            
                cmp source_index,7
                jne P2SHL122
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                SHL VALUE_DX2,cl
                ADD VALUE_DX2,BX
                
                
            P2SHL122:
                cmp source_index,21
                jne P2SHL13
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                SHL VALUE_DX2,CL
                ADD VALUE_DX2,BX 
   
   P2SHL13:             
                
   cmp Dest_Index,13
    jne P2SHL14
    
            P2SHL131:
            
                cmp source_index,16 
                jne P2SHL132
                
                MOV CX,VALUE_CX2
                SHL VALUE_SI2,cl
                
                
            P2SHL132:
                cmp source_index,21
                jne P2SHL14
                
                MOV CX,VALUE1
                SHL VALUE_SI2,CL   
                
    P2SHL14: 
             
    cmp Dest_Index,14
    jne P2SHL15
    
            P2SHL141:
            
                cmp source_index,7 
                jne P2SHL142
                
                MOV CX,VALUE_CX2
                SHL VALUE_DI2,cl
                
                
            P2SHL142:
                cmp source_index,21
                jne P2SHL15
                
                MOV CX,VALUE1
                SHL VALUE_DI2,CL             
      
     P2SHL15: 
                
      cmp Dest_Index,15
    jne P2SHL16
    
            P2SHL151:
            
                cmp source_index,7 
                jne P2SHL152
                
                MOV CX,VALUE_CX2
                SHL VALUE_BP2,cl
                
                
            P2SHL152:
                cmp source_index,21
                jne P2SHL16
                
                MOV CX,VALUE1
                SHL VALUE_BP2,CL
     
    P2SHL16: 
                      
     cmp Dest_Index,16
    jne P2TESTEE4
    
            P2SHL161:
            
                cmp source_index,7 
                jne P2SHL162
                
                MOV CX,VALUE_CX2
                SHL VALUE_SP2,cl
                
                
            P2SHL162:
                cmp source_index,21
                jne P2TESTEE4
                
                MOV CX,VALUE1
                SHL VALUE_SP2,CL   
        
        
        
        
        
        P2TESTEE4:
       RET
      P2SHL_INST ENDP 
P2SHR_INST PROC NEAR
        
           CMP INST_INDEX,4
           JNE P2TESTEE5
        
        
        cmp Dest_Index,1
    jne P2SHR2
    
            P2SHR11:
            
                cmp source_index,7 
                jne P2SHR12
                
                MOV CX,VALUE_CX2
                SHR P2Value_AX2,cl
                
                
            P2SHR12:
                cmp source_index,21
                jne P2SHR2
                
                MOV CX,VALUE1
                SHR P2Value_AX2,CL   
                
    
    P2SHR2:
             
    cmp Dest_Index,2
    jne P2SHR3
    
            P2SHR21:
            
                cmp source_index,7 
                jne P2SHR22
                
                MOV CX,VALUE_CX2
                SHR VALUE_BX2,cl
                
                
            P2SHR22:
                cmp source_index,21
                jne P2SHR3
                
                MOV CX,VALUE1
                SHR VALUE_BX2,CL             
     
     P2SHR3:
                
      cmp Dest_Index,3
    jne P2SHR4
    
            P2SHR31:
            
                cmp source_index,7 
                jne P2SHR32
                
                MOV CX,VALUE_CX2
                SHR VALUE_CX2,cl
                
                
            P2SHR32:
                cmp source_index,21
                jne P2SHR4
                
                MOV CX,VALUE1
                SHR VALUE_CX2,CL
      
     P2SHR4:
                      
     cmp Dest_Index,4
    jne P2SHR5
    
            P2SHR41:
            
                cmp source_index,7 
                jne P2SHR42
                
                MOV CX,VALUE_CX2
                SHR VALUE_DX2,cl
                
                
            P2SHR42:
                cmp source_index,21
                jne P2SHR5
                
                MOV CX,VALUE1
                SHR VALUE_DX2,CL  
                
                
    P2SHR5:            
                
    cmp Dest_Index,5
    jne P2SHR6
    
            P2SHR51:
            
                cmp source_index,7 
                jne P2SHR52
                
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                SHR P2Value_AX2,cl
                ADD P2Value_AX2,BX
                
                
            P2SHR52:
                cmp source_index,21
                jne P2SHR6
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                SHR P2Value_AX2,CL
                ADD P2Value_AX2,BX
     
     P2SHR6:
                
     cmp Dest_Index,6
    jne P2SHR7
    
            P2SHR61:
            
                cmp source_index,7 
                jne P2SHR62
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                SHR VALUE_BX2,cl
                ADD VALUE_BX2,BX
                
                
            P2SHR62:
                cmp source_index,21
                jne P2SHR7
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                SHR VALUE_BX2,CL
                ADD VALUE_BX2,BX           
     
     P2SHR7:
                
     cmp Dest_Index,7
    jne P2SHR8
    
            P2SHR71:
            
                cmp source_index,7 
                jne P2SHR72
                
                MOV CX,VALUE_CX2
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                
                SHR VALUE_CX2,cl
                ADD VALUE_CX2,BX
                
                
            P2SHR72:
                cmp source_index,21
                jne P2SHR8
                
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                SHR VALUE_CX2,CL
                ADD VALUE_CX2,BX           
     
     P2SHR8:
                
      cmp Dest_Index,8
    jne P2SHR9
    
            P2SHR81:
            
                cmp source_index,7 
                jne P2SHR82
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                SHR VALUE_DX2,cl
                ADD VALUE_DX2,BX
                
                
            P2SHR82:
                cmp source_index,21
                jne P2SHR9
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                SHR VALUE_DX2,CL
                ADD VALUE_DX2,BX          
     
     P2SHR9:
                
     cmp Dest_Index,9
    jne P2SHR10
    
            P2SHR91:
            
                cmp source_index,7 
                jne P2SHR92
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                SHR P2Value_AX2,cl
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX
                
                
            P2SHR92:
                cmp source_index,21
                jne P2SHR10
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                SHR P2Value_AX2,CL
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX           
     
    P2SHR10: 
                
     cmp Dest_Index,10
    jne P2SHRL11
    
            P2SHR101:
            
                cmp source_index,7 
                jne P2SHR102
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                SHR VALUE_BX2,cl
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX
                
                
            P2SHR102:
                cmp source_index,21
                jne P2SHRL11
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                SHR VALUE_BX2,CL
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX 
                
  P2SHRL11:               
                
    cmp Dest_Index,11
    jne P2SHRL12
    
            P2SHR111:
            
                cmp source_index,7 
                jne P2SHR112
                
                MOV CX,VALUE_CX2         
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                SHR VALUE_CX2,cl
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX
                
                
            P2SHR112:
                cmp source_index,21
                jne P2SHRL12
                
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                SHR VALUE_CX2,CL
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX 
                
  P2SHRL12:
                
  cmp Dest_Index,12
    jne P2SHR13
    
            P2SHR121:
            
                cmp source_index,7 
                jne P2SHR122
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                SHR VALUE_DX2,cl
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX
                
                
            P2SHR122:
                cmp source_index,21
                jne P2SHR13
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                SHR VALUE_DX2,CL
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX 
   
   P2SHR13:             
                
   cmp Dest_Index,13
    jne P2SHR14
    
            P2SHR131:
            
                cmp source_index,7 
                jne P2SHR132
                
                MOV CX,VALUE_CX2
                SHR VALUE_SI2,cl
                
                
            P2SHR132:
                cmp source_index,21
                jne P2SHR14
                
                MOV CX,VALUE1
                SHR VALUE_SI2,CL   
                
    P2SHR14: 
             
    cmp Dest_Index,14
    jne P2SHR15
    
            P2SHR141:
            
                cmp source_index,7 
                jne P2SHR142
                
                MOV CX,VALUE_CX2
                SHR VALUE_DI2,cl
                
                
            P2SHR142:
                cmp source_index,21
                jne P2SHR15
                
                MOV CX,VALUE1
                SHR VALUE_DI2,CL             
      
     P2SHR15: 
                
      cmp Dest_Index,15
    jne P2SHR16
    
            P2SHR151:
            
                cmp source_index,7 
                jne P2SHR152
                
                MOV CX,VALUE_CX2
                SHR VALUE_BP2,cl
                
                
            P2SHR152:
                cmp source_index,21
                jne P2SHR16
                
                MOV CX,VALUE1
                SHR VALUE_BP2,CL
     
    P2SHR16: 
                      
     cmp Dest_Index,16
    jne P2TESTEE5
    
            P2SHR161:
            
                cmp source_index,7 
                jne P2SHR162
                
                MOV CX,VALUE_CX2
                SHR VALUE_SP2,cl
                
                
            P2SHR162:
                cmp source_index,21
                jne P2TESTEE5
                
                MOV CX,VALUE1
                SHR VALUE_SP2,CL   
        
        
        
        
        
        P2TESTEE5:
       RET
      P2SHR_INST ENDP     
P2ROR_INST PROC NEAR
        
        cmp inst_index,7
        jne P2TESTEE6
        
        cmp Dest_Index,1
        JNE P2ROR2
       
    
            P2ROR11:
            
                cmp source_index,7 
                jne P2ROR12
                
                MOV CX,VALUE_CX2
                ROR P2Value_AX2,cl
                
                
            P2ROR12:
                cmp source_index,21
                jne P2ROR2
                
                MOV CX,VALUE1
                ROR P2Value_AX2,CL   
                
    
    P2ROR2:
             
    cmp Dest_Index,2
    jne P2ROR3
    
            P2ROR21:
            
                cmp source_index,7 
                jne P2ROR22
                
                MOV CX,VALUE_CX2
                ROR VALUE_BX2,cl
                
                
            P2ROR22:
                cmp source_index,21
                jne P2ROR3
                
                MOV CX,VALUE1
                ROR VALUE_BX2,CL             
     
     P2ROR3:
                
      cmp Dest_Index,3
    jne P2ROR4
    
            P2ROR31:
            
                cmp source_index,7 
                jne P2ROR32
                
                MOV CX,VALUE_CX2
                ROR VALUE_CX2,cl
                
                
            P2ROR32:
                cmp source_index,21
                jne P2ROR4
                
                MOV CX,VALUE1
                ROR VALUE_CX2,CL
      
     P2ROR4:
                      
     cmp Dest_Index,4
    jne P2ROR5
    
            P2ROR41:
            
                cmp source_index,7 
                jne P2ROR42
                
                MOV CX,VALUE_CX2
                ROR VALUE_DX2,cl
                
                
            P2ROR42:
                cmp source_index,21
                jne P2ROR5
                
                MOV CX,VALUE1
                ROR VALUE_DX2,CL  
                
                
    P2ROR5:            
                
    cmp Dest_Index,5
    jne P2ROR6
    
            P2ROR51:
            
                cmp source_index,7 
                jne P2ROR52
                
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                ROR P2Value_AX2,cl
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
                
                
            P2ROR52:
                cmp source_index,21
                jne P2ROR6
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                ROR P2Value_AX2,CL
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
     
     P2ROR6:
                
     cmp Dest_Index,6
    jne P2ROR7
    
            P2ROR61:
            
                cmp source_index,7 
                jne P2ROR62
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                ROR VALUE_BX2,cl
                AND VALUE_BX2,0000000011111111B
                ADD VALUE_BX2,BX
                
                
            P2ROR62:
                cmp source_index,21
                jne P2ROR7
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                ROR VALUE_BX2,CL
                AND VALUE_BX2,0000000011111111B
                ADD VALUE_BX2,BX           
     
     P2ROR7:
                
     cmp Dest_Index,7
    jne P2ROR8
    
            P2ROR71:
            
                cmp source_index,7 
                jne P2ROR72
                
                MOV CX,VALUE_CX2
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                
                ROR VALUE_CX2,cl
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX
                
                
            P2ROR72:
                cmp source_index,21
                jne P2ROR8
                
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                ROR VALUE_CX2,CL
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX           
     
     P2ROR8:
                
      cmp Dest_Index,8
    jne P2ROR9
    
            P2ROR81:
            
                cmp source_index,7 
                jne P2ROR82
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                ROR VALUE_DX2,cl
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX
                
                
            P2ROR82:
                cmp source_index,21
                jne P2ROR9
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                ROR VALUE_DX2,CL
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX          
     
     P2ROR9:
                
     cmp Dest_Index,9
    jne P2ROR10
    
            P2ROR91:
            
                cmp source_index,7 
                jne P2ROR92
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                ROR P2Value_AX2,cl
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX
                
                
            P2ROR92:
                cmp source_index,21
                jne P2ROR10
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                ROR P2Value_AX2,CL
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX           
     
    P2ROR10: 
                
     cmp Dest_Index,10
    jne P2RORR11
    
            P2ROR101:
            
                cmp source_index,7 
                jne P2ROR102
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                ROR VALUE_BX2,cl
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX
                
                
            P2ROR102:
                cmp source_index,21
                jne P2RORR11
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                ROR VALUE_BX2,CL
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX 
                
  P2RORR11:               
                
    cmp Dest_Index,11
    jne P2RORR12
    
            P2ROR111:
            
                cmp source_index,7 
                jne P2ROR112
                
                MOV CX,VALUE_CX2         
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                ROR VALUE_CX2,cl
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX
                
                
            P2ROR112:
                cmp source_index,21
                jne P2RORR12
                
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                ROR VALUE_CX2,CL
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX 
                
  P2RORR12:
                
  cmp Dest_Index,12
    jne P2ROR13
    
            P2ROR121:
            
                cmp source_index,7 
                jne P2ROR122
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                ROR VALUE_DX2,cl
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX
                
                
            P2ROR122:
                cmp source_index,21
                jne P2ROR13
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                ROR VALUE_DX2,CL
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX 
   
   P2ROR13:             
                
   cmp Dest_Index,13
    jne P2ROR14
    
            P2ROR131:
            
                cmp source_index,7 
                jne P2ROR132
                
                MOV CX,VALUE_CX2
                ROR VALUE_SI2,cl
                
                
            P2ROR132:
                cmp source_index,21
                jne P2ROR14
                
                MOV CX,VALUE1
                ROR VALUE_SI2,CL   
                
    P2ROR14: 
             
    cmp Dest_Index,14
    jne P2ROR15
    
            P2ROR141:
            
                cmp source_index,7 
                jne P2ROR142
                
                MOV CX,VALUE_CX2
                ROR VALUE_DI2,cl
                
                
            P2ROR142:
                cmp source_index,21
                jne P2ROR15
                
                MOV CX,VALUE1
                ROR VALUE_DI2,CL             
      
     P2ROR15: 
                
      cmp Dest_Index,15
    jne P2ROR16
    
            P2ROR151:
            
                cmp source_index,7 
                jne P2ROR152
                
                MOV CX,VALUE_CX2
                ROR VALUE_BP2,cl
                
                
            P2ROR152:
                cmp source_index,21
                jne P2ROR16
                
                MOV CX,VALUE1
                ROR VALUE_BP2,CL
     
    P2ROR16: 
                      
     cmp Dest_Index,16
    jne P2TESTEE6
    
            P2ROR161:
            
                cmp source_index,7 
                jne P2ROR162
                
                MOV CX,VALUE_CX2
                ROR VALUE_SP2,cl
                
                
            P2ROR162:
                cmp source_index,21
                jne P2TESTEE6
                
                MOV CX,VALUE1
                ROR VALUE_SP2,CL
        
        
        
        
        
        
        P2TESTEE6:
        RET
        P2ROR_INST ENDP      
P2ROL_INST PROC NEAR
        
        cmp inst_index,8
        jne P2TESTEE7
        
        cmp Dest_Index,1
        JNE P2ROL2
       
    
            P2ROL11:
            
                cmp source_index,7 
                jne P2ROL12
                
                MOV CX,VALUE_CX2
                ROL P2Value_AX2,cl
                
                
            P2ROL12:
                cmp source_index,21
                jne P2ROL2
                
                MOV CX,VALUE1
                ROL P2Value_AX2,CL   
                
    
    P2ROL2:
             
    cmp Dest_Index,2
    jne P2ROL3
    
            P2ROL21:
            
                cmp source_index,7 
                jne P2ROL22
                
                MOV CX,VALUE_CX2
                ROL VALUE_BX2,cl
                
                
            P2ROL22:
                cmp source_index,21
                jne P2ROL3
                
                MOV CX,VALUE1
                ROL VALUE_BX2,CL             
     
     P2ROL3:
                
      cmp Dest_Index,3
    jne P2ROL4
    
            P2ROL31:
            
                cmp source_index,7 
                jne P2ROL32
                
                MOV CX,VALUE_CX2
                ROL VALUE_CX2,cl
                
                
            P2ROL32:
                cmp source_index,21
                jne P2ROL4
                
                MOV CX,VALUE1
                ROL VALUE_CX2,CL
      
     P2ROL4:
                      
     cmp Dest_Index,4
    jne P2ROL5
    
            P2ROL41:
            
                cmp source_index,7 
                jne P2ROL42
                
                MOV CX,VALUE_CX2
                ROL VALUE_DX2,cl
                
                
            P2ROL42:
                cmp source_index,21
                jne P2ROL5
                
                MOV CX,VALUE1
                ROL VALUE_DX2,CL  
                
                
    P2ROL5:            
                
    cmp Dest_Index,5
    jne P2ROL6
    
            P2ROL51:
            
                cmp source_index,7 
                jne P2ROL52
                
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                ROL P2Value_AX2,cl
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
                
                
            P2ROL52:
                cmp source_index,21
                jne P2ROL6
                
                MOV AX,P2Value_AX2
                SUB AH,AH
                MOV BX,P2Value_AX2
                SUB BL,BL
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                ROL P2Value_AX2,CL
                AND P2Value_AX2,0000000011111111B
                ADD P2Value_AX2,BX
     
     P2ROL6:
                
     cmp Dest_Index,6
    jne P2ROL7
    
            P2ROL61:
            
                cmp source_index,7 
                jne P2ROL62
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                ROL VALUE_BX2,cl
                AND VALUE_BX2,0000000011111111B
                ADD VALUE_BX2,BX
                
                
            P2ROL62:
                cmp source_index,21
                jne P2ROL7
                
                MOV AX,VALUE_BX2
                SUB AH,AH
                MOV BX,VALUE_BX2
                SUB BL,BL
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                ROL VALUE_BX2,CL
                AND VALUE_BX2,0000000011111111B
                ADD VALUE_BX2,BX           
     
     P2ROL7:
                
     cmp Dest_Index,7
    jne P2ROL8
    
            P2ROL71:
            
                cmp source_index,7 
                jne P2ROL72
                
                MOV CX,VALUE_CX2
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                
                ROL VALUE_CX2,cl
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX
                
                
            P2ROL72:
                cmp source_index,21
                jne P2ROL8
                
                MOV AX,VALUE_CX2
                SUB AH,AH
                MOV BX,VALUE_CX2
                SUB BL,BL
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                ROL VALUE_CX2,CL
                AND VALUE_CX2,0000000011111111B
                ADD VALUE_CX2,BX           
     
     P2ROL8:
                
      cmp Dest_Index,8
    jne P2ROL9
    
            P2ROL81:
            
                cmp source_index,7 
                jne P2ROL82
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                ROL VALUE_DX2,cl
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX
                
                
            P2ROL82:
                cmp source_index,21
                jne P2ROL9
                
                MOV AX,VALUE_DX2
                SUB AH,AH
                MOV BX,VALUE_DX2
                SUB BL,BL
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                ROL VALUE_DX2,CL
                AND VALUE_DX2,0000000011111111B
                ADD VALUE_DX2,BX          
     
     P2ROL9:
                
     cmp Dest_Index,9
    jne P2ROL10
    
            P2ROL91:
            
                cmp source_index,7 
                jne P2ROL92
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE_CX2
                ROL P2Value_AX2,cl
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX
                
                
            P2ROL92:
                cmp source_index,21
                jne P2ROL10
                
                MOV AX,P2Value_AX2
                SUB AL,AL
                MOV BX,P2Value_AX2
                SUB BH,BH
                MOV P2Value_AX2,AX
                MOV CX,VALUE1
                ROL P2Value_AX2,CL
                AND P2Value_AX2,1111111100000000B
                ADD P2Value_AX2,BX           
     
    P2ROL10: 
                
     cmp Dest_Index,10
    jne P2ROLR11
    
            P2ROL101:
            
                cmp source_index,7 
                jne P2ROL102
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE_CX2
                ROL VALUE_BX2,cl
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX
                
                
            P2ROL102:
                cmp source_index,21
                jne P2ROLR11
                
                MOV AX,VALUE_BX2
                SUB AL,AL
                MOV BX,VALUE_BX2
                SUB BH,BH
                MOV VALUE_BX2,AX
                MOV CX,VALUE1
                ROL VALUE_BX2,CL
                AND VALUE_BX2,1111111100000000B
                ADD VALUE_BX2,BX 
                
  P2ROLR11:               
                
    cmp Dest_Index,11
    jne P2ROLR12
    
            P2ROL111:
            
                cmp source_index,7 
                jne P2ROL112
                
                MOV CX,VALUE_CX2         
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                ROL VALUE_CX2,cl
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX
                
                
            P2ROL112:
                cmp source_index,21
                jne P2ROLR12
                
                MOV AX,VALUE_CX2
                SUB AL,AL
                MOV BX,VALUE_CX2
                SUB BH,BH
                MOV VALUE_CX2,AX
                MOV CX,VALUE1
                ROL VALUE_CX2,CL
                AND VALUE_CX2,1111111100000000B
                ADD VALUE_CX2,BX 
                
  P2ROLR12:
                
  cmp Dest_Index,12
    jne P2ROL13
    
            P2ROL121:
            
                cmp source_index,7 
                jne P2ROL122
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE_CX2
                ROL VALUE_DX2,cl
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX
                
                
            P2ROL122:
                cmp source_index,21
                jne P2ROL13
                
                MOV AX,VALUE_DX2
                SUB AL,AL
                MOV BX,VALUE_DX2
                SUB BH,BH
                MOV VALUE_DX2,AX
                MOV CX,VALUE1
                ROL VALUE_DX2,CL
                AND VALUE_DX2,1111111100000000B
                ADD VALUE_DX2,BX 
   
   P2ROL13:             
                
   cmp Dest_Index,13
    jne P2ROL14
    
            P2ROL131:
            
                cmp source_index,7 
                jne P2ROL132
                
                MOV CX,VALUE_CX2
                ROL VALUE_SI2,cl
                
                
            P2ROL132:
                cmp source_index,21
                jne P2ROL14
                
                MOV CX,VALUE1
                ROL VALUE_SI2,CL   
                
    P2ROL14: 
             
    cmp Dest_Index,14
    jne P2ROL15
    
            P2ROL141:
            
                cmp source_index,7 
                jne P2ROL142
                
                MOV CX,VALUE_CX2
                ROL VALUE_DI2,cl
                
                
            P2ROL142:
                cmp source_index,21
                jne P2ROL15
                
                MOV CX,VALUE1
                ROL VALUE_DI2,CL             
      
     P2ROL15: 
                
      cmp Dest_Index,15
    jne P2ROL16
    
            P2ROL151:
            
                cmp source_index,7 
                jne P2ROL152
                
                MOV CX,VALUE_CX2
                ROL VALUE_BP2,cl
                
                
            P2ROL152:
                cmp source_index,21
                jne P2ROL16
                
                MOV CX,VALUE1
                ROL VALUE_BP2,CL
     
    P2ROL16: 
                      
     cmp Dest_Index,16
    jne P2TESTEE7
    
            P2ROL161:
            
                cmp source_index,7 
                jne P2ROL162
                
                MOV CX,VALUE_CX2
                ROL VALUE_SP2,cl
                
                
            P2ROL162:
                cmp source_index,21
                jne P2TESTEE7
                
                MOV CX,VALUE1
                ROL VALUE_SP2,CL
        
        
        
        
        
        
        P2TESTEE7:
        RET
        P2ROL_INST ENDP      
P2CLCC_inst proc near

CMP INST_INDEX,6
JNE TER2
MOV BX,OFFSET CCF
MOV CX,9
WHILE2:
MOV AX,0
MOV [BX],AX
INC BX
LOOP WHILE2
TER2:
RET
P2CLCC_INST ENDP        
P2SUB_INST PROC NEAR
             
             cmp inst_index,3
            jne P2TESTEE3
    
    cmp Dest_Index,1
    jne P2SUB2
    
            P2SUB11:
    
                cmp source_index,1
                jne P2SUB12
                
                mov ax,P2Value_AX2
                SUB P2Value_AX2,ax
                
                
            P2SUB12:
                cmp source_index,2
                jne P2SUB13
                
                mov ax,VALUE_BX2
                SUB P2Value_AX2,ax
                
            P2SUB13:
                cmp source_index,3
                jne P2SUB14
                
                mov ax,VALUE_CX2
                SUB P2Value_AX2,ax
                           
            P2SUB14:
                cmp source_index,4
                jne P2SUB15
                
                mov ax,VALUE_DX2
                SUB P2Value_AX2,ax
                
            P2SUB15:
                cmp source_index,13
                jne P2SUB16
                
                mov ax,VALUE_SI2
                SUB P2Value_AX2,ax
                
            P2SUB16:
                cmp source_index,14
                jne P2SUB17
                
                mov ax,VALUE_DI2
                SUB P2Value_AX2,ax   
                
            P2SUB17:
                cmp source_index,15
                jne P2SUB18 
                
                mov ax,VALUE_BP2
                SUB P2Value_AX2,ax
                
            P2SUB18:
                cmp source_index,16
                jne P2SUB19
                
                mov ax,VALUE_SP2
                SUB P2Value_AX2,ax
                
            P2SUB19:
                cmp source_index,21
                jne P2SUB2
                
                mov ax,VALUE1
                SUB P2Value_AX2,ax
        
       P2SUB2: 
                
       cmp Dest_Index,2
       jne P2SUB3
       
       
      
            P2SUB21:
    
                cmp source_index,1
                jne P2SUB22
                
                mov ax,P2Value_AX2
                SUB VALUE_BX2,ax
                
                
            P2SUB22:
                cmp source_index,2
                jne P2SUB23
                
                MOV ax,VALUE_BX2
                SUB VALUE_BX2,ax
                
            P2SUB23:
                cmp source_index,3
                jne P2SUB24
                
                mov ax,VALUE_CX2
                SUB VALUE_BX2,ax
                           
            P2SUB24:
                cmp source_index,4
                jne P2SUB25
                
                mov ax,VALUE_DX2
                SUB VALUE_BX2,ax
                
            P2SUB25:
                cmp source_index,13
                jne P2SUB26
                
                mov ax,VALUE_SI2
                SUB VALUE_BX2,ax
                
            P2SUB26:
                cmp source_index,14
                jne P2SUB27
                
                mov ax,VALUE_DI2
                SUB VALUE_BX2,ax   
                
            P2SUB27:
                cmp source_index,15
                jne P2SUB28 
                
                mov ax,VALUE_BP2
                SUB VALUE_BX2,ax
                
            P2SUB28:
                cmp source_index,16
                jne P2SUB29
                
                mov ax,VALUE_SP2
                SUB VALUE_BX2,ax
                
            P2SUB29:
                cmp source_index,21
                jne P2SUB3
                
                mov ax,VALUE1
                SUB VALUE_BX2,ax     
       
    P2SUB3:   
       cmp Dest_Index,3
       jne P2SUB4
    
            P2SUB31:
    
                cmp source_index,1
                jne P2SUB32
                
                mov ax,P2Value_AX2
                SUB VALUE_CX2,ax
                
                
            P2SUB32:
                cmp source_index,2
                jne P2SUB33
                
                mov ax,VALUE_BX2
                SUB VALUE_CX2,ax
                
            P2SUB33:
                cmp source_index,3
                jne P2SUB34
                
                mov ax,VALUE_CX2
                SUB VALUE_CX2,ax
                           
            P2SUB34:
                cmp source_index,4
                jne P2SUB35
                
                mov ax,VALUE_DX2
                SUB VALUE_CX2,ax
                
            P2SUB35:
                cmp source_index,13
                jne P2SUB36
                
                mov ax,VALUE_SI2
                SUB VALUE_CX2,ax
                
            P2SUB36:
                cmp source_index,14
                jne P2SUB37
                
                mov ax,VALUE_DI2
                SUB VALUE_CX2,ax   
                
            P2SUB37:
                cmp source_index,15
                jne P2SUB38 
                
                mov ax,VALUE_BP2
                SUB VALUE_CX2,ax
                
            P2SUB38:
                cmp source_index,16
                jne P2SUB39
                
                mov ax,VALUE_SP2
                SUB VALUE_CX2,ax
                
            P2SUB39:
                cmp source_index,21
                jne P2SUB4
                
                mov ax,VALUE1
                SUB VALUE_CX2,ax
                
     P2SUB4:   
       cmp Dest_Index,4
       jne P2SUB5
    
            P2SUB41:
    
                cmp source_index,1
                jne P2SUB42
                
                mov ax,P2Value_AX2
                SUB VALUE_DX2,ax
                
                
            P2SUB42:
                cmp source_index,2
                jne P2SUB43
                
                mov ax,VALUE_BX2
                SUB VALUE_DX2,ax
                
            P2SUB43:
                cmp source_index,3
                jne P2SUB44
                
                mov ax,VALUE_CX2
                SUB VALUE_DX2,ax
                           
            P2SUB44:
                cmp source_index,4
                jne P2SUB45
                
                mov ax,VALUE_DX2
                SUB VALUE_DX2,ax
                
            P2SUB45:
                cmp source_index,13
                jne P2SUB46
                
                mov ax,VALUE_SI2
                SUB VALUE_DX2,ax
                
            P2SUB46:
                cmp source_index,14
                jne P2SUB47
                
                mov ax,VALUE_DI2
                SUB VALUE_DX2,ax   
                
            P2SUB47:
                cmp source_index,15
                jne P2SUB48 
                
                mov ax,VALUE_BP2
                SUB VALUE_DX2,ax
                
            P2SUB48:
                cmp source_index,16
                jne P2SUB49
                
                mov ax,VALUE_SP2
                SUB VALUE_DX2,ax
                
            P2SUB49:
                cmp source_index,21
                jne P2SUB5
                
                mov ax,VALUE1
                SUB VALUE_DX2,ax
                
                
      P2SUB5:   
       cmp Dest_Index,5
       jne P2SUB6
       
            P2SUB51:
                cmp source_index,5
                jne P2SUB52
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SUB P2Value_AX2,AX
                
            P2SUB52:
                cmp source_index,6
                jne P2SUB53
                
                mov AX,VALUE_BX2
                SUB AH,AH
                SUB P2Value_AX2,AX
            
            P2SUB53:
                cmp source_index,7
                jne P2SUB54
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SUB P2Value_AX2,AX 
                
            P2SUB54:
                cmp source_index,8
                jne P2SUB55
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SUB P2Value_AX2,AX
                
           P2SUB55:
                cmp source_index,9
                jne P2SUB56
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                SUB P2Value_AX2,AX
                
            P2SUB56:
                cmp source_index,10
                jne P2SUB57
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                SUB P2Value_AX2,AX
            
            P2SUB57:
                cmp source_index,11
                jne P2SUB58
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                SUB P2Value_AX2,AX 
                
            P2SUB58:
                cmp source_index,12
                jne P2SUB59
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                SUB P2Value_AX2,AX
                
            P2SUB59:
                cmp source_index,21
                jne P2SUB6
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB P2Value_AX2,AX    
                  
                
       P2SUB6:   
       cmp Dest_Index,6
       jne P2SUB7
       
            P2SUB61:
                cmp source_index,5
                jne P2SUB62
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SUB Value_BX2,AX
                
            P2SUB62:
                cmp source_index,6
                jne P2SUB63
                
                mov AX,VALUE_BX2
                SUB AH,AH
                SUB VALUE_BX2,AX
            
            P2SUB63:
                cmp source_index,7
                jne P2SUB64
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SUB VALUE_BX2,AX 
                
            P2SUB64:
                cmp source_index,8
                jne P2SUB65
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SUB VALUE_BX2,AX
                
           P2SUB65:
                cmp source_index,9
                jne P2SUB66
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX2,AX
                
            P2SUB66:
                cmp source_index,10
                jne P2SUB67
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_BX2,AX
            
            P2SUB67:
                cmp source_index,11
                jne P2SUB68
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX2,AX 
                
            P2SUB68:
                cmp source_index,12
                jne P2SUB69
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_BX2,AX
                
            P2SUB69:
                cmp source_index,21
                jne P2SUB7
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_BX2,AX      
                
                
                
       P2SUB7:   
       cmp Dest_Index,7
       jne P2SUB8
       
            P2SUB71:
                cmp source_index,5
                jne P2SUB72
                
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SUB VALUE_CX2,AX
                
            P2SUB72:
                cmp source_index,6
                jne P2SUB73
                
                mov AX,VALUE_BX2
                SUB AH,AH
                SUB VALUE_CX2,AX
            
            P2SUB73:
                cmp source_index,7
                jne P2SUB74
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SUB VALUE_CX2,AX 
                
            P2SUB74:
                cmp source_index,8
                jne P2SUB75
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SUB VALUE_CX2,AX
                
           P2SUB75:
                cmp source_index,9
                jne P2SUB76
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX2,AX
                
            P2SUB76:
                cmp source_index,10
                jne P2SUB77
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_CX2,AX
            
            P2SUB77:
                cmp source_index,11
                jne P2SUB78
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX2,AX 
                
            P2SUB78:
                cmp source_index,12
                jne P2SUB79
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_CX2,AX 
                
            P2SUB79:
                cmp source_index,21
                jne P2SUB8
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_CX2,AX
                           
                
      P2SUB8:   
       cmp Dest_Index,8
       jne P2SUB9
       
             P2SUB81:
                cmp source_index,5
                jne P2SUB82
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SUB VALUE_DX2,AX
                
            P2SUB82:
                cmp source_index,6
                jne P2SUB83
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SUB VALUE_DX2,AX
            
            P2SUB83:
                cmp source_index,7
                jne P2SUB84
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SUB VALUE_DX2,AX 
                
            P2SUB84:
                cmp source_index,8
                jne P2SUB85
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SUB VALUE_DX2,AX
                
            P2SUB85:
                cmp source_index,9
                jne P2SUB86
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX2,AX
                
            P2SUB86:
                cmp source_index,10
                jne P2SUB87
                
                mov AX,VALUE_BX2
                SUB AL,AL 
                SHR AX,8
                SUB VALUE_DX2,AX
            
            P2SUB87:
                cmp source_index,11
                jne P2SUB88
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX2,AX 
                
            P2SUB88:
                cmp source_index,12
                jne P2SUB89
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SHR AX,8
                SUB VALUE_DX2,AX 
                
                
            P2SUB89:
                cmp source_index,21
                jne P2SUB9
                
                mov AX,VALUE1
                SHL AX,8
                
                SUB VALUE_DX2,AX
      
      
      P2SUB9:   
       cmp Dest_Index,9
       jne P2SUB10
       
             P2SUB91:
                cmp source_index,5
                jne P2SUB92
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                SUB P2Value_AX2,AX
                
            P2SUB92:
                cmp source_index,6
                jne P2SUB93
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                SUB P2Value_AX2,AX
            
            P2SUB93:
                cmp source_index,7
                jne P2SUB94
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                SUB P2Value_AX2,AX 
                
            P2SUB94:
                cmp source_index,8
                jne P2SUB95
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                SUB P2Value_AX2,AX
                
           P2SUB95:
                cmp source_index,9
                jne P2SUB96
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SUB P2Value_AX2,AX
                
            P2SUB96:
                cmp source_index,10
                jne P2SUB97
                
                mov AX,VALUE_BX2
                SUB AL,AL
                SUB P2Value_AX2,AX
            
            P2SUB97:
                cmp source_index,11
                jne P2SUB98
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SUB P2Value_AX2,AX 
                
            P2SUB98:
                cmp source_index,12
                jne P2SUB99
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SUB P2Value_AX2,AX
                
            P2SUB99:
                cmp source_index,21
                jne P2SUB10
                
                mov AX,VALUE1
                SUB P2Value_AX2,AX 
                
                    
      
      
      P2SUB10:   
       cmp Dest_Index,10
       jne P2SUBB11
       
            P2SUB101:
                cmp source_index,5
                jne P2SUB102
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX2,AX
                
            P2SUB102:
                cmp source_index,6
                jne P2SUB103
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX2,AX
            
            P2SUB103:
                cmp source_index,7
                jne P2SUB104
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX2,AX 
                
            P2SUB104:
                cmp source_index,8
                jne P2SUB105
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_BX2,AX
                
           P2SUB105:
                cmp source_index,9
                jne P2SUB106
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SUB VALUE_BX2,AX
                
            P2SUB106:
                cmp source_index,10
                jne P2SUB107
                
                mov AX,VALUE_BX2
                SUB AL,AL
                SUB VALUE_BX2,AX
            
            P2SUB107:
                cmp source_index,11
                jne P2SUB108
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SUB VALUE_BX2,AX 
                
            P2SUB108:
                cmp source_index,12
                jne P2SUB109
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SUB VALUE_BX2,AX 
            
            P2SUB109:
                cmp source_index,21
                jne P2SUBB11
                
                mov AX,VALUE1
                SUB VALUE_BX2,AX             
      
      
      P2SUBB11:   
       cmp Dest_Index,11
       jne P2SUBB12
       
             P2SUB111:
                cmp source_index,5
                jne P2SUB112
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX2,AX
                
            P2SUB112:
                cmp source_index,6
                jne P2SUB113
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX2,AX
            
            P2SUB113:
                cmp source_index,7
                jne P2SUB114
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX2,AX 
                
           P2SUB114:
                cmp source_index,8
                jne P2SUB115
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_CX2,AX
                
           P2SUB115:
                cmp source_index,9
                jne P2SUB116
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SUB VALUE_CX2,AX
                
            P2SUB116:
                cmp source_index,10
                jne P2SUB117
                
                mov AX,VALUE_BX2
                SUB AL,AL
                SUB VALUE_CX2,AX
            
            P2SUB117:
                cmp source_index,11
                jne P2SUB118
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SUB VALUE_CX2,AX 
                
            P2SUB118:
                cmp source_index,12
                jne P2SUB119
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SUB VALUE_CX2,AX
                
            P2SUB119:
                cmp source_index,21
                jne P2SUBB12
                
                mov AX,VALUE1
                SUB VALUE_CX2,AX 
                
                    
      
      
      P2SUBB12:   
       cmp Dest_Index,12
       jne P2SUBB13
       
             P2SUB121:
                cmp source_index,5
                jne P2SUB122
                       
                
                mov AX,P2Value_AX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX2,AX
                
            P2SUB122:
                cmp source_index,6
                jne P2SUB123
                       
                mov AX,VALUE_BX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX2,AX
            
            P2SUB123:
                cmp source_index,7
                jne P2SUB124
                
                mov AX,VALUE_CX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX2,AX 
                
            P2SUB124:
                cmp source_index,8
                jne P2SUB125
                
                mov AX,VALUE_DX2
                SUB AH,AH
                SHL AX,8
                SUB VALUE_DX2,AX
                
           P2SUB125:
                cmp source_index,9
                jne P2SUB126
                
                mov AX,P2Value_AX2
                SUB AL,AL
                SUB VALUE_DX2,AX
                
           P2SUB126:
                cmp source_index,10
                jne P2SUB127
                
                mov AX,VALUE_BX2
                SUB AL,AL
                SUB VALUE_DX2,AX
            
            P2SUB127:
                cmp source_index,11
                jne P2SUB128
                
                mov AX,VALUE_CX2
                SUB AL,AL
                SUB VALUE_DX2,AX 
                
            P2SUB128:
                cmp source_index,12
                jne P2SUB129
                
                mov AX,VALUE_DX2
                SUB AL,AL
                SUB VALUE_DX2,AX     
            
            P2SUB129:
                cmp source_index,21
                jne P2SUBB13
                
                mov AX,VALUE1
                SUB VALUE_DX2,AX 
   
   
   P2SUBB13:             
    cmp Dest_Index,13
    jne P2SUBB14
    
            P2SUB131:
    
                cmp source_index,1
                jne P2SUB132
                
                mov ax,P2Value_AX2
                SUB VALUE_SI2,ax
                
                
            P2SUB132:
                cmp source_index,2
                jne P2SUB133
                
                mov ax,VALUE_BX2
                SUB VALUE_SI2,ax
                
            P2SUB133:
                cmp source_index,3
                jne P2SUB134
                
                mov ax,VALUE_CX2
                SUB VALUE_SI2,ax
                           
            P2SUB134:
                cmp source_index,4
                jne P2SUB135
                
                mov ax,VALUE_DX2
                SUB VALUE_SI2,ax
                
            P2SUB135:
                cmp source_index,13
                jne P2SUB136
                
                mov ax,VALUE_SI2
                SUB VALUE_SI2,ax
                
            P2SUB136:
                cmp source_index,14
                jne P2SUB137
                
                mov ax,VALUE_DI2
                SUB VALUE_SI2,ax   
                
            P2SUB137:
                cmp source_index,15
                jne P2SUB138 
                
                mov ax,VALUE_BP2
                SUB VALUE_SI2,ax
                
            P2SUB138:
                cmp source_index,16
                jne P2SUB139
                
                mov ax,VALUE_SP2
                SUB VALUE_SI2,ax
                
            P2SUB139:
                cmp source_index,21
                jne P2SUBB14
                
                mov ax,VALUE1
                SUB VALUE_SI2,ax
        
       P2SUBB14: 
                
       cmp Dest_Index,14
       jne P2SUBB15
       
       
      
            P2SUB141:
    
                cmp source_index,1
                jne P2SUB142
                
                mov ax,P2Value_AX2
                SUB VALUE_DI2,ax
                
                
            P2SUB142:
                cmp source_index,2
                jne P2SUB143
                
                MOV ax,VALUE_BX2
                SUB VALUE_DI2,ax
                
            P2SUB143:
                cmp source_index,3
                jne P2SUB144
                
                mov ax,VALUE_CX2
                SUB VALUE_DI2,ax
                           
            P2SUB144:
                cmp source_index,4
                jne P2SUB145
                
                mov ax,VALUE_DX2
                SUB VALUE_DI2,ax
                
            P2SUB145:
                cmp source_index,13
                jne P2SUB146
                
                mov ax,VALUE_SI2
                SUB VALUE_DI2,ax
                
            P2SUB146:
                cmp source_index,14
                jne P2SUB147
                
                mov ax,VALUE_DI2
                SUB VALUE_DI2,ax   
                
            P2SUB147:
                cmp source_index,15
                jne P2SUB148 
                
                mov ax,VALUE_BP2
                SUB VALUE_DI2,ax
                
            P2SUB148:
                cmp source_index,16
                jne P2SUB149
                
                mov ax,VALUE_SP2
                SUB VALUE_DI2,ax
                
            P2SUB149:
                cmp source_index,21
                jne P2SUBB15
                
                mov ax,VALUE1
                SUB VALUE_DI2,ax     
       
    P2SUBB15:   
       cmp Dest_Index,15
       jne P2SUBB16
    
            P2SUB151:
    
                cmp source_index,1
                jne P2SUB152
                
                mov ax,P2Value_AX2
                SUB VALUE_BP2,ax
                
                
            P2SUB152:
                cmp source_index,2
                jne P2SUB153
                
                mov ax,VALUE_BX2
                SUB VALUE_BP2,ax
                
            P2SUB153:
                cmp source_index,3
                jne P2SUB154
                
                mov ax,VALUE_CX2
                SUB VALUE_BP2,ax
                           
            P2SUB154:
                cmp source_index,4
                jne P2SUB155
                
                mov ax,VALUE_DX2
                SUB VALUE_BP2,ax
                
            P2SUB155:
                cmp source_index,13
                jne P2SUB156
                
                mov ax,VALUE_SI2
                SUB VALUE_BP2,ax
                
            P2SUB156:
                cmp source_index,14
                jne P2SUB157
                
                mov ax,VALUE_DI2
                SUB VALUE_BP2,ax   
                
            P2SUB157:
                cmp source_index,15
                jne P2SUB158 
                
                mov ax,VALUE_BP2
                SUB VALUE_BP2,ax
                
            P2SUB158:
                cmp source_index,16
                jne P2SUB159
                
                mov ax,VALUE_SP2
                SUB VALUE_BP2,ax
                
            P2SUB159:
                cmp source_index,21
                jne P2SUBB16
                
                mov ax,VALUE1
                SUB VALUE_BP2,ax
                
     P2SUBB16:   
       cmp Dest_Index,16
       jne P2TESTEE3
    
            P2SUB161:
    
                cmp source_index,1
                jne P2SUB162
                
                mov ax,P2Value_AX2
                SUB VALUE_SP2,ax
                
                
            P2SUB162:
                cmp source_index,2
                jne P2SUB163
                
                mov ax,VALUE_BX2
                SUB VALUE_SP2,ax
                
            P2SUB163:
                cmp source_index,3
                jne P2SUB164
                
                mov ax,VALUE_CX2
                SUB VALUE_SP2,ax
                           
            P2SUB164:
                cmp source_index,4
                jne P2SUB165
                
                mov ax,VALUE_DX2
                SUB VALUE_SP2,ax
                
            P2SUB165:
                cmp source_index,13
                jne P2SUB166
                
                mov ax,VALUE_SI2
                SUB VALUE_SP2,ax
                
            P2SUB166:
                cmp source_index,14
                jne P2SUB167
                
                mov ax,VALUE_DI2
                SUB VALUE_SP2,ax   
                
            P2SUB167:
                cmp source_index,15
                jne P2SUB168 
                
                mov ax,VALUE_BP2
                SUB VALUE_SP2,ax
                
            P2SUB168:
                cmp source_index,16
                jne P2SUB169
                
                mov ax,VALUE_SP2
                SUB VALUE_SP2,ax
                
            P2SUB169:
                cmp source_index,21
                jne P2TESTEE3
                
                mov ax,VALUE1
                SUB VALUE_SP2,ax            
                
                
                                                 
             P2TESTEE3: 
             RET  
            P2SUB_INST ENDP		
P2ADD_INST PROC NEAR
            CMP INST_INDEX,2
			JNE P2OPER2
         
            cmp dest_index,1
            jne P2ADD2
            
                    P2ADD11:
            
                        cmp source_index,1
                        jne P2ADD12
                        
                        mov ax,P2Value_AX2
                        ADD P2Value_AX2,ax
                        
                        
                    P2ADD12:
                        cmp source_index,2
                        jne P2ADD13
                        
                        mov ax,VALUE_BX2
                        ADD P2Value_AX2,ax
                        
                    P2ADD13:
                        cmp source_index,3
                        jne P2ADD14
                        
                        mov ax,VALUE_CX2
                        ADD P2Value_AX2,ax
                                   
                    P2ADD14:
                        cmp source_index,4
                        jne P2ADD15
                        
                        mov ax,VALUE_DX2
                        ADD P2Value_AX2,ax
                        
                    P2ADD15:
                        cmp source_index,13
                        jne P2ADD16
                        
                        mov ax,VALUE_SI2
                        ADD P2Value_AX2,ax
                        
                    P2ADD16:
                        cmp source_index,14
                        jne P2ADD17
                        
                        mov ax,VALUE_DI2
                        ADD P2Value_AX2,ax   
                        
                    P2ADD17:
                        cmp source_index,15
                        jne P2ADD18 
                        
                        mov ax,VALUE_SP2
                        ADD P2Value_AX2,ax
                        
                    P2ADD18:
                        cmp source_index,16
                        jne P2ADD19
                        
                        mov ax,VALUE_BP2
                        ADD P2Value_AX2,ax
                        
                    P2ADD19:
                        cmp source_index,21
                        jne P2OPER2
                        
                        mov ax,VALUE1
                        ADD P2Value_AX2,ax
                        
                  
                        
               P2ADD2: 
                        
               cmp dest_index,2
               jne P2ADD3
               
               
              
                    P2ADD21:
            
                        cmp source_index,1
                        jne P2ADD22
                        
                        mov ax,P2Value_AX2
                        ADD VALUE_BX2,ax
                        
                        
                    P2ADD22:
                        cmp source_index,2
                        jne P2ADD23
                        
                        ADD ax,VALUE_BX2
                        ADD VALUE_BX2,ax
                        
                    P2ADD23:
                        cmp source_index,3
                        jne P2ADD24
                        
                        mov ax,VALUE_CX2
                        ADD VALUE_BX2,ax
                                   
                    P2ADD24:
                        cmp source_index,4
                        jne P2ADD25
                        
                        mov ax,VALUE_DX2
                        ADD Value_BX2,ax
                        
                    P2ADD25:
                        cmp source_index,13
                        jne P2ADD26
                        
                        mov ax,VALUE_SI2
                        ADD VALUE_BX2,ax
                        
                    P2ADD26:
                        cmp source_index,14
                        jne P2ADD27
                        
                        mov ax,VALUE_DI2
                        ADD VALUE_BX2,ax   
                        
                    P2ADD27:
                        cmp source_index,15
                        jne P2ADD28 
                        
                        mov ax,VALUE_SP2
                        ADD VALUE_BX2,ax
                        
                    P2ADD28:
                        cmp source_index,16
                        jne P2ADD29
                        
                        mov ax,VALUE_BP2
                        ADD VALUE_BX2,ax
                        
                    P2ADD29:
                        cmp source_index,21
                        jne P2ADD3
                        
                        mov ax,VALUE1
                        ADD VALUE_BX2,ax     
               
            P2ADD3:   
               cmp dest_index,3
               jne P2ADD4
            
                    P2ADD31:
            
                        cmp source_index,1
                        jne P2ADD32
                        
                        mov ax,P2Value_AX2
                        ADD VALUE_CX2,ax
                        
                        
                    P2ADD32:
                        cmp source_index,2
                        jne P2ADD33
                        
                        mov ax,VALUE_BX2
                        ADD VALUE_CX2,ax
                        
                    P2ADD33:
                        cmp source_index,3
                        jne P2ADD34
                        
                        mov ax,VALUE_CX2
                        ADD VALUE_CX2,ax
                                   
                    P2ADD34:
                        cmp source_index,4
                        jne P2ADD35
                        
                        mov ax,VALUE_DX2
                        ADD VALUE_CX2,ax
                        
                    P2ADD35:
                        cmp source_index,13
                        jne P2ADD36
                        
                        mov ax,VALUE_SI2
                        ADD VALUE_CX2,ax
                        
                    P2ADD36:
                        cmp source_index,14
                        jne P2ADD37
                        
                        mov ax,VALUE_DI2
                        ADD VALUE_CX2,ax   
                        
                    P2ADD37:
                        cmp source_index,15
                        jne P2ADD38 
                        
                        mov ax,VALUE_SP2
                        ADD VALUE_CX2,ax
                        
                    P2ADD38:
                        cmp source_index,16
                        jne P2ADD39
                        
                        mov ax,VALUE_BP2
                        ADD VALUE_CX2,ax
                        
                    P2ADD39:
                        cmp source_index,21
                        jne P2ADD4
                        
                        mov ax,VALUE1
                        ADD VALUE_CX2,ax
                        
             P2ADD4:   
               cmp dest_index,4
               jne P2ADD5
            
                    P2ADD41:
            
                        cmp source_index,1
                        jne P2ADD42
                        
                        mov ax,P2Value_AX2
                        ADD VALUE_DX2,ax
                        
                        
                    P2ADD42:
                        cmp source_index,2
                        jne P2ADD43
                        
                        mov ax,VALUE_BX2
                        ADD VALUE_DX2,ax
                        
                    P2ADD43:
                        cmp source_index,3
                        jne P2ADD44
                        
                        mov ax,VALUE_CX2
                        ADD VALUE_DX2,ax
                                   
                    P2ADD44:
                        cmp source_index,4
                        jne P2ADD45
                        
                        mov ax,VALUE_DX2
                        ADD VALUE_DX2,ax
                        
                    P2ADD45:
                        cmp source_index,13
                        jne P2ADD46
                        
                        mov ax,VALUE_SI2
                        ADD VALUE_DX2,ax
                        
                    P2ADD46:
                        cmp source_index,14
                        jne P2ADD47
                        
                        mov ax,VALUE_DI2
                        ADD VALUE_DX2,ax   
                        
                    P2ADD47:
                        cmp source_index,15
                        jne P2ADD48 
                        
                        mov ax,VALUE_SP2
                        ADD VALUE_DX2,ax
                        
                    P2ADD48:
                        cmp source_index,16
                        jne P2ADD49
                        
                        mov ax,VALUE_BP2
                        ADD VALUE_DX2,ax
                        
                    P2ADD49:
                        cmp source_index,21
                        jne P2ADD5
                        
                        mov ax,VALUE1
                        ADD VALUE_DX2,ax
                        
                        
              P2ADD5:   
               cmp dest_index,5
               jne P2ADD6
               
                    P2ADD51:
                        cmp source_index,5
                        jne P2ADD52
                        
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        ADD P2Value_AX2,AX
                        
                    P2ADD52:
                        cmp source_index,6
                        jne P2ADD53
                        
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        ADD P2Value_AX2,AX
                    
                    P2ADD53:
                        cmp source_index,7
                        jne P2ADD54
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        ADD P2Value_AX2,AX 
                        
                    P2ADD54:
                        cmp source_index,8
                        jne P2ADD55
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        ADD P2Value_AX2,AX
                        
                   P2ADD55:
                        cmp source_index,9
                        jne P2ADD56
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        SHR AX,8
                        ADD P2Value_AX2,AX
                        
                    P2ADD56:
                        cmp source_index,10
                        jne P2ADD57
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL 
                        SHR AX,8
                        ADD P2Value_AX2,AX
                    
                    P2ADD57:
                        cmp source_index,11
                        jne P2ADD58
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        SHR AX,8
                        ADD P2Value_AX2,AX 
                        
                    P2ADD58:
                        cmp source_index,12
                        jne P2ADD59
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        SHR AX,8
                        ADD P2Value_AX2,AX
                        
                    P2ADD59:
                        cmp source_index,21
                        jne P2ADD6
                        
                        mov AX,VALUE1
                        SHL AX,8
                        ADD P2Value_AX2,AX    
                          
                        
               P2ADD6:   
               cmp dest_index,6
               jne P2ADD7
               
                    P2ADD61:
                        cmp source_index,5
                        jne P2ADD62
                        
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        ADD VALUE_BX2,AX
                        
                    P2ADD62:
                        cmp source_index,6
                        jne P2ADD63
                        
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        ADD VALUE_BX2,AX
                    
                    P2ADD63:
                        cmp source_index,7
                        jne P2ADD64
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        ADD VALUE_BX2,AX 
                        
                    P2ADD64:
                        cmp source_index,8
                        jne P2ADD65
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        ADD VALUE_BX2,AX
                        
                   P2ADD65:
                        cmp source_index,9
                        jne P2ADD66
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX2,AX
                        
                    P2ADD66:
                        cmp source_index,10
                        jne P2ADD67
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_BX2,AX
                    
                    P2ADD67:
                        cmp source_index,11
                        jne P2ADD68
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX2,AX 
                        
                    P2ADD68:
                        cmp source_index,12
                        jne P2ADD69
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_BX2,AX
                        
                    P2ADD69:
                        cmp source_index,21
                        jne P2ADD7
                        
                        mov AX,VALUE1
                        SHL AX,8
                        ADD VALUE_BX2,AX      
                        
                        
                        
               P2ADD7:   
               cmp dest_index,7
               jne P2ADD8
               
                    P2ADD71:
                        cmp source_index,5
                        jne P2ADD72
                        
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        ADD VALUE_CX2,AX
                        
                    P2ADD72:
                        cmp source_index,6
                        jne P2ADD73
                        
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        ADD VALUE_CX2,AX
                    
                    P2ADD73:
                        cmp source_index,7
                        jne P2ADD74
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        ADD VALUE_CX2,AX 
                        
                    P2ADD74:
                        cmp source_index,8
                        jne P2ADD75
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        ADD VALUE_CX2,AX
                        
                   P2ADD75:
                        cmp source_index,9
                        jne P2ADD76
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX2,AX
                        
                    P2ADD76:
                        cmp source_index,10
                        jne P2ADD77
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_CX2,AX
                    
                    P2ADD77:
                        cmp source_index,11
                        jne P2ADD78
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX2,AX 
                        
                    P2ADD78:
                        cmp source_index,12
                        jne P2ADD79
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_CX2,AX 
                        
                    P2ADD79:
                        cmp source_index,21
                        jne P2ADD8
                        
                        mov AX,VALUE1
                        SHR AX,8
                        ADD VALUE_CX2,AX
                                   
                        
              P2ADD8:   
               cmp dest_index,8
               jne P2ADD9
               
                     P2ADD81:
                        cmp source_index,5
                        jne P2ADD82
                               
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        ADD VALUE_DX2,AX
                        
                    P2ADD82:
                        cmp source_index,6
                        jne P2ADD83
                               
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        ADD VALUE_DX2,AX
                    
                    P2ADD83:
                        cmp source_index,7
                        jne P2ADD84
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        ADD VALUE_DX2,AX 
                        
                    P2ADD84:
                        cmp source_index,8
                        jne P2ADD85
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        ADD VALUE_DX2,AX
                        
                    P2ADD85:
                        cmp source_index,9
                        jne P2ADD86
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX2,AX
                        
                    P2ADD86:
                        cmp source_index,10
                        jne P2ADD87
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL 
                        SHR AX,8
                        ADD VALUE_DX2,AX
                    
                    P2ADD87:
                        cmp source_index,11
                        jne P2ADD88
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX2,AX 
                        
                    P2ADD88:
                        cmp source_index,12
                        jne P2ADD89
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        SHR AX,8
                        ADD VALUE_DX2,AX 
                        
                        
                    P2ADD89:
                        cmp source_index,21
                        jne P2ADD9
                        
                        mov AX,VALUE1
                        SHR AX,8
                        ADD VALUE_DX2,AX
              
              
              P2ADD9:   
               cmp dest_index,9
               jne P2ADD10
               
                     P2ADD91:
                        cmp source_index,5
                        jne P2ADD92
                               
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        SHL AX,8
                        ADD P2Value_AX2,AX
                        
                    P2ADD92:
                        cmp source_index,6
                        jne P2ADD93
                               
                        mov AX,VALUE_BX2
                        SUB AL,AL
                        SHL AX,8
                        ADD P2Value_AX2,AX
                    
                    P2ADD93:
                        cmp source_index,7
                        jne P2ADD94
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        SHL AX,8
                        ADD P2Value_AX2,AX 
                        
                    P2ADD94:
                        cmp source_index,8
                        jne P2ADD95
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        SHL AX,8
                        ADD P2Value_AX2,AX
                        
                   P2ADD95:
                        cmp source_index,9
                        jne P2ADD96
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        ADD P2Value_AX2,AX
                        
                    P2ADD96:
                        cmp source_index,10
                        jne P2ADD97
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL
                        ADD P2Value_AX2,AX
                    
                    P2ADD97:
                        cmp source_index,11
                        jne P2ADD98
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        ADD P2Value_AX2,AX 
                        
                    P2ADD98:
                        cmp source_index,12
                        jne P2ADD10
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        ADD P2Value_AX2,AX
                        
                    P2ADD99:
                        cmp source_index,21
                        jne P2ADD10
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD P2Value_AX2,AX 
                        
                            
              
              
              P2ADD10:   
               cmp dest_index,10
               jne P2ADDD11
               
                    P2ADD101:
                        cmp source_index,5
                        jne P2ADD102
                               
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX2,AX
                        
                    P2ADD102:
                        cmp source_index,6
                        jne P2ADD103
                               
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX2,AX
                    
                    P2ADD103:
                        cmp source_index,7
                        jne P2ADD104
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX2,AX 
                        
                    P2ADD104:
                        cmp source_index,8
                        jne P2ADD105
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_BX2,AX
                        
                   P2ADD105:
                        cmp source_index,9
                        jne P2ADD106
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        ADD VALUE_BX2,AX
                        
                    P2ADD106:
                        cmp source_index,10
                        jne P2ADD107
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL
                        ADD VALUE_BX2,AX
                    
                    P2ADD107:
                        cmp source_index,11
                        jne P2ADD108
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        ADD VALUE_BX2,AX 
                        
                    P2ADD108:
                        cmp source_index,12
                        jne P2ADD109
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        ADD VALUE_BX2,AX 
                    
                    P2ADD109:
                        cmp source_index,21
                        jne P2ADDD11
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_BX2,AX             
              
              
              P2ADDD11:   
               cmp dest_index,11
               jne P2ADDD12
               
                     P2ADD111:
                        cmp source_index,5
                        jne P2ADD112
                               
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX2,AX
                        
                    P2ADD112:
                        cmp source_index,6
                        jne P2ADD113
                               
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX2,AX
                    
                    P2ADD113:
                        cmp source_index,7
                        jne P2ADD114
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX2,AX 
                        
                   P2ADD114:
                        cmp source_index,8
                        jne P2ADD115
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_CX2,AX
                        
                   P2ADD115:
                        cmp source_index,9
                        jne P2ADD116
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        ADD VALUE_CX2,AX
                        
                    P2ADD116:
                        cmp source_index,10
                        jne P2ADD117
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL
                        ADD VALUE_CX2,AX
                    
                    P2ADD117:
                        cmp source_index,11
                        jne P2ADD118
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        ADD VALUE_CX2,AX 
                        
                    P2ADD118:
                        cmp source_index,12
                        jne P2ADD119
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        ADD VALUE_CX2,AX
                        
                    P2ADD119:
                        cmp source_index,21
                        jne P2ADDD12
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_CX2,AX          
              
              
              P2ADDD12:   
               cmp dest_index,12
               jne P2OPER2
               
                     P2ADD121:
                        cmp source_index,5
                        jne P2ADD122
                               
                        
                        mov AX,P2Value_AX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX2,AX
                        
                    P2ADD122:
                        cmp source_index,6
                        jne P2ADD123
                               
                        mov AX,VALUE_BX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX2,AX
                    
                    P2ADD123:
                        cmp source_index,7
                        jne P2ADD124
                        
                        mov AX,VALUE_CX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX2,AX 
                        
                    P2ADD124:
                        cmp source_index,8
                        jne P2ADD125
                        
                        mov AX,VALUE_DX2
                        SUB AH,AH
                        SHL AX,8
                        ADD VALUE_DX2,AX
                        
                   P2ADD125:
                        cmp source_index,9
                        jne P2ADD126
                        
                        mov AX,P2Value_AX2
                        SUB AL,AL
                        ADD VALUE_DX2,AX
                        
                   P2ADD126:
                        cmp source_index,10
                        jne P2ADD127
                        
                        mov AX,VALUE_BX2
                        SUB AL,AL
                        ADD VALUE_DX2,AX
                    
                    P2ADD127:
                        cmp source_index,11
                        jne P2ADD128
                        
                        mov AX,VALUE_CX2
                        SUB AL,AL
                        ADD VALUE_DX2,AX 
                        
                    P2ADD128:
                        cmp source_index,12
                        jne P2ADD129
                        
                        mov AX,VALUE_DX2
                        SUB AL,AL
                        ADD VALUE_DX2,AX     
                    
                    P2ADD129:
                        cmp source_index,21
                        jne P2OPER2
                        
                        mov AX,VALUE1
                        SUB AL,AL
                        ADD VALUE_DX2,AX  
                        
                        
             P2OPER2:
                        
            RET 
           P2ADD_INST ENDP 
P2MUL_INST PROC NEAR
         CMP INST_INDEX,15
         JNE P2DONE3
        P2AAX3:
        CMP Dest_Index,1
        JNE P2BBX3
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL
        MOV VALUE_DX2,DX
        P2OL:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2BBX3:
        CMP Dest_Index,2
        JNE P2CCX3
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL2
        MOV VALUE_DX2,DX
        P2OL2:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2CCX3:
        CMP Dest_Index,3
        JNE P2DDX3
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
         JZ P2OL3
        MOV VALUE_DX2,DX
        P2OL3:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2DDX3:
        CMP Dest_Index,4
        JNE P2AAL3
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL4
        MOV VALUE_DX2,DX
        P2OL4:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2AAL3:     ;IF IT IS NOT WORKING WE CAN USE MOV AX,P2Value_AX2 THEN SUB AH,AH THEN DEC AL SAME AS BELOW 
        CMP Dest_Index,5
        JNE P2BBL3
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CL
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2BBL3:
        CMP Dest_Index,6
        JNE P2CCL3
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CL
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2CCL3:
        CMP Dest_Index,7
        JNE P2DDL3
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CL
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2DDL3:
        CMP Dest_Index,8
        JNE P2AAH3
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CL
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2AAH3:
        CMP Dest_Index,9
        JNE P2BBH3
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CH
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2BBH3:
        CMP Dest_Index,10
        JNE P2CCH3
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CH
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2CCH3:
        CMP Dest_Index,11
        JNE P2DDH3
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CH
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2DDH3:
        CMP Dest_Index,12
        JNE P2SSI3
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        MUL CH
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2SSI3:
        CMP Dest_Index,13
        JNE P2DDI3
        MOV CX,VALUE_SI2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL5
        MOV VALUE_DX2,DX
        P2OL5:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2DDI3:
        CMP Dest_Index,14
        JNE P2BBP3
        MOV CX,VALUE_DI2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL6
        MOV VALUE_DX2,DX
        P2OL6:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2BBP3:
        CMP Dest_Index,15
        JNE P2SSP3
        MOV CX,VALUE_BP2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL7
        MOV VALUE_DX2,DX
        P2OL7:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        
        P2SSP3:
        CMP Dest_Index,16
        JNE P2DONE3
        MOV CX,VALUE_SP2
        MOV AX,P2Value_AX2
        MUL CX
        AND DX,1111
        JZ P2OL8
        MOV VALUE_DX2,DX
        P2OL8:
        MOV P2Value_AX2,AX
        JMP P2DONE3
        
        P2DONE3:
        RET
     P2MUL_INST ENDP
P2NOP_INST PROC NEAR                                              
CMP INST_INDEX,16
RET
P2NOP_INST ENDP       
P2DIV_INST PROC NEAR 
CMP INST_INDEX,14
JNE P2DONE4
        P2AAX4:	
        CMP Dest_Index,1
        JNE P2BBX4
        MOV DX,0
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV0
        MOV VALUE_DX2,DX
        P2DV0:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2BBX4:
        CMP Dest_Index,2
        JNE P2CCX4
        MOV DX,0
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV1
        MOV VALUE_DX2,DX
        P2DV1:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2CCX4:
        CMP Dest_Index,3
        JNE P2DDX4
        MOV DX,0
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111   ;DX has a value cuz the num that result from the product is greater than 16bits
        JZ P2DV2
        MOV VALUE_DX2,DX
        P2DV2:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2DDX4:
        CMP Dest_Index,4
        JNE P2AAL4
        MOV DX,0
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV3
        MOV VALUE_DX2,DX
        P2DV3:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2AAL4:     ;IF IT IS NOT WORKING WE CAN USE MOV AX,P2Value_AX2 THEN SUB AH,AH THEN DEC AL SAME AS BELOW 
        CMP Dest_Index,5
        JNE P2BBL4
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CL
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2BBL4:
        CMP Dest_Index,6
        JNE P2CCL4
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CL
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2CCL4:
        CMP Dest_Index,7
        JNE P2DDL4
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CL
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2DDL4:
        CMP Dest_Index,8
        JNE P2AAH4
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CL
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2AAH4:
        CMP Dest_Index,9
        JNE P2BBH4
        MOV CX,P2Value_AX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CH
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2BBH4:
        CMP Dest_Index,10
        JNE P2CCH4
        MOV CX,VALUE_BX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CH
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2CCH4:
        CMP Dest_Index,11
        JNE P2DDH4
        MOV CX,VALUE_CX2
        MOV AX,P2Value_AX2
        SUB AH,AH
        DIV CH
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2DDH4:
        CMP Dest_Index,12
        JNE P2SSI4
        MOV CX,VALUE_DX2
        MOV AX,P2Value_AX2
        DIV CH
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2SSI4:
        CMP Dest_Index,13
        JNE P2DDI4
        MOV DX,0
        MOV CX,VALUE_SI2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV7
        MOV VALUE_DX2,DX
        P2DV7:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2DDI4:
        CMP Dest_Index,14
        JNE P2BBP4
        MOV DX,0
        MOV CX,VALUE_DI2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV8
        MOV VALUE_DX2,DX
        P2DV8:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2BBP4:
        CMP Dest_Index,15
        JNE P2SSP4
        MOV DX,0
        MOV CX,VALUE_BP2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV9
        MOV VALUE_DX2,DX
        P2DV9:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        
        P2SSP4:
        CMP Dest_Index,16
        JNE P2DONE4
        MOV DX,0
        MOV CX,VALUE_SP2
        MOV AX,P2Value_AX2
        DIV CX
        AND DX,1111
        JZ P2DV10
        MOV VALUE_DX2,DX
        P2DV10:
        MOV P2Value_AX2,AX
        JMP P2DONE4
        
        P2DONE4:
        RET
        P2DIV_INST ENDP
P2INC_INST PROC NEAR
      CMP INST_INDEX,12
      JNE P2DONE 
        P2AAX:
        CMP Dest_Index,1
        JNE P2BBX
        MOV AX,0
        MOV AX,P2Value_AX2
        INC AX
        MOV P2Value_AX2,AX
        JMP P2DONE
        
        P2BBX:
        CMP Dest_Index,2
        JNE P2CCX
        MOV BX,0
        MOV BX,VALUE_BX2
        INC BX
        MOV VALUE_BX2,BX
        JMP P2DONE
        
        P2CCX:
        CMP Dest_Index,3
        JNE P2DDX
        MOV AX,VALUE_CX2
        INC AX
        MOV VALUE_CX2,AX
        JMP P2DONE
        
        P2DDX:
        CMP Dest_Index,4
        JNE P2AAL
        MOV AX,VALUE_DX2
        INC AX
        MOV VALUE_DX2,AX
        JMP P2DONE
        
        P2AAL:
        CMP Dest_Index,5
        JNE P2BBL
        MOV AX,P2Value_AX2
        INC AL
        MOV P2Value_AX2,AX
        JMP P2DONE
        
        P2BBL:
        CMP Dest_Index,6
        JNE P2CCL
        MOV AX,VALUE_BX2
        INC AL
        MOV VALUE_BX2,AX
        JMP P2DONE
        
        P2CCL:
        CMP Dest_Index,7
        JNE P2DDL
        MOV AX,VALUE_CX2
        INC AL
        MOV VALUE_CX2,AX
        JMP P2DONE
        
        P2DDL:
        CMP Dest_Index,8
        JNE P2AAH
        MOV AX,VALUE_DX2
        INC AL
        MOV VALUE_DX2,AX
        JMP P2DONE
        
        P2AAH:
        CMP Dest_Index,9
        JNE P2BBH
        MOV AX,P2Value_AX2
        INC AH
        MOV P2Value_AX2,AX
        JMP P2DONE
        
        P2BBH:
        CMP Dest_Index,10
        JNE P2CCH
        MOV AX,VALUE_BX2
        INC AH
        MOV VALUE_BX2,AX
        JMP P2DONE 
        
        P2CCH:
        CMP Dest_Index,11
        JNE P2DDH
        MOV AX,VALUE_CX2
        INC AH
        MOV VALUE_CX2,AX
        JMP P2DONE 
        
        P2DDH:
        CMP Dest_Index,12
        JNE P2SSI
        MOV AX,VALUE_DX2
        INC AH
        MOV VALUE_DX2,AX
        JMP P2DONE
        
        P2SSI:
        CMP Dest_Index,13
        JNE P2DDI
        MOV AX,VALUE_SI2
        INC AX
        MOV VALUE_SI2,AX
        JMP P2DONE
        
        P2DDI:
        CMP Dest_Index,14
        JNE P2BBP
        MOV AX,VALUE_DI2
        INC AX
        MOV VALUE_DI2,AX
        JMP P2DONE
        
        P2BBP:
        CMP Dest_Index,15
        JNE P2SSP
        MOV AX,VALUE_BP2
        INC AX
        MOV VALUE_BP2,AX
        JMP P2DONE
        
        P2SSP:
        CMP Dest_Index,16
        JNE P2DONE
        MOV AX,VALUE_SP2
        INC AX
        MOV VALUE_SP2,AX
        JMP P2DONE
        
        P2DONE:
        RET
        P2INC_INST ENDP                    
P2DEC_INST PROC NEAR
        CMP INST_INDEX,13
        JNE P2DONE2

        P2AAX2:
        CMP Dest_Index,1
        JNE P2BBX2
        MOV AX,P2Value_AX2
        DEC AX
        MOV P2Value_AX2,AX
        JMP P2DONE2
        
        P2BBX2:
        CMP Dest_Index,2
        JNE P2CCX2
        MOV BX,VALUE_BX2
        DEC BX
        MOV VALUE_BX2,BX
        JMP P2DONE2
        
        P2CCX2:
        CMP Dest_Index,3
        JNE P2DDX2
        MOV AX,VALUE_CX2
        DEC AX
        MOV VALUE_CX2,AX
        JMP P2DONE2
        
        P2DDX2:
        CMP Dest_Index,4
        JNE P2AAL2
        MOV AX,VALUE_DX2
        DEC AX
        MOV VALUE_DX2,AX
        JMP P2DONE2
        
        P2AAL2:
        CMP Dest_Index,5  ;AL
        JNE P2BBL2
        MOV AX,P2Value_AX2
        DEC AL
        MOV P2Value_AX2,AX
        JMP P2DONE2
        
        P2BBL2:
        CMP Dest_Index,6
        JNE P2CCL2
        MOV AX,VALUE_BX2
        DEC AL
        MOV VALUE_BX2,AX
        JMP P2DONE2
        
        P2CCL2:
        CMP Dest_Index,7
        JNE P2DDL2
        MOV CX,VALUE_CX2
        DEC CL
        MOV VALUE_CX2,CX
        JMP P2DONE2
        
        P2DDL2:
        CMP Dest_Index,8
        JNE P2AAH2
        MOV AX,VALUE_DX2
        DEC AL
        MOV VALUE_DX2,AX
        JMP P2DONE2
        
        P2AAH2:
        CMP Dest_Index,9
        JNE P2BBH2
        MOV AX,P2Value_AX2
        DEC AH
        MOV P2Value_AX2,AX
        JMP P2DONE2
        
        P2BBH2:
        CMP Dest_Index,10
        JNE P2CCH2
        MOV AX,VALUE_BX2
        DEC AH
        MOV VALUE_BX2,AX
        JMP P2DONE2
        
        P2CCH2:
        CMP Dest_Index,11
        JNE P2DDH2
        MOV AX,VALUE_CX2
        DEC AH
        MOV VALUE_CX2,AX
        JMP P2DONE2 
        
        P2DDH2:
        CMP Dest_Index,12
        JNE P2SSI2
        MOV AX,VALUE_DX2
        DEC AH
        MOV VALUE_DX2,AX
        JMP P2DONE2
        
        P2SSI2:
        CMP Dest_Index,13
        JNE P2DDI2
        MOV AX,VALUE_SI2
        DEC AX
        MOV VALUE_SI2,AX
        JMP P2DONE2
        
        P2DDI2:
        CMP Dest_Index,14
        JNE P2BBP2
        MOV AX,VALUE_DI2
        DEC AX
        MOV VALUE_DI2,AX
        JMP P2DONE2
        
        P2BBP2:
        CMP Dest_Index,15
        JNE P2SSP2
        MOV AX,VALUE_BP2
        DEC AX
        MOV VALUE_BP2,AX
        JMP P2DONE2
        
        P2SSP2:
        CMP Dest_Index,16
        JNE P2DONE2
        MOV AX,VALUE_SP2
        DEC AX
        MOV VALUE_SP2,AX
        JMP P2DONE2
        
        P2DONE2:
        RET
        P2DEC_INST ENDP        
        
		END