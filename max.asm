.model small
.stack 100h
.data
    
   my_array db 1, 2, 3    
   max db 0         

.code
main proc
    
    mov ax, @data
    mov ds, ax
    mov si, offset my_array  

    mov cx, 3               

    mov bl, [si]             

   
my_loop:
    inc si                   
    mov dl, [si]             

   
    cmp dl, bl
    jle  no_update          

   
    mov bl, dl               

no_update:
    loop my_loop             

    mov max, bl

   
    mov dl, max        
    add dl, 30h             
    mov ah, 2               
    int 21h                

    
exit:
    mov ah, 4ch
    int 21h 

main endp
end main
