.model small
.stack 100h
.data
a db  'A is smaller $' 
b db  'B is smaller $'
c db  'C is smaller $' 

   va db ' Enter the value or A : $'
      vb db ' Enter the value or B : $' 
        vc db ' Enter the value or C : $'
   .code
   
   main proc  
    mov ax , @data
    mov ds , ax
    
    
    
    mov ah,9
    lea dx, va
    int 21h
    
    
    mov ah,2
    mov
    mov dl,10
    mov dl,13
    int 21h    
    
    
    
    
     
    mov bh,9
    lea dx, vb
    int 21h
    
    
    mov bh,2
    mov
    mov dl,10
    mov dl,13
    int 21h
    
    
    
    
    
    
     
    mov ch,9
    lea dx, vc
    int 21h
    
    
    mov ch,2
    mov
    mov dl,10
    mov dl,13
    int 21h    
    
    
    cmp bl,bh
    jl a_b thake choto
    jge b_a theke choto 
    
    
    
    a_b theke choto:
     
      
    cmp bl,cl
    jl b_bsmaller:
    jge cbsmaller:
    
    
    a-smaller:
    mov ah,2
    mov dl,bh
    in 21h
     mov ah,9
     lea dx,a
     int 21h
     jmp exit
     
     
     
     
      b-smaller:
    mov ah,2
    mov dl,bh
    in 21h
     mov ab,9
     lea dx,a
     int 21h
     jmp exit  
     
     
     