! a function that takes an integer array and its size as argument
! and returns index of the to find the greatest number
! The function signature is:
! int indexOfGreatestNumber(int sizeOfArray, int intArray);

integer function indexOfGreatestNumber(sizeOfArray, intArray)
    implicit none

    integer :: sizeOfArray, i, arrayIndex = 1
    integer, dimension(sizeOfArray) :: intArray

    do i = 2, sizeOfArray
        if (intArray(i) .gt. intArray(i - 1)) then
            arrayIndex = i
        end if
    end do

    indexOfGreatestNumber = arrayIndex

end function

program Main
    implicit none

    integer :: indexOfGreatestNumber, i
    integer, parameter :: s = 5
    integer, dimension(s) :: arr

    do i = 1, s
        arr(i) = (i ** 2) - (i * 2)
    end do

    print *, indexOfGreatestNumber(5, arr)
    
end program
