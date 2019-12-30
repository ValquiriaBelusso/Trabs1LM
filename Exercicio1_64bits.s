segment .data
    n dq 21
segment .text
global main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    mov rbx, [n]
    add rcx, 1
    
l1:
    cmp rbx,1
    jbe fim
    mov rax,rbx
    mul rcx
    jc overflow
    mov rcx,rax
    dec rbx
    jmp l1
    
overflow:
    xor rax,rax
    ret
       
fim:
    mov rax, rcx
    ret