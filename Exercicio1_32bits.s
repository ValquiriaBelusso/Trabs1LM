segment .data
    n dd 12
segment .text
global main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    mov ebx, [n]
    add ecx, 1
    
l1:
    cmp ebx,1
    jbe fim
    mov eax,ebx
    mul ecx
    jc overflow
    mov ecx,eax
    dec ebx
    jmp l1
    
overflow:
    xor rax,rax
    ret
       
fim:
    mov eax, ecx
    ret