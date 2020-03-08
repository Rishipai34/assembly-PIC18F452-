#include<p18f452.inc>
    org 0 ;divide 60h by 20h
    movlw 60
    movwf 0x12
    clrf 20h
    movlw 20
    movwf 0x13
    run
    subwf 0x12,f
    incf 0x20
    bnz run
    end


