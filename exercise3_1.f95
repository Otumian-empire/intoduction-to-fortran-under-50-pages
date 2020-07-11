program divide
implicit none

integer :: a
real :: b

a = 2
b = a/4

! prints only the integer part of the result
print*, b

! but changes to when one operand is real
b = a/4.0
print*, b

end program divide

