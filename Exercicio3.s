segment .data
    min dd 0
    max dd 30
    soma dd 0    
segment .text
global main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    xor rdx, rdx
    xor rsi, rsi
    xor rdi, rdi
    mov ebx, 13
    mov esi, [min]
    mov edi, [max]
    add esi, 1
    sub edi, 1 
    
l1:
    cmp esi,edi
    jg fim
    mov eax,esi
    cdq
    idiv ebx
    cmp edx,0
    je l2
    xor edx,edx
    inc esi
    jmp l1  
    
l2:
    add ecx,esi
    inc esi
    xor edx,edx
    jmp l1
    
fim:
    mov [soma],ecx
    ret