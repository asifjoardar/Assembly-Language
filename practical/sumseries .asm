include "emu8086.inc"
.model small
.data
    n db ?
    sum db ?
.code
main proc
    mov ax , @data
    mov ds , ax
    
    print "enter a number n : "
    mov ah,1
    int 21h
    sub al,48 
    mov n,al
    printn
    
    mov cl , n
    mov al , 48
    mov sum , 49
    
    for:
    add al , sum
    inc sum
    loop for
    
    print "sum of first n natural number is : "
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX

    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    mov ah , 4ch
    int 21h
    main endp
end main
