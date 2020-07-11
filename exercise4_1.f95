! create a file called evenodd.txt. In the file type 10 numbers, one per line.
! Write a program that reads data from evenodd.txt one line at a time.
! Check if each number is even or odd and print out a suitable message.
! One way to check if a number is even or odd is to use the mod intrinsic function,
! like this... if (mod(num,2)>0) then......

program evenNumber
    implicit none
    
    integer :: num, i
    
    open(1, file='evenodd.txt')
    
    do i = 1, 10
        read(1, *) num
        
        if (mod(num, 2) == 0) then
            print *, num, 'is even'
        else
            print *, num, 'is odd'
        end if
        
    end do
    
end program evenNumber
