program zerotest
implicit none

integer :: i
real :: r

! zero test for integer
print*, 'enter i'
read*, i

if (0 == i) then
    print*, 'this is a zero'
else
    print*, i
end if

! zero test for real
print*, 'enter r'
read*, r

if (abs(r) < 0.000001) then
    print*, 'this is a zero'
else
    print*, r
end if

end program zerotest
