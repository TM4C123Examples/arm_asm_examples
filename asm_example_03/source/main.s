    AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;Arithmethic operations
        MOV R0,#0x10; R0 = 0x10
        MOV R1,#0x03; R1 = 0x03

        ;Addition

        ;Add two registers store in separate register
        ADD R2,R0,R1; R2 = R0 + R1

        ;Add two registers store in same register
        ADD R2,R1; R2 = R2 + R1

        ;Add register and constant store in separate register
        ADD R3,R1,0x10; R3 = R1 + 0x10

        ;Add register and constant store in same register
        MOV R4,#0x10; R4 = 0x10
        ADD R4,#0x03; R4 = R4 + 0x03


        ;Subtraction

        ;Substract two registers store in separate register
        SUB R2,R0,R1; R2 = R0 - R1

        ;Substract two registers store in same register
        SUB R2,R1; R2 = R2 - R1

        ;Substract register and constant store in separate register
        SUB R3,R1,0x10; R3 = R1 - 0x10

        ;Substract register and constant store in same register
        MOV R4,#0x10; R4 = 0x10
        SUB R4,#0x03; R4 = R4 - 0x03

        ;Multiplication

        ;Multiply two registers store in separate register
        MUL R2,R0,R1; R2 = R0 * R1

        ;Multiply two registers store in same register
        MUL R2,R1; R2 = R2 * R1

        ;Division

        ;Divide two registers store in separate register
        UDIV R2,R0,R1; R2 = R0 / R1

        ;Divide two registers store in same register
        UDIV R2,R1; R2 = R2 / R1

        B .; while(1);

        ENDP; End of function main

        END ;End of file
