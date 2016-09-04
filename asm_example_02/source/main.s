    AREA    |.text|, CODE, READONLY

LARGE_CONSTANT_1 EQU 0x12345678

main    PROC ;start of function main
        EXPORT  main

        ;Two intruction method
        MOV R0,#0x5678; R0 = 0x5678
        MOVT R0,#0x1234; R0 = (0x1234 << 16) + (R0 & 0xFFFF)

        ;One instruction method
        LDR R2,=LARGE_CONSTANT_1; R2 = LARGE_CONSTANT_1

        B .; while(1);

        ENDP; end of function main

        END ;end of file
