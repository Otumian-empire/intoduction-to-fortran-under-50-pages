! Write a program which reads in two numbers a and b.
! Get the program to swap the values around so that 
! the value that was in a is now in b, 
! and print out the result.

program swap
implicit none

integer :: a, b, temp

print *, 'enter a'
read *, a

print *, 'enter b'
read *, b

print *, a, b

temp = a
a = b
b = temp

print *, a, b

end program swap
