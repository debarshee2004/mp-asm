section .bss

section .data

section .text
    global _start
    
_start:

; 

MOV SI, 0x8500 ; Load the address 0x8500 into register SI
MOV DI, 0x9700 ; Load the address 0x9700 into register DI
MOV CL, 0xF ; Set the count to 16 for byte-wise operation
MOV AL, [SI] (label) ; Load the byte from memory address 0x8500 into register AL
MOV [DI], AL ; Store the contents of register AL into memory address 0x9700
DEC SI ; Decrement SI to point to the next byte
INC DI ; Increment DI to point to the next byte
DEC CL ; Decrement the count
JNZ label; Jump if not zero (if there are more bytes to process)
INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program