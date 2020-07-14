! a function that takes an integer array and its size as input 
! and then finds and returns the sum all the elements.
! The function signature is:
! integer sumOfArray(integer sizeOfArray, integer intArray[]);

integer function sumOfArray(sizeOfArray, intArray)
    implicit none
    
    integer :: sizeOfArray, i, arraySum = 0
    integer, dimension(sizeOfArray) :: intArray
    
    do i = 1, sizeOfArray
        arraySum = arraySum + intArray(i)
    end do
    
    sumOfArray = arraySum
    
end function
    
program Main
    implicit none
    
    integer :: sumOfArray, i
    integer, parameter :: s = 5
    integer, dimension(s) :: arr
    
    do i = 1, s
        arr(i) = (i ** i) - 2
    end do
    
    print *, sumOfArray(5, arr)
    
end program
    
