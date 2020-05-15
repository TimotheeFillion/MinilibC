BITS 64

section .text
global strcmp

strncmp:
    xor eax, eax
    xor rcx, rcx
    jmp loop

increment:
    inc rcx

loop:
    cmp rdx, rcx
    je end
    mov bl, BYTE [rdi + rcx]
    mov dl, BYTE [rsi + rcx]
    cmp bl, 0
    je end
    cmp dl, bl
    je increment

after_loop:
    movsx eax, bl
	movsx ebx, dl
	sub eax, ebx

end:
    ret