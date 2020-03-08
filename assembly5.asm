#include<p18f452.inc>
trisa equ 0x0f92
trisb equ 0x0f93
porta equ 0x0f80
portb equ 0x0f81
adcon1 equ 0x0fc1
 
	org 0; progra for dc motor speed control
    movlw 0x0ff
    movwf trisa
    movlw 0x0
    movwf trisb
    movwf porta
    movlw 0x011
    movwf adcon1

here btfsc porta,0
    goto c1
    btfsc porta,1
    goto c2
    btfsc porta,2
    goto c3
    goto last
c1  movlw 0x33
    movwf 0x22
    movlw 0x65
    movwf 0x23
c11 decf 0x22
    bnz c13 
    goto c12
c13 bsf portb,0
    goto c11
c12 decf 0x23
    bnz c14
    goto last 
c14 bcf portb,0
    goto c12
c2  movlw 0x33
    movwf 0x22
    movlw 0x96
    movwf 0x23
c21 decf 0x22
    bnz c23
    goto c22
c23 bsf portb,0
    goto c21
c22 decf 0x23
    bnz c24
    goto last 
c24 bcf portb,0
    goto c22
c3  movlw 0x33
    movwf 0x22
    movlw 0x0c8
    movwf 0x23
c31 decf 0x22
    bnz c33
    goto c32
c33 bsf portb,0
    goto c31
c32 decf 0x23
    bnz c34
    goto last 
c34 bcf portb,0
    goto c12
last goto here 
    end


