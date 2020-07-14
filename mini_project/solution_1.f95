! a function that calculates and prints the sum of all the natural numbers 
! divisible by either 3 or 5, up to a given limit, pass the starting and 
! ending limit as argument to the function.
! The function signature is:
! integer sumNatModBy3Or5(int startingLimit, int endingLimit);

integer function sumNatModBy3Or5(startingLimit, endingLimit)
    implicit none
    
    integer :: startingLimit, endingLimit, sumOfNaturalNumbers = 0, i
    
    do i = startingLimit, endingLimit
        if (mod(i, 3) .eq. 0 .or. mod(i, 5) .eq. 0) then
            sumOfNaturalNumbers = sumOfNaturalNumbers + i
        end if
    end do
    
    sumNatModBy3Or5 = sumOfNaturalNumbers
    
end function

program Main
    implicit none

    integer :: sumNatModBy3Or5
    
    print *, sumNatModBy3Or5(1, 10)
    
end program

