[org 07c00]

mov dx, 1fb6
call print_hex

jmp $

%include "ch3_q5_print_hex_boot_sector.asm"

times 510-($-$$) db 0
dw 0xaa55
