.model small
.stack 100h
.data
.code
main proc
    
    mov bl , 49
    mov bh , 50
    
    xchg bl , bh ; exchange the value of bh and bl
    
    mov ah , 2
    mov dl , bl
    int 21h
    
    mov dl , 0ah
    int 21h
    mov dl , 0dh
    int 21h
    
    mov dl , bh
    int 21h
    
    
    mov ah , 4ch
    int 21h
    main endp 
end main
