section .bss

section .data

section .text
    global _start
    
_start:

; This program swaps the contents of registers B and C

MOV SI, 0x9500 ; Load the address 0x9500 into register SI
MOV DI, 0x9600 ; Load the address 0x9600 into register DI
MOV CL, 0x10 ; Set the count to 10 for byte-wise operation
MOV AL, [SI] (label) ; Load the byte from memory address 0x9500 into register AL
MOV [DI], AL ; Store the contents of register AL into memory address 0x9600
INC SI ; Increment SI to point to the next byte
INC DI ; Increment DI to point to the next byte
JNC label; ; Jump if no carry (if the last operation did not cause a carry)
INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program