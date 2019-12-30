segment .data
    n dw 10
segment .text
global main
main:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    mov bx, [n]
    add cx, 1
    
l1:
    cmp bx,1
    jbe fim
    mov ax,bx
    mul cx
    jc overflow
    mov cx,ax
    dec bx
    jmp l1
    
overflow:
    xor rax,rax
    ret

fim:
    mov ax, cx
    ret