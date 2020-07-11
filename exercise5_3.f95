! Exercise 5.3
! Write a program that fills a 10 element array x with values between 0 and .9 in steps of .1.
! Print the values of sin(x) and cos(x) using the properties of arrays to simplify your program.

program Exercise5_3
    implicit none
    
    integer, parameter :: p = 10
    real, dimension(p) :: x, sinx, cosx
    integer :: i
    real :: xstep = .1
    
    x(1) = 0
    
    do i = 1 , (p-1)
        x(i+1) = x(i) + xstep
    end do
    
    sinx = sin(x)
    cosx = cos(x)
    
    print *, "    x               sin(x)            cos(x)"
    print *, '----------------------------------------------'
    
    do i = 1, p    
        print *, x(i), sinx(i), cosx(i) 
    end do
    
end program

