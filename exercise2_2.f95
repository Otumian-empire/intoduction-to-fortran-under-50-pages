! operators - simple calculator

program simpleCalculator
implicit none

real :: x, y, z, answer

x = 1.5
y = 2.5
z = 3.5

! 1. (x + y) / (x + z)
answer = (x + y) / (x + z)
print *,'x+y / x+z =', answer

! 2. xyz
answer = x * y * z
print *, 'xyz =', answer

! 3. x ^ y ^ z
answer = x ** (y ** z)
print *, 'x^y^z' ,answer

end program simpleCalculator

