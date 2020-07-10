! Write a program that reads a number from the keyboard
! Get the program to decide whether:
!   the value of the number is greater than 0 but less than 1
!   or is greater than 1 but less than 10
!   or is outside of both these ranges
! Print out a suitable message to inform the user
program exercise2_4
implicit none

real :: num

print*, 'enter num'
read*, num

if (num > 0 .and. num < 1) then
    print*, num, ' is with 0 and 1'
else if (num > 1 .and. num < 10) then
    print*, num, ' is with 1 and 10'
else
    print*, num, 'number is outside the 0 and 10'
end if

end program exercise2_4 

