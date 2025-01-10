.model small
.stack 100h

.code

main proc
    ; Read a character from the keyboard
    mov ah, 01h
    int 21h
    mov bl, al          ; Store the input character in bl

    ; Output a newline (carriage return and line feed)
    mov ah, 02h
    mov dl, 13         ; Carriage return
    int 21h
    mov dl, 10         ; Line feed
    int 21h

    ; Check if the character is lowercase (a-z) or uppercase (A-Z)
    cmp bl, 'a'        ; Compare with 'a' (97)
    jge small_to_capital
    cmp bl, 'A'        ; Compare with 'A' (65)
    jl capital_to_small

small_to_capital:
    sub bl, 32         ; Convert to uppercase
    jmp output_char

capital_to_small:
    add bl, 32         ; Convert to lowercase

output_char:
    ; Output the converted character
    mov ah, 02h
    mov dl, bl         ; Load the converted character into dl
    int 21h

exit:
    mov ah, 4ch        ; Exit the program
    int 21h

main endp
end main
