program IntReal
implicit none

real :: a, b
integer :: i

a = 3.5
i = 3

! just like before, there is a integer division
! as such resulting value is truncated
b = a * ((2 ** i) / 3)
print *, b

b = a * ((2.0 ** i) / 3)
print *, b

end program IntReal

