! write 10 numbers to a file called, tenNumbers.txt
! this code is not that different from reading from a file
! change the read to write

program writeToFile
    implicit none
    
    integer :: i, num
    
    open(1, file="tenNumbers.txt")
    
    do i = 1, 10
       write(1, *) i
       print *, i 
    end do
    
end program
