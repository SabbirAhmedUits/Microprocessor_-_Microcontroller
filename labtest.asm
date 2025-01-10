
;labtest
;md. Sabbir Ahmed
;2215151140


.model small
.stack 100h


.data
my_array db 1, 2, 3, 4, 5
even_sum db 0
odd_sum db 0

.code
main proc
    mov ax, @data
    mov ds, ax
    mov si, offset my_array
    mov cx, 5

my_loop:
    mov al, [si]
    inc si
    mov ah, 0
    mov bl, 2
    div bl
    cmp ah, 0
    je even_case

odd_case:
    mov al, [si-1]
    add al, odd_sum
    mov odd_sum, al
    jmp continue_loop

even_case:
    mov al, [si-1]
    add al, even_sum
    mov even_sum, al

continue_loop:
    loop my_loop

    mov ah, 2
    mov al, even_sum
    add al, 30h
    mov dl, al
    int 21h

    mov dl, ' '
    int 21h

    mov al, odd_sum
    add al, 30h
    mov dl, al
    int 21h

exit:
    mov ah, 4Ch
    int 21h

main endp
end
