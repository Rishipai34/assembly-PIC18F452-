#include<p18f452.inc>
; Program to ind the smallest number that can be expressed as the sum of two cubes in two different ways
    
x equ 0x9
y equ 0x8
x_l equ 0x10
x_h equ 0x11
y_l equ 0x12
y_h equ 0x13
count_l equ 0x16
count_h equ 0x17
temp_l equ 0x18
temp_h equ 0x19
temp2_l equ 0x32
temp2_h equ 0x33
temp equ 0x34
counter_2 equ 0x30 
top equ 0x31
 equal equ 0x035
 org 0
    movlw 0x0
    movwf count_l
    movwf count_h
i1  movff x_l,temp_l
    movff x_h,temp_h
    call cuber:
    call checker:
    


    
    
    
    
    
    org 250;cuber 
    cuber:
    movlw 0x2
    movwf 0x50
start    
    movff temp,counter_2
mul movff temp_l,temp2_l
    movff temp_h,temp2_h
    call adder 
    decfsz counter_2
    bra mul
    decfsz 0x50
    bra start
    return
   
    
    
    
    
    org 750 
    checker:
    movlw temp_l
    subwf temp2_l,w
    bnz su2
    movlw temp_h
    subwf temp2_h,w
    bz su1
su2 movlw 0x0
    movwf equal
    return
su1 movlw 0x1
    movwf equal
    return
    
    org 1000
    increment:
    incf temp_l
    bc  in1
    return
in1 incf temp_h
    return
    
    
    
    
    
    
    
    
    
    
    org 500
    adder:
h_byte equ 0x21
l_byte equ 0x22
h_byte2 equ 0x23
l_byte2 equ 0x24
      org 0; 
    movlw temp2_h
    movwf h_byte2
    movlw temp2_l
    movwf l_byte2
    movlw temp_h
    movwf h_byte
    movlw temp_l
    movwf l_byte
    movf l_byte2,w
    addwf l_byte,f
    movf l_byte,w
    movlw temp_h
    btfsc 0x0fd8,0
    incf h_byte2,f
    movf h_byte,w
    addwf h_byte2,w
    movwf temp_h
    
    
    
    