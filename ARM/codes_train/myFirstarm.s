.global _start 

_start:
    mov r0, #1          @ file descriptor 1 (stdout)
    ldr r1, =msg        
    mov r2, #14         @ message length
    mov r7, #4          @ syscall number for sys_write
    swi #0  

    mov r0, #0
    mov r7, #1
    swi #0

.data
msg:
    .ascii "Hello , World!\n"


