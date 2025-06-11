section .bss

section .data

section .text
    global _start
    
_start:

; Exchange the exchange the location of two variables in memory 0x9500 and 0x9501

MOV AL, [0x9500] ; Load the byte from memory address 0x9500 into register AL
MOV BL, [0x9501] ; Load the byte from memory address 0x9501 into register BL

MOV [0x9500], BL ; Store the contents of register BL into memory address 0x9500
MOV [0x9501], AL ; Store the contents of register AL into memory address 0x9501

INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program