segment .data
    z dq 0
    i dq 0
    y dq 0    
segment .text
global main
main:
    xor rax, rax
    
l1:
    cmp qword [i], 99999
    ja fim
    mov qword [y], 0

    
l2: 
    cmp qword [y], 99999
    ja l3
    mov rax, [i]
    add [z], rax
    mov rax, [y]
    sub [z], rax
    add qword [y], 1
    jmp l2
      
l3:
    add qword [i], 1
    jmp l1
    
fim:
    ret