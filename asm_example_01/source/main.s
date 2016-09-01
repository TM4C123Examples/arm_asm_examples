        AREA    |.text|, CODE, READONLY

CONSTANT_1  EQU 0x15

;main function
main    PROC
        EXPORT  main

        MOV R0,#0x10; R0 = 0x10
        MOV R1,R0; R1 = R0
        MOV R2,#CONSTANT_1; R0 = CONSTANT_1

        B   .; while(1);

        ENDP; end of function

        END; end of file
