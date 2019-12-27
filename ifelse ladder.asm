include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    mov bx , 100
    cmp bx , 100
    jge if
    
    cmp bx , 80
    jge if
    
    cmp bx , 60
    jge if
    
    cmp bx , 40
    jge if
    
    jmp else
    
    if:
    printn "good job"
    jmp endif
    
    else:
    printn "nope its bad"
    jmp endif
    
    endif:
    
    mov ah , 4ch
    int 21h
    main endp
end main
