section .bss

section .data

section .text
    global _start
    
_start:

; This program swaps the contents of registers B and C
MVI B, 0xAB
MVI C, 0x12
MOV D, B
MOV B, C
MOV C, D

RST 1 ;Exit the program