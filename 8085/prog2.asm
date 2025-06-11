section .bss
; .bss section - reserved for uninitialized data (empty in this program)

section .data
; .data section - reserved for initialized data (empty in this program)

section .text
; .text section - contains the executable code
    global _start
    ; Declares _start as a global symbol (entry point for the program)
    
_start:
; Entry point label where program execution begins

; This program swaps the location of two variables in memory

LDA 0x9500
; Load Accumulator direct - loads the byte from memory address 0x9500 into accumulator A

MOV B, A
; Move the contents of accumulator A into register B (temporary storage of first value)

LDA 0x9501
; Load Accumulator direct - loads the byte from memory address 0x9501 into accumulator A

STA 0x9500
; Store Accumulator direct - stores the contents of accumulator A into memory address 0x9500
; (the value from 0x9501 is now stored at 0x9500)

MOV A, B
; Move the contents of register B into accumulator A (retrieve the original value from 0x9500)

STA 0x9501
; Store Accumulator direct - stores the contents of accumulator A into memory address 0x9501
; (the original value from 0x9500 is now stored at 0x9501)

RST 1 ;Exit the program
; Restart instruction - jumps to memory location 0008H to terminate the program