#include<p18f452.inc>
    org 0; Program to multiply two numbers
    movlw 5h
    movwf 0ah
    movlw 5h
    movwf 0h
    movlw 5
add addwf 0ah,f
    decfsz 0h,f
    goto add
    end

