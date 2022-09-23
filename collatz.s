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
    push   %RBP            
    mov    %RSP, %RBP      
    sub    $16, %RSP #prologo

    mov %RDI, %RAX
    cmp $1, %RAX
    je uno

    incl    22              
    and    $1, %rax        
    jz      par 



    ret

/**uno:

    ret*// no va as er uno porque el caso particular de c++ provee un 22.

par:
    sar    %rdi 
    leave 
    ret


impar:
    leave
    ret