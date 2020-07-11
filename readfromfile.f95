program readData
    implicit none
    
    ! read data from a file, mydata.txt
    real :: x, y, z
    integer :: inputDevice
    
    inputDevice = 1
    
    ! open takes an input device number, unit=intVal  and file=name
    ! device number must be a integer
    
    ! open file - inputDevice will be something like a file object
    open(inputDevice, file="mydata.txt")
    
    read(inputDevice, *) x, y, z
    
    print *, x, y, z
    
    
    
end program readData
