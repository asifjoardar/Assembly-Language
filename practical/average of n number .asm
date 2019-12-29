include "emu8086.inc"
.model small
.data
    sum db ?
.code
main proc
    mov ax , @data
    mov ds , ax
    
    print "ENTER HOW MANY NO U WANT : "
    mov ah , 1
    int 21h
    sub al , 48
    printn
    
    mov cl , al
    mov bl , al
    mov al , 0
    mov sum , 0
    
    for:
    print "enter number : "
    mov ah , 1
    int 21h
    sub al , 48
    add sum , al
    printn
    loop for
    
    mov ax , 0
    mov al , sum
    div bl
    add ax , 3030h
    mov ah , 2
    print "the average is : "
    mov dx , ax
    int 21h
    
    mov ah , 4ch
    int 21h
    main endp
end main
