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
    ret