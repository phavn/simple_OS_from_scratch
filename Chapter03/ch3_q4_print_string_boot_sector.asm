print_string:
  pusha
  mov ah, 0x0e

print_loop:
  mov al, [bx]
  cmp al, 0
  je end_print
  mov al, [bx]
  int 0x10
  add bx, 1
  jmp print_loop
 
end_print:
  mov al, 10	; new line '\n'
  int 0x10
  mov al, 13	; carriage return '\r'
  int 0x10
  popa
  ret


