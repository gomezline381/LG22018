section .data
    mensaje db 'El resultado es: ', 0

section .bss
    resultado resd 1

section .text
    global _start
_start:

    mov ebx, 2        ; Divisor (2)
    xor edx, edx      ; Limpiar el registro de residuo
    mov eax, 16       ; Dividendo (16)

    div ebx           ; Realizar la división EDX:EAX / EBX
    add eax, 48       

    mov dword [resultado], eax ; Almacenar el resultado

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

    mov eax, 1        
    mov ebx, 0        ; Código de salida 0
    int 0x80          ; Llamada al sistema

