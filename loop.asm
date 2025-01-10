     .model
     .stack
     .code
     
     main proc 
        mov cx,26
        mov ah,2
        mov dl,'A'
        
        
        my_loop:
        int 21h
        INC dl
        loop my_loop
        
        exit:
        mov ah,4ch
        int 21h
        
        
        main endp
     end main