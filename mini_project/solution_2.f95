! a function that takes an integer as argument then return 1, -1 or 0
! if the number is positive, negative or zero respectively
! The function signature is:
! integer numberIs(integer n);

integer function numberIs(n)
    implicit none
    
    integer :: n, returningValue = 0
    
    if (n .gt. 0) then
        returningValue = 1
    else if (n .lt. 0) then
        returningValue = -1
    end if
    
    numberIs = returningValue
    
end function

program Main
    implicit none
    
    integer :: numberIs
    
    print *, numberIs(0), "when 0 is passed"
    print *, numberIs(3), "when 3 is passed"
    print *, numberIs(-2), "when -2 is passed"
        
end program

