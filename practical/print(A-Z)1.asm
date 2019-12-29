include 'emu8086.inc'
.model small
.stack 100h
.data
    n db ?
.code
main proc
    mov ax , @data  ; initialize DS
    mov ds , ax
    
    mov cx , 26 ; initialize CX
    
    mov ah , 2  ; set output function
    mov dl , 65 ; set DL with A
    printn "The Upper Case Letters from A to Z are :"
    top:    ; loop start
    int 21h ; print character
    inc dl  ; increment DL to next ASCII character
    print ","
    loop top
    
    mov ah , 4ch    ; return control to DOS
    int 21h
    main endp
end main
