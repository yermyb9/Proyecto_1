;-------------------------  MACRO #1  ----------------------------------
;Macro-1: impr_texto.
;   Imprime un mensaje que se pasa como parametro
;   Recibe 2 parametros de entrada:
;       %1 es la direccion del texto a imprimir
;       %2 es la cantidad de bytes a imprimir
;-----------------------------------------------------------------------
%macro impr_texto 2     ;recibe 2 parametros
    mov rax,1   ;sys_write
    mov rdi,1   ;std_out
    mov rsi,%1  ;primer parametro: Texto
    mov rdx,%2  ;segundo parametro: Tamano texto
    syscall
%endmacro

;-------------------------  MACRO #2  ----------------------------------
;Macro-2: impr_linea.
;   Imprime un mensaje que se pasa como parametro y un salto de linea
;   Recibe 2 parametros de entrada:
;       %1 es la direccion del texto a imprimir
;       %2 es la cantidad de bytes a imprimir
;-----------------------------------------------------------------------
%macro impr_linea 2     ;recibe 2 parametros
    mov rax,1   ;sys_write
    mov rdi,1   ;std_out
    mov rsi,%1  ;primer parametro: Texto
    mov rdx,%2  ;segundo parametro: Tamano texto
    syscall
  mov rax,1 ;sys_write
    mov rdi,1   ;std_out
    mov rsi,cons_nueva_linea    ;primer parametro: Texto
    mov rdx,1   ;segundo parametro: Tamano texto
    syscall
%endmacro
;------------------------- FIN DE MACRO --------------------------------