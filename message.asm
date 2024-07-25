section .data
    message db 'ramenaru is using arch linux', 0xA  
    message_len equ $ - message              

section .text
    global _start

_start:
    ; Write the message to stdout
    mov eax, 4         
    mov ebx, 1         
    mov ecx, message   
    mov edx, message_len 
    int 0x80           

    mov eax, 1         
    xor ebx, ebx       
    int 0x80            

