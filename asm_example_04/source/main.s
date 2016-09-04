    AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;Logic operations
        MOV R0,#0x12; R0 = 0x11
        MOV R1,#0x03; R1 = 0x03

        AND R2,R0,R1; R2 = R0 & R1

        MOV R2,#0x15
        AND R2,R0; R2 = R2 & R0

        AND R2,R1,#0x11; R2  = R1 & 0x11

        MOV R2,#0x30; R2 = 0x30
        AND R2,#0x11; R2 = R2 & 0x11


        AND R2,R0,R1; R2 = R0 & R1
        ORR R3,R0,R1; R3 = R0 | R1
        ORN R4,R0,R1; R4 = R0 | (~R1)
        EOR R5,R0,R1; R4 = R0 ^ R1

        MVN R6,R1; R6 = ~R1

        ORR R7,R0,R6; R7 = R0 | R6 = R0 | (~R1)

        ;Logical shifts
        MOV R0,#0x1; R0 = 0x1
        MOV R1,#0x11; R1 = 0x11
        MOV R2,#3; R2 = 0x03
        LSL R3,R0,#3; R3 = R0 << 3
        LSR R4,R1,#2; R4 = R1 >> 2
        LSL R5,R0,R2; R5 = R0 << R2

        B .; while(1);

        ENDP; End of function main

        END ;End of file
