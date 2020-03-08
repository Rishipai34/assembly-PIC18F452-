#include<p18f452.inc>
porta equ 0xf80
trisa equ 0xf92
	org 0   ; program to blink an led 50 times 
    movlw 0x32
    movwf 0x14
    movlw 0x0
    movwf trisa  
    bsf porta,0
here btg porta,0 
    decf 0x14
    bnz st    
    goto last    
st  movlw 0x64
    movwf 0x15
ca1 movlw 0x64
    movwf 0x16
    decf 0x15
    bnz ca2
    goto here
ca2 movlw 0x64
    movwf 0x17
    decf 0x16
    bnz ca3
    goto ca1
ca3 decfsz 0x16
    bnz ca3
    goto ca2
last
    end
    

    
    
    


