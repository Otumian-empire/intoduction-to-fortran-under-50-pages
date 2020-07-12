! Write a program that calculates the difference in area between
! two triangles. Your program should prompt the user for the 
! information it needs to do the calculation. Use a subroutine to
! calculate the actual area. Pass information to the subroutine 
! using arguments.

! area of triangle = .5 * base * height

program dufferenceInAreaBetweenTwoTriangles
    implicit none

    real :: areaTriangleA, areaTriangleB, baseA, baseB, heightA, heightB
    
    print *, 'enter the base of triangle A'
    read *, baseA
    
    print *, 'enter the height of triangle A'
    read *, heightA     
       
       
    print *, 'enter the base of triangle B'
    read *, baseB
    
    print *, 'enter the height of triangle B'
    read *, heightB
    
    
    call AreaOfTriangle(baseA, heightA, areaTriangleA)
    call AreaOfTriangle(baseB, heightB, areaTriangleB)
    
    print *, 'The difference in the area is', abs(areaTriangleA - areaTriangleB)
    
end program


subroutine AreaOfTriangle(base, height, area)
    implicit none
    
    real :: base, height, area

    area = .5 * base * height
    
end subroutine

