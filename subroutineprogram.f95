program subroutineProgram
    implicit none
    integer :: num
    
    num = 1
    call sayHello()
    call inc(num)
    print *, num
    
end program

subroutine sayHello( )
    print *, 'Hello'
end subroutine

subroutine inc(num)
    implicit none
    
    integer :: num

    num = num + 1
end subroutine

