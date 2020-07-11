program parameterizeArray
    implicit none

    ! declare an array of size, imax, where imax is a parameter
    integer, parameter :: imax = 10
    integer, dimension(imax) :: intArray
    
    ! populate the array, using a loop
    integer :: i
    do i = 1, imax
        intArray(i) = i
    end do
    
    print *, intArray
    
end program
