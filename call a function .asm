include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    call asif ;function call
    printn "hi its return"
    
    mov ah , 4ch
    int 21h
    main endp

    asif proc ; initialized a function
        printn "hi , i am asif"
        ret ;return function
    asif endp ;end function
    
end main
