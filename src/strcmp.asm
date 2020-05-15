BITS 64

section .text
global strcmp

strcmp:
    xor eax, eax
    xor rcx, rcx
    jmp loop

increment:
    inc rcx

loop:
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