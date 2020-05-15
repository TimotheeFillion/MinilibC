BITS 64

section .text
    global memset

memset:
    xor rax, rax

loop:
    cmp rax, rdx
    je .end
    mov BYTE [rdi + rax], sil
    inc rax
    jmp loop

.end:
    mov rax, rdi
    ret