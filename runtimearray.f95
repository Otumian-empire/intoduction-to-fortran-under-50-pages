program runTimeArray
    implicit none
    
    ! declare the array, allocatable with  dimension(:)
    integer, allocatable, dimension(:) :: arr
    
    integer :: arraySize
    
    ! loop var
    integer :: i
    
    ! read/determin array size
    print *, 'enter array size'
    read *, arraySize
    
    ! allocate memory of arraySize to array
    allocate(arr(arraySize))
    
    ! populate the array
   
    
    do i = 1, arraySize
        arr(i) = i ** 2
    end do
    
    ! print arr
    print*, arr
    
    ! release memory
    deallocate(arr)
    
end program
