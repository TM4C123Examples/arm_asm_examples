        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        ;Unconditional branch (jump)
        MOV R0,#0x00; R0 = 0
        B LABEL_1 ; branch (jump) to the next instruction after LABEL_1
        MOV R0,#0x01; this instruction is ignored
        MOV R0,#0x02; this instruction is ignored
        MOV R0,#0x03; this instruction is ignored
LABEL_1 MOV R0,#0x04; this instruction is executed
        MOV R0,#0x05; this instruction is executed


        ;The branch instruction can used along the conditional excution to create if statements
        MOV R0,#9; R0 = 9
        MOV R1,#1; R1 = 1
if_cmp
        CMP R0,R1
        BEQ if_end; if(R0 == R1) skip the following code
if_start
        MOV R2,R1
        MOV R1,R0
        MOV R0,R2
if_end

        ;This code segment calculates R1 = abs(R0)
        ;An if-else like structure is used
        MOV R0,#2; R0 = 2
ifelse_cmp
        CMP R0,#0;
        BLT ifelse_if; if(R0 < 0)
ifelse_else; else{
        MOV R1,R0; R1 = R0
        B ifelse_end; }
ifelse_if; if(*){
        MOV R1,#0; R1 = 0
        SUB R1,R0; R1 = R1 - R0
ifelse_end; }

        B .; while(1);

        ENDP; End of function main

        END ;End of file
