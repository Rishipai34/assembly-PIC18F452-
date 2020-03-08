#include<p18f452.inc>
    org 0 ; program to determine the first 6 fibonacci numbers
    movlw 6h
    movwf 19h
    movlw 0h
    movwf 18h
    movlw 1h
add movwf 17h
    addwf 18h,w 
    movff 17h,18h
    decfsz 19h,f
    goto add
    end
    


