        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;Unconditional branch (jump)
        MOV R0,#0x00
        B LABEL_1
        MOV R0,#0x01
        MOV R0,#0x02
        MOV R0,#0x03
LABEL_1 MOV R0,#0x04
        MOV R0,#0x05



        ;if
        MOV R0,#9
        MOV R1,#1

if_cmp
        CMP R0,R1
        BEQ if_end
if_start
        MOV R2,R1
        MOV R1,R0
        MOV R0,R2
if_end


        ;if else
        MOV R0,#2

ifelse_cmp
        CMP R0,#0;
        BLT ifelse_if;
ifelse_else;
        MOV R1,R0
        B ifelse_end
ifelse_if
        MOV R1,#0
        SUB R1,R1,R0
ifelse_end

        MOV R0,#-3
        B ifelse_cmp

        B .; while(1);

        ENDP; End of function main

        END ;End of file
