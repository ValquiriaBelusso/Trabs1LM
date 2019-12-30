segment .data
    n db 5
segment .text
global main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    mov bl, [n]
    add cl, 1
    
l1:
    cmp bl,1
    jbe fim
    mov al,bl
    mul cl
    jc overflow
    mov cl,al
    dec bl
    jmp l1
    
overflow:
    xor rax,rax
    ret
       
fim:
    mov al, cl
    ret
       