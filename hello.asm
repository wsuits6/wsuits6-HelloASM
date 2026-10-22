section .data
    msg  db "Hello from syscall", 10 ;10 = newline
    len equ $ - msg

section .text
    global _start

_start:
   ;write (1, mssg , len)
   mov rax, 1 ; syscall numbver is stored in the RAX thus setting  SYSCALL nu7mber to  1  means  write 
   mov rdi, 1  ; File  Descriptor  is set to 1 => FOR STDOUT OUTPUT to console
   mov rsi, msg ; Buffer address
   mov  rdx, len ; Buffer length
   syscall

    ; exit(0)
    mov rax, 60 ; chnaging the Syscall number to 60 for  EXIT 
    mov rdi, 0 ; EXIT  code 