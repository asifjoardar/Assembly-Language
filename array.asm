include 'emu8086.inc'
.model small
.stack 100h
.data
    arr db 10 dup(?)
.code
main proc
    
    mov ax , @data
    mov ds , ax
    
    mov bx , 0
    mov cx , 10
    
    mov ah , 1
    for:
    int 21h
    mov arr[bx] , al
    inc bx
    loop for
    
    mov bx , 0
    mov cx , 10
    mov ah , 2
    printn
    for2:
    mov dl , arr[bx]
    int 21h
    inc bx
    loop for2
    
    mov ah , 4ch
    int 21h
    main endp
end main
