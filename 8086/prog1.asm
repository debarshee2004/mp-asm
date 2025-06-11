section .bss

section .data

section .text
    global _start
    
_start:

; Interchange the contents of two 8bit registers

MOV BL, 0xAB ; Move immediate value 0xAB into register BL

MOV CL, 0x12 ; Move immediate value 0x12 into register CL

MOV DL, BL ; Copy the contents of register BL into register DL (DL now contains 0xAB)

MOV BL, CL ; Copy the contents of register CL into register BL (BL now contains 0x12)

MOV CL, DL ; Copy the contents of register DL into register CL (CL now contains 0xAB)

INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program