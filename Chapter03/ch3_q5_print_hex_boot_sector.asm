print_hex:
  pusha
  mov cx, 0

hex_loop:
  cmp cx, 4
  je end_print_hex

  mov ax, dx 
  and ax, 0x000f
 
  cmp al, 9
  jg convert_char
  add al, 0x30
  jmp store_to_hex_out

convert_char:
  add al, 0x37
  jmp store_to_hex_out
  
store_to_hex_out:
  mov bx, HEX_OUT + 5
  sub bx, cx
  mov [bx], al
  shr dx, 4  

  add cx, 1
  jmp hex_loop


end_print_hex:
  mov bx, HEX_OUT
  call print_string 
 
  popa
  ret

%include "ch3_q4_print_string_boot_sector.asm"

HEX_OUT:
db '0x0000', 0
