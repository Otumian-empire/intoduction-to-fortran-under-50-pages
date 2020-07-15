! a function that takes an integer array as argument
! and returns the greatest number
! The function signature is:
! int greatestNumber(int sizeOfArray, int intArray[]);

integer function greatestNumber(sizeOfArray, intArray)
    implicit none

    integer :: sizeOfArray, i, arrayIndex = 1
    integer, dimension(sizeOfArray) :: intArray

    do i = 2, sizeOfArray
        if (intArray(i) .gt. intArray(i - 1)) then
            arrayIndex = i
        end if
    end do

    greatestNumber = intArray(arrayIndex)

end function

program Main
    implicit none

    integer :: greatestNumber, i
    integer, parameter :: s = 5
    integer, dimension(s) :: arr

    do i = 1, s
        arr(i) = (i ** 2) - (i * 2)
    end do

    print *, arr
    print *, greatestNumber(5, arr)
    
end program
