section .data
    mensaje db 'El resultado es: ', 0xA, 0  ; Mensaje

section .bss
    resultado resb 1  ; Variable resultado

section .text
global _start

_start:
    mov al, 4    
    mov cl, 2   

    mul cl       ; Multiplico AL por CL

    add al, 48   

    mov [resultado], al ; Almaceno el resultado de 8 bits en memoria

    mov eax, 4        
    mov ebx, 1        
    mov ecx, mensaje  
    mov edx, 16       ; Tamaño del mensaje
    int 0x80          ; Llamada al sistema

    mov eax, 4        
    mov ebx, 1        
    mov ecx, resultado 
    mov edx, 1        
    int 0x80          ; Llamada al sistema

    mov eax, 1        ; Llamada al sistema para salir del programa
    mov ebx, 0        ; Código de salida 0
    int 0x80          ; Llamada al sistema

