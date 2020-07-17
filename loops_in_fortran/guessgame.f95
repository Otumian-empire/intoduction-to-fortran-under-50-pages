! this program make use of loops and exits and cycle
! the program frequently as the user to gues some number 
! and if the user is right, program displays, thats correct
! and terminates, else, the program displays, too loo or high,
! whether the users input is lower or greater than secrete number

program GuessGame
implicit none

integer :: a = 1, b = 10, i, genRandNum, secreteNumber, userGuess

secreteNumber = genRandNum(a, b)

print *, "you have only five chances to guess the secrete number"

do i = 5, 1, -1
    print *, "enter the secrete number", i
    read *, userGuess
    
    if (userGuess .eq. secreteNumber) then
        print *, "That is correct"
        exit
    else if (userGuess .gt. secreteNumber) then
        print *, "too high"
    else
        print *, "too low"
    end if
    
end do

print *, "program ended"

end program GuessGame


integer function genRandNum(from, to)
implicit none

integer :: time, from, to, seed, rand, temp

seed = time()
call srand(seed)
temp = rand()

genRandNum = int(rand() * to) + from

end function genRandNum



! system time
! https://docs.oracle.com/cd/E19957-01/805-4942/z400000cf0f3/index.html
! random number
! https://gcc.gnu.org/onlinedocs/gfortran/RAND.html

