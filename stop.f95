program stopthis

character :: x
read*, x

if (x == 'c' .or. x == 's') then
    stop
    print*, x ! this will not be printed
else
    print*, 'great'
end if

end program stopthis
