        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        LDR R0,=variable_1
        LDR R1,[R0]
        LDR R0,=variable_2
        LDR R2,[R0]
        LDR R0,=variable_3
        LDR R3,[R0]

        B .; while(1);

        ENDP; End of function main

        AREA    global_variables, DATA, READWRITE, ALIGN=3
variable_1 DCD 0x00
variable_3 DCD 0x15
variable_2 DCD 0x01234567

        AREA    global_constants, DATA, READONLY, ALIGN=3
constant_1 DCD 0
constant_2 DCD 12
constant_3 DCD 15

        END ;End of file
