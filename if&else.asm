include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    mov bx , -10
    
    cmp bx , 0
    jl if
    jge else
    
    if:
    printn "the number is negative"
    jmp end_if
    
    else:
    printn "the number is positive"
    jmp end_if
    
    end_if:
    
    mov ah , 4ch
    int 21h
    main endp
end main
