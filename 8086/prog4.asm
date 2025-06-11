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

MOV CL, 0x00
; Move immediate value 0x00 (0 decimal) into the CL register (lower 8 bits of CX)

MOV BL, 0x35
; Move immediate value 0x35 (53 decimal) into the BL register (lower 8 bits of BX)

MOV AL, 0xA1
; Move immediate value 0xA1 (161 decimal) into the AL register (lower 8 bits of AX)
; Note: This appears to have a syntax error - should be 0xA1 instead of 0xAL

SUB AL, 2F
; Subtract immediate value 2F (47 decimal) from AL register
; Note: Missing 0x prefix - should be 0x2F for hex or 47 for decimal

INC 0x100C
; Increment the byte value at memory address 0x100C by 1

INC CL
; Increment the CL register by 1 (CL becomes 0x01)

MOV [0xD500], AL
; Move the contents of AL register to memory address 0xD500
; Square brackets indicate indirect addressing (storing to memory)

INT 3 ; Interrupt 3 - used for debugging or to signal the end of the program
; Software interrupt 3 - typically used by debuggers as a breakpoint