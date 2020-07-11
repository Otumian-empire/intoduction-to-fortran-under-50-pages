program xytab
    implicit none

    integer :: x, y, z
    
    print*, '          x           y           z   '
    
    do x = 1, 2
        do y = 1, 4
            z = x+y
            print*, x, y, z
        end do
    end do
    
end program xytab
