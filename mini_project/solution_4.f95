! a function that takes an array of 20 integer elements as argument
! and returns the number of elements that has the same parity as the 
! first element.
! The function signature is:
! integter dummyParity(integer dummyArray[20]);

integer function dummyParity(dummyArray)
    implicit none
    
    integer :: numOfSamePar = 1, i
    integer, dimension(20) :: dummyArray

    do i = 2, 20
        if (mod(dummyArray(1), 2) .eq. mod(dummyArray(i), 2)) then
            numOfSamePar = numOfSamePar + 1
            print *, dummyArray(i)
        end if
    end do
    
   dummyParity = numOfSamePar
   
end function

program Main
    implicit none

    integer :: dummyParity, i
    integer, parameter :: s = 20
    integer, dimension(s) :: arr
    
    do i = 1, s
        arr(i) = i * 3
    end do
    
    print *, dummyParity(arr)
end program

