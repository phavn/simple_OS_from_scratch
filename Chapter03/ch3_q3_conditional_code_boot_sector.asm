mov bx, 3

if:
  cmp bx, 4
  jg else_if
  mov al, 'A'
  jmp the_end
else_if:
  cmp bx, 40
  jge else
  mov al, 'B'
  jmp the_end
else:
  mov al, 'C'
  jmp the_end

the_end:
  mov ah, 0x0e
  int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55

