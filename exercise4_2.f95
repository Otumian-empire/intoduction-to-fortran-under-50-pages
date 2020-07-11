! Write a program which reads in numbers from a file one at a time.
! If the number is positive, it should store it in a file called 
! 'positive.txt' and negative numbers in a file called 'negative.txt'.

program readAndWrite
    implicit none
    
    ! num is the number read/written into/from file
    ! limit is the loop terminating
    ! loop counter
    integer :: limit, num, i
    
    ! prompt user - for loop limit
    print *, 'Enter loop limit'
    read *, limit
    
    ! open - 3 files, 1, 2 and 3
    ! device 1 opens numericdatafile.txt
    ! device 2 opens positive.txt
    ! device 3 opens negative.txt
    open(1, file="numericdatafile.txt")
    open(2, file="positive.txt")
    open(3, file="negative.txt")
    
    ! loop - from i = 1 to limit
    do i = 1, limit
       
        ! read - from device 1
        read(1, *) num
        
        ! if - check if num is +ve or -ve
        if (num > 0) then        
            ! write into device 2, since num is +ve
            write(2, *) num
        else if (num < 0) then
            ! write into device 3, since num is -ve
            write(3, *) num
        else
            print *, num, 'is zero'
        end if
        
    end do
    
end program
