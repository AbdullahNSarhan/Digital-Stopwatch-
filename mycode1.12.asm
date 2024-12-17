#make_bin#

; BIN is plain binary format similar to .com format, but not limited to 1 segment;
; All values between # are directives, these values are saved into a separate .binf file.
; Before loading .bin file emulator reads .binf file with the same file name.

; All directives are optional, if you don't need them, delete them.

; set loading address, .bin file will be loaded to this address:
#LOAD_SEGMENT=0500h#
#LOAD_OFFSET=0000h#

; set entry point:
#CS=0500h#	; same as loading segment
#IP=0000h#	; same as loading offset

; set segment registers
#DS=0500h#	; same as loading segment
#ES=0500h#	; same as loading segment

; set stack
#SS=0500h#	; same as loading segment
#SP=FFFEh#	; set to top of loading segment

; set general registers (optional)
#AX=0000h#
#BX=0000h#
#CX=0000h#
#DX=0000h#
#SI=0000h#
#DI=0000h#
#BP=0000h#

DATA SEGMENT
    PORTA EQU 00H           ;Set label PORTA to the port address of port A 
    PORTB EQU 02H           ;Set label PORTB to the port address of port B
    PORTC EQU 04H           ;Set label PORTC to the port address of port C
    PORT_CON EQU 06H        ;Set label PORT_CON to the port address of control register
DATA ENDS
CODE    SEGMENT PUBLIC 'CODE'
        ASSUME CS:CODE
	
    MOV AX, DATA            ;temporarily moving Data Segment contents to a General-Purpose Register (AX)
    MOV DS, AX              ;finally moving that to Data Segment Register (DS)
    
    ORG 0000H
	
START:

    MOV DX, PORT_CON        ;moving Control Port address to DX
    MOV AL, 10000000B       ;setting all ports of 8255A as OUTPUT ports
    OUT DX, AL  
    MOV CL, 0
    MOV BL, 0

restart:
   
    MOV CX, 3FFFH           
L0: MOV DX, PORTA          
    MOV AL, 11000000B       
    OUT DX, AL          
    LOOP L0      
 H:     
    MOV CX, 3FFFH           
L1: MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL          
    LOOP L1                 
;1
    MOV CX, 3FFFH           
L2: MOV DX, PORTB           
    MOV AL, 11111001B       
    OUT DX, AL              
    LOOP L2                 
;2
    MOV CX, 3FFFH           
L3: MOV DX, PORTB           
    MOV AL, 10100100B       
    OUT DX, AL              
    LOOP L3                     
;3
    MOV CX, 3FFFH           
L4: MOV DX, PORTB           
    MOV AL, 10110000B       
    OUT DX, AL              
    LOOP L4                 
;4
    MOV CX, 3FFFH           
L5: MOV DX, PORTB           
    MOV AL, 10011001B
    OUT DX, AL              
    LOOP L5                 
;5
    MOV CX, 3FFFH           
L6: MOV DX, PORTB           
    MOV AL, 10010010B       
    OUT DX, AL              
    LOOP L6                 
;6
    MOV CX, 3FFFH           
L7: MOV DX, PORTB           
    MOV AL, 10000010B       
    OUT DX, AL              
    LOOP L7                 
;7
    MOV CX, 3FFFH           
L8: MOV DX, PORTB           
    MOV AL, 11111000B       
    OUT DX, AL              
    LOOP L8                 
;8
    MOV CX, 3FFFH           
L9: MOV DX, PORTB           
    MOV AL, 10000000B       
    OUT DX, AL              
    LOOP L9                 
;9
    MOV CX, 3FFFH           
L10: MOV DX, PORTB           
    MOV AL, 10010000B       
    OUT DX, AL              
    LOOP L10  
      
   ADD BL,1   
   CMP BL, 1
   JE one
   CMP BL, 2
   JE two
   CMP BL, 3
   JE three
   CMP BL, 4
   JE four
   CMP BL, 5
   JE five
   CMP BL, 6
   JE six
   CMP BL, 7
   JE seven
   CMP BL, 8
   JE eight
   CMP BL, 9
   JE nine
    CMP BL, 10
   JE ten
 one: 
   L14:  
    MOV DX, PORTA 
    MOV AL,11111001B 
    OUT DX, AL
    MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL          
    
    LOOP L14 
    JMP H     
 two: 
   L35:  
    MOV DX, PORTA 
    MOV AL,10100100B 
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L35
    JMP H    
  three: 
   L15:  
    MOV DX, PORTA 
    MOV AL,10110000B
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L15 
    JMP H   
   four: 
   L16:  
    MOV DX, PORTA 
    MOV AL,10011001B
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L16
    JMP H         
    five: 
   L17:  
    MOV DX, PORTA 
    MOV AL,10010010B
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L17 
    JMP H 
    six: 
   L18:  
    MOV DX, PORTA 
    MOV AL,10000010B
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L18
    JMP H
    seven: 
   L19:  
    MOV DX, PORTA 
    MOV AL,11111000B
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L19 
    JMP H   
    eight: 
   L30:  
    MOV DX, PORTA 
    MOV AL,10000000B
    OUT DX, AL
    LOOP L30 
    JMP H
    nine: 
   L31:  
    MOV DX, PORTA 
    MOV AL,10010000B 
    OUT DX, AL
     MOV DX, PORTB          
    MOV AL, 11000000B       
    OUT DX, AL    
    LOOP L31    
    JMP H   
    ten:
    MOV BL, 0
    JMP restart
  
CODE    ENDS
        END START
	;CODE FOR 0 11000000B
	;CODE FOR 1 11111001B
	;CODE FOR 2 10100100B 
	;CODE FOR 3 10110000B
	;CODE FOR 4 10011001B
	;CODE FOR 5 10010010B
	;CODE FOR 6 10000010B
	;CODE FOR 7 11111000B
	;CODE FOR 8 10000000B
	;CODE FOR 9 10010000B
HLT           ; halt!