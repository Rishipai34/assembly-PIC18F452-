#include<p18f452.inc>
    org 0; code to determine the sum of first 11 natural numbers 
    movlw 0ah
    movwf 11h
    movlw 1h
    movwf 10h
add incf 10h,f
    addwf 10h,w
    decfsz 11h,f
    goto add
    end


