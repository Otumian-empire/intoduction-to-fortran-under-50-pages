! using a do loop to generate integer values of x, between 
! -10 to 10 in steps of 1, write a program to construct a 
! table of values of y = 1.0/x

program tableOfRealInverseOfX
    implicit none
    
    integer :: x
    real :: y
    
    do x = -10, 10, 1
        if (x == 0) then
            print*, x, 'undefined'
        else
            y = 1.0 / x
            print*, x, y
        end if
    end do

end program tableOfRealInverseOfX
