        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;loading ram variable
        LDR R0,=variable_1; load variable address
        LDR R1,[R0]; load variable data
        ;loading rom variable
        LDR R0,=constant_1; load variable address
        LDR R2,[R0]; load variable data

        ;writing to ram variable
        LDR R0,=variable_1; load variable address
        MOV R1,#0x44;
        STR R1,[R0]; write variable data

        B .; while(1);

        ENDP; End of function main

;Declare a ram variable area
        AREA    global_variables, DATA, READWRITE, ALIGN=3
variable_1 DCD 0x01234567; Reserve 4 bytes of data
variable_2 DCD 0x00; Reserve 4 bytes of data
variable_3 DCD 0x15; Reserve 4 bytes of data

;Declare a rom variable are
        AREA    global_constants, DATA, READONLY, ALIGN=3

constant_1 DCD 0x76543210; Reserve 4 bytes of data
constant_2 DCD 0xFF; Reserve 4 bytes of data
constant_3 DCD 0x18; Reserve 4 bytes of data


        END ;End of file
