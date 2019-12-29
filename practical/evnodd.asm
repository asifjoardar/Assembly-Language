include 'emu8086.inc'
.model small
.stack 100h
.data
    num db ?
.code
main proc
    
    mov ax , @data
    mov ds , ax
    
    print "input a number : "
    
    mov ah , 1
    int 21h
    
    mov bl , 2
    
    div bl
    
    cmp ah , 0
    je evn
    jg odd
    
    odd:
    mov ah , 2
    printn
    print "the number is odd ."
    jmp exit
    
    evn:
    mov ah , 2
    printn
    print "the number is even ."
    jmp exit
    
    exit:
    mov ah , 4ch
    int 21h
    main endp
end main
