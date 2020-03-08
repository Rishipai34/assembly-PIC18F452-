#include<p18f452.inc>
    org 0; program to swap nibbles
    movlw 0x0f
    movwf 0x10
    movlw 0x04
    movwf 0x9
loop rrcf 0x10
    decfsz 0x9
    goto loop
    end

