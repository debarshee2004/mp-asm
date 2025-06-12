section .bss

section .data

section .text
    global _start
    
_start:

; Program to find the largest number in a sequence

MOV SI, 0x5000 ; Load the address 0x5000 into register SI
MOV CL, 0x04 ; Set the count to 4 for byte-wise operation
MOV AL, [SI] (label) ; Load the byte from memory address 0x5000 into register AL
INC SI ; Increment SI to point to the next byte
JNC skip ; Jump if no carry (if the last operation did not cause a carry)
MOV AL, [SI] ; Load the byte from the next address into AL
DEC CL (skip) ; Decrement the count
JNZ label ; Jump if not zero (if there are more bytes to process)
MOV [0x4500], AL ; Store the result in memory address 0x6000
INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program