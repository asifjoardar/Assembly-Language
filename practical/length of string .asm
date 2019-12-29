include 'emu8086.inc'
.model small
.stack 100h
.data
    string db 50 dup ("$")
.code
main proc
    
    mov ax , @data
    mov ds , ax
    
    print "input a string : "
    lea si , string
    
    mov ah , 0ah
    mov dx , si
    int 21h
    
    mov ah , 2
    printn
    print "length of your string is : "
    
    mov bl , string+1
    mov al , bl
    aam
    add ax,3030h
    mov dh,al
    mov dl,ah
    
    mov ah,2
    int 21h
    
    mov dl , dh
    mov ah , 2
    int 21h
    
    mov ah , 4ch
    int 21h
    main endp
end main
