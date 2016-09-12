        AREA    |.text|, CODE, READONLY

main    PROC ;start of function main
        EXPORT  main

        mov R0,#3
        mov R1,#2
        BL pow; Call pow(3,2)

        mov R0,#2
        mov R1,#4
        BL pow; Call pow(2,4)

        B .; while(1);
        ENDP; End of function main


        ;pow(R0,R1)
        ;returns R0 to the R1 power
        ;R0 can be any integer
        ;R1 can be any integer grater or equal than 0
pow     PROC ;start of function pow
        EXPORT  pow

        MOV R2,R0; save value of R0 into R2
        MOV R0,#1; R0 is a acumulator
for_init
        MOV R3,#0; R3  is a counter
        B for_condition
for_block
        MUL R0,R2; R0 *= R2
for_increase
        ADD R3,#1; R3++
for_condition
        CMP R3,R1; R3 < R1
        BLT for_block

        BX LR; return from function call
        ENDP; End of function pow

        END ;End of file
