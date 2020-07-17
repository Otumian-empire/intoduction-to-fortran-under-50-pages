! stop - terminates the program
! exit - breaks out of the loop
! cycle - returns to the loop

program DoExitCycleLoop
implicit none

integer :: i, r = 0

do
	print *, "enter 1 to exit loop"
	print *, "enter 2 to terminate"
	print *, "enter any other to cycle"

	read *, i

	if (i .eq. 1) then
		print *, "exited"
		exit
	else if (i .eq. 2) then
		print *, "terminated"
		stop
	else
		r = r + i
		print *, "r = ", r
		cycle	
	end if
end do

print *, "program ended"

end program
