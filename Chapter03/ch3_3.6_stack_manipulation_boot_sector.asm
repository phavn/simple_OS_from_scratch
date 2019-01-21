mov ah, 0x0e

mov bp, 0x8000 ; set stack base pointer
mov sp, bp     ; set stack pointer to base stack pointer

push 'A'	; push to stack
push 'B'	; push to stack
push 'C'	; push to stack

pop bx		; pop C from stack then print
mov al, bl
int 0x10

pop bx		; pop B from stack then print
mov al, bl
int 0x10

pop bx		; pop A from stack then print
mov al, bl
int 0x10

jmp $		; Infinite loop

; Padding and magic BIOS number
times 510-($-$$) db 0
dw 0xaa55
