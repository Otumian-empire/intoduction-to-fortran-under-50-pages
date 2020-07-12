! Using a 4*4 array create an identity matrix, that is, a matrix of the form:
!           1 0 0 0
!           o 1 0 0
!           0 0 1 0
!           0 0 0 1
! and output it

program twoDimensionalArrays
    implicit none
    
    integer, parameter :: amax = 4
    integer, dimension(amax, amax) :: twoD
    integer :: i, j
    
    do i = 1, amax
        do j = 1, amax
            if (i .eq. j) then
                twoD(i, j) = 1
            else
                twoD(i, j) = 0
            end if
        end do
    end do
    
    do i = 1, amax
        print *, twoD(i, 1),twoD(i, 2), twoD(i, 3), twoD(i, 4)
    end do
    
end program

