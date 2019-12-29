include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    print "enter a string : "
    mov ah , 1
    mov cx , 0  ; initialize CX
    
    input:
    int 21h ; input string
    cmp al , 0dh
    je exit
    push ax ; store each char from string into ax as stack
    inc cx
    jmp input
    
    exit:
    printn
    print "reverse order of given string is : "
    mov ah , 2  ; set output function
    output:
    pop dx  ; store char in reverse order into dx from ax as stack
    int 21h ; print character from dx
    loop output
    
    mov ah , 4ch
    int 21h
    main endp
end main
