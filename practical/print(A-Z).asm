include 'emu8086.inc'
.model small
.stack 100h
.data
    n db ?
.code
main proc
    mov ax , @data
    mov ds , ax
    
    mov n , 90
    
    mov bl , 65
    
    mov ah , 2
    
    loop:
    cmp bl , n
    jg exit_loop
    mov dl , bl
    int 21h
    print ","
    inc bl
    jmp loop
    
    exit_loop:
    printn
    printn "done."
    
    mov ah , 4ch
    int 21h
    main endp
end main
