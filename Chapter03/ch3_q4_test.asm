[org 0x7c00]

mov bx, HELLO_MSG
call print_string

mov bx, GOODBYE_MSG
call print_string

jmp $

%include "ch3_q4_print_string_boot_sector.asm"

HELLO_MSG:
  db 'Hello World!',0

GOODBYE_MSG:
  db 'Good Bye!',0

times 510-($-$$) db 0
dw 0xaa55
