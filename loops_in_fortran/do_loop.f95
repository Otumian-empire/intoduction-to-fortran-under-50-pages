program DoLoop
implicit none

!integer, dimension(5) :: arr
integer :: arr(5)
integer :: i

do i = 1, 5
	arr(i) = i * 3
end do

do i = 1, 5
	print *, arr(i)
end do

end program 
