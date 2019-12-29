include 'emu8086.inc'
.model small
.stack 100h
.data
    arr db 255 dup(?) ; initialize a array of string
.code
main proc
    
    mov ax , @data
    mov ds , ax
    
    print "input a string : "
    
    mov bx , 0 ; same as i=0
    
    mov ah , 1 ; set input function
    
    for:
    int 21h ;input one by one charecter
    mov arr[bx] , al 
    cmp arr[bx] , 0dh
    je print
    cmp arr[bx] , 20h
    je continue
    cmp arr[bx] , 97
    jge do
    jl continue
    do:
    sub arr[bx] , 32
    jmp continue
    continue:
    inc bx ; same as i++
    jmp for
    
    print:
    mov cx , bx
    mov bx , 0
    mov ah , 2
    printn
    print "your string is : "
    for2:
    mov dl , arr[bx]
    int 21h
    inc bx
    loop for2
    
    mov ah , 4ch
    int 21h
    main endp
end main
