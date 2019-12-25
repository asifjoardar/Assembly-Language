include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    ;print = print a string without newline
    ;printn = print a string with newline
    
    printn "hi i am asif."
    print "trust me i am a programmer."
    
    mov ah , 4ch
    int 21h
    main endp
end main
