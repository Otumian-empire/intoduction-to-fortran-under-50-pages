program arrays
    implicit none

    ! declare an array of size, 10
    integer, dimension(10) :: intArray
    
    ! populate the array, using a loop
    integer :: i
    do i = 1, 10
        intArray(i) = i
    end do
    
    print *, intArray
    
end program
