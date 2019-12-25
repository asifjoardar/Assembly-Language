.MODEL SMALL
.STACK 200H
.DATA
    ;WHERE ALL THE VARIABLE WILL BE DECLARED
    num DB 120
    num1 DB 10
    char DB '#'
    str DB "I AM ASIF $"
    char1 DB ?
.CODE
;CODE SEGMENT
    MAIN PROC ;INT MAIN
        ;STATEMENT
        MOV AX , @DATA ;load data segment in ax
        MOV DS , AX ;data segment gets initialized
        
        mov ah , 2
        mov dl , num
        int 21h
        
        ;new line
        mov dl , 0ah
        int 21h
        mov dl , 0dh
        int 21h
        
        ;mov ah , 2
        mov dl , char
        int 21h
        
        ;new line
        mov dl , 0ah
        int 21h
        mov dl , 0dh
        int 21h
        
        ;toprint a string
        mov ah , 9 
        lea dx , str
        int 21h
        
        MOV AH , 4CH
        INT 21H
        MAIN ENDP
    
END MAIN ; EXIT(0)
