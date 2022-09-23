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

    incl    22          
    movq    %rdi, %rax      
    andq    $1, %rax        
    jz      par 

    ret

/**uno:

    ret*// no va as er uno porque el caso particular de c++ provee un 22.

par:
    sarq    %rdi 
    leave 
    ret


impar:
    leave
    ret