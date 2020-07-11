! read imax data from file into an array, A
! print A
! reverse the content of A into B
! print B
! sum A and B in C
! print C
! put the diff of A and B in D
! print D
! put the product of A and B in E
! print E

program ramagic
    implicit none
    integer, allocatable, dimension(:) :: A, B, C, D, E
    character :: fileName*50
    integer :: imax, i, temp
    
    print *, 'enter file name'
    read *, fileName
    
    print *, 'enter number of data to read from file'
    read *, imax
    
    allocate(A(imax))
    allocate(B(imax))
    allocate(C(imax))
    allocate(D(imax))
    allocate(E(imax))
    
    open(1, file=fileName)
    
    do i = 1, imax
        read(1, *) A(i)
    end do
    
    print *, 'A:', A
    
    temp = imax
    
    do i = 1, imax
        B(i) = A(temp)
        temp = temp - 1
    end do
    
    temp = 0
    
    print *, 'B:', B
    
    C = A + B
    
    print *, 'C:', C
    
    D =  A - B
    
    print *, 'D:', D
    
    E = A * B
    
    print *, 'E:', E

    deallocate(A)
    deallocate(B)
    deallocate(C)
    deallocate(D)
    deallocate(E)
    
end program
