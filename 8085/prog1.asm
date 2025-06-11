section .bss
; .bss section - reserved for uninitialized data

section .data
; .data section - reserved for initialized data

section .text
; .text section - contains the executable code
    global _start
    ; Declares _start as a global symbol (entry point)
    
_start:
; Entry point label where program execution begins

; This program swaps the contents of registers B and C
MVI B, 0xAB
; Move immediate value 0xAB (171 decimal) into register B
MVI C, 0x12
; Move immediate value 0x12 (18 decimal) into register C
MOV D, B
; Copy the contents of register B into register D (D now contains 0xAB)
MOV B, C
; Copy the contents of register C into register B (B now contains 0x12)
MOV C, D
; Copy the contents of register D into register C (C now contains 0xAB)

RST 1 ;Exit the program
; Restart instruction - jumps to memory location 0008H to terminate program