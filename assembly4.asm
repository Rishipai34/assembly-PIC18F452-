#include<p18f452.inc>
h_byte equ 0x12
l_byte equ 0x13
h_byte2 equ 0x14
l_byte2 equ 0x15
      org 0; 
    movlw 67h
    movwf h_byte2
    movlw 76h
    movwf l_byte2
    movlw 66h
    movwf h_byte
    movlw 80h
    movwf l_byte
    movf l_byte2,w
    addwf l_byte,f
    btfsc 0x0fd8,0
    incf h_byte2,f
    movf h_byte,w
    addwf h_byte2,w
    movwf h_byte
    
    end
    
    
  
    
    
  

    
    
    


