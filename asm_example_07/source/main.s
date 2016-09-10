        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        MOV R0,#10
        MOV R1,#2
        MOV R2,#0

        ;while loop
        B while_compare
while_block
        SUB R0,R1
        ADD R2,#1
while_compare
        CMP R0,#0
        BGT while_block


        ;for loop

        MOV R0,#3

for_init
        MOV R1,#0; init counter counter
        MOV R2,#0; init local accumulator
        B for_compare
for_block
        ADD R2,R1
for_inc
        ADD R1,#1;increase counter
for_compare
        CMP R1,R0
        BLE for_block

        B .; while(1);

        ENDP; End of function main

        END ;End of file
