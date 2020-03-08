#include<p18f452.inc>
    org 0     ; Program to add two numbers
    movlw 6; move 6 to wreg 
    addlw 5; add 5 to wreg 
    movwf 0ah;move sum to a reg
    movlw 0;move 0 to wreg
    end


