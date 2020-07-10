program sampleIfElse
implicit none

integer :: num
print*, 'enter num'
read *, num

if (num == 10) then
    num = num - 2
else if (num == 9) then
    num = num - 3
else
    num = 0
end if

print*, num

end program sampleIfElse

