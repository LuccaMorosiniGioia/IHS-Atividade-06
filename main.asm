section .text

extern print
global ordenaVetor

ordenaVetor:

    enter 0, 0

    mov eax, [ebp+8] ; v
    mov ecx, [ebp+12]; n
    push ebx
    mov ebx, 0
    mov edx, 0

    dec ecx

    call sort

    pop ebx

    push ecx
    push eax

    call print

    leave

    ret


sort:

    mov edx, 0 

    .outer_loop:

    mov ebx, 0

    .inner_loop:

        push ecx
        push edx
        mov ecx, [eax + ebx*4]
        mov edx, [eax + ebx*4 + 4]
        cmp ecx, edx 

        jle .end_inner_loop 
        
        mov [eax + ebx*4], edx
        mov [eax + ebx*4 + 4], ecx

    .end_inner_loop:

        pop edx
        pop ecx

        inc ebx  

        cmp ebx, ecx 
        jne .inner_loop 

    inc edx 

    cmp edx, ecx
    jne .outer_loop


    ret
