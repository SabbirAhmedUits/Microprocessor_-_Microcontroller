.model small
.stack 100h
.data
    
    digit db 14
    good_msg db 'the digit is good $'
    bad_msg db 'the digit is bad $'
    
    .code
    main proc
        mov ax, @data
        mov ds, ax
        mov al, digit
        mov bh, 3
        mov ah, 0
        
        div bh; al=al/bh 
        cmp ah, 0
                    
                    
                    
        je divide_6            
        
        jne bad_print
          
          
        divide_6:
        mov bh, 6
        mov ah, 0
        
        div bh; al=al/bh 
        cmp ah, 0
        
        je good_print  
          
        good_print: 
        mov ah, 9
        lea dx, good_msg
        int 21h
        jmp exit   
        
        
        
           
        bad_print: 
        mov ah, 9
        lea dx, bad_msg
        int 21h      
        
        exit:
        mov ah, 4ch
        int 21h 
        
       
    main endp
end main


