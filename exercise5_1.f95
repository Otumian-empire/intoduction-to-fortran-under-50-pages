! Write a program that asks the user how many numbers they want to enter,
! call this value imax. Allocate imax elements to two arrays, a and b.
! Read in imax numbers to a and do the same to b. Print out the arrays a, b
! and print out the sum of a and b.

program Exercise5_1
    implicit none
    
    ! Asks the user how many numbers they want to enter
    integer :: imax, i, sumA = 0, sumB = 0
    integer, allocatable, dimension(:) :: a, b
    
    ! Read imax
    print *, 'How many numbers do you want to enter'
    read *, imax
    
    ! Allocate imax elements to two arrays, a and b
    allocate(a(imax))
    allocate(b(imax))
    
    ! Read in imax numbers to a and do the same to b
    do i = 1, imax
        print *, 'enter element for a and b'
        read *, a(i), b(i)
    end do
    
    ! Print out the arrays a, b
    print *, 'array a:', a
    print *, 'array b:', b
    
    ! compute and print out the sum of a and b
    do i = 1, imax
        sumA = sumA + a(i)
        sumB = sumB + b(i)
    end do
    
    print *, 'sum of a', sumA
    print *, 'sum of b', sumB
    
    ! release memory
    deallocate(a)
    deallocate(b)
    
end program

