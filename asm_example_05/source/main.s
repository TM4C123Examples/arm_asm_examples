        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;Relational operators and conditional execution

        MOV R0,#0x02
        MOV R1,#0x03
        MOV R2,#0x00

        CMP R0,R1;the CMP (compare) operator executes a SUB operation (R0 - R1) and the result discarded
        ;After CMP the instruccion flags are updated
        ;Most instrucctions can be executed conditionally, if the condition is not meet the instruccion is ignored (skiped)
        MOVGT R2,#0x0A; execute MOV + GT execute only if the relation of last compare is grater than, (R0 > R1)


        ;In this example the jump will not happen since the condition is satisfied
        MOV R2,#0x00; reset R2 register
        CMP R1,R0;compare R1 R0
        MOVGT R2,#0x0A; excute MOV only if (R1 > R0)

        ;Other relational condition are available
        CMP R0,R1;Compare R0 and R1
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
