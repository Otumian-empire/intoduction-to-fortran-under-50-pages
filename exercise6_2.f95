! Write a program that includes a function called
! real function average(n,list), where n is integer
! and is the number of items in the list, and list 
! is a real array.
! Write suitable code for reading the numbers from a
! file (or keyboard), and output the average of the
! numbers.

program Main
    implicit none
    
    integer, parameter :: n = 5
    real, dimension(n) :: list
    integer :: i
    real :: average
    character(len=50) :: fileName = 'numericdatafile.txt'
    
    open(1, file=fileName)
    do i = 1, n
        read(1, *) list(i)
    end do
    
    print *, average(n, list)
    
end program
   
! function to compute the average
function average(n, list)
    implicit none
    
    real :: average, listSum = 0
    integer :: n, i
    real, dimension(n) :: list
    
    do i = 1, n
        listSum = listSum + list(i)
    end do
    
    average = listSum / n
    
end function

