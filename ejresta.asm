section .data
    mensaje db 'El resultado es: ', 0    ; Mensaje a mostrar
    resultado db '0', 0                 

section .text
    global _start
_start:
    ; Imprime el mensaje
    mov eax, 4            
    mov ebx, 1            
    mov ecx, mensaje     
    mov edx, 17           ; tamaño del mensaje 
    int 0x80              ; llamada al sistema


    mov ax, 10            ; Primer número
    mov bx, 2             ; Segundo número
    mov cx, 2             ; Tercer número


    sub ax, bx            ; ax = ax - bx
    sub ax, cx            ; ax = ax - cx


    add ax, '0'
    mov [resultado], al

    ; Imprime el resultado
    mov eax, 4            
    mov ebx, 1            
    mov ecx, resultado    
    mov edx, 1            
    int 0x80              ; llamada al sistema

    ; Salir del programa
    mov eax, 1            
    mov ebx, 0            ; código de salida
    int 0x80              ; llamada al sistema

