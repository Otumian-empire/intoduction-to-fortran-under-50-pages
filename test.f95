program test
implicit none

real :: firstArg , secondArg, answer
integer :: operation

print *, 'enter first arg'
read *, firstArg

print *, 'enter second arg'
read *, secondArg

print *, "Choose an operation"
print *, "1 +"
print *, "2 -"
print *, "3 /"
print *, "4 *"
print *, "5 **"
print *, '----'
read *, operation

if (operation == 1) then
    answer = firstArg + secondArg
end if

if (operation == 2) then
    answer = firstArg - secondArg
end if

if (operation == 3) then
    answer = firstArg / secondArg
end if

if (operation == 4) then
    answer = firstArg * secondArg
end if

if (operation == 5) then
    answer = firstArg ** secondArg
end if

print *, answer

end program test

