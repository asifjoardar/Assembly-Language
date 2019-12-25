include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    inc bx ;bx = bx + 1
    dec bx ;bx = bx + 1
    
    mov cx , 5
    mov bx , 0
    
    start:
    cmp bx , cx ; condition check 
    je last
    printn "hi , how are you"
    inc bx
    jne start
    
    last:
    printn "end"
    
    
    jmp asif
    asif:
    printn "good job"
    
    ;infinite loop
    ;start:
    ;printn "inf"
    ;jmp start
    
    mov ah , 4ch
    int 21h
    main endp
end main
