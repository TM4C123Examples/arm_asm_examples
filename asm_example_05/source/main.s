        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        MOV R0,#0x02
        MOV R1,#0x03
        MOV R2,#0x00
        
        CMP R0,R1;
        MOVGT R2,#0x0A

        MOV R2,#0x00
        CMP R1,R0;
        MOVGT R2,#0x0A
        
        MOV R0,#0x00
        CMP R0,R1;
        
        MOVGT R3,#0x11; R0 > R1
        MOVGE R3,#0x12; R0 >= R1
        MOVLT R3,#0x13; R0 < R1
        MOVLE R3,#0x14; R0 <= R1
        MOVEQ R3,#0x15; R0 == R1
        MOVNE R3,#0x16; R0 != R1
        MOVMI R3,#0x17; (R0 - R1) < 0
        MOVPL R3,#0x18; (R0 - R1) >= 0
        
        B .; while(1);

        ENDP; End of function main

        END ;End of file
