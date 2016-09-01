        AREA    |.text|, CODE, READONLY

;main function

CONSTANTE_1  EQU 0x15

main    PROC
        EXPORT  main
        
        MOV R0,#0x10; R0 = 0x10
        MOV R1,R0; R1 = R0
        MOV R2,#CONSTANTE_1; R0 = CONSTANTE_1
        
        B   .; while(1);
        ENDP

        END