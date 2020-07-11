program sumOfN
    implicit none

    integer :: i, 
    real :: total
    
    total = 1.0
    
    do i = 1, 10
        total = total + i
    end do
    
    print *, "The sum of number from 1 to 10 inclusive is", total
end program
