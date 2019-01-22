print_hex:
  pusha

convert_to_string:
  

end_print_hex:
  mov bx, HEX_OUT
  call print_string 
 
  popa
  ret


HEX_OUT:
db '0000', 0
