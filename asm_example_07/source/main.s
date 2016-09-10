        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        MOV R0,#10
        MOV R1,#2

        ;This example calculates the division R2 = R0/R1 using subtractions and a while loop
        MOV R2,#0
        B while_compare
while_block
        SUB R0,R1; R0 = R0 - R1
        ADD R2,#1; R2++
while_compare
        CMP R0,#0
        BGT while_block; while(R1 > 0)

        ;for loop
        ;This example caculates the sum over n from n = 0 to n = R0
        ;R1 is used as counter "n" and R2 is used as acumulator "accu"
        MOV R0,#4; R0 = 4

for_init
        MOV R1,#0; init local counter, n = 0
        MOV R2,#0; init local accumulator, accu = 0
        B for_compare
for_block
        ADD R2,R1; accu = accu + n;
for_inc
        ADD R1,#1; n++
for_compare
        CMP R1,R0
        BLE for_block;for(n = 0; n <= R0; n++)

        B .; while(1);

        ENDP; End of function main

        END ;End of file
