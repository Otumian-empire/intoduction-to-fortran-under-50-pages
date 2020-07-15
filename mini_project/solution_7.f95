! a function that takes an int year as argument
! and returns 1 if the year is a leap year, else 0
! The function signature is:
! int isLeapYear(int intYear);

integer function isLeapYear(year)
    implicit none
    
    integer :: year, returnValue = 0
    
    if (mod(year, 4) .eq. 0) then
        if (mod(year, 100) .eq. 0) then
            if (mod(year, 400) .eq. 0) then
                returnValue = 1                                
            end if
        else
            returnValue = 1
        end if
        
    end if
    
    isLeapYear = returnValue
    
end function

program Main
    implicit none

    integer :: isLeapYear
    
    print *, isLeapYear(2000)
end program
