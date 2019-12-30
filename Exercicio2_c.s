segment .data
    i dq 0
    y dq 0
    z dq 0    
segment .text
global  main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    mov rax, [i]
    mov rbx, [y]
    mov rcx, [z]
        
l1:
    cmp rax, 99999
    ja fim
    mov rbx,0
    
l2:
    cmp rbx, 99999
    ja l3
    add rcx,rax
    sub rcx,rbx
    inc rbx
    jmp l2
    
l3:
    inc rax
    jmp l1
    
fim:       
    ret