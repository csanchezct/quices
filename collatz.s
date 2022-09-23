#
#  Collatz assembly routine
#
#    int Collatz( int numero )
#
#  Parameter is in DI register (int numero)
#  Return value in AX register (int)
#
#
.text
.global collatz
collatz:
    mov %RDI, %RAX
    cmpq $1, %rDI
    je uno

    incl    n          
    movq    %rdi, %rax      
    andq    $1, %rax        
    jz      par 

    ret

uno:

    ret

par:

impar: