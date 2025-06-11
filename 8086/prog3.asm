section .bss

section .data

section .text
    global _start
    
_start:

; This program swaps the contents of registers B and C

MOV AX, 0xABCD ; Move immediate value 0xABCD into register AX

MOV BX, 0x1234 ; Move immediate value 0x1234 into register BX

MOV AX, BX ; Copy the contents of register BX into register AX (AX now contains 0x1234)

INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program