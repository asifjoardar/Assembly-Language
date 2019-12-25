.model small
.stack 100h
.data
    a db ?
    b db ?
.code
main proc
    mov ah , 1 ;call input operation
    int 21h ;input a number
    
    mov a , al ;store the number into 'a'
    ;sub a , 48
    
    int 21h ;input a number
    mov b , al ;store the number into 'a'
    ;sub b , 48
    
    mov bl , a ;store the number from 'a' into bl register
    add bl , b ;similar as bl = bl + b
    ;add bh , 48
    sub bl , 48
    
    mov ah , 2 ;call output operation
    
    ;print new line
    mov dl , 0ah
    int 21h
    mov dl , 0dh
    int 21h
    
    mov dl , bl
    int 21h ;print the result of bl
    
    mov ah , 4ch
    int 21h
    main endp
end main
