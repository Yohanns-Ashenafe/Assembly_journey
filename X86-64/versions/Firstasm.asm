section .data
    message db "Hello world!",10

section .text
    global _start

_start:
    
    mov rsi,message
    mov rdx,11
    mov rax,1
    syscall

