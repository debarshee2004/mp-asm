section .bss

section .data

section .text
    global _start
    
_start:

MVI D, 0x00 ; Initialize register D to 0x00
MVI C, 0x07 ; Initialize register C to 0x07
LXI H, 0x9500 ; Load immediate value 0x9500 into register pair HL

MOV A, M ; Load the byte from memory address 0x9500 into accumulator A
MOV B, A ; Copy the contents of accumulator A into register B (B now contains the value from memory)
INC H (loop) ; Increment HL to point to the next memory address (0x9501)
MOV A, M ; Load the byte from memory address 0x9501 into accumulator A

ADD B ; Add the contents of register B to accumulator A (A now contains the sum of the two bytes)
JNC (next) ; Jump to 'next' if there is no carry (if the addition did not overflow)

INR D ; Increment register D if there was a carry (D now contains the carry count)
DCK C (next) ; Decrement register C (C now contains the count of bytes processed)

JNZ loop ; Jump to 'loop' if C is not zero (continue processing)
STA 0xB000 ; Store the result in memory address 0xB000 (the sum)
MOV A, D ; Move the carry count from register D to accumulator A
STA 0xB001 ; Store the carry count in memory address 0xB001

RST ; Return from subroutine (end of program)