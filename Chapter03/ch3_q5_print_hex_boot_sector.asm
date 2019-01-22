print_hex:
  pusha

convert_to_string:
  

end_print_hex:
  mov bx, HEX_OUT
  call print_string 
 
  popa
  ret

%include "ch3_q4_print_string_boot_sector.asm"

HEX_OUT:
db '0000', 0
